Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811D0124A34
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5SwyV+NQL6c6rtzx8y8OxA98tROD+p4X5HoDlRsdVo=; b=LGTPmaSZnU23lv
	MFyQkt/WYCT0lxgb+oKwfY8h2lmHC2EYKX8/qylRIXjAoGGj8WTRe3x2KJtXRfSMcvY66LdLl/gd7
	JeWx7Fcgn67QyAUBAaOaz4xlDz9i7gpmDDZX3MfbDSRXI6h1EvcitjWj2vBOfqgGt7J71I5DUjWvo
	bv5jyAoifykTFE8aJDosv41Pq7aJcwRRhhzAXatsg4o/8Mpj5KeOUwVHy9mQ7zw4IDkDWPhTvfYAb
	WCWZZT7ecbCw1XY5cj1p7HCUa2Odx4f4vbUMD+xh17ZqGl0HpV5Di3L9aM7fUDQ9/Co6zzruKN+Hs
	cDmA4Gdu1llim710TchA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihafB-0000Yr-9Y; Wed, 18 Dec 2019 14:50:57 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaf0-0000Xs-Rl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:50:48 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 250F02B0021CA52D4578;
 Wed, 18 Dec 2019 14:50:43 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 18 Dec 2019 14:50:42 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Wed, 18 Dec
 2019 14:50:42 +0000
Date: Wed, 18 Dec 2019 14:50:41 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Brice Goglin <brice.goglin@gmail.com>
Subject: Re: [PATCH V6 0/7] ACPI: Support Generic Initiator proximity domains
Message-ID: <20191218145041.00005a11@Huawei.com>
In-Reply-To: <dc5f5502-09c6-d476-db0e-0af3412bb031@gmail.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <dc5f5502-09c6-d476-db0e-0af3412bb031@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_065047_042362_810CEB7F 
X-CRM114-Status: GOOD (  17.52  )
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
 linuxarm@huawei.com, Keith Busch <keith.busch@intel.com>, linux-mm@kvack.org,
 jglisse@redhat.com, Sudeep Holla <sudeep.holla@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Andrew
 Morton <akpm@linux-foundation.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 12:32:06 +0100
Brice Goglin <brice.goglin@gmail.com> wrote:

> Le 16/12/2019 =E0 16:38, Jonathan Cameron a =E9crit=A0:
> > Introduces a new type of NUMA node for cases where we want to represent
> > the access characteristics of a non CPU initiator of memory requests,
> > as these differ from all those for existing nodes containing CPUs and/or
> > memory.
> >
> > These Generic Initiators are presented by the node access0 class in
> > sysfs in the same way as a CPU.   It seems likely that there will be
> > usecases in which the best 'CPU' is desired and Generic Initiators
> > should be ignored.  The final few patches in this series introduced
> > access1 which is a new performance class in the sysfs node description
> > which presents only CPU to memory relationships.  Test cases for this
> > are described below.  =

> =

> =

> Hello Jonathan
> =

> If I want to test this with a fake GI, what are the minimal set of
> changes I should put in my ACPI tables? Can I just specify a dummy GI in
> SRAT? What handle should I use there?

Exactly that for a dummy GI.  Also extend HMAT and SLIT for the extra
proximity domain / initiator.

For the handle, anything is fine.  This patch set doesn't currently use it.
That handle was a bit controversial when this spec feature was being
discussed because it can 'disagree' with information from _PXM.

The ACPI spec ended up effectively relying on them agreeing.  So any handle
must identify a device that either doesn't have a _PXM entry or that
has one that refers to the same proximity domain.

Also note there is a fiddly corner case which is covered by an _OSC.
If you have a device that you want to use _PXM to put in a GI only
domain then older kernels will not know about the GI domain. Hence
ACPI goes through a dance to ensure that a kernel that hasn't
announced it is GI aware, doesn't get told anything is in a GI only domain.
For testing this series though you can just ignore that.

The logic to actually pass that handle based specification through to the
devices is complex, so this set relies on _PXM in DSDT to actually associate
any device with the Generic Initiator domain.  If doing this for a PCI
device, note that you need the fix mentioned in the cover letter to actually
have _PXM apply to PCI EPs.  Note that the _PXM case needs to work anyway
as you might have a GI node with multiple GIs and there is no obligation
for them all to be specified in SRAT.

Once this initial set is in place we can work out how to use the SRAT
handle to associate it with a device.  To be honest, I haven't really
thought about how we'd do that yet.

Thanks,

Jonathan


> =

> Thanks
> =

> Brice
> =

> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
