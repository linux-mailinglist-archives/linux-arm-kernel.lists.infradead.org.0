Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731ABDEF7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ALxBrs44pYZQXHzcugYErnZ4zPNI+owDXRlX1tQuYpw=; b=RtQE6H1gPJHnYZ
	/VPBG9O/yKCpSAwy/3VyGfbETx8aFS33H4dCW2A8O+nfc/Pm0I1lf5siuE4dxoJ7Z0X0kAQ5TLw/J
	W7b4YdIEoWQy6lkHNlz5421lyLZ0g+4dicVEcnHIreTkb7lO4mB4CEMiW489BcfG2V2wi0ndN9ViY
	Zh3Yclfv3xEytEHV+lCx8DiOqk6+GE2/s1qS5V1xATybGKXsuhQ89kxlKfustA41zq/Ik9mKFXNXz
	Lp5J38CSfq6qYV6rcTl7frpIKNc0+3PQokbLrtzjEcTbI/0JaLvt+HwdXgt0LPD3wg1oUnZWgdgrs
	iWIyDGho+7ur6TJA+7Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYgR-000724-B1; Mon, 21 Oct 2019 14:29:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYgF-0006zu-7G
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:29:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id r141so3452175wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=++nYVU89w3D5DbGVf7UyY/WEEIeVtVLvhLaDHuQ9xMw=;
 b=DL30plNJoZ8YTRsPpIAOPgjMpjklyJGezkImhXfCfSZos1P4txGs18b3h6ApC7to+W
 BAgzrOE2Ip8/k1EqE1oKz1dp6dEMinAQypFmo6DKIj07DPfZMYwET/zJOQeItodlPbpC
 sRXI+omm3jVR8uL/9vC63hITA5j9cwZwfWtF81jSU1DPe4JRxa+LLquiHLNjDLotatOe
 PjnLksvMZrhcWnWtN3wnhfGRYMDiEZ1nJ7w3UA18WZhDym3PzKO4RmZIo36fy2R+YPxm
 QUjR7T6kE4vUueAXdB7E9pgpcQUf4UoqIHj78X0KZEj7M2WJFD7wyg6Ct+JDLM37Fmfn
 +n0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=++nYVU89w3D5DbGVf7UyY/WEEIeVtVLvhLaDHuQ9xMw=;
 b=GcuPNsleDEqQ30bfz5ECM4mvvK4jvUHZCpaNHfp0LSWkBDfNEjiALqOsPxR9v+Q525
 078CtHYSfVXAj+O2aJ/54Wk1Ws+E9rmy/iIaPIfZz6BliEpC/vCtqOjU9OHFukZFb/Di
 AkFwKtNudZKrgQwB5BImPeZGqJXJZHsMsONhQED441PFJLL9F+/4X9yxeTGCLqx10p29
 n/WOJg053QOGgRwpgAlYwNZ8TP7Rg9LrhkllzK32L6UYgA9FZpRie9lAm7MYtCvON3X8
 l6zEyNJ6FZCC32QVuNOzRtRj9y8D7e56x72sMlrMqSYPUsvL/C+Y0FKunX31fLnA5NZS
 Bb8g==
X-Gm-Message-State: APjAAAUf32TpcVAJYidVNP4FJksUBqvRgY6Ku5M/OZ9g5dgeSmWpZQeA
 8NPwU6mu5f+oHqnRNjLgIfwxMQ==
X-Google-Smtp-Source: APXvYqxGkfu1beg6QQFKdXREUIGmgpSBRX5EoWUQK13HNfHKFmR5o2KsWBUYgn1oNa0KJmVl282MJg==
X-Received: by 2002:a1c:cc18:: with SMTP id h24mr20430362wmb.40.1571668145775; 
 Mon, 21 Oct 2019 07:29:05 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d11sm17304463wrf.80.2019.10.21.07.29.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:29:05 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/5] arm64: dts: meson: new fixes following YAML bindings
 schemas conversion
Date: Mon, 21 Oct 2019 16:28:59 +0200
Message-Id: <20191021142904.12401-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072907_261434_1A3C9946 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the first set of DT fixes following the first YAML bindings conversion
at [1], [2], [3] and [4] and v5.4-rc1 bindings changes.

These are only cosmetic changes, and should not break drivers implementation
following the bindings.

[1] https://patchwork.kernel.org/patch/11202077/
[2] https://patchwork.kernel.org/patch/11202183/
[3] https://patchwork.kernel.org/patch/11202207/
[4] https://patchwork.kernel.org/patch/11202265/

Neil Armstrong (5):
  arm64: dts: meson-g12a: fix gpu irq order
  arm64: dts: meson-gxm: fix gpu irq order
  arm64: dts: meson-g12b-odroid-n2: add missing amlogic,s922x compatible
  arm64: dts: meson-gx: cec node should be disabled by default
  arm64: dts: meson-gx: fix i2c compatible

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi    | 6 +++---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi            | 9 +++++----
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi           | 6 +++---
 4 files changed, 12 insertions(+), 11 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
