Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016C6446BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbu0Lez/OaXu8G4q7TkYKzqES3G2LO4LrzzsD8H3hPU=; b=BrSXkVLHtxJVYd
	ZpmkIkAmgU3g6RMFGiOV4D3qwwVqWUnxTiexfAk7y/NQR2Vnoh7QkrREhjhuRpFNqoYoGAn0X5hKb
	dRICFSqBKyL1N3Kn9Ak8Vz5FrjN0bKC1p8WxEgwXkTmD9NdWddwgLHhecmZjZJADBbOZffJZYEpfB
	gXzejT9GK0Xu3gm3exglhot4rDIaGoxv+hRVSfH3QADIleJPSeDKlUxxweD10rmoZjfppwxOgbawJ
	rGaPUs+tPvbGJbfu3lRNAKOvIJcv5Y4j39BdWsmux4gqPJWKC2DQttcCSznaLhw23hfbzf8+JwbxM
	ongK9nLheVHiSnfpgKLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSzl-00055I-Ec; Thu, 13 Jun 2019 16:54:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSyq-0004Jk-4G
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:53:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id 22so10865894wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B4FVqXBYoVQEIlsaX3zo8xQpS0bIMFHHRYcbxji5ppI=;
 b=me63D8Re60mBfgiq6Kee2NUjBCG98fgeGSRsfH3vxcwb8vIT6ICqH9hfDHG3uCN2RV
 yqg6QpJ0+77dyda0uRpdwiy+07DqAE2FmtNwtB3h+BLNEpfdiY1zJCXns/gOiRyU+SU9
 OE5T81jLnDrTha8UcAIF3z9RYJpqh0Wm+a2I7r9r2sXRYyE159/ebq9hTaD5Wf4JYPZK
 a/IwJJQNoOfpp+DJIM9MdEbsLaPdG0zE7jEQZN9YEmF0k2l47NjRGQnWMOAW4s3nLp7p
 32rYX4nGkZNZX8m8fmGPbbRaYiVjrNNgFiV+jwphYCBh7rItDKv3c6YZInVz7L+rAt9e
 Sfdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B4FVqXBYoVQEIlsaX3zo8xQpS0bIMFHHRYcbxji5ppI=;
 b=Ua6UEBMo+ecDaJiybwFG+G42pvx06NkEDuqpuZW0AB7JX18lgBjCHzSNmdM2ub3vC3
 4t4eIhREkvmcuU350RxHn8IAHUM/rPUX3r0o185IqoHSzUNqKYKauNIJMKradhttnQDO
 BLZT8aiq7mrq5ba1lXiVRn2m10gqq++G63EfRoeOWgFFQSR4sHrALNfDPW2p76FvnWDt
 CbgOhgkDLyimfaqn/uoO4qBIL9S+SBw+dqV4wbNWab+gWeJwvKFALc0+c13de2GalIge
 5tgz2CwfVzsGhxE97hQj4y2x3EOtyS5O3PMUtYls9ycNs74Gq5r6aFX0UXhFftLsdmbf
 yNYA==
X-Gm-Message-State: APjAAAUbJOl/xI6IIlkeGxI9mMbJyk7jUTUOEAwE6zuQhboMFB39Mh8f
 PqqZ2l60s0J8YsJmwt9QTJw=
X-Google-Smtp-Source: APXvYqwlIwdg4httjAD2WhScp/mZNYmeTVDW8BWPi42Xi+V0Pbu745HNjkaIzfO+P4ZOX+1h2omj9g==
X-Received: by 2002:a1c:808b:: with SMTP id b133mr4285413wmd.160.1560444818376; 
 Thu, 13 Jun 2019 09:53:38 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id c16sm103779wrr.53.2019.06.13.09.53.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 09:53:37 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 4/4] arm64: tegra: Add ID EEPROM for Jetson TX1 Developer Kit
Date: Thu, 13 Jun 2019 18:53:31 +0200
Message-Id: <20190613165331.8689-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190613165331.8689-1-thierry.reding@gmail.com>
References: <20190613165331.8689-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095340_213261_78B7AEA6 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

There is an ID EEPROM on the Jetson TX1 carrier board, part of the
Jetson TX1 Developer Kit, that exposes information that can be used to
identify the carrier board. Add the device tree node so that operating
systems can access this EEPROM.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts b/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
index 5a57396b5948..a3cafe39ba4c 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts
@@ -79,6 +79,19 @@
 		};
 	};
 
+	i2c@7000c500 {
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
 	clock@70110000 {
 		status = "okay";
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
