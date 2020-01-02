Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5028C12E810
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 16:27:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjgKZxZVYxPv1CjblwveGGPiJrEkDAFKID61zVQqffY=; b=SyZfHBqyn5mmim
	Tynr5PN1daDGUK0ynqLFkEykzhUWRxKlttQfVWSftH34aRPUThtwicbpyIE1ePdfu7fLIauu66VxB
	Ul+QrCkjUE3jBeOciq2T5A6p0p7/tudn/sGZJLUwni63RS6dc3ROoSYJzXEncirikLrhAGUYBxw4Q
	jyUBD7uvYFOyAH2prqvAOaoGR19VUot4GF49Uc8ZJI6Ok2iiWLeQolBxT+oU+lOQMaFvCxo/jOjVj
	VvnKPEh1YvcjkSB4q/ikwEXEX63HrIDUWp3bcKDS/VfxWNLQ5zioH5AXXV6FzShCazQjDISL7pssy
	Vn2SQvX6CO8zXWH/054g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2Nv-00058X-02; Thu, 02 Jan 2020 15:27:39 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2Nm-00057U-0L
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 15:27:31 +0000
Received: from LHREML714-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id B45E849FCBA97A570CA8;
 Thu,  2 Jan 2020 15:27:22 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 LHREML714-CAH.china.huawei.com (10.201.108.37) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 2 Jan 2020 15:27:22 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Thu, 2 Jan 2020
 15:27:22 +0000
Date: Thu, 2 Jan 2020 15:27:19 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Brice Goglin <brice.goglin@gmail.com>
Subject: Re: [PATCH V6 0/7] ACPI: Support Generic Initiator proximity domains
Message-ID: <20200102152604.000039f1@Huawei.com>
In-Reply-To: <1867024e-b0c4-c291-7190-262cc4b297a8@gmail.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <dc5f5502-09c6-d476-db0e-0af3412bb031@gmail.com>
 <20191218145041.00005a11@Huawei.com>
 <1867024e-b0c4-c291-7190-262cc4b297a8@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml709-chm.china.huawei.com (10.201.108.58) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_072730_194508_24A70103 
X-CRM114-Status: GOOD (  18.14  )
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

On Fri, 20 Dec 2019 22:40:18 +0100
Brice Goglin <brice.goglin@gmail.com> wrote:

> Le 18/12/2019 =E0 15:50, Jonathan Cameron a =E9crit=A0:
> > On Wed, 18 Dec 2019 12:32:06 +0100
> > Brice Goglin <brice.goglin@gmail.com> wrote:
> >  =

> >> Le 16/12/2019 =E0 16:38, Jonathan Cameron a =E9crit=A0:  =

> >>> Introduces a new type of NUMA node for cases where we want to represe=
nt
> >>> the access characteristics of a non CPU initiator of memory requests,
> >>> as these differ from all those for existing nodes containing CPUs and=
/or
> >>> memory.
> >>>
> >>> These Generic Initiators are presented by the node access0 class in
> >>> sysfs in the same way as a CPU.   It seems likely that there will be
> >>> usecases in which the best 'CPU' is desired and Generic Initiators
> >>> should be ignored.  The final few patches in this series introduced
> >>> access1 which is a new performance class in the sysfs node description
> >>> which presents only CPU to memory relationships.  Test cases for this
> >>> are described below.    =

> >>
> >> Hello Jonathan
> >>
> >> If I want to test this with a fake GI, what are the minimal set of
> >> changes I should put in my ACPI tables? Can I just specify a dummy GI =
in
> >> SRAT? What handle should I use there?  =

> > Exactly that for a dummy GI.  Also extend HMAT and SLIT for the extra
> > proximity domain / initiator.  =

> =

> =

> I couldn't get this to work (your patches on top of 5.5-rc2). I added
> the GI in SRAT, and extended HMAT and SLIT accordingly.
> =

> I don't know if that's expected but I get an additional node in sysfs,
> with 0kB memory.
> =

> However the HMAT table gets ignored because find_mem_target() fails in
> hmat_parse_proximity_domain(). The target should have been allocated in
> alloc_memory_target() which is called in srat_parse_mem_affinity(), but
> it seems to me that this function isn't called for GI nodes. Or should
> SRAT also contain a normal Memory node with same PM as the GI?
> =

Hi Brice,

Yes you should see a node with 0kB memory.  Same as you get for a processor
only node I believe.

srat_parse_mem_affinity shouldn't call alloc_memory_target for the GI nodes
as they don't have any memory.   The hmat table should only refer to
GI domains as initiators.  Just to check, do you have them listed as
a target node?  Or perhaps in some hmat proximity entry as memory_PD?

To answer your question, SRAT should not contain a normal memory node
with the same PXM as that would defeat the whole purpose as we would have
been able to have such a domain without Generic Initiators.

Also, just to check, x86 or arm64?

Thanks for testing this.

Jonathan


> Brice
> =

> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
