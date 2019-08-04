Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D7A80C49
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yA0fnFS+2ZlZm9hvTsJoRwpWZisZcgfs5OPB8bs/DMQ=; b=IhVNoIfvUqtO4k
	HV1/ijqYgPvXalUecwAdmFd10O61At/HGB2FiYJat8Hpc3opoU690txNnLNqNvmZRnbJHhik7IhFN
	HRuT+9BLlwL0DmMQ9Q/GZ9GYzlN/I85qY/sJYQjm6WvIyk1/pxQKi1F3UTY+j5Mn/NNiXYFsRDKq7
	tpbADpvicDn9bX0JsE87ChUQStRooeenRBN7fsmJYLdBTPHB/wuoOUdjlyiXS9vGq5EO5dD3YtuJg
	JEmpLskv0DJZUpkTvvtmJgBOYJnbIRJJlPX8viPeoHdadXFCU3xlgFHUG2AkADkXPEwp1DQVce9Fh
	2HE/GNoTOrOzesLtk3dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMtJ-0006fc-9l; Sun, 04 Aug 2019 20:14:05 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMtD-0006fJ-S8
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:14:01 +0000
Received: from linux-e202.suse.de ([46.85.219.9]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MiaHf-1iWA0Z44Zj-00fjLj; Sun, 04 Aug 2019 22:13:49 +0200
From: Fabian Vogt <fabian@ritter-vogt.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
Date: Sun, 04 Aug 2019 22:13:46 +0200
Message-ID: <1676212.IEmuWfiXUz@linux-e202.suse.de>
In-Reply-To: <CACRpkda-5xu2-X5yo=dXchSvuD=ZmZSpTbGNrkv6V+UKs27xWA@mail.gmail.com>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <12154694.e2V3OH3Rcx@linux-e202.suse.de>
 <CACRpkda-5xu2-X5yo=dXchSvuD=ZmZSpTbGNrkv6V+UKs27xWA@mail.gmail.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZPrRox85xbudZBJheLSzA4a/12zpDpeL3Mfq2GW1bCEa4VY0Iyg
 L7ulPgS7AYIF9PrUuIcII+97cw/N8RIvUAWrS6Z1gj+/VTW3THhd4ihyAWZsMk2aipFRjlx
 VJm9dMLwI8bhKOrTj/TEr5nOg+53C86eQ8Zdsxh7HhExuAU7vUCh4nSJ/J2TKDgVEBlgLMW
 W95Gs8oLDaBMqjNk4ZfQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PlWs8CwP4o8=:qjk61i5fs8IYVoN/PrFvgh
 HoNIU8B2fgT3dPictcl07oi9/VX4h7g3OjRCt1XOPQQG9RtrCRZQdvpUHx1Q92T6hWL548dP8
 sz7pQuBds4bjRiSG4d3Q/KV4e4+FdxlSivgeXyeOta6G3HSNZNYj9fIBIeDFVqeBe6c8ctfI8
 DnkLJXcZ4DLjEVi8VuUJVdTLZHunwBJoxzUw9FBHJbc7SOYtnt9sf17PxoHkNNznCk3r6Je0O
 UBKEmPHxSwdRXiFgTP3EjdfGQEGtGasqG3cH+7usWAMjOvkF5sQ4yJRy2JZ9+Ar9Cg8FuVYYU
 TwydGj9hPvlgJjOblrXE0+08J4tMjEHmMshs7vhjnzT9rt8dwa9vIw0i6w48DpHPPelG3FFxZ
 XIoXfUt3/RVEhI6Ns4xnaG+KBZU4QbYQIFHwzSnB9tWV/cBjeYeIVQeh5vvvSWFSVeEqvQEv+
 90wNUUVLCldCELsqoSsUWS3i+vf/xnimex2hb83KKpOX4mIEscOqrpvmjUsKvYvHgnzBRuB30
 LI+fQjfH8jEu0H3nSRtc7zZTxFIOkwnVuk0bG8GqKIutb0S9iLSGOKeo77ZssRikebnNNopeM
 tsH8JLkdN6Xlkm+AHUz7B3NfLaXOUNrRD7E+r2nXMr3Wt3zYXJvZIFSWxBZJIjvkm5UnGoz3z
 kNF3MUDTaob50Zjuet1cPPBj0RWDhc2USLpIxCdSeujBaRRv8a1peR03DrYV0uUF56CflwgY2
 f5/N9B0aP8zXToBqsDFI3yQ8u5gJcLWRcdGxFtVyhoo5v46EH4Xgzo4gXaQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131400_208068_59E23B93 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Daniel Tang <dt.tangr@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Samstag, 3. August 2019, 11:51:59 CEST schrieb Linus Walleij:
> On Thu, Jul 25, 2019 at 9:26 PM Fabian Vogt <fabian@ritter-vogt.de> wrote:
> 
> > On a real CX the LCD displays shows content without
> > any other changes to the set, but has a ~3Hz pulsating effect scrolling from
> > the top to the bottom and the gray text changes color slightly.
> 
> So you mean something meaningful appears in the LCD
> but there are visual disturbances?
> 
> > Without the patchset applied everything looks perfectly.
> >
> > I tried setting vrefresh to 20, fb_bpp to 16 and forcing an inverted panel
> > clock, but the pulsing didn't change.
> >
> > Using the emulated CX I compared the contents of the registers and found
> > that only the IPC bit (which I tried to set, so that's likely not it) and
> > the interrupt registers have a different content.
> >
> > Any idea?
> 
> I think it's the clock settings in patch 2/3.
> 
> I just set them to "1000" (1MHz since its in kHz) based on some
> educated guesses.
> 
> The old driver set the clock to "1" (kHz) so just try that first,
> maybe it is really that slow.

Did that, it looked rather unhealthy for the LCD. Mostly white with some
glitching except for ~2-3 lines with content scrolling on the screen.

200kHz was still way to slow, so tried the opposite direction.
With a clock of 10MHz the display seems to be working fine and produces a
visibly stable output.

Thanks,
Fabian

> It's just that the old driver also set refres to 60 fps which doesn't
> add up, but I think that setting is simply ignored and that is why
> it works.
>
> Yours,
> Linus Walleij

---
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index e5cfe1398a3b..3addcdab8adb 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2763,7 +2763,7 @@ static const struct panel_desc arm_rtsm = {
 
 static const struct drm_display_mode nspire_cx_lcd_mode[] = {
 	{
-		.clock = 1000,
+		.clock = 10000,
 		.hdisplay = 320,
 		.hsync_start = 320 + 50,
 		.hsync_end = 320 + 50 + 6,
@@ -2791,7 +2791,7 @@ static const struct panel_desc nspire_cx_lcd_panel = {
 
 static const struct drm_display_mode nspire_classic_lcd_mode[] = {
 	{
-		.clock = 1000,
+		.clock = 10000,
 		.hdisplay = 320,
 		.hsync_start = 320 + 6,
 		.hsync_end = 320 + 6 + 6,




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
