Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C983C245CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2tp/Xv6I76oVx4ZyJEtvASP/KwzY2UA+0EaHjorw44=; b=lRcq2A12czgHrr
	4/i+odRdU6RrrYSLlIYhltJFkIe6udeYBxBCjZF6qhSn1URaICy/vdOfhe6F3bhl8AHgukWnLKmMY
	WF1QZQAVmcGaJ5K0n6cyA3F5PLvuUSlpMchGDOZs4V1wu2qL5Y9W8wvIYddtKZ6fSh6Us7Y3aCdGg
	QTWk7IADtAu82Zgpm4NY6e1X8Q2yseKkOVSjQ9udz+ug90peiNpByCzxtvd61LFBBnUR0mXKhjogv
	DhupZstznW6pWBIlyLLoYo431626hyOLKCvetW5tHtAqLbx/v7rj0EPrO9a5348e7fzY1leTy1hOz
	eBxtNjG1Xkht3l/Iv3xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSu1H-0006wG-Pp; Tue, 21 May 2019 01:56:47 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSu0s-0006aQ-3E
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:56:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id c17so11790147lfi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JxzZbOSXAT8ZofjKkFy1gR5f0EU9sEvV7OcG2CE4rH8=;
 b=H6Y4T6jgSLL/78NTbL3Ixq8OVfg4ngrDAY5wydNyAVipl4tL0iAPustg/u6lgyTnLh
 Rw6O5OoKrxY1cIr258fz35bCoVFJGK0rTfK0Iomof+nbURUJ//GJK3CbMXqJ2WahglaJ
 8pkTMlFc/KQX9WgHg9m/9AXZuhlPjs58lWTrVCPO8Idd25SchGf27hxGzjXpDCXFM9KE
 6B/n5S7Z+bhke6p0GxcvH6LnEwhWKIlfov0BEk5E7j5Z4gKLu19T4LwjBjelDN6O27vF
 /XgOV/nryOsskPqzebZeq827wJWIc7mIjZyNJ0iX3stSQbJ4hWZzb9Vqu7Kkgc10qBlR
 mUlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JxzZbOSXAT8ZofjKkFy1gR5f0EU9sEvV7OcG2CE4rH8=;
 b=WHns69RvdbAUgnERrIXICTQ51jJJzzYyiIygyVmki4nkZiU4tKp+acO9WmHGBsLeVE
 6uoy2mpSPEUbxvmRC3YJPj55NPZkC51po9kcQdmTv9v2D8/69WIkznDXiyAuEnXNXVmm
 xiAkZ6xjtxjCwpw3GL+KKSK5481eiX/DzNrStortka/tlCV0bq6J+Kaf50DkVB/6MTw5
 2aheoN4MRQkxGyAHFUJ5Iwiwe+lknuvbgDug1fBPQDeShnkQ7FtkQPu1eo0qS8iybhpp
 bt+67+ne1Z4kmYDHJMmalgM5ZpV2ytwt5Uw5fNzlOZM5YacK7lZyPVVNHzdCSc8edhfE
 bTZg==
X-Gm-Message-State: APjAAAXXhT0k5OXZD48Vmfc74l1HaYkAg4REDubKGFXHWP8ZG6e9qlI+
 N1cfvoO5SuksK8k7hbuLqA5W1LgvQCg=
X-Google-Smtp-Source: APXvYqwIViryED0JE/R7eVWRSxsWccJYdziFHUFQni5mjHdEBXSkZfslnQm/meKLvY3PmKye7k67QQ==
X-Received: by 2002:a19:f501:: with SMTP id j1mr17480718lfb.156.1558403780202; 
 Mon, 20 May 2019 18:56:20 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id i74sm4415508lfg.78.2019.05.20.18.56.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:56:18 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] ARM: dts: vexpress: specify AFS partition
Date: Tue, 21 May 2019 03:45:37 +0200
Message-Id: <20190521014537.19238-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014537.19238-1-linus.walleij@linaro.org>
References: <20190521014537.19238-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_185622_387412_E513C808 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This activates the AFS partition parsing on the Versatile
Express family.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 3 +++
 arch/arm/boot/dts/vexpress-v2m.dtsi     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index d3963e9eaf48..61a9a78d3030 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -35,6 +35,9 @@
 				reg = <0 0x00000000 0x04000000>,
 				      <4 0x00000000 0x04000000>;
 				bank-width = <4>;
+				partitions {
+					compatible = "arm,arm-firmware-suite";
+				};
 			};
 
 			psram@1,00000000 {
diff --git a/arch/arm/boot/dts/vexpress-v2m.dtsi b/arch/arm/boot/dts/vexpress-v2m.dtsi
index 798c97aff7fa..8e57e15307e2 100644
--- a/arch/arm/boot/dts/vexpress-v2m.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m.dtsi
@@ -35,6 +35,9 @@
 				reg = <0 0x00000000 0x04000000>,
 				      <1 0x00000000 0x04000000>;
 				bank-width = <4>;
+				partitions {
+					compatible = "arm,arm-firmware-suite";
+				};
 			};
 
 			psram@2,00000000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
