Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93649FB536
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 17:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bm5xkDPAaE1mIVcNPlUJHXo224ZmFC8mZzZ8SBG0AqI=; b=AFDLTKuI4ns5FnE1F7LVXKgkc
	B1PKUo46T5q1MXJYk9iv28zd2zPtFCrxe2AiBGaaU7of0weFOYFX9IdAKKRHCB5tQ1n77ImM/+S8c
	pvAixCUxp7abo359uCk6jqpgUjhjJ7LNBECW5WWDuAPNVp5/xVGc8sCLXyitgxud+yzXkDer55Q+P
	58vY3iMxNVFzOzFKFxXE2EiVd3SMsbFApon3phiKo1Sbp4y32TtP2obBfgMWxe31mTceNjs1R1O1e
	7+1Ot4+YOT4xn9RfNwEB2hCDOdGAM4iZPsQODnMNMd7oUbGwPm2tO+ZZtVcoodtpM18LpVBx/I1cn
	fDWbYVW7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvc6-0007ZO-6w; Wed, 13 Nov 2019 16:35:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvbw-0007YR-Ep; Wed, 13 Nov 2019 16:35:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 388EA28E964
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v2 1/4] drm: bridge: dw_mipi_dsi: access registers via a
 regmap
In-Reply-To: <CACvgo51sNzSHCcix89giYEq=iGJa_-nYbgpOKY-MxPRGCM_cRQ@mail.gmail.com>
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
 <20191106163031.808061-2-adrian.ratiu@collabora.com>
 <CACvgo51sNzSHCcix89giYEq=iGJa_-nYbgpOKY-MxPRGCM_cRQ@mail.gmail.com>
Date: Wed, 13 Nov 2019 18:35:30 +0200
Message-ID: <87r22bhgz1.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_083516_632418_EC034B24 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, "Linux-Kernel@Vger. Kernel.
 Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019, Emil Velikov <emil.l.velikov@gmail.com> 
wrote:
> On Wed, 6 Nov 2019 at 16:30, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Convert the common bridge code and the two rockchip & stm 
>> drivers which currently use it to the regmap API in 
>> anticipation for further changes to make it more generic and 
>> add older DSI host controller support as found on i.mx6 based 
>> devices. 
>> 
>> The regmap becomes an internal state of the bridge. No 
>> functional changes other than requiring the platform drivers to 
>> use the pre-configured regmap supplied by the bridge after its 
>> probe() call instead of ioremp'ing the registers themselves. 
>> 
>> In subsequent commits the bridge will become able to detect the 
>> DSI host core version and init the regmap with different 
>> register layouts. The platform drivers will continue to use the 
>> regmap without modifications or worrying about the specific 
>> layout in use (in other words the layout is abstracted away via 
>> the regmap). 
>> 
>> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com> 
>> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com> 
>> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com> 
> 
> I should have been clearer earlier - I didn't quite review the 
> patch.  Is is now though.  Reviewed-by: Emil Velikov 
> <emil.velikov@collabora.com>

Sorry about that, I got confused and thought you reviewed it all.
 
> 
> Admittedly a couple of nitpicks (DRIVER_NAME, zero initialize of 
> val) could have been left out.  It's not a big deal, there's no 
> need to polish those.

I'll address them in v3 as well as updating your mail address.

Thanks for reviewing!

>
> -Emil
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
