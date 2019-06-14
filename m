Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA80460BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h06YffTL2Lqkfjyj1kGSn9eJrIAD+bA8v2Dm7CFifFg=; b=XRv7Tkc+a7RyQF
	OtnvIGkYypJkk5CbsleWQnyjIZRmJUktgY1GwafceHSxpWrm1iJhoVuwW2kvTLh5+5dE+xPUOQ1UP
	qbvYueJcytFbNdEnBnGBVlPVgGw4Cwh4tnlpJxXmOfVirNR1i7bFcMhGLqSlZp934usCXPizF+CEz
	T5KNt9oaHNKpP89ivLhTnd2JVZqgJxUHYw1y+tjkltjtqllhBGQQzN75AYTpbIWg7qv5Gf3duEX0x
	fa1IlOYaGFmD/W0z+lwU/4p8Xz4uhAiH4C5Ogyt5zvkqwKVj1WikhJUAG7p/6h8ZGCgY5dVDojrI9
	69cEw8lpWcXMWy/elNKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnCZ-0005xU-1q; Fri, 14 Jun 2019 14:29:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnCH-0005wU-Ax
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:28:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCE8E344;
 Fri, 14 Jun 2019 07:28:52 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F11F03F246;
 Fri, 14 Jun 2019 07:28:51 -0700 (PDT)
Date: Fri, 14 Jun 2019 15:28:45 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Tomasz Nowicki <tn@semihalf.com>
Subject: Re: [bug report] ACPI: Add new IORT functions to support MSI domain
 handling
Message-ID: <20190614142845.GA23116@e121166-lin.cambridge.arm.com>
References: <20190613065410.GB16334@mwanda>
 <425b5d78-b38f-270b-94e2-7ece1e5498e5@arm.com>
 <5f9fecb1-66de-b550-3f8e-097795a08efe@huawei.com>
 <40cc7b22-d5e6-ffcf-d6ec-a74f3fbe906c@semihalf.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40cc7b22-d5e6-ffcf-d6ec-a74f3fbe906c@semihalf.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_072853_463856_830E8DA1 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-acpi@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 12:09:17PM +0200, Tomasz Nowicki wrote:
> On 14.06.2019 03:03, Hanjun Guo wrote:
> > On 2019/6/13 17:30, Robin Murphy wrote:
> > > On 13/06/2019 07:54, Dan Carpenter wrote:
> > > > Hello Tomasz Nowicki,
> > > > =

> > > > The patch 4bf2efd26d76: "ACPI: Add new IORT functions to support MSI
> > > > domain handling" from Sep 12, 2016, leads to the following static
> > > > checker warning:
> > > > =

> > > >  =A0=A0=A0=A0drivers/acpi/arm64/iort.c:628 iort_dev_find_its_id()
> > > >  =A0=A0=A0=A0warn: array off by one? 'its->identifiers[idx]'
> > > > =

> > > > drivers/acpi/arm64/iort.c
> > > >  =A0=A0=A0 589=A0 /**
> > > >  =A0=A0=A0 590=A0=A0 * iort_dev_find_its_id() - Find the ITS identi=
fier for a device
> > > >  =A0=A0=A0 591=A0=A0 * @dev: The device.
> > > >  =A0=A0=A0 592=A0=A0 * @req_id: Device's requester ID
> > > >  =A0=A0=A0 593=A0=A0 * @idx: Index of the ITS identifier list.
> > > >  =A0=A0=A0 594=A0=A0 * @its_id: ITS identifier.
> > > >  =A0=A0=A0 595=A0=A0 *
> > > >  =A0=A0=A0 596=A0=A0 * Returns: 0 on success, appropriate error val=
ue otherwise
> > > >  =A0=A0=A0 597=A0=A0 */
> > > >  =A0=A0=A0 598=A0 static int iort_dev_find_its_id(struct device *de=
v, u32 req_id,
> > > >  =A0=A0=A0 599=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unsigned int idx, int *its=
_id)
> > > >  =A0=A0=A0 600=A0 {
> > > >  =A0=A0=A0 601=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct acpi_iort_its_grou=
p *its;
> > > >  =A0=A0=A0 602=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct acpi_iort_node *no=
de;
> > > >  =A0=A0=A0 603
> > > >  =A0=A0=A0 604=A0=A0=A0=A0=A0=A0=A0=A0=A0 node =3D iort_find_dev_no=
de(dev);
> > > >  =A0=A0=A0 605=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!node)
> > > >  =A0=A0=A0 606=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 r=
eturn -ENXIO;
> > > >  =A0=A0=A0 607
> > > >  =A0=A0=A0 608=A0=A0=A0=A0=A0=A0=A0=A0=A0 node =3D iort_node_map_id=
(node, req_id, NULL, IORT_MSI_TYPE);
> > > >  =A0=A0=A0 609=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!node)
> > > >  =A0=A0=A0 610=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 r=
eturn -ENXIO;
> > > >  =A0=A0=A0 611
> > > >  =A0=A0=A0 612=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* Move to ITS specific d=
ata */
> > > >  =A0=A0=A0 613=A0=A0=A0=A0=A0=A0=A0=A0=A0 its =3D (struct acpi_iort=
_its_group *)node->node_data;
> > > >  =A0=A0=A0 614=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (idx > its->its_count)=
 {
> > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ^^^^^=
^^^^^^^^^^^^^^^
> > > > I wasn't able to find any information about how its->its_count is s=
et
> > > > but it looks to me that is off by one.
> > > =

> > > its->count is read directly from the firmware table. Currently it see=
ms this condition can never be hit anyway, since this is only ever called w=
ith idx =3D=3D 0. TBH I can't really see how the code could evolve such tha=
t this check should ever be necessary (i.e. it makes no sense for callers t=
o pull idx values out if thin air, so they'd presumably end up being derive=
d from its->count in the first place), but if we are going to have it then =
I agree it should be ">=3D".
> > =

> > For now seems we only got systems which map a device to a single
> > ITS, but in the IORT spec, it assumes that maybe there is a ITS group
> > for mapping, so I think we can just use ">=3D" as you suggested to
> > align with the spec.
> > =

> =

> Yes, should be ">=3D" and the error massage should be fixed as well:
> =

> /* Move to ITS specific data */
> its =3D (struct acpi_iort_its_group *)node->node_data;
> if (idx >=3D its->its_count) {
>         dev_err(dev, "requested ITS ID index [%d] exceeds max permitted [=
%d]
> index\n",
>                 idx, its->its_count - 1);
>         return -ENXIO;
> }

I will pick it up, reformat and resend it.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
