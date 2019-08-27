Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA719F499
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 22:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b34Jpx/CvkWIUNyrUGijJ67FCPqWH1QCRfEGwdZkHvA=; b=AsRl/6YP3Z6e3n
	rDAhoRyj+3i9RKNFWvIxbmZR3LeEgRLMwRLYqad1SAulnpSo6jhAoUw81n4FVU2LWSQLBLwaH0Foq
	bioZniwFCIzVupzA8liYuNLk51rj/1C3fcrM5JhQTVPtpsThCFpfSM9GPZdroT5wAkKt4sVvIsrgN
	iBtCWW4aVTYjuKQi9ZloVNEns5tLMnzi2xjV7lFaKwykpub/4Rqr2Ho8iWkherXJOfapCqw0XIZSn
	BgWO8pBm8EUTOzKtOfiE42e00k0zNtQ8JLd/F9Rh5F552ZmDGhPL7it+3BXgXGMpoJ2H4zD/UYzv0
	nITtcsBBmFf3st02rCZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2iW0-0000zh-7o; Tue, 27 Aug 2019 20:56:32 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2iVh-0000yo-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 20:56:15 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 2FFD780719;
 Wed, 28 Aug 2019 08:56:06 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1566939366;
 bh=Qkj1mG0wHsGHa/gKm5/x9q0JZlgBpJKgAE+1iQkqh2Q=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=iN/lZg2JjWlXXd7voA+WGY6nUBTzOuOMmdO6MEpyAcO5ls/YCOx4rTVA4nDNs7r9H
 aLJ9wjk8ZPdg6LYkDaNWao/pkECE2/NEzyil5tR2jNFXWfpmAq0vnqycnZD8N3uPZL
 qV/5p3eBVw29pmpXD79jKWyqrGMF4J3GMa9b8i6IH5gZwdrMi3KKvoGgzhHdHMG6N6
 dlfUOmPEOlsGdPgkbab4LlF3wi5cd2mIeYxoZpcwaVhlWt71E707/1aCVeneqMv8+R
 3oByeNDpbuVz2Nv/Z2/zHNIJEa8aKFSFbt0S2dpIkJlZiM2ROO9Q+GojJZqV2xL9uV
 8AFUJX/3Bxm8w==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d6598e60000>; Wed, 28 Aug 2019 08:56:06 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Wed, 28 Aug 2019 08:56:05 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Wed, 28 Aug 2019 08:56:05 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: Re: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Thread-Topic: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Thread-Index: AQHVOGTGof7sJp7iK06MfTI7WDVk4qcIBgyAgAABHQCABA5YgIACH/QAgADERoA=
Date: Tue, 27 Aug 2019 20:56:05 +0000
Message-ID: <b1e2e5b325b3c4453e2ed63c17e1e11d6b24f099.camel@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
 <20190823104621.GY13294@shell.armlinux.org.uk>
 <20190823105020.GZ13294@shell.armlinux.org.uk>
 <836653f04f526333e8dbd45361329731f8dfe2ea.camel@alliedtelesis.co.nz>
 <20190827091336.GI13294@shell.armlinux.org.uk>
In-Reply-To: <20190827091336.GI13294@shell.armlinux.org.uk>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:2872:a49:e4e9:7214]
Content-ID: <DB7AD1FE2BCAAD49A227E6CDD248BBBA@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_135613_726277_4FDC1E5C 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "patches@armlinux.org.uk" <patches@armlinux.org.uk>,
 "gregory.clement@free-electrons.com" <gregory.clement@free-electrons.com>,
 "bp@alien8.de" <bp@alien8.de>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 10:13 +0100, Russell King - ARM Linux admin
wrote:
> On Mon, Aug 26, 2019 at 12:46:44AM +0000, Chris Packham wrote:
> > Hi Russell,
> > 
> > On Fri, 2019-08-23 at 11:50 +0100, Russell King - ARM Linux admin
> > wrote:
> > > On Fri, Aug 23, 2019 at 11:46:21AM +0100, Russell King - ARM Linux
> > > admin wrote:
> > > > I can't apply this series - this file does not exist in my tree,
> > > > and
> > > > from what git tells me, it never has existed.  Maybe it's in
> > > > someone
> > > > elses tree?
> > > 
> > > I think the file is in my tree, just as arch/arm/mm/cache-aurora-l2.h
> > > which is where it has been since it was originally submitted in 2012.
> > 
> > Sorry there is a missing patch that moves it next to the
> > hardware/cache-*.h. I can send the missing patch or I can re-send the
> > whole series. If I do send the whole series do you want me to rebase it
> > against a particular tag/tree?
> 
> Just send the single patch to the patch tracker - having it against
> 5.3-rc is fine (I don't think anything has changed for a long time
> with that file.)

Done 
https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8902/1

I'm still not entirely sure what to put for the KernelVersion tag. In
hindsight think I misinterpreted your comment above and set it to 5.3rc
(where you meant a series based on 5.3-rcX should apply cleanly). It
probably should have been next or master because it's way past the
merge window for 5.3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
