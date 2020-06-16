Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349511FB34B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbuAD1r6jLTqJoGffv6OiAWLSVDzDbpLJpbAd4C69a8=; b=at1s4MjABVObeD
	DZzj82IZ1aTZ55zjUO+MjjzRj3yZm66E3OSGaq7RJQ/fCYAP5SToCeB0Rj8BjL/y+BQu4RwqzJsFj
	7MIUd2TndYcSdgk2YqPlMotxIe3cmP8xI2ytwNB/Xm4l4NymPh6xll3DKtTG7KZ6AzYzxfaGX6zhW
	74sPkuTYUR4PUNg9JhVXda+qMiZbKYZtKdMYafKDNfl5AFg2pOs5+oAGIFhBSgisYeWYsGcZIvx2z
	YKtO3/LkCWU0DEs0a0Kf9EH0oqdhoyhRzyuXAMyAugBiZP2vKkxm8WTLUARy5KPlT6g8t8S8Zz2F9
	9pp8sPH7UHf51dgup0jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCAU-0003Sk-4j; Tue, 16 Jun 2020 14:02:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1t-0001bL-Gp
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id l26so2967525wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/9XFSVrKLvXMFRORsrMQRhRGbU7+Ty1LYTYIIl67+uY=;
 b=a3Vupsutl4pW5ybN7BmsJULlopCvyjdaqfZql3T06j67XadK578BZoy6Q8vH3P+q/a
 CIqEaRCcy9YJGgznyBuGGdL/8yJWDVnkDEKn3+yOGYKYCP/XiwtpxDbwDj8RqRYeHyCx
 HpmPil7/i8KOuZsJ96IsYsnGGRoyGF45P/Cr3M3zjkGsiD7CK6nC1C6aFD+6cgUWzQTL
 x8CVlgIFSVTUPDU92bSv907Jqfh0XVBUSDDBRaj0/LIbZqi3PUEXSfTDA8f2iXbRuaR4
 q7eBGmQt8uEIj40lIyAUPCTKw+1VIdQTfUss9RmOZ8L8c4nWlqAK8Rl7Z45/JS1+yRic
 g3mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/9XFSVrKLvXMFRORsrMQRhRGbU7+Ty1LYTYIIl67+uY=;
 b=Yb6Qk9MzUnxPi9D2y0HT+ZOkMGiBHJT65HseXYBiRqOlyj+r+ERcC30m1XgRX6CE5b
 Gcg5NpqNTR1ZFO5HptYvKisbHQ62muy79qsGQb1uRAzAEwkeiC8ora+OlNqdVJp2c8mH
 iNcbqMphdOfAE1QF/rn4fDfJgnuunP7/lL4K366UywmG+fVxEM0NHVNYhQU6m2nExSon
 +6gDEkZAFWWO1eEdO36dYL7AZbS3euk17yQDL3gaLZVPX8t3ESau2yGZvQlCF+pOp3Yk
 5q3fMLA3FYRueXVIoAA0a5YobLFEoKIfqvhOBc/B2oDXXpWTIn/dvX0dYxuZ0A1ft6ih
 J5AQ==
X-Gm-Message-State: AOAM532Tqm/AbS0q3aF8XLlAHsK6uqGR9qk8XKI4l/77eyiKY9BCWJZO
 PhJ8peRkQthBP+eTy8WLDz0=
X-Google-Smtp-Source: ABdhPJxe75OJqkWS3Sz/HQco06TpC/JRFA3xcSI3Y1FIvxfpzB659gaqZboHOrCUDPmhs31/LuYg/g==
X-Received: by 2002:a1c:658a:: with SMTP id z132mr3312806wmb.20.1592315612317; 
 Tue, 16 Jun 2020 06:53:32 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id a7sm4344861wmh.14.2020.06.16.06.53.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:31 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 20/73] ARM: tegra: Add micro-USB A/B port on Jetson TK1
Date: Tue, 16 Jun 2020 15:51:45 +0200
Message-Id: <20200616135238.3001888-21-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065333_637818_09F43704 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Run the micro-USB A/B port on Jetson TK1 in host mode by default.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra124-jetson-tk1.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/tegra124-jetson-tk1.dts b/arch/arm/boot/dts/tegra124-jetson-tk1.dts
index 289bf6e99041..6eaa39646221 100644
--- a/arch/arm/boot/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/boot/dts/tegra124-jetson-tk1.dts
@@ -1775,6 +1775,12 @@ sata-0 {
 		};
 
 		ports {
+			/* Micro A/B */
+			usb2-0 {
+				status = "okay";
+				mode = "host";
+			};
+
 			/* Mini PCIe */
 			usb2-1 {
 				status = "okay";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
