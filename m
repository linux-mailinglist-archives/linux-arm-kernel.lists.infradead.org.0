Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835531005C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=759hOl6n75cq9OUSZGvJLdM0vrECWpTZj7iICSoYBzU=; b=FI9punyrUTZ4EO
	Y7LwkgybfQ9enK88nAqrMlcPUVBOPhvusEfmtCEa/Ctg1JpHKd19SP5c+hgPh+VWPOWwSSUNd3qFx
	fkSq67DfjFZ6ioC4rQEMKz+elE/5nliJkm9V1hX4aIFuQiWBT64YVZBfWn9V4qU8DxHlmpTFQzksf
	8Dn+ZLVLohIlmoMi8P+inKo2Ft3dD4WxT8ZxMJR9dl3oX+VmaHxQPpMFf7UOxq8si8dl5SY+hd++S
	NREwN0L2i0WT2N8MNbqJUfK0J6A4CMHqF2bUqFPbnB0SgYaSsICGZN+hZ38PLp4flp80RRabsrhRs
	0rHcm0B0NTE7MzpRtWFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgKC-0004vj-Kd; Mon, 18 Nov 2019 12:40:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgJv-0004uw-8a; Mon, 18 Nov 2019 12:39:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4EB901FB;
 Mon, 18 Nov 2019 04:39:54 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AEE583F6C4;
 Mon, 18 Nov 2019 04:39:53 -0800 (PST)
Date: Mon, 18 Nov 2019 12:39:51 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Message-ID: <20191118123951.GM43905@e119886-lin.cambridge.arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
 <20191118115930.GC9761@sirena.org.uk>
 <a59da4a4-de88-62a5-5f44-001f8e30221e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a59da4a4-de88-62a5-5f44-001f8e30221e@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_043955_346239_06BDE76B 
X-CRM114-Status: GOOD (  14.78  )
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
Cc: lorenzo.pieralisi@arm.com, heiko@sntech.de, linux-pci@vger.kernel.org,
 shawn.lin@rock-chips.com, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 12:20:10PM +0000, Robin Murphy wrote:
> On 18/11/2019 11:59 am, Mark Brown wrote:
> > On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
> > > Null checks are both cheaper and more readable than having !IS_ERR()
> > > splattered everywhere.
> > 
> > > -	if (IS_ERR(rockchip->vpcie3v3))
> > > +	if (!rockchip->vpcie3v3)
> > >   		return;
> > >   	/*
> > > @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
> > >   		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> > >   			return PTR_ERR(rockchip->vpcie12v);
> > >   		dev_info(dev, "no vpcie12v regulator found\n");
> > > +		rockchip->vpcie12v = NULL;
> > 
> > According to the API NULL is a valid regulator.  We don't currently
> > actually do this but it's storing up surprises if you treat it as
> > invalid.
> 
> Ah, OK - I'd assumed NULL wasn't valid based on regulator_enable()
> immediately dereferencing its argument without any checks. If we'd rather
> not bake in that assumption then this patch can happily be ignored.

I'd suggest we drop this patch.

"IS_ERR(ptr)" is not the same as "!ptr", for values of ptr between 0 and
-4095 inclusive.

Regardless the effect of this patch with the regulator framework, I don't
think we want to create an example that others may follow.

Thanks,

Andrew Murray

> 
> Thanks,
> Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
