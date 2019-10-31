Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C29EADE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 11:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfFxSLVz5xUzlM9WQh8y33wG1pPOWD+91ATsV9nE1hU=; b=m7BBJFkAI1RAPN
	vAIXM+4KZllBtYon1yEOj8XNHomfgc7UZ+vMa00FJznTbFA/fYRg5PeShXWEHY5Z6cIDd3UeWzmUy
	hySUWOt/TpF9fJj5Vjjq7bHdahoNMpoMgtvAtBhEYYtfBdgFrmgamfLTCZsosdFXU7GMJPh5o+PMD
	S+klO+7XYFjaBZkDpdvYsq+35nxXO5h93FPtUsPORapjm3sCOX+LaIpHEU/TzgTtSoRgKQsr4XNRc
	I3Hvlp+3CixwcoZhSlZLjbNzxeW6eq7evQKIb0nI3Pf+gPAYmP0sVyT7plHB1WCFdXKEcCOLUY1C6
	Fns2wiVUvaN3gGJbXRlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ84G-000867-MN; Thu, 31 Oct 2019 10:52:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ840-00081C-66; Thu, 31 Oct 2019 10:52:25 +0000
Received: from dhcp-159-84-61-180.univ-lyon2.fr ([159.84.61.180]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQ83h-0004eH-85; Thu, 31 Oct 2019 11:52:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v9 6/6] ARM: dts: rockchip: Add HDMI audio support to
 rk3288-veyron-mickey.dts
Date: Thu, 31 Oct 2019 11:52:02 +0100
Message-ID: <3977506.63UqibiCOv@phil>
In-Reply-To: <20191028071930.145899-7-cychiang@chromium.org>
References: <20191028071930.145899-1-cychiang@chromium.org>
 <20191028071930.145899-7-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_035224_398317_BCD9E60D 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 devicetree@vger.kernel.org, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 28. Oktober 2019, 08:19:30 CET schrieb Cheng-Yi Chiang:
> Add HDMI audio support to veyron-mickey. The sound card should expose
> one audio device for HDMI.
> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>

applied for 5.5 after removing the ".dts" from the patch subject

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
