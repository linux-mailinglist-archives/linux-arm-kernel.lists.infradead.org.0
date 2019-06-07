Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B123876B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XESoSNvGOMCz3FfshM/QtKbbrlglR2dXlT746ydMiNo=; b=MbbKz1LFt0jto/
	+Ce2iZ1iBot1Nhm748OTXxyjmeyJqdOJ7i23baKUWrfGxYHOSSWZ+VPa0X12eVoSkd+fFHYy3Juen
	yVNuL5Z/OvVLTFp6eyyaI2eupWBDiOCZiawxsjq7H03Hx1N85pDF8IZK9/iIApnaVv2YQNwmE86S9
	DU+8dxctF+wv7r7sDM6Vseyeyju66Sv8/YQQHvI6W3724tbSTnKAxI3buC7q81mYQ+JJO22k6iz/M
	1mabbR5wFM64wGQVuKmQNAKwGa7U2dpRxPvrqybhugo9Bms77ARshmbywY1q3c3f4DnFIlUcHVQy7
	vFTv9VjijQUUEhXM0hoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBZY-0006rL-QD; Fri, 07 Jun 2019 09:54:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBZN-0006ql-CH
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:53:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0767344;
 Fri,  7 Jun 2019 02:53:56 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 947133F96A;
 Fri,  7 Jun 2019 02:55:35 -0700 (PDT)
Date: Fri, 7 Jun 2019 10:53:53 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v3 3/5] ACPI/PPTT: Modify node flag detection to find
 last IDENTICAL
Message-ID: <20190607095353.GC2429@e107155-lin>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-4-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503232407.37195-4-jeremy.linton@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_025357_506631_05198CDD 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 john.garry@huawei.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 Sudeep Holla <sudeep.holla@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 06:24:05PM -0500, Jeremy Linton wrote:
> The ACPI specification implies that the IDENTICAL flag should be
> set on all non leaf nodes where the children are identical.
> This means that we need to be searching for the last node with
> the identical flag set rather than the first one.
> 
> Since this flag is also dependent on the table revision, we
> need to add a bit of extra code to verify the table revision,
> and the next node's state in the traversal. Since we want to
> avoid function pointers here, lets just special case
> the IDENTICAL flag.
> 
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  drivers/acpi/pptt.c | 28 +++++++++++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
> index 1865515297ca..456e1c0a35ae 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -432,17 +432,39 @@ static void cache_setup_acpi_cpu(struct acpi_table_header *table,
>  	}
>  }
>  
> +static bool flag_identical(struct acpi_table_header *table_hdr,
> +			  struct acpi_pptt_processor *cpu)

Not sure if it's email client problem, but I see quite a few mis-alignment
with parenthesis like above one.

> +{
> +	struct acpi_pptt_processor *next;
> +
> +	/* heterogeneous machines must use PPTT revision > 1 */
> +	if (table_hdr->revision < 2)
> +		return false;
> +
> +	/* Locate the last node in the tree with IDENTICAL set */
> +	if (cpu->flags & ACPI_PPTT_ACPI_IDENTICAL) {
> +		next = fetch_pptt_node(table_hdr, cpu->parent);
> +		if (!(next && next->flags & ACPI_PPTT_ACPI_IDENTICAL))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  /* Passing level values greater than this will result in search termination */
>  #define PPTT_ABORT_PACKAGE 0xFF
>  
> -static struct acpi_pptt_processor *acpi_find_processor_package_id(struct acpi_table_header *table_hdr,
> +static struct acpi_pptt_processor *acpi_find_processor_tag_id(struct acpi_table_header *table_hdr,
>  								  struct acpi_pptt_processor *cpu,
>  								  int level, int flag)
>  {
>  	struct acpi_pptt_processor *prev_node;
>  
>  	while (cpu && level) {
> -		if (cpu->flags & flag)
> +		if (flag == ACPI_PPTT_ACPI_IDENTICAL) {

flag_identical anyways check the flag, so I assume you can drop the above
check.

> +			if (flag_identical(table_hdr, cpu))
> +				break;
> +		} else if (cpu->flags & flag)
>  			break;
>  		pr_debug("level %d\n", level);
>  		prev_node = fetch_pptt_node(table_hdr, cpu->parent);
> @@ -480,7 +502,7 @@ static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
>  
>  	cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>  	if (cpu_node) {
> -		cpu_node = acpi_find_processor_package_id(table, cpu_node,
> +		cpu_node = acpi_find_processor_tag_id(table, cpu_node,
>  							  level, flag);


Again misaligned, may be that's because of renaming.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
