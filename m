Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3F497C93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XaEHUI1koEdCvdxWgfLXh2DY00h7gqeCCUKUVH3oCvc=; b=MQwHv6111ooWnj
	hbvxz4EKF0UWoXJAwgBvhBS3cvBORrf7loFUP+mIAsmtrLzpaJ3+1itEC8jsUvK1obQCKEVWMt5fZ
	7oieui4KJCkNolRQcH5Gm2I4XH5EsJwjnravL8NzPukP2gtqkc2MRXLc9p2eSsKqbQ8Ja2+ExCFx6
	V3681zfd3Hgx1ZWuZqCTmgRA6kWAohylr8W5md+letEv7HIHXC8WsTaJoBuRhsVLheLVztav62eo+
	LoHQ3pGRs4Up1vz0KULctNsKPuphJ3g7nmv44N3W3ybZBoXOfwKqh6cpWZjoKZP3ztFM4YXzVF5us
	/nn91jK+cWSy6sH3hL1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RVD-0007rX-8M; Wed, 21 Aug 2019 14:22:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RTt-0006hJ-C3
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:20:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id z11so2236601wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KYwR0J5MWB975uhtmdnb3gIh5UU/9QpLyEsCz2nQDEA=;
 b=Ld4EqF5RQZo7ySGIp7mftWRj+FPDgJ/s25SgUz5VqCdqcgJbuEFbepX8thjwdFDZMw
 2DWicyOmtqHLoPiNJ7YX7rst2SSnoZ4IEVIQn3q9Ps61DzG9hlp2nti5iVUjQDq2awew
 osjj0UneqGnSG4JlM0W0sqvMhNs/ExHHYgcPnHe1ifZCciX0fg8W2Ru/vKeAd+FscV8d
 Gh6fvNaO356hgwX96dt+x/mVPSJXqzxPpdA2TjtlN4DLp/sKEtUlj8t5OP+ib7ZXnTRY
 MZD+Men6lkXVVrbyHd2KAhqg8/d6rZ7wbNBriXUtzrPm/RutuSfpj/5Qixo++ELl4Ehz
 Lf3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KYwR0J5MWB975uhtmdnb3gIh5UU/9QpLyEsCz2nQDEA=;
 b=b7YCESjM3Wkdg60T69mV3Z0fBLVw53P13s6znPWLDa2G6pxG4HdMoF4rTbsRIwSmyc
 VGn2epaDVG/jN8JYecJ3mruY59MXmKGDFKTSXyMNlx2LB14ktB7bKsCrmP4EiP4Y/OaI
 BWXAwp2TQjaVnvv1xv9s9aVMqa0/KcvPwkBy6f6jon+ZajkRpy8l3aBMrLfdnM3rLc/g
 aEbLTAbs1dyloQHK3L/+/K30IQSkX+29maHGYlGwVMU+Ax2BC87KMhlkrXXaoVK+52Bj
 pjz1ZgdF0Jp2PwNTE/uujVC7+f3Zj+cIwnID3YY9KiM7bab5O7T9MNzFTCDWrJlxOoNp
 faBA==
X-Gm-Message-State: APjAAAWSS6N/TW6l+UrJl432AZcQLcCQhuMDEyDhUkRfCxO5fM/qrzCi
 BUBGCI/VrxK1eUYRhTsYvyqpmg==
X-Google-Smtp-Source: APXvYqz+FlBb2jwjOaI90jFBUoyCKc3uk/XuSzdr1klw64PZi7MHEt8/o3WmqBd3rMA17VyQ89kr1g==
X-Received: by 2002:adf:f705:: with SMTP id r5mr40552098wrp.342.1566397256019; 
 Wed, 21 Aug 2019 07:20:56 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 07:20:55 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 03/14] arm64: dts: meson-gx: fix reset controller compatible
Date: Wed, 21 Aug 2019 16:20:32 +0200
Message-Id: <20190821142043.14649-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_072057_410582_9E640738 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
index c2d3fffea8a7..5b3dfd03c3d3 100644
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
