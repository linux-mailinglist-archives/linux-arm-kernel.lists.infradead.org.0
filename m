Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5B0446BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/6Wfp1l1GZa/bOxC7pBqg2/Ju93fvyZo1k25LfJhnM=; b=jXtGrijlJ1j6ZL
	DBX1RRFPjYR5xKwrwPp/ZXJ8+bejdS75+zgeGMyzhQXN9H/GTUPad/kCtjp2LWPrdgm6T51YDPiXJ
	MDIYuMBxnf2KVnKtOWe7dy9WXXxWbFQmc5Jqn426qjsO7koh1l0pFoLH1k/hKgn1edpyKHeMnpa40
	GlY5mH3B+pp/33yjc8oCXiBhCMaJHHCVwpZIty9OxkVh/ZbIHzyWCHwipj7KfTjo+Xxuk/g50zG8L
	l1go398wxOAf7IlYtgUlPusNRfWR3865NGYeRnCbqt4zJT1LF5Hp9BeSgbQ0LgmZUaW/gfeu+JHgM
	IRAPyzkG6UMNhrwZdQQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSzW-0004jw-4e; Thu, 13 Jun 2019 16:54:22 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSyn-0004Hv-Nv
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:53:39 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so10933259wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iioJJmJRjMyZj4D5En9AIxg+XTowaC+ivgjvh04pEHg=;
 b=MqZwLJFjZnG25JVAnS2bjzMXJNhJuKhK+2UuagRhnOxDibB5/EW5RWFsh5IVY9YIjh
 oMmURAOBtEiM4EKkaB4S9kSeDhLllHMVDNjE0lfzlcNMksrjpwWxUWSNpJ+epXLuiJsG
 r1wcGRqz4eOhJjiNTBoS8Kw9OeIa8Z4A6MqbKpIBBD0DlHEepbptqNK1cQqMRvzKYNfb
 4fnVQp9Vf82EuWUQa2xONX/MM3Dd4cNmN8YkROciRhK9P3jA8igXsz//mi+qhia3CUpf
 OW5l0E2skoTorNID7WaBIhwLrG0PFN8yXNyjdPACwwWFK54+DeNLtFIU+vQAb0Wc/E+n
 CxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iioJJmJRjMyZj4D5En9AIxg+XTowaC+ivgjvh04pEHg=;
 b=OyWNMZI5mW7a32MRjwE0ER6DDZs07uyOaF523ROIqTBgVq+VSMMnoXc7klCB5BwJKa
 aV/gbG/ZlMQ/RYuRjF7yhuLNRxZxkMCy0gKh+r2aeWiYF7Sm5obuxLNbxDVaMQkqG5Lc
 Ebume8UY9Z88ekI1zxsWhkN+bShZoaxGKW4IRWRCiZPEo/OGjpdaNYeg56Bkws8FnrCI
 XgLVhjGrD50Zk/MWoWyNA9g6CRfbGFp2mlVd0t9hbRCJemyI+Wc2s89X6OzzcOFCF+AF
 +YGWVMD1DqIIHe9Pvzq2n3GJ99wU+hfgnwGm3Op4B2RMo6gwr3HTzbCnpHJbtpPeA+Rg
 VxJQ==
X-Gm-Message-State: APjAAAWnLaIlCBVUBtPMZO+wqxymsRIaMSNsL1MZM5AqtEgEyYwE4Clp
 gHTfC1a2wZPE8KoMykGO14g=
X-Google-Smtp-Source: APXvYqzBdFnQ6Ei+FQteusMvQ8m4ysklmBEPHIwMZl5+HkqlQUxhrS9KaQgaJ1wxDhqW7I7KqoIAEg==
X-Received: by 2002:a1c:ab06:: with SMTP id u6mr4433863wme.125.1560444816426; 
 Thu, 13 Jun 2019 09:53:36 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id y18sm475388wmd.29.2019.06.13.09.53.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 09:53:35 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 3/4] arm64: tegra: Add ID EEPROM for Jetson TX1 module
Date: Thu, 13 Jun 2019 18:53:30 +0200
Message-Id: <20190613165331.8689-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190613165331.8689-1-thierry.reding@gmail.com>
References: <20190613165331.8689-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095337_845293_E24A5B69 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

There is an ID EEPROM in the Jetson TX1 module that stores various bits
of information to indentify the module. Add the device tree node so that
operating systems can access this EEPROM.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
index 4dcd0d36189a..e8654061ce03 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi
@@ -264,6 +264,19 @@
 		};
 	};
 
+	i2c@7000c500 {
+		/* module ID EEPROM */
+		eeprom@50 {
+			compatible = "atmel,24c02";
+			reg = <0x50>;
+
+			address-bits = <8>;
+			page-size = <8>;
+			size = <256>;
+			read-only;
+		};
+	};
+
 	pmc@7000e400 {
 		nvidia,invert-interrupt;
 	};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
