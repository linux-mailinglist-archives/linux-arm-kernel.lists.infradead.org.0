Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C40F1F796
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LphLUljcMj53/t7HqvqiUjDTTnn0JXK8v4/8CMLFBV0=; b=fhBhj+toErc/bZ
	vn9uZf6F1wN4nFhXhiCHB34rOGfj5Ti8I8P9y/IiyD6mOTwZAZnv7M9290Qa0MG0LSMkITTxT+nND
	p2xKEyQBuZXHZFrcAKPjcrQ+AoKpgqMh7CBL+DBDoTll4bt9ntUXYGkQvZrUP6tE5oS1tFaMJEAXG
	Jyn60V3KAGdSGSDty4dINbruLIWMHXQIb/GTxMTQaMKdS6Flm0uvRt4cVdx7Z8BEMM5y2hjF3eURL
	rEFbUjegeG6Guqt2ksR2ixCUkgWAc2rkaD3ADyl2yBjarSBjkMawkqMjz6J5lMKU/Juo4xK1+Ydht
	INFW5V45rrASBFGScHyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvsf-0007o9-VI; Wed, 15 May 2019 15:31:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvsV-0007md-Rj
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:31:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id p15so53357pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 08:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N3PFiqZYr2ENWnUsVIDRAvDI9vPaKjuSp1u756KP9Zc=;
 b=j/97p16K6USW9gvsVhnnSbeJKIGOU2uRr7jmAEgKinUYFiWyG93vD7TP1OavOB43ii
 x0SPgsjsCnTt3YLr7odjlnWViICJu2ezBCI5wFhCe/tkhjv0T7I1+3kFjyP4mvx8hQZo
 3xrjDpWFqq5Y56WcevT7zGob4l8tm/ffewKBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=N3PFiqZYr2ENWnUsVIDRAvDI9vPaKjuSp1u756KP9Zc=;
 b=aH1Tde0WGmZH/8pUTI+wyodMcLWfRY+9nZQWEjnXWoG9574CUDN1nTtbJ8gl2tehyr
 DiPJvxExJ9Nhr4zMPSmKcsvUQcya4nvg4OR4Pel6eiCeUXd+XvfvMjcNbMpVMB1eoPdU
 9yjX9NoFRXZt0OIvTk4AHIcSQ5712mHcjfGcEiBV/4rUPTAm5FlEc9iq5Q8kpfVigSyh
 BJVTM+ohqtiXLzjYAV972IyomWMgJkyn2DHIF9ia99Gaese2RkCIHVmU84MNFQzFXEdS
 lgLbooDvqQ4wHCqMvPMqBaxRUy1dYBHooCWKLJ5JZktVNgfXadcHrcLIWfiVSZQ+D0S+
 5eJQ==
X-Gm-Message-State: APjAAAVnXT5utt2qh8pXWEl9XjrB6Prf+gumPoIkw0z8JQhmFUX0tyVC
 ShQFbvXLoEc8OaLGfA8ANE7T4w==
X-Google-Smtp-Source: APXvYqwpHJFwd0RE9EmEOM2wbZSpYfXI5Ha19P2vHpWhNU4WtqcFTMR9WH76eVdT2labGFxPVWZPRQ==
X-Received: by 2002:a17:902:e683:: with SMTP id
 cn3mr21744646plb.86.1557934294758; 
 Wed, 15 May 2019 08:31:34 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id c189sm5260671pfg.46.2019.05.15.08.31.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 08:31:34 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] dts: rockchip: raise GPU trip point temperature for
 veyron to 72.5 degC
Date: Wed, 15 May 2019 08:31:26 -0700
Message-Id: <20190515153127.24626-1-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_083137_348702_00941A2F 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This value matches what is used by the downstream Chrome OS 3.14
kernel, the 'official' kernel for veyron devices.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
 arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 1252522392c7..169da06e1c09 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -446,6 +446,14 @@
 	status = "okay";
 };
 
+&gpu_thermal {
+	trips {
+		gpu_alert0: gpu_alert0 {
+			temperature = <72500>; /* millicelsius */
+		};
+	};
+};
+
 &pinctrl {
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
