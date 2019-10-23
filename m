Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91922E111F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 06:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PUiEp8JvswQ53TRVvZ96Vm8moHyC3zWB1ijr+PXAm4=; b=a9BBhVFrvj36tB
	qALznKczCRYEBPvaWuFXKgp/Z4rw3Yw3hnr7HsjGgbnbMTqayZ8sBF2qNabKcyKYMUtv0g1VHrRj1
	g45PTYI+Dxlbv4IxcUS3Hk9JB1FWVEZcKheqyTqapkgW0jXD0TiOKvvIDCx03CD6Rh0Efm4InfMOa
	cGeZpAFbBpPXqE6wUZ2z75rwttShy2m8YQv/DUkWou2+Y0VzqjpPrVqSNLJsmOVnndi3jDuOfPOYt
	GAWaPLb51TmlDfdsbIjI49ZRGj4l/ZEZT7eaC09Ugc//L48peTXcODLj/yvff1MnFzQRdN5kYlog/
	jHzQAWBdYBaLXw1CmNqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8Ss-0003aq-Rc; Wed, 23 Oct 2019 04:41:42 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8Si-0003Zx-Fj
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 04:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1571805680;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=p84wWu+8rvP9qG2T8V0aa5d86OgYm2mqo8DV3AkG+rs=;
 b=KzUQFnwEe+jSLCwoode0L0ux+hBdgyM4ghS96vWdvtBhSnUtOx4X0z216meCrb8ll8
 dMbCB1hzSjiveblr3aLr8FTiiSi7GtKsZNTsVl4YxXo7Jb8QEGwg4cxRFbOfKmwkpX3E
 FZNwo/wFTGQPRRCszikjRnbJKveJTFHcUcSBCpzIAchv0ZvcW+4fbUJyzg5qhgAmBTER
 L6VXhN3J9IiuzRoH9vAJiZ/bmqdXzUEcm5ZHbJ/pX5Bpuh51b36YAxHIGd60ho0eZozA
 ZU7kjv7arKSzIlqdMPh0fYVLzx+YwbYWKsbaR85n6K/oQyi5rtbUJfb9fnRUnKlmtWxT
 sjJA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PswDOqm1w="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.28.1 DYNA|AUTH)
 with ESMTPSA id R0b2a8v9N4fBSsx
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Wed, 23 Oct 2019 06:41:11 +0200 (CEST)
Subject: Re: [PATCH 1/2] configs: ARM: omap2plus: Enable OMAP3_THERMAL
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20191022221919.GF5610@atomide.com>
Date: Wed, 23 Oct 2019 06:41:11 +0200
Message-Id: <1CE62E4E-1A38-448C-9197-8FA16747F942@goldelico.com>
References: <20191007220540.30690-1-aford173@gmail.com>
 <20191022162223.GU5610@atomide.com>
 <CAHCN7xLy975mxX+cm56PMx-TKODEZjYPfMHb=byspKxYXXq7OA@mail.gmail.com>
 <20191022221919.GF5610@atomide.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_214133_118000_7FBF5B2D 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Adam Ford <aford173@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 23.10.2019 um 00:19 schrieb Tony Lindgren <tony@atomide.com>:
> 
> * Adam Ford <aford173@gmail.com> [191022 19:01]:
>> On Tue, Oct 22, 2019 at 11:22 AM Tony Lindgren <tony@atomide.com> wrote:
>>> 
>>> Hi,
>>> 
>>> * Adam Ford <aford173@gmail.com> [191007 15:06]:
>>>> The some in the OMAP3 family have a bandgap thermal sensor, but
>>>> omap2plus has it disabled.
>>>> 
>>>> This patch enables the OMAP3_THERMAL by default like the rest of
>>>> the OMAP family.
>>> 
>>> Looks like this breaks off mode during idle for omap3, and that's
>>> probably why it never got enabled. The difference in power
>>> consumption during idle is about 7mW vs 32mW for the SoC as
>>> measured from torpedo shunt for main_battery_som.
>>> 
>>> I think the right fix might be simply to add handling for
>>> CPU_CLUSTER_PM_ENTER to the related thermal driver to disable
>>> it during idle like we have for gpio-omap.c for example.
>> 
>> I am not sure I know where to start on fixing that issue.  Would you
>> entertain enabling the driver if we set the device tree to 'disabled'
>> by default?  This way if people want to to use it, it can be enabled
>> on a per-device option.  Once the power stuff gets resolved, we might
>> be able to enable it by default.  For people who are planning on using
>> the DM3730 @ 1GHz in high temp environments, I am not sure they'll
>> care about low power.
> 
> They should both work fine together though. They are not mutually
> exclusive features.
> 
>> I'll try to look into it when I have time, but I was hoping a
>> compromise might be a reasonable work-around.
> 
> It should be hopefully a trivial fix.. I have not looked at the
> driver code though.

If I am taken right, it is the drivers/thermal/ti-soc-thermal/ti-*.c
which is a common driver for omap3, omap4, omap5. They only differ
in the thermal data and which registers and bits are used to access
the ADC.

So is this problem with off mode also known for omap4 and omap5?

BR,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
