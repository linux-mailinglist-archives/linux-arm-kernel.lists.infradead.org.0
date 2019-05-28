Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1B52C1E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lvmRdJA5zWq+vExjCB1mKW9gp7IkZusyLSMqzukPkiA=; b=SuZvVTkn2ieXpg
	T8BbZivHkuniQnbhGLt2VjnDeOmX6Y4VsGPIuZOp7FviJJkL5WT4ePcrfnLJUEjrKIBuDr6mluot2
	OG++8OCXp6/0bhnZg0hNsljtKdJcdxyO6DK17EU9rtVhWGYWYKDc4WYnYBf5Ks18WROsIRyIv4OwZ
	5lbEtw0SXCuq2eKy06gvU0F1BYUZ/xXVYu6hezgyy80gV6d/X2S7DjYT0C5djkXLw/Xd6ftjE0nfh
	aNuCxSsnnI8Cd5NgsYx4j9rdhoBRreR6ZV4QWzc5CXQkpB2La1EcmIYroinFz/LWkBA0rkC8nEsBV
	wNSWuRbwg0VlhtDaJGCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXwB-00034l-QH; Tue, 28 May 2019 08:58:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXw3-00034O-Iy
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:58:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id q16so8526588ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e3AHSMnWlWNN8+Aig3sHBT+Tb8bBdyyrmL4I9DVZqfA=;
 b=dikINA2FMAVhUz5TYJmo1Zr4sYmJAL91enNWX8sL/eBKSTMoM+2/+pGghPqBat25fy
 mC8gtqhr91sQBnSE4j+Aod9uQktnrl2+uMDNPwvIDj5B8LgkPp6oshAFPPORI4HfDt6e
 NXZpNOmOZqoRUy2y5/gAREEQS09jMDEh25BcquYDy5SDQVv/DGesmunKHc4d7DjL7Ze1
 8pZAkxx4fK3InIC8BMG7SzU0Go7tXubOdJrDFgYY/+9wIyzk/L8/cJ4u6TqpNwaXEgV5
 MyjPGpjBrQdRf+QHet4IsMVNjwjpYnHnhLSV+MnMM8IkFWmuyiiRqsU4lxXx0F37JL0h
 mTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e3AHSMnWlWNN8+Aig3sHBT+Tb8bBdyyrmL4I9DVZqfA=;
 b=dqqMXyK20B+hi9sK0udKsXnm5K7WrUllIvuulYfIDArUd63B4VvHvjbMi3L+YQU0Zq
 Cv3RSLHIQsb3CfYKb4HCny7ceEW0Ffrl96URhmt+N2EevhNZOU2pdPcHFCZXQOA2AhSc
 i1DxyirQUsLUcaESfw4fLHlEbwvkcypsb2u4ZHiFfDsw4YH4Sk//V/DzlD7JNSCUnvqv
 DR4tt42u5uUxuWAGG0h4xmGm+f9AvcFO86HgkJV72emhsF07V49xC7kD1OmbQ0xxfkFX
 ZqRYo3NQQuwlh1Jz5pXtVnmGzE7IYU+zV3OaOPyuaET3xlsKF37WyVUuApQKtNpTQTIm
 dgzw==
X-Gm-Message-State: APjAAAWQKUrVxczewqSrF4rHv70OK/328Tmgz1ETEslXU1uwU9qpCORI
 pKNwXq9dRlbQCH0ksifGi3HcNw==
X-Google-Smtp-Source: APXvYqzdmhYDw5DZkZkspCNqq33ACk0dDGDmGAPH9FS31+eWPdshcnUAqAvTVPVAxYZD8v/iy+9EsA==
X-Received: by 2002:a05:651c:1055:: with SMTP id
 x21mr45555484ljm.83.1559033897703; 
 Tue, 28 May 2019 01:58:17 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id x23sm2853296ljb.29.2019.05.28.01.58.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 01:58:16 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: juno: Set the right partition type
Date: Tue, 28 May 2019 10:58:13 +0200
Message-Id: <20190528085813.10413-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_015819_647004_362619DE 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

We do not normally access the flash on the Juno, as this
will disturb other aspects of the system, but if we choose
to do so anyways, we should set up the partitions in the
right way so we will find out what is in the flash.

The ARM Firmware Suite now has its own compatible and
proper device tree bindings to trigger discovery of the
flash contents, and Linux supports handling the new type
of AFS partitions.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index 1792b074e9a3..9f60dacb4f80 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -106,7 +106,6 @@
 			flash@0,00000000 {
 				/* 2 * 32MiB NOR Flash memory mounted on CS0 */
 				compatible = "arm,vexpress-flash", "cfi-flash";
-				linux,part-probe = "afs";
 				reg = <0 0x00000000 0x04000000>;
 				bank-width = <4>;
 				/*
@@ -116,6 +115,9 @@
 				 * flash hardware access is disabled by default.
 				 */
 				status = "disabled";
+				partitions {
+					compatible = "arm,arm-firmware-suite";
+				};
 			};
 
 			ethernet@2,00000000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
