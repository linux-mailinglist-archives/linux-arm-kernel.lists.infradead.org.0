Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B9E6D26
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 08:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9rQggfm5KYlWRZM0OIQyGM9zTLzVhM5CZqWkoZKo4A=; b=nBUHIEpUE2GVa0
	PPCjDnZeVQbWtq7nZKPAwQo8Oq/K/xbdlspFGBaJSPWhBJRnsDVkTIEWNUrnm6XYEfIlyiNJQEtDb
	6CCVy7vsmQEuFybyOarj5wSGGjhZPSSKSkmWSJTSbdpd6FreDhI7ulxDgzbtXIl/P1VOjfBVX4iS6
	Hgdc/SVQvYh/nmfZKw56iYR61f6X7k65hvAzq/ZCuaVD4DIiAk5kvZ94970DxCihfbdm1WQc0KhXS
	1X5i1OQUh/CsKvU4iS4Xs5Rs0rt74g1Pa/LZ7YWZMeNmD+QkbZzqV/orV5H4EypTRQKraPFT9aejp
	A3ch8dGph64UUJieai+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzMB-0007Ux-93; Mon, 28 Oct 2019 07:22:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzL9-0006la-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 07:21:25 +0000
Received: by mail-pl1-x642.google.com with SMTP id t10so5146019plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 00:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SjvUltuh2v1/qjjUiDFm1v63Jt23MLQuB40iH2adgOI=;
 b=buMahIY2QkRhxUMbtrIj3QU2PwGHfajv7+ks2hGSjMkp72N2uLGZOgxlF9/W6Fwu5A
 mkL0SiRP70ryL4HwrbZhXGjw82cfTiIZERn9FuzGmR3FYXWw5EIZaQKjD+rZuvl4bjHV
 ZpFBOdPdzHyMDjCJr9cA+29/2iblFNKU///AE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SjvUltuh2v1/qjjUiDFm1v63Jt23MLQuB40iH2adgOI=;
 b=eio0cWuDLNVsM9+zyU54pJBLLflb4VoXTkIr3dngHyiPlsaZbMT3g39tf7yFHY3jdV
 QPSSdsBBzYJzJa53XdNvbFyZruK31QjGJv48IWPC85DWLCN/ZdCNf1pMOKMtHfppluxo
 gSXipCE7un4vZHozsXAB+c+swqaEfG7QpRl9xn8FqASWRgka47ePt6UWrjlRG88FzviN
 Opu3X1355tEKy1djmPngHuCrcFT4tZnFqXDr7wYQnbw2hxp9Yv6HDUMvscNwOiQYu/rb
 5EmQCx/jz5mp0z6plUAazXvWaLzLX294HXcenc+7/gJ/NUzXeiwmyt3ziqEfPyZqGg0K
 lUng==
X-Gm-Message-State: APjAAAVr73T3wzgzCr92UiU464iqR5UmORzGYQh12j7MEQoM/+b971xj
 /Le1LoGo4G81MCcOd2fKmqiF5g==
X-Google-Smtp-Source: APXvYqwQobGd2yy0h+d8xDL2+pMj+A5vCdvqmHiGo4UYL5LngwD8QHY8Y1z1VloRFcuJdF2lxCaDwQ==
X-Received: by 2002:a17:902:bc48:: with SMTP id
 t8mr17749026plz.167.1572247282658; 
 Mon, 28 Oct 2019 00:21:22 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id 18sm9589688pfp.100.2019.10.28.00.21.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Oct 2019 00:21:21 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 5/6] ARM: dts: rockchip: Add HDMI support to
 rk3288-veyron-analog-audio
Date: Mon, 28 Oct 2019 15:19:29 +0800
Message-Id: <20191028071930.145899-6-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191028071930.145899-1-cychiang@chromium.org>
References: <20191028071930.145899-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_002123_538312_56AAD0C5 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All boards using rk3288-veyron-analog-audio.dtsi have HDMI audio.
Specify the support of HDMI audio on machine driver using
rockchip,hdmi-codec property so machine driver creates HDMI audio device.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
index 445270aa136e..51208d161d65 100644
--- a/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi
@@ -17,6 +17,7 @@
 		rockchip,hp-det-gpios = <&gpio6 RK_PA5 GPIO_ACTIVE_HIGH>;
 		rockchip,mic-det-gpios = <&gpio6 RK_PB3 GPIO_ACTIVE_LOW>;
 		rockchip,headset-codec = <&headsetcodec>;
+		rockchip,hdmi-codec = <&hdmi>;
 	};
 };
 
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
