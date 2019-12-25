Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F276C12A54F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 01:58:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxAQyBVwnqxOye7YLkpZ7WZCEaRaWQRwy6XDCfNkv7E=; b=T/s0eaVnsr7Ikk
	st8bbL6Xb9Ceww/hjQ3P5RWqa+SXPXWVy1uJbdE364bTuEmC9P7v0Yyo52vDMugk7PTyryP2nvzL2
	Bi2Z0k00jyV+DWiXYX21VVjw1q1noXV/VZQe/n3PDpOxEiANzqS9b9Iisjuq2DkSq7Hc3i3Goyd03
	HSRsMZn9MlgC5kIStlJm7GGZooNwV2VQfsGcXqr5Wk+xg1Ot0RKRy+fbhBcpjfo0O/yIAYdxYtxPh
	qDXCBD0f42FhGzQ4ezskJ9k26KThjDx2XVOJFc80h5p/AJHB7c5vd87lQZHvGTIDMdymQ6yNX7Et2
	+cMJQTXl89wFkmJBD3pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijv0n-0005d4-At; Wed, 25 Dec 2019 00:58:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijuzs-0004vy-JG; Wed, 25 Dec 2019 00:57:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so1830442wmj.5;
 Tue, 24 Dec 2019 16:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7xaUferG7HAWecpJcxnOnz4oYDhKhjdfLvmFfZUZQK4=;
 b=L9vNQNnFaEGspbC0QRsDefYP16CFmPV+JMq+na4k4pspEeksqZ23LFmXN8OMUcLHQf
 4V2zoD0aHmMa5Fxyq+l20LTxCyj7UQrngOEpBQOGjF+Ju/BDuC2+brkHGTFLdZLWg+sc
 84YoXz2IPAuNIfwTiYf5jRBC67lV3HhdA1fNVptfaLPj0pnIbzQO1+Y3gwUDUUj2WFam
 yKXJD62lgd+ZwOLkz/zprhAzMXH6wg76NK9adOEENRUQ61w/i2K9uhUBc0EP0t9dA+gt
 DdnyKCsutNax4YBT5nGJc7hxLh1Oc8iwHVz3RDYOH+tdSa3ZAPB98RXT8I+M6pbWdM3v
 Bt6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7xaUferG7HAWecpJcxnOnz4oYDhKhjdfLvmFfZUZQK4=;
 b=BGTUr429EZ2a9SF5XQ3sHYNbHcS/MDi2KbXR2inzu4FxstzhUSgMeikSxFL8DSfIW0
 8mMZ2LD+nzqZl5ANXdOuEZn4ACtBNGvnthqkBDqTxYL5tFwQltEQ23kPB0OX5iaPr69x
 B4cayIl97OJVsjMSVEPH328sBO1+/uLjnea/L48H77x/hXkcMeGEGhHe2TNaMcEaCb7M
 PEPbGz35rK52xQmYNOgeqoKxPvMcOpPFa2Xojdirwd66R3Lq5BUlAm0xngL3s9/nGR6j
 1HJ3/Uiyi0GwnM3R7FE/UXJD19frYMZCuGN8JdWLB7tyW/A34YL9fZDpcBJO0KKOzyb5
 5I3w==
X-Gm-Message-State: APjAAAXLI6wF79IIcpVeSwf7pywhC02VBJERKQ3I3+K+lXhw4U57RO4E
 vWJG4Pt4XWgMwlmA0RUN2gavaP5t
X-Google-Smtp-Source: APXvYqzE+4J+EBv4z0CzgDiPxQWZzZ7eL1fSoI4TT/crUG7n8l3YetIiwu2KCeBd2ZY+CHgYsCrjUA==
X-Received: by 2002:a1c:f003:: with SMTP id a3mr5946155wmb.41.1577235475292;
 Tue, 24 Dec 2019 16:57:55 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id e18sm26034448wrw.70.2019.12.24.16.57.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 16:57:54 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, netdev@vger.kernel.org,
 davem@davemloft.net, khilman@baylibre.com
Subject: [PATCH 2/3] ARM: dts: meson8b: odroidc1: use the same RGMII TX delay
 as u-boot
Date: Wed, 25 Dec 2019 01:56:54 +0100
Message-Id: <20191225005655.1502037-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
References: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_165756_629118_93DA86C0 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linus.luessing@c0d3.blue, balbes-150@yandex.ru,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org, ingrassia@epigenesys.com,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Due to a bug in the MPLL2 clock setup (which is used as input for the
RGMII TX clock) a TX delay of 2ns did not work previously. With a TX
delay of 4ns Ethernet worked enough to get an IP via DHCP but there was
still high packet loss when transmitting data.

Update the TX delay to 2ns - which is the same value that u-boot and the
vendor kernel use - to fix the packet loss when transmitting data.

Fixes: 9c15795a4f96cb ("ARM: dts: meson8b-odroidc1: ethernet support")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-odroidc1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index a2a47804fc4a..e2ba2d66d8d9 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -204,7 +204,7 @@ &ethmac {
 
 	phy-mode = "rgmii";
 	phy-handle = <&eth_phy>;
-	amlogic,tx-delay-ns = <4>;
+	amlogic,tx-delay-ns = <2>;
 
 	nvmem-cells = <&ethernet_mac_address>;
 	nvmem-cell-names = "mac-address";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
