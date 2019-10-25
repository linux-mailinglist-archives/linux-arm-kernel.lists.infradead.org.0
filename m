Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EFCE4C4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 15:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7VRqTLyjpvVWmCPAeNyHj8tCACjioVTYFmbwWdp1xk=; b=nq0ZojqqYdolKX
	XTMWrP1GXHIXeBi7Ftuj3yA5Q7Twk8YSI+fCoB8UzCfuZiwuej8E68N12FqO4PZspjQORMmvCbOkz
	ROW9gc/J9lapPVr/7m0SDwHN78Wkg0d5U/B7xg7b2KD/riSZahbor8UsohJonNXpx3Q/NDWNmEViP
	9BBeoceWP+pvVNTTiVRrzqDJIgPWNM3+j85dIgrUJMqUXyYyo9Cmm+SklRmSPr5gTMeOVIky4+bCD
	jEDLwJ9TYPL17tEM4iWO1rZibkTXB5zHzs6JTWMdK58DekdPRf2ELe0hPBmCVqewUqQ6jUi/t+CLG
	gPzF/UW1qIY0Dy/qwQYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzhr-0000R6-KR; Fri, 25 Oct 2019 13:32:43 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzgi-00082B-Gx
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 13:31:35 +0000
Received: by mail-pg1-x541.google.com with SMTP id f14so1553080pgi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 06:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z55UMaWEIEJNVekf1KUtXJqZFUzcCvdu1bfEeskovPo=;
 b=VTVnd3DJJxvlTLtyPGznBCDcaWFHpqt3B2OWsYufUi5PjNkalSZF7zX2RHBscVJH34
 NvmlefixU2wv6mbtZk2HQh7csJV0v1aqD+k6gpFFRvJ06om6HBZe7CBPz+9dC/yss4fK
 lh1QNLMpzK6BbmRsTQuBp3GKYRt0JrHDTgHCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z55UMaWEIEJNVekf1KUtXJqZFUzcCvdu1bfEeskovPo=;
 b=RquNleeh8/0YWZWkAt9Lt+AAc4DK8zBOIBc2eK5cHdtZojyW+49EjoYDG2Jkau2F7Z
 khlIhVaqCx9DraIBaQV23rE2F4YeZcdYCt6mVJu4TDJCciw8tFOPCNVQjj0RcpdUGN9l
 tdbeN5PWIHnkD12Qm0+urh55FYtnubxclILd2+yJcuOi+HXE1phTyOaI+ByU5mQdQyYm
 z779aOBPFYSxpQsuQia/WNsENup7aPqc19Wjyq3515kojzL2YP9Dw6r1kO8EjmEwUVZR
 m9MCcJSQOeSjFEKXMcDCyZpLfJB1vxEtdI+xPBetHF0MAIvGnZf5nmk3aETZUAJySLhr
 /nCg==
X-Gm-Message-State: APjAAAXKRCHn2nag3vl2Z6N9xnyrcmkJTPuGTgxwQkxD8KqguEUUpnQk
 zJbSvoQAtktfIpQMQVpFHkIpEQ==
X-Google-Smtp-Source: APXvYqzEBEK954f+cnTf4ONcLs7stQK9JprT2+giiC3WqbjcH+UZmlt6EYuRfIZ58RAxo7Z4G+ogsw==
X-Received: by 2002:a17:90a:ff11:: with SMTP id
 ce17mr4114202pjb.110.1572010290956; 
 Fri, 25 Oct 2019 06:31:30 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id z13sm3706421pgz.42.2019.10.25.06.31.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 06:31:30 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v8 6/6] ARM: dts: rockchip: Add HDMI audio support to
 rk3288-veyron-mickey.dts
Date: Fri, 25 Oct 2019 21:30:07 +0800
Message-Id: <20191025133007.11190-7-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191025133007.11190-1-cychiang@chromium.org>
References: <20191025133007.11190-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063132_579383_14902C11 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add HDMI audio support to veyron-mickey. The sound card should expose
one audio device for HDMI.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index aa352d40c991..98a2aee240f1 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -28,6 +28,13 @@
 		regulator-boot-on;
 		vin-supply = <&vcc33_sys>;
 	};
+
+	sound {
+		compatible = "rockchip,rockchip-audio-hdmi";
+		rockchip,model = "VEYRON-HDMI";
+		rockchip,i2s-controller = <&i2s>;
+		rockchip,hdmi-codec = <&hdmi>;
+	};
 };
 
 &cpu_thermal {
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
