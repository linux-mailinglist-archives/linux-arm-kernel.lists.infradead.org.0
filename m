Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E24B2EA4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 08:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i1JnWO7X3ByIDeTdPnP2tl7fzC0HfEwDWMSY8zUCDxU=; b=Yb7jdjJqUcLnrrgOUXxENJKB8S
	odJ4NLCQhehd5iXkEHru7jSsze6Ziv3vXpZPmAP6Em9eti+Eg4mpZoC3lX0AX7Cwl/RJOQWGFar9M
	vhp07MTsv1f5+G4X2hngIpJ88dGy2YiFPNyk8VoDJwKdnRdifrH/so7sAP29lXN5bAacEs+HwpAnX
	K8yMszZeW4AaVHpsoEkEYR8AXkHcchRq25LT1tOpnvbKRN3iKL4gFdwUJ+QaxGdryl/5T6/Ul20sT
	m0ZJGTx98jJZDTyx6PRkuLlqe/OuqCk0pvusvcToKYAaqU1i8sdYHRy7MlPfRxYpII/TqtASC3wob
	Pjwn7/rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9O3J-0005ve-4R; Sun, 15 Sep 2019 06:30:29 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9O30-000522-Fx
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 06:30:12 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 8A105440584;
 Sun, 15 Sep 2019 09:30:01 +0300 (IDT)
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch>
User-agent: mu4e 1.2.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
In-reply-to: <20190910185033.GD9761@lunn.ch>
Date: Sun, 15 Sep 2019 09:30:00 +0300
Message-ID: <87muf6oyvr.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_233010_759902_1F40DF66 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, tinywrkb <tinywrkb@gmail.com>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Tue, Sep 10 2019, Andrew Lunn wrote:
> On Tue, Sep 10, 2019 at 06:55:07PM +0300, tinywrkb wrote:
>> Cubox-i Solo/DualLite carrier board has 100Mb/s magnetics while the
>> Atheros AR8035 PHY on the MicroSoM v1.3 CPU module is a 1GbE PHY device.
>>
>> Since commit 5502b218e001 ("net: phy: use phy_resolve_aneg_linkmode in
>> genphy_read_status") ethernet is broken on Cubox-i Solo/DualLite devices.
>
> Hi Tinywrkb
>
> You emailed lots of people, but missed the PHY maintainers :-(
>
> Are you sure this is the patch which broken it? Did you do a git
> bisect.

Tinywrkb confirmed to me in private communication that revert of
5502b218e001 fixes Ethernet for him on effected system.

He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
there was a plan to use a different 10/100 PHY for Solo/DualLite
SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
AR8035 PHY that supports 1Gb.

Commit 5502b218e001 might be triggering a hardware issue on the affected
Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
the moment.

baruch

--
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
