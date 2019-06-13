Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF03446B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4OXW1FNvkjQbwagoWRVcuHsg/dF4D4oNkuROQCGxKY=; b=K99Sx2E9kGwKKv
	Mm0NJCDQO7+gSdqvK9WAgV/9RCQA5UEzntc36ttqrclqqS0jGDFb7oHvY6DZXjR4HX/ujJLYb27K9
	gQnjuCx6BBN0S/xi47m9vo6F3nCeECvyGCqDUVbEmFnDaAaUdz2SfH/0kpD9VhIfX+LE+O+9xe8IL
	Xt8yb1TNdh78mGpArDVgvGUYVacZixgdFebtxSPYggkC6KNWKAcW6FbdWFcLVzv0iaXVHRjiQ7dUK
	KzLKygZPHHuPDlqpK6C8caWRIj2KQMJkZspA9z9JPOpBAe3JcDv8EzKsWvQZJ94prQ0rtyNbkBnL5
	px3cNfxk4Vhn1Xd4B9DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSzE-0004UV-HN; Thu, 13 Jun 2019 16:54:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSym-0004H8-CC
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:53:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id s3so10967394wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g7DtBPspuM/d238lv8u3PyKyoU0jaNDA2UnmS23c3l8=;
 b=AUz3GBrF5/KwIty2Xz9nn26LPWQ0a+YRIWPfwkYSWxfvpHAMtMTbNCdLNq41955EPA
 eYHjhxF29zu9lSutV9Kn7G6a/CIJKHrSAwYvRVcKuWL4AFvmmXH+PaeuCm4FWpLQgvA7
 cGBpjy4C5n3FMNtuIqux/SO1ryQj0yyJTMJ85HBZVg9F7D/f1M6D8ob0rJEhq0fGtjhq
 8MwDQNNUUtdM5lo2nXyla5eFCLrGRAL6n3XZVoxuFfikbZrm2r5P3ZAImtHKstBu2grj
 OWHNn822X7Ni0eYs+eysB4r2LC658uNCAyh4LFREwuhi4tPCRRtuIQyq6eENIpnYf2bA
 wWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g7DtBPspuM/d238lv8u3PyKyoU0jaNDA2UnmS23c3l8=;
 b=fhAR5NzJ6k3AM8RqS5B8T5gcku85JiHB2AHciIyRj56BdkiiICJxm6D9DWw3meaYbe
 r+Ng9GIHg3/ExK6RfdEKtfJs1H0ekXCh0JBLTp+AJNjSOSF7U6yTqC3jpBnwdL7mi+6Y
 hBIqnRtpcdoWW2AnbdIjtblt12VHUp8veyZCrCrwiOLYKBasMM5+8ZnPKyvybQH4eXS1
 q/+s+TkD4kokGycrzo3clKkAt6MZ3AqwCHhDB3mikdsQ0FnQ36GsfRgPCfslFN5upqu3
 W4NGphP54BCwa9Kr9aN1zErrAROn/hD+46D+c2zC2IDHqbVfCFeDyZ2i24ehhvYg9agp
 S7Bw==
X-Gm-Message-State: APjAAAUleacUNEfWrTSElpCoHimKKyYYwaMOAKLpxqm9ab524UKAamQ9
 a7XT5dN50OeMjjrCZ0vfHyw=
X-Google-Smtp-Source: APXvYqyMa24vugO65VP3MxLyioc/VVw02NAtOXlE0WFQAf9E3ZXr9iAUxzpumfA1jZmy8yunEQcSJQ==
X-Received: by 2002:a1c:9d86:: with SMTP id g128mr4906331wme.51.1560444815003; 
 Thu, 13 Jun 2019 09:53:35 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id j189sm487621wmb.48.2019.06.13.09.53.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 09:53:34 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 2/4] arm64: tegra: Add ID EEPROM for Jetson TX2 Developer Kit
Date: Thu, 13 Jun 2019 18:53:29 +0200
Message-Id: <20190613165331.8689-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190613165331.8689-1-thierry.reding@gmail.com>
References: <20190613165331.8689-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095336_416836_14CBBE06 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

There is an ID EEPROM on the Jetson TX2 carrier board, part of the
Jetson TX2 Developer Kit, that exposes information that can be used to
identify the carrier board. Add the device tree node so that operating
systems can access this EEPROM.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
index 837218e83e69..ab6648c72ad5 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts
@@ -149,6 +149,19 @@
 		phy-names = "usb2-0", "usb2-1", "usb3-0";
 	};
 
+	i2c@c250000 {
+		/* carrier board ID EEPROM */
+		eeprom@57 {
+			compatible = "atmel,24c02";
+			reg = <0x57>;
+
+			address-bits = <8>;
+			page-size = <8>;
+			size = <256>;
+			read-only;
+		};
+	};
+
 	pcie@10003000 {
 		status = "okay";
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
