Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA70EDFD5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSYUY/Ety+xF/yo9bAhIxS/FAKLaButBLhmuIItDUic=; b=F7vNsrkHUhWo/8
	KP3DaCn3k9BPT8cLjPcHXueJIijV3+WhkB4CuhBiwOVy18YZib4KZXv4BP2axkl6qLWrioOTDd3St
	j2qGtkV0/WpfPhFS3qA62xfmAOcQKzDAP++sAYH1xo1rkbvpsRGaUhXopDm8Xn6kbTw5hXPo86bzY
	VF6CuDr6pOaTn1gJWEHIDuaPkeIorlsEuN4aMtj9HILgM3Pg8k8NZa9x4DopPzF/iNz/t0SzO7arU
	AybE085aiVZoZNoAPRzyPv+ImaFyZqfeqABbW8TVET0vcjr7s2a3DRCniIMoXfELlojkZPFTDz4lX
	IIAQrNwTUY9igcp5sB/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbI5-0005h2-IO; Mon, 04 Nov 2019 12:17:01 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbHx-0005g4-Bg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 12:16:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572869808; bh=KCFoy8DEuYBh4BpeRyFcEMigPcCpT5yYzcAzcagUIs4=;
 h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
 b=CdhAcD1TaKtfCfj2iNbv9h3SK1MnjM7OKVHMIgbtizM66lAc3IplaQ5wtrkdQubkr
 is7SXs0ZAS9+oS/nX7oNBsCjZzCLasEctUuyrM8zllMtksBfLkSVRcoCmvYmfYuLIP
 zLpVg+HzvGshd1RWscfjtZUttHDzlJJHB4F89kb8=
Date: Mon, 4 Nov 2019 13:16:48 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 4/4] arm64: dts: allwinner: orange-pi-3: Enable USB 3.0
 host support
Message-ID: <20191104121648.jxgs2eoj6loh2as2@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 linux-sunxi@googlegroups.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>,
 Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20191020134229.1216351-1-megous@megous.com>
 <20191020134229.1216351-5-megous@megous.com>
 <20191021110946.gxmib3to7n7v2vof@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021110946.gxmib3to7n7v2vof@gilmour>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_041653_569256_AECD2A6F 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-kernel@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Maxime,

On Mon, Oct 21, 2019 at 01:09:46PM +0200, Maxime Ripard wrote:
> On Sun, Oct 20, 2019 at 03:42:29PM +0200, megous@megous.com wrote:
> > From: Ondrej Jirman <megous@megous.com>
> >
> > Enable Allwinner's USB 3.0 phy and the host controller. Orange Pi 3
> > board has GL3510 USB 3.0 4-port hub connected to the SoC's USB 3.0
> > port. All four ports are exposed via USB3-A connectors. VBUS is
> > always on, since it's powered directly from DCIN (VCC-5V) and
> > not switchable.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> 
> Those last two patches are fine with me, I'll merge them once the phy
> driver will be merged.

PHY driver has been merged. You can now pull these patches too, when
you like.

See here: https://git.kernel.org/pub/scm/linux/kernel/git/kishon/linux-phy.git/log/?h=next

Thank you,
	o.

> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
