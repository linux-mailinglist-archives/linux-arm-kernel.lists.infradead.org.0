Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B301D3629
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uwkoC6GeA8FPmj/NXDzTTIM9V8s2suY3dYEeeXeI4SY=; b=E5lSZHwPMjYkhsfa7ppzKwAvVt
	ucGSdB1hBXIRGP5pzY7rvQtCxxPv6DT2yGab1G3VEgNeL6SG7XCefhLcenZJfcgw/EzRQlX8o3JpX
	XZ2E8/0uOBbeUc1NNvOxAgLv4JHlkYEEWTpOBb2Epa8GBMtze5mD12JwGXDSf0aCAO/ra49kznJMY
	T6Y0G66VvQVdWU3+W2TsQczrW28KR90w3nM92AOr8EyLo9FyT2G15ifym/ANkmjTO9s2NHXp5o1Ip
	hjHbrsr+d+9QrF39evgRyBPi09rkwDhRj+tKvmREiWwLtP0CgB854qk38VYXUEr0f5VRXu7VjHnqd
	2KI8ig6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGUC-0005Dp-93; Thu, 14 May 2020 16:13:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGSm-0004E9-61; Thu, 14 May 2020 16:12:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id f6so1444762pgm.1;
 Thu, 14 May 2020 09:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kERbVPKOH+FX4g8aG+gjJYUwyTHcVS7ylYTdMC7w4rU=;
 b=M6gmBW2wkreDT1FjE3XduSEnQnlx1OmUN/sGm+c1dA/9z8Lf+QwnE+4mSUZQxq3Yqu
 M+JaZF5Iuuwjecknhi+K9sE/vriSN4mlm9OwWCv2XKKJCA1r0Y1TW0CEjmAZ3XrnKeu1
 6dlncoMK7eu2uW+ysxkfQK101dKE0lU0xBsST/dXRin/2gdLg5OQKZ6nQltS4hfH/7F1
 40eds0q0Ae92dk8jUUsigc+rLMM26S2w3p3JAieBkUe9F1kZFZjFs/+Wv/R30hIWvBQz
 dSYWgFo7wkCPwULy0CDpZ+UwLEXqPIMC6ucOabOIVLSIk1rCiq+/QRzlJpmvZGrIyObB
 WivA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kERbVPKOH+FX4g8aG+gjJYUwyTHcVS7ylYTdMC7w4rU=;
 b=uXIE5TmdHqaV40OHf8lYxM7N3wQe4EKCy48PkzQnA+7P8TW3R201X71tzOd+OMmXdD
 HSCpXY1e5VO0tAJBrl6ZOiLMgy6Tb3lhyU/5IgM3bhHpeB4rPf7w8xDjxSFlKBeOzOlo
 mQhAJspmoCXdUPLFqL+OpnAE9eQRQDiQzj73LLKXuSlo0R9aLT2Sdr5FpKoVvLDfePGt
 0IAzp6grgt5vSE2nis0quKY2mbKNM92rrrVhKfZFpcAySVBVyRvoSh8H46wZ2MGAHZk2
 UQoytyoJkgJmSuWETj2S8HKgkvUgpg4w4orM+nJ9PxjAaOnzUMXO+PhatrDdml57q8Rj
 SGeg==
X-Gm-Message-State: AOAM533bK2C/wG0IdcIBSw5wu1wHFiMd22y0a4TMzjy7vQQnTbKXCEzO
 4oZvvzdsIXItjd53t25VDNk=
X-Google-Smtp-Source: ABdhPJx221SdCqxog59nayKDC2HJHmIZOnrjna5bc90Ic4mLEglczKwHZp+qojX8hzWdHl57pCXkSA==
X-Received: by 2002:a63:f90a:: with SMTP id h10mr4621315pgi.57.1589472718688; 
 Thu, 14 May 2020 09:11:58 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.11.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:11:58 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v1 4/9] arm64: dts: actions: do not merge disable sps node
 from S700
Date: Thu, 14 May 2020 21:40:52 +0530
Message-Id: <1589472657-3930-5-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091200_244884_76EB1DE1 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for
Actions Semi S700") following error has been observed while booting
Linux on Cubieboard7-lite(based on S700 SoC).

[    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
resource [mem 0xe01b0000-0xe01b0fff]
[    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16

This is due to the fact that memory range for "sps" power domain controller
clashes with pinctrl.

This commit disable "sps" to avoid this conflict and let us test DMA and MMC
related changes.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since RFC:
	* kept as do not merge.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 2006ad5424fa..0397c5dd3dec 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -220,6 +220,7 @@
 			compatible = "actions,s700-sps";
 			reg = <0x0 0xe01b0100 0x0 0x100>;
 			#power-domain-cells = <1>;
+			status = "disabled";
 		};
 
 		timer: timer@e024c000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
