Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9F09A866
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 09:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOvl0BtddDRKzrdmyZMVCBFoAcHTsDRmpP/BYisF+2M=; b=mjKIaRQAv3kgay
	YhEgvr4mNgimtai2FrFojyaz9eNe130KaRTxll0sPbEu8Dgrk4HyBHnITHUuFgdiQ8v5nNaz/eyF6
	edIIsond1xdrD8L1tVym8z+CdGJqH+5FfZURR5oaI5hP7Tm2FsUZrDAig4sdCJelDn6CdR25Y94UA
	V29VqE3+rbfuagqYDLyqWk2KgWKNrGy/ZKbFNUYK55wz6BKJQ4PJBDCx+cUQzxVMN06Us1bGtmi1T
	4YgNqD76vE6ohQ22Gp/PvkOYeUVYyxCJ5Nu4vG8Pc//9Ekmffbqh36+xwJz6Jd1DS7B3XdIO5KM9c
	KiLiPSSnUNVJL+lijxUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13oI-0000eC-Bg; Fri, 23 Aug 2019 07:16:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13bB-00014M-6n
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 07:03:05 +0000
Received: by mail-wr1-x442.google.com with SMTP id z11so7614976wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 00:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z/b1mhikbg+EPmNH/s2Xt1LyR+vNVX1tk6yq7Qa4/MI=;
 b=nOu1hJ2wwRA59HSMRqpTfcIiHiskYmD68/3tC7t8v4OpPhcAvKvuh3bNdLHQK0POnp
 FhtFeuTMXCkb6SSnCYDrKkGQWN31zpRQAsntyWJmIRqsansJmJB8bL0MtDAVYFsYc7o1
 dvHMX9GWDaWycAn4GP5zXKfxylz7pfrp1pGOyGK8fEQaNUufNuiDe0nFGiKTV6dfIR/J
 hrJB3C4I5O8R5vc88faq+kMormgsNPzuYggeAGBmwqnFIADMqfAG0whVOW8P9WUP1FKO
 WhA/+NDagtIQ8/3s0OLrXUZLfMOR13KWND700Lgyev7nWSNwhB+v0ziUWpu1IkiqjYN/
 MWzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z/b1mhikbg+EPmNH/s2Xt1LyR+vNVX1tk6yq7Qa4/MI=;
 b=aJ0iMFct+6JVkEWNU+fLlGSvG2ZkduQS0+cIYoRpJ2w49DVRxx5LYgm9y3qWOWaPve
 +CPTXxVv1mPrlDEXqOujbmvVR4rSOoroh0qQJ9efUV5AFVNsd5gbsmKPk6/3OoUlfdeU
 KL7mjv+idX9W/nZO6UcHNNLfKuVDr3itWHsou8U/N/YfE4MnUH6vG0IHbDIrMpoX0wcB
 ifDwEc0jBMkuk3gYPw+EFSiaEYx8h7mbq/jYUQ1Tp2gkoMPLm+76EKnwP4Lwdr/FJaFU
 QfwVhPwj68UzjfJIlMwkRLE16c8bRilHRDr+jIDjL081XB4bJ3BHP8ROMzuv97sh6gsK
 zu/A==
X-Gm-Message-State: APjAAAU4Dy3W6xzJK1txoJcXQy//o35zsTmNNqBPXHUC65kB2KeJIMD0
 sRDT7eqSXw93QOuJ/HGZ4wrufoAjmgrmOw==
X-Google-Smtp-Source: APXvYqyuqMJL2L5NeOppIMame3Tj3HMfeW5/PBCBwC0GPH9k/60jj7yNgLoziG/B+Lt97Ilb64QaUg==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr3262263wrk.98.1566543776738;
 Fri, 23 Aug 2019 00:02:56 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 00:02:56 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RESEND PATCH v2 03/14] arm64: dts: meson-gx: fix reset controller
 compatible
Date: Fri, 23 Aug 2019 09:02:37 +0200
Message-Id: <20190823070248.25832-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_000301_996713_7853E8B0 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: reset-controller@4404: compatible:0: 'amlogic,meson-gx-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 239ec08b3023..08c01e11ba1b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -220,7 +220,7 @@
 			};
 
 			reset: reset-controller@4404 {
-				compatible = "amlogic,meson-gx-reset", "amlogic,meson-gxbb-reset";
+				compatible = "amlogic,meson-gxbb-reset";
 				reg = <0x0 0x04404 0x0 0x9c>;
 				#reset-cells = <1>;
 			};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
