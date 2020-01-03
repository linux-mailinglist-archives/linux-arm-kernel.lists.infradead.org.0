Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E97712F8A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 14:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNm7Z2KkoOK6+IBSSLw3v3FkW0WqtyxFM78kCxqbntA=; b=Gq86DHkeMww6TQ
	d8WdtXMAnViCvET6mLDBKv4Yus4xCA5S3RxNrJOns15EIaOlazRpyS1AhTrBkTMKTgoIVKxI3I0mS
	iHVMSW6H56B/iiCaNwPJiRpgF1JHxJYmR1oZBF9H+DEO4xgik1M6R03o8VetQPCpI+5JWoD0FwhNi
	V3wthTAhV0lDQg6whUzQrQI73gHw2Miy8u9zO16+Tv5yackFUKujR1Pym+xxpQvQfoCBJEPEPVfHy
	716ZwLGz98l8UJbFvEpzZScC8IMmnBIj3oLIblVyHAGKsgKMOboTd/sWAhLyriL+1dnRgg1aslG7A
	kEoJfQlGYAIZeKg9sfyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inMhO-0004Ga-7W; Fri, 03 Jan 2020 13:09:06 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inMhE-0004Fx-Nj
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 13:08:58 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 398379D5653B36C4EBDE;
 Fri,  3 Jan 2020 13:08:52 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 3 Jan 2020 13:08:51 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 3 Jan 2020
 13:08:51 +0000
Date: Fri, 3 Jan 2020 13:08:50 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Brice Goglin <brice.goglin@gmail.com>
Subject: Re: [PATCH V6 0/7] ACPI: Support Generic Initiator proximity domains
Message-ID: <20200103130850.00000ace@Huawei.com>
In-Reply-To: <13b2cc22-df30-ebee-fb94-cd66d8334507@gmail.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <dc5f5502-09c6-d476-db0e-0af3412bb031@gmail.com>
 <20191218145041.00005a11@Huawei.com>
 <1867024e-b0c4-c291-7190-262cc4b297a8@gmail.com>
 <20200102152604.000039f1@Huawei.com>
 <b428d231-4879-4462-ac42-900b5d094eee@gmail.com>
 <20200103100920.00006a18@Huawei.com>
 <13b2cc22-df30-ebee-fb94-cd66d8334507@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml730-chm.china.huawei.com (10.201.108.81) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_050856_922633_6481D5B1 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-acpi@vger.kernel.org,
 Tao Xu <tao3.xu@intel.com>, x86@kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, linux-mm@kvack.org, jglisse@redhat.com,
 Sudeep Holla <sudeep.holla@arm.com>, Hanjun Guo <guohanjun@huawei.com>,
 Keith Busch <kbusch@kernel.org>, Andrew
 Morton <akpm@linux-foundation.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Jan 2020 13:18:59 +0100
Brice Goglin <brice.goglin@gmail.com> wrote:

> Le 03/01/2020 =E0 11:09, Jonathan Cameron a =E9crit=A0:
> >
> > 1) If the memory and processor are in the same domain, that should mean=
 the
> > access characteristics within that domain are the best in the system.
> > It is possible to have a setup with very low latency access
> > from a particular processor but also low bandwidth.  Another domain may=
 have
> > high bandwidth but long latency.   Such systems may occur, but they are=
 probably
> > going to not be for 'normal memory the OS can just use'.
> >
> > 2) If we have a relevant "Memory Proximity Domain Attributes Structure"
> > Note this was renamed in acpi 6.3 from "Address Range Structure" as
> > it no longer has any address ranges.
> > (which are entirely optional btw) that indicates that the memory contro=
ller
> > for a given memory lies in the proximity domain of the Initiator specif=
ied.
> > If that happens we ignore cases where hmat says somewhere else is nearer
> > via bandwidth and latency.
> >
> > For case 1) I'm not sure we actually enforce it.
> > I think you've hit case 2).  =

> >
> > Removing the address range structures should work, or as you say you can
> > move that memory into separate memory nodes.  =

> =

> =

> I removed the "processor proximity domain valid" flag from the address
> range structure of node2, and the GI is now its access0 initiator
> instead of node2 itself. Looks like it confirms I was in case 2)
> =

> Thanks
> =

> Brice

Cool. I was wondering if that change would work fine.
It is a somewhat crazy setup so I didn't have an equivalent in my test set.

Sounds like all is working as expected.

Thanks,

Jonathan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
