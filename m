Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE909F4D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uk5q/8428ATVLOyKV12WIFCjykIVdblVMIkHKTooTjk=; b=QB6dkHDL9pMKs7
	6+bmqOUkHUbBMih96+JlJC0HRlhtfaCafSWQ6rS5vrG46Vw3O9aywHZ/20zVqcPSZ2Guj3ClPwbdg
	lvfnNGBxpVaccs6uSCkci3S3TjKP+4lnfvVi3auUfqACtEFJK6+STrMmw0D5zKhxo/cD9F4A9AgwQ
	BqjYeIW0r7ubet0IuAoZIs4rLaWOPS0/tnUraq/p9677/4iF/IUAXSmgHZB7WTsvVHQ9Wf8elxnv+
	R76bK0bQkUyIQDxPwWjMeJkRruF+hO9ljWOB8265nYZa21NWvzWp9WwPTKbolU7Jpe+ortHIjfHXm
	PcKQpFO3qAo7WF/WkVyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2imX-0006GQ-Ff; Tue, 27 Aug 2019 21:13:37 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2imH-0006Ft-Lh
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 21:13:23 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id F277D80719;
 Wed, 28 Aug 2019 09:13:17 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1566940397;
 bh=nYYXFIfdeFGOegAOI6d+a0Qaz5wLVRVTNwVY6Zzetno=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=d8n8spVnEkjJVubA6jHh9EP5wdOKj9b+K4oAnR+GFWI9QiFeZ54i91M8uepIasYsS
 fnMS8wUrgVr750Vo3XiFBIGVZOzKsvRchemmjeyxCEg0d2eWWYLAfTVSPzuO8WQdq2
 4kfe75u7HSl86mmhlfmN9UJ2D7U3P9GQZNtD9PwCGyOMlB2+s/w5fCVJw1KQLVBwc6
 1fH8/Bse0tsNljGZ8vvOdX4zs9hz0GU5Uw4Pd/xBdbGUDX6qlv1+DSJ263YInVIzSM
 cSaca3wcEVgb3YMHJOfBMwCP/YLGif+uiYSZLQ5+0Hiv/KG+cK9YGA4noxxa7o5sfK
 5Mrdjwb9cRbnA==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d659ce90000>; Wed, 28 Aug 2019 09:13:18 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Wed, 28 Aug 2019 09:13:12 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Wed, 28 Aug 2019 09:13:12 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: Re: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Thread-Topic: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Thread-Index: AQHVOGTGof7sJp7iK06MfTI7WDVk4qcIBgyAgAABHQCABA5YgIACH/QAgADERoCAAAMcgIAAAauA
Date: Tue, 27 Aug 2019 21:13:11 +0000
Message-ID: <0e9c7c7cb17b6fdea8d49b06925badb0b3d2ff8b.camel@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
 <20190823104621.GY13294@shell.armlinux.org.uk>
 <20190823105020.GZ13294@shell.armlinux.org.uk>
 <836653f04f526333e8dbd45361329731f8dfe2ea.camel@alliedtelesis.co.nz>
 <20190827091336.GI13294@shell.armlinux.org.uk>
 <b1e2e5b325b3c4453e2ed63c17e1e11d6b24f099.camel@alliedtelesis.co.nz>
 <20190827210713.GO13294@shell.armlinux.org.uk>
In-Reply-To: <20190827210713.GO13294@shell.armlinux.org.uk>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:2872:a49:e4e9:7214]
Content-ID: <4419FE1761C1324BB3ED319618247254@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_141322_275311_D345502B 
X-CRM114-Status: GOOD (  22.61  )
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

On Tue, 2019-08-27 at 22:07 +0100, Russell King - ARM Linux admin
wrote:
> On Tue, Aug 27, 2019 at 08:56:05PM +0000, Chris Packham wrote:
> > On Tue, 2019-08-27 at 10:13 +0100, Russell King - ARM Linux admin
> > wrote:
> > > Just send the single patch to the patch tracker - having it against
> > > 5.3-rc is fine (I don't think anything has changed for a long time
> > > with that file.)
> > 
> > Done 
> > https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8902/1
> > 
> > I'm still not entirely sure what to put for the KernelVersion tag. In
> > hindsight think I misinterpreted your comment above and set it to 5.3rc
> > (where you meant a series based on 5.3-rcX should apply cleanly). It
> > probably should have been next or master because it's way past the
> > merge window for 5.3.
> 
> Think about it as "which kernel version was _this_ patch generated
> against" - it's a guide for me to know which kernel version it
> should be applied to.  The nearest Linus release (rc or final) is
> generally sufficient.
> 
> If it doesn't apply to my current base, then I might check out that
> version, apply it there, and then merge it in, resolving any
> conflicts during the merge.
> 
> It started off with a different purpose: when we had the older
> development system, such as the 2.x series kernels, we would have
> even x being the current stable kernels, and concurrently we'd
> also have x+1 as the development series.  When someone sent me a
> patch back then, it was important to know which kernel series it
> was meant for.
> 
> I decided not to get rid of it because it provides useful
> information when patches don't apply, and gives more options
> than me just discarding the patch with a comment saying it
> doesn't apply.
> 

Thanks for the info. So 5.3-rc is not as wrong as I thought it was.

One could even summarize the above as.

  git format-patch --add-header \
      "KernelVersion: $(git describe --abbrev=0 HEAD)"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
