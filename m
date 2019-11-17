Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EE8FFA89
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 16:42:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ds2ei02rJ9rFSk+4/rSP8v4RA3x4p5m+YHhvFwzmTB8=; b=keQK8NyXqPQflG
	ICKi3VaIK6DoWUof67M4T7DK9E/ZZ5xM2lEWfoFLohW5B8H5KMc2h17Vml9hunuBBxPiJP5IIWCvv
	bdt1YMFQeOpzSdmYDZLiXp4RnMe8w3Oyg73OvAXenY7uZzAtRjWY36b+1u9LdkpeAo0Jo40H/eizd
	7wq8AhvDWBwEZXJFOaNvx6SN9ApqBqz/S90CjAyDAYyGSrxsl2SOtXm7QjtC9xfvKCwMQ6DKowaaw
	JeKQmhvITIQkSwpNjcaM5eMB+Zwku9PjawyHUMawLqzcTPbk8ayDm0w7oJ4VXHz8YovoMIXFybuDj
	lVIyoV8tW73sXSQwjeJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWMgq-0002PK-UI; Sun, 17 Nov 2019 15:42:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWMgd-0002O2-6y; Sun, 17 Nov 2019 15:42:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id f2so16521352wrs.11;
 Sun, 17 Nov 2019 07:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iuPdkD+bA6TdlVYEYwcSYUb/qJnSTJSjAX8JE2sMeo4=;
 b=tgMGgJOtQE+mEiiOcUVXvNbmQaY6jSK6K+gLWNv3g0aJh2uGuY6KNVo3xh54y4B6Ao
 hHPR5ChkhhIw8st2wRQP4I8oxkpzMLXqoY9uNJt0TR3na1qZEzvOty1dhk370e7XU7dM
 4Kxxr/enmLxhFYRIQJZJTfkh/bmtcX98IgrNyvdK8wwaK6uYK23P4gYZ1QzaxpndFhIa
 whz+ND4w33yD6XDjt9k3gf5GCLNt7OLnZCR/cZ/uOq8hORpEXvHNRGreVZXKGCVK8A7/
 7NdRN0zR8Uss36z5XuFl6PV+ifg/ZNhweaxuFuLhapj5OoRBgIM2sGDrk9mhZ9sn1aU4
 46yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iuPdkD+bA6TdlVYEYwcSYUb/qJnSTJSjAX8JE2sMeo4=;
 b=ZrOfxX9QNnn6ONZE8vB424vd7tBCHef9hTAZcWKCTRBCUGeZ7KARfGxJ91TogiENYN
 KTwxRzvJPSNCaxcyA8/mNxr19R4t80JmUgOY+Ze8om2Q5cLOMh7Fiat7uDGj9MOpoh9q
 NOb6XjXM4B/awyTFtY+23EQA/01yBZMK+Dmymo20H502lrspv0YHttktuYzpyP+7nrAm
 iP0xxKY+fqaWTqTu49mrmkdzyfvozB5N+6wTV/l7qHEjmydNK5mzZQ4BkdhJUcZADVPl
 +z5Ls80OFoMzcA391l9ki5Huivp32FpOyWXqU0OnMy/kzSFnn3zqFh1HtUsN9w7OqezV
 fNWg==
X-Gm-Message-State: APjAAAXSyCVnjqmOlKiSwPB2dtBAWOjr8+3uO6rDjPSeOf6ZI9A7OUaJ
 X7S+SUz7aAPoys4AP2yicON4lCew
X-Google-Smtp-Source: APXvYqyDuA85QWhD1P8GZoP2+7bU7wdR6s1KBQH7peM7qT6waPkCdSQCaBE77pCEEu5nueoTdgN+QQ==
X-Received: by 2002:a5d:6350:: with SMTP id b16mr16626325wrw.357.1574005321095; 
 Sun, 17 Nov 2019 07:42:01 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id 13sm13008097wmk.1.2019.11.17.07.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 07:42:00 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH] ARM: dts: meson8: fix the size of the PMU registers
Date: Sun, 17 Nov 2019 16:41:54 +0100
Message-Id: <20191117154154.170960-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_074203_252048_A8D3EE5A 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PMU registers are at least 0x18 bytes wide. Meson8b already uses a
size of 0x18. The structure of the PMU registers on Meson8 and Meson8b
is similar but not identical.

Meson8 and Meson8b have the following registers in common (starting at
AOBUS + 0xe0):
  #define AO_RTI_PWR_A9_CNTL0 0xe0 (0x38 << 2)
  #define AO_RTI_PWR_A9_CNTL1 0xe4 (0x39 << 2)
  #define AO_RTI_GEN_PWR_SLEEP0 0xe8 (0x3a << 2)
  #define AO_RTI_GEN_PWR_ISO0 0x4c (0x3b << 2)

Meson8b additionally has these three registers:
  #define AO_RTI_GEN_PWR_ACK0 0xf0 (0x3c << 2)
  #define AO_RTI_PWR_A9_MEM_PD0 0xf4 (0x3d << 2)
  #define AO_RTI_PWR_A9_MEM_PD1 0xf8 (0x3e << 2)

Thus we can assume that the register size of the PMU IP blocks is
identical on both SoCs (and Meson8 just contains some reserved registers
in that area) because the CEC registers start right after the PMU
(AO_RTI_*) registers at AOBUS + 0x100 (0x40 << 2).

The upcoming power domain driver will need to read and write the
AO_RTI_GEN_PWR_SLEEP0 and AO_RTI_GEN_PWR_ISO0 registers, so the updated
size is needed for that driver to work.

Fixes: 4a5a27116b447d ("ARM: dts: meson8: add support for booting the secondary CPU cores")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 5a7e3e5caebe..3c534cd50ee3 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -253,7 +253,7 @@
 &aobus {
 	pmu: pmu@e0 {
 		compatible = "amlogic,meson8-pmu", "syscon";
-		reg = <0xe0 0x8>;
+		reg = <0xe0 0x18>;
 	};
 
 	pinctrl_aobus: pinctrl@84 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
