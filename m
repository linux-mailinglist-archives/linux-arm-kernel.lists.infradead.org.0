Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194951BA2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HHtgIbmiJpLbOxj6sRdEslMk7OulheDUh9xBAWb6Xqk=; b=ptQ3rW/3rLVgdSC+fqVdsnsQX
	IDFMlp6OpqA7cGVBJI1K0QvWRaZecDx92PfOYw8/vtVJ9Fw5D/6r1t1MhrwylOOaLrF8da1hj/YAA
	WtdhNy8KqfVtTJJGdqxR4+gvX2oc3qN5nnf1FI/lxVIzkBLWb70+KCunJYIMWRCfFQIYBvvDVTyDH
	5KksdIwknzmJsGhB9B5D6J8AgiyLAoJINz8gr409YK/9ft/p2YW/KjtqvSVPxs7CNWckepTavN4Jv
	tPRk27gt/xfpFNtA7wxeBb0I8oI8T/ycgpS+NavPl6a2PCTafY/PWL+42HJotBov9gl+J3DmuEEAh
	KaneHluZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCzS-00010h-Dx; Mon, 13 May 2019 15:35:46 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCzL-000103-0n
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:35:40 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 38E244E204B; Mon, 13 May 2019 15:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557761738; bh=IA5QAKvFGl/GldPEQRgRzpBt5N4v+SgzFVD8uRxNccQ=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=Gr6lUiLUBt9Z2GOjRtJI5PlFgszE/UujExaNo5g6icub4nEHuS/ux+ZfMt6SYEMS8
 ry99GHzRa1x4enT/IOYkAM7FqhxRIV8OWYf6u2+BpanqGQoQPJLboa8dRxZhC7VJQ/
 KEpFFo4MgOEHr90KjPnImdi/poHDRSw4y/lXWaMQ=
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v9 1/3] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Mon, 13 May 2019 08:35:38 -0700
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <0f355f524122cb4dd6388431495a9d182e3ed9d6.camel@perches.com>
References: <20190513145539.28174-1-angus@akkea.ca>
 <20190513145539.28174-2-angus@akkea.ca>
 <0f355f524122cb4dd6388431495a9d182e3ed9d6.camel@perches.com>
Message-ID: <11c9a715ee0599e50359eb5ad5bd093e@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_083539_106820_D62CEEB0 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel-owner@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joe,

On 2019-05-13 08:11, Joe Perches wrote:
> On Mon, 2019-05-13 at 07:55 -0700, Angus Ainslie (Purism) wrote:
>> This is for the development kit board for the Librem 5. The current 
>> level
>> of support yields a working console and is able to boot userspace from
>> the network or eMMC.
> []
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts 
>> b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
>> new file mode 100644
> 
> Perhaps add an entry in the MAINTAINERS file for this
> .dts file similar to other freescale boards?

The MAINTAINERS files has this entry

ARM/FREESCALE IMX / MXC ARM ARCHITECTURE
M:  Shawn Guo <shawnguo@kernel.org>
M:  Sascha Hauer <s.hauer@pengutronix.de>
R:  Pengutronix Kernel Team <kernel@pengutronix.de>
R:  Fabio Estevam <festevam@gmail.com>
R:  NXP Linux Team <linux-imx@nxp.com>
L:  linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
S:  Maintained
T:  git git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
N:  imx
N:  mxs
X:  drivers/media/i2c/


Shouldn't the "N: imx" cover this board already ?

Maybe I misunderstood, are you suggesting I add an new entry for "F: 
arch/arm64/boot/dts/freescale/*" ?

Thanks
Angus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
