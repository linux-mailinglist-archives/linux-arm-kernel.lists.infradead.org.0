Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD033135D69
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tr7GbRLEwYdRsyCPT4WWRy3RjzwEC9oUgFAUdrr0Se4=; b=qzuaS3CDiAg4uA
	BFX4P8EHJtNicNeT2r4CucQZPX6Gx8MZzIIhnF5zFKx+qax9UWJKNj0DLddnq1YoNz+YnMayS7Cvm
	ny8mkIQ5VS+EpPDu6tsaVhx5tQ2xs/So4TYNWJnwA1i1EMeil9+FA525Suz/S5lnkp0CLwPIOhprG
	/7xi4NW8oASZVjUKW3kiOJGgQ2JDfoiEtd+t9Yx/hvLRuKP6cNW+E64NXiHYmc900p0H77t2bSm2d
	PXQ5Z2J0/ffD9YquiiKDP8kljeJfLd8Xq080OcNtzD3BMMvtaFr5sF/yiESovl2TMpabcJ3Swl1j8
	hJOODWxaCgNwHysEPyuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaGh-0004YB-84; Thu, 09 Jan 2020 16:02:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaGY-0004Xi-77
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:02:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D29601FB;
 Thu,  9 Jan 2020 08:02:31 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A93A3F703;
 Thu,  9 Jan 2020 08:02:30 -0800 (PST)
Date: Thu, 9 Jan 2020 16:02:21 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
Message-ID: <20200109160220.GA27079@e121166-lin.cambridge.arm.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <2ce224b2-d926-67b0-f9dd-85ac53d967c5@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ce224b2-d926-67b0-f9dd-85ac53d967c5@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_080234_344835_C2845987 
X-CRM114-Status: GOOD (  30.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, John Garry <john.garry@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 05:19:32PM +0000, Robin Murphy wrote:
> On 30/12/2019 12:27 pm, Hanjun Guo wrote:
> > The IORT spec [0] says Number of IDs = The number of IDs in the range minus
> > one, it is confusing but it was written down in the first version of the

Why is it confusing ? Because we botched the kernel code :) ?

> > IORT spec. But the IORT ID mapping function iort_id_map() did something
> > wrong from the start, which bails out if:
> > 
> > the request ID >= the input base + number of IDs
> > 
> > This is wrong because it ignored the "minus one", and breaks some valid
> > usecases such as ID mapping to contain single device mapping without
> > single mapping flag set.
> > 
> > Pankaj Bansal proposed a solution to fix the issue [1], which bails
> > out if:
> > 
> > the request ID > the input base + number of IDs

Add a Link: tag, when I read a commit log I want to have a reference
to the patches relevant to the commit in question (which in turn
will help understand what Pankaj suggested).

