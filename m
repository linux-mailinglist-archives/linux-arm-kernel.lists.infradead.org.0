Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0A317A328
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 11:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vyX1hu/xc9mnEBn+7qIHH//Xt9Xurd85SUQ67v93t+0=; b=b8BJqlt7aAPEqw
	3PkGmHcj/UupCLLQq0soVP5wPp2xB9vKNa9cN5B46V50wEFU/qBWEGMrmTWwZEWkLqNpIEVQBKgDB
	I27StdDlpP92ntQCtSjOhkUTsJWQjzXNYzovIJqskb2ujsBQTfMOiNSxFJUEkZzLIQ0cdFWEUzPLK
	KtQ9Y5i1a3xcrVkrZKUBawnJV7XF3jZqCarnVkNZil2kQCdE9IZvow5AYA155yd7DrcLopXIZMi2X
	JNkcQ/PSycTyqot2lMQOTenM6LH3V/cYwHhzbFLZ6kSiCUDcLqmdkL2b7bA89Jm8aZqgvainb4/Zg
	AQHDxBFJrstRPfpOKaPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9noM-0007ue-Pw; Thu, 05 Mar 2020 10:33:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9noF-0007tn-KS
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 10:32:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id t3so2571544pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 02:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g6jvlcLfOVkePq/CeddtHcxNNxbcBUnyepFlczoKoYc=;
 b=UZzzyTL1ZB+yE8Jt4H6j1p0yCFX46aPS9ZVAdNXjxcjsGur/jB4RL5cMMdJTJGpUn9
 q/MOLQvyGC2HPHdgiMK02FBCt2o6KP1Wp+kbz8Akytmny/l/mf5JNhIySMszdPb8gzp5
 8EVXlxu7bnHIaPcLpmpI/GkApgcj69lS6s3ZsUBONyErebXYbBnRB0NeWPhlDgp+4shU
 bd3IPUMzVnn/KKnxbCAAZgDRQNzLzyLvbL6g9kMeCp66G5bmJMAvaPsqHK765DG7iHgZ
 PaDbVA6j14QUozLFqClvOzW/89MtlDshCqkTf+6UIj+2kNESIZzNpfVmOtkuCKXpLB2s
 ASZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g6jvlcLfOVkePq/CeddtHcxNNxbcBUnyepFlczoKoYc=;
 b=JBYZcobLMx67dW1rRYvJ0+WLpGdB1IRwf8l6xE++rs+sJLZ/QaMCeek4rUEAk9jqYg
 i3JXvojHhk0QgrLfeZz1WKrcIko6IF5RXrRt0x/uiLaVE34zGAtEv+VZQGlVOGuyjXOI
 fYBo3dMAno++EDTAuwnInQ6hwkj4IMZgVMusaUKFSMHrVp3i7L42jBafR+geLfGsim5t
 8t63K3IIybs/xy+AlkWi9BFPNvAV66IjYXQUXoUaf2Ts4hVq5o/+YFmz4vpNj38nejES
 0MbMCax24obJv06nGYPIJCCj/WkmH2BCAjOYz5Xxaftwh0IYpdcw6t7vVdYZpglhKswF
 U2/w==
X-Gm-Message-State: ANhLgQ2zcQ4AW0s934jIX2AfmCPO4h2ux4U49gOZYcAt2/slG/6iUmjI
 auJWC/KApwuC07KmaKaNKSA=
X-Google-Smtp-Source: ADFU+vvjSIb9MWOcCZUFhbK955O/9E7FK0p9nq90jMrFm/uX5fq+xfRZeu1hdPIvtSZHOabTmOSYPA==
X-Received: by 2002:a63:8343:: with SMTP id h64mr6769837pge.73.1583404374332; 
 Thu, 05 Mar 2020 02:32:54 -0800 (PST)
Received: from ubt.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id t17sm31540145pgn.94.2020.03.05.02.32.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 02:32:53 -0800 (PST)
From: Chunyan Zhang <zhang.lyra@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jiri Slaby <jslaby@suse.com>
Subject: [PATCH 1/2] arm64: change ARCH_SPRD Kconfig to tristate
Date: Thu,  5 Mar 2020 18:32:27 +0800
Message-Id: <20200305103228.9686-1-zhang.lyra@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_023255_698105_2F931C12 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chunyan Zhang <zhang.lyra@gmail.com>, linux-kernel@vger.kernel.org,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, linux-serial@vger.kernel.org,
 Baolin Wang <baolin.wang7@gmail.com>, Orson Zhai <orsonzhai@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chunyan Zhang <chunyan.zhang@unisoc.com>

The default value of Kconfig for almost all sprd drivers are the same with
ARCH_SPRD, making these drivers built as modules as default would be easier
if we can set ARCH_SPRD as 'm', so this patch change ARCH_SPRD to tristate.

Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
---
 arch/arm64/Kconfig.platforms | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index b2b504ea6fd6..76778b2f520d 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -249,7 +249,7 @@ config ARCH_TEGRA
 	  This enables support for the NVIDIA Tegra SoC family.
 
 config ARCH_SPRD
-	bool "Spreadtrum SoC platform"
+	tristate "Spreadtrum SoC platform"
 	help
 	  Support for Spreadtrum ARM based SoCs
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
