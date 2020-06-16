Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD511FB379
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dwehMshptogBK4HMsLZJhcAybxsK5KVziX3i2jIbzY=; b=MUznYua7B98lJP
	1bTk+D/2E9M3GF2EAIe7KM9f/xkh1IifpPBuNvdQdgWDXoxLWcTenh7ehkXlmxJviXHKRK/CeQtey
	77HOsoxFy7rC3JDNcZ76efjLuI3PzncPAMwmHfE72KJMzt3f86OmPldgt5rl+2WI68WhNMUe6FJ4C
	swpA5c7/UB2nuOniITUjtuLvwlrS+tOUqJnjuaWvxOFSSSWdCypQy7j7N96iclXtg2fmOX+0cv/4j
	EAkqbDupdCzqkDoflqzW/F5wKvi9X8XuRTvfKYKYoekg18sWa9pDBwBqbAzLI0dYXW67/rwQDUx7+
	Ptv4GPRYokVEroLRbVuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCFB-0001IG-RX; Tue, 16 Jun 2020 14:07:17 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2d-00024r-B6
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:21 +0000
Received: by mail-wr1-x42f.google.com with SMTP id b6so1729587wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EfZn0e2yak8oW3bFOlBf3ybvTJUHnF3nqSzE+El5OpU=;
 b=uSaIDrOETWkxJkuo7Tq/oV3yWUlMo3tfHlWwcgh04nyYp1ICpyeh20VzvUyCUyqAaQ
 3tDXfCPfqVDqEXGLxqraQx+cqjrnbjlljd5/H6mAeXP4Mn2p1gvmA4TcmXYrzictCbsv
 Nfj3hAFF9oOJaBXpbIYh2upGSXum0DsQdEWgRsHz0/QCbzxvDflW5/rvbEUHD0DP6Mo3
 oQhpQ3yptMGg39FZqLOYuTqM15QHoFsi+GQEK9c/i/zub89Dws0uayuJterc2D6iB9WH
 OJXlSI6Fa81sxo7VO9Y4vQ/n31E4ebp2lbFBgG0Z4hcAVZudFBgDCgFhie2tJOqaLBor
 RwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EfZn0e2yak8oW3bFOlBf3ybvTJUHnF3nqSzE+El5OpU=;
 b=leDlkXZ2e1hn/09vwxYNeNhbx8Whf+SiU+LxDYQuoM4v6T7hwjVb7F3OzC8PI0Z+Hq
 jZaf/CbF/XJQ9L3X3vYXjqdx+eMTZwuhIEl5ibIQRbNUGEOiFGbmXX9ozNU9J9z4Vtpu
 szmVFHjv2Cf9zAYt4jgY/g4NODI4gSlq/f5MAW3mo6Y43fdmddsZKdILTRMThtGp0FH8
 7o7k3aFISuBd0MtEsq3lL1oxyQuzt0/gLacS8E3bc3irgd5EnXSlCngYkUqurmb5bBQs
 QYKlUsbd+OF7MNGUnvFfKWyQu54pz1fmq0+VvcPXXW1VICvhv108SO8JRR6HRjmhjKYZ
 qrjQ==
X-Gm-Message-State: AOAM533hyhQPdylZaQsgSNBjivd6J+F+SBjkzYXy1gsTrhVmiTIqJnR9
 PT/t9C1DGWtn82fOqURzQs0=
X-Google-Smtp-Source: ABdhPJwd7gT9/J7V9dYG9c35OqjoTaO9IQ+WwWcoJwQi8j0Jda4Xu0zzbH/M7ykH2cDgI+o11exrlA==
X-Received: by 2002:a5d:604b:: with SMTP id j11mr3158732wrt.193.1592315657762; 
 Tue, 16 Jun 2020 06:54:17 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id q13sm29731927wrn.84.2020.06.16.06.54.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:16 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 36/73] arm64: tegra: Add missing #phy-cells property on Jetson
 AGX Xavier
Date: Tue, 16 Jun 2020 15:52:01 +0200
Message-Id: <20200616135238.3001888-37-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065419_426262_D6B18DE2 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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

PHYs need to have a #phy-cells property that defines how many cells are
required in their specifier. The standard Ethernet PHY doesn't require a
specifier, so set its #phy-cells to 0.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
index b96eb4e14556..f3781e86f321 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
@@ -44,6 +44,7 @@ phy: phy@0 {
 					reg = <0x0>;
 					interrupt-parent = <&gpio>;
 					interrupts = <TEGRA194_MAIN_GPIO(G, 4) IRQ_TYPE_LEVEL_LOW>;
+					#phy-cells = <0>;
 				};
 			};
 		};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