> > This works as the spec defined, unfortunately some firmware didn't
> > minus one for the number of IDs in the range, and the propoased
> > solution will break those systems in this way:
> > 
> > PCI hostbridge mapping entry 1:
> > Input base:  0x1000
> > ID Count:    0x100
> > Output base: 0x1000
> > Output reference: 0xC4  //ITS reference
> > 
> > PCI hostbridge mapping entry 2:
> > Input base:  0x1100
> > ID Count:    0x100
> > Output base: 0x2000
> > Output reference: 0xD4  //ITS reference
> > 
> > Two mapping entries which the second entry's Input base = the first
> > entry's Input base + ID count, so for requester ID 0x1100 will map
> > to ITS 0xC4 not 0xD4 if we update '>=' to '>'.
> > 
> > So introduce a workaround to match the IORT's OEM information for
> > the broken firmware, also update the logic of the ID mapping for
> > firmwares report the number of IDs as the IORT spec defined, to
> > make the code compatible for both kinds of system.
> > 
> > I checked the ACPI tables in the tianocore/edk2-platforms [2], only
> > HiSilicon HIP07/08 did wrong, so just add HIP07/08 to the workaround
> > info table, if we break other platforms, we can add that later.
> > 
> > [0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
> > [1]: https://patchwork.kernel.org/patch/11292823/

Add a Link: tag to a message-ID

> > [2]: https://github.com/tianocore/edk2-platforms

It is useless in a commit log - this is a moving target.

I can rewrite this commit log if you think it is faster.

> > 
> > Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> > ---
> > 
> > RFC->v1:
> > - Print warning when matched the workaround info, suggested by Pankaj.
> > 
> >   drivers/acpi/arm64/iort.c | 55 ++++++++++++++++++++++++++++++++++++++++++++---
> >   1 file changed, 52 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > index 33f7198..60eb10d 100644
> > --- a/drivers/acpi/arm64/iort.c
> > +++ b/drivers/acpi/arm64/iort.c
> > @@ -298,6 +298,42 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
> >   	return status;
> >   }
> > +struct iort_workaround_oem_info {
> > +	char oem_id[ACPI_OEM_ID_SIZE + 1];
> > +	char oem_table_id[ACPI_OEM_TABLE_ID_SIZE + 1];
> > +	u32 oem_revision;
> > +};
> > +
> > +static bool apply_id_count_workaround;
> > +
> > +static struct iort_workaround_oem_info wa_info[] __initdata = {
> > +	{
> > +		.oem_id		= "HISI  ",
> > +		.oem_table_id	= "HIP07   ",
> > +		.oem_revision	= 0,
> > +	}, {
> > +		.oem_id		= "HISI  ",
> > +		.oem_table_id	= "HIP08   ",
> > +		.oem_revision	= 0,
> > +	}
> > +};
> > +
> > +static void __init
> > +iort_check_id_count_workaround(struct acpi_table_header *tbl)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(wa_info); i++) {
> > +		if (!memcmp(wa_info[i].oem_id, tbl->oem_id, ACPI_OEM_ID_SIZE) &&
> > +		    !memcmp(wa_info[i].oem_table_id, tbl->oem_table_id, ACPI_OEM_TABLE_ID_SIZE) &&
> > +		    wa_info[i].oem_revision == tbl->oem_revision) {
> > +			apply_id_count_workaround = true;
> > +			pr_warn(FW_BUG "ID count for ID mapping entry is wrong, applying workaround\n");
> > +			break;
> > +		}
> > +	}
> > +}
> > +
> >   static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> >   		       u32 *rid_out)
> >   {
> > @@ -314,9 +350,21 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
> >   		return -ENXIO;
> >   	}
> > -	if (rid_in < map->input_base ||
> > -	    (rid_in >= map->input_base + map->id_count))
> > -		return -ENXIO;
> > +	/*
> > +	 * IORT spec says Number of IDs = The number of IDs in the range minus

Section, page, table number please, "IORT spec says" is too vague.

> > +	 * one, but the IORT code ingored the "minus one", and some firmware

s/ingored/ignored/

> > +	 * did that too, so apply a workaround here to keep compatible with
> > +	 * both new and old versions of the firmware.

It is not "new" vs "old" it is spec compliant vs non-spec compliant.

> > +	 */
> > +	if (apply_id_count_workaround) {
> > +		if (rid_in < map->input_base ||
> > +			(rid_in >= map->input_base + map->id_count))
> > +			return -ENXIO;
> > +	} else {
> > +		if (rid_in < map->input_base ||
> > +			(rid_in > map->input_base + map->id_count))
> > +			return -ENXIO;
> > +	}
> 
> This seems needlessly repetitive and convoluted... how about refactoring to
> something like:

+1

> 
> 	map_max = map->input_base + map->id_count;
> 	if (apply_id_count_workaround)
> 		map_max--;

You can even turn it into an inline function (ie iort_get_map_max())
with the comment above in it so that the quirk is isolated instead
of having it in the middle of iort_id_map().

I am fine either way. We need test coverage since I feel this may
break a number of systems (ie I don't think it should be merged as
a fix).

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
