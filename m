Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EB71FB378
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NPaTkr2d33ivvs8QPzNjuCDitOddVTGcoN58aD43WQ=; b=GTA3S6834TduX8
	PjsCu1qqQFI63HNyu2tv/O6TEXm9+1NIHrhuAkk7wdJVRDYKCSsYpuiorPHHHKrUMdZvmsnEsX/MP
	swFBy9bJcf1T81ty0bLMlr7cw1hi/iu8Y0AuSZz/Hviu7NyMGjTFD5kkhREN4/d5GsmezqatkM/WY
	M+bN5tDui9dEOUn+jSMY7lhKBO/yvXp3avN2DLtKFJ1gacar+MGcTeQG99wcrgaMkeInWrf1YCma8
	BB49Hdwswq8CvBemKNZJ5yNgoTqfQTKgzs22aoHzl7Nw5k1gwK5MkUGNCEz4GtkPTF+WH1owsJTel
	Ftvkog7G8BetBWxFMpIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCEu-00013r-IF; Tue, 16 Jun 2020 14:07:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2a-00023S-5t
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id r15so3159192wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rSN3uDE7VVZdIMjjKeh4Dls6PgkPtrFPEandbX5MKoQ=;
 b=jVIlO54+hiIR87/2x0lfJ7IHZKwSvn0pa6pW4X9QV+XYjG0tJ7/2KK+or/7BKRoZOQ
 8NqrDKHbKYCSKkdB9okGqA+JIN1jUKfpJa5cIAc8+pc88Wj8/MJfVXwHdzB4OyX3PKW8
 EpCLPWEzKgFcqk0We8Jqd0dv33kXRjFZzbrCHgbcDu6vK5lL5IsWDJg2xRYw5adECyA8
 sccLsAiPfvdNNtDbIusJCIm2tVLHkK0SHo0/lOZ4HytPWWETwQ5f2F2JuQT0Ci4UivKJ
 6WvXc/t+dHnIPhh68TaB2TAkxb7Yz1TYS8vZrg0YcCJ4TrmOWvuMGd1oHdXMjR2xhOLa
 +9fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rSN3uDE7VVZdIMjjKeh4Dls6PgkPtrFPEandbX5MKoQ=;
 b=Rc1YXHNrgVPTs3pVW4pMEprQcjGxXTnEyVYccs8Cl5xUNApMztnsC2Us+vzoMe1JX4
 bjSRi/G7lzZYL8p/xHqMlnCl/1MxCRAJ6O80lMXD/J5t0ch+r+gj/sUMtuXXSujjjh2m
 RkKY1jlR6xaQW4mab2IbNZUcbnhev0MmUGjdtcONO2bWjou8OGCKVUneXCz/YsIjC7/l
 tyWC4ATbkCxa+g6bdASgdyODD/+adcIUd5IT6ScApqV2wAaZVrQcT5eeLx3/EdqzV8Sz
 CFMBB0iqZSuzHDJkHunfeQ/S+Tk8JP/ct7u1NZOiKPk/iYxpXGOuAtBb+sQi+ojzK6St
 3r5w==
X-Gm-Message-State: AOAM532QxM7H2zHAtRXfl7vI6RT0CqNeq6LljgT8RY//SjekdAdDSfNp
 VcMv2bsw6bIiDrcGusVV7kg=
X-Google-Smtp-Source: ABdhPJw+e1jzoylENDT/ZHUvtE+hfQH6t7Xu0KBupGORyIcp1d6XWfWd/4tcYmLdyDdCaZTgPRf6pA==
X-Received: by 2002:a1c:9e13:: with SMTP id h19mr3458541wme.107.1592315654795; 
 Tue, 16 Jun 2020 06:54:14 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id z8sm28917970wru.33.2020.06.16.06.54.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:13 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 35/73] arm64: tegra: Add missing #phy-cells property on Jetson
 TX2
Date: Tue, 16 Jun 2020 15:52:00 +0200
Message-Id: <20200616135238.3001888-36-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065416_402100_B56B183A 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
required in their specifier. The standard Ethernet PHY doesn't require
a specifier, so set its #phy-cells to 0.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
index 2fcaa2e64370..de049d8d458a 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
@@ -50,6 +50,8 @@ phy: phy@0 {
 				interrupt-parent = <&gpio>;
 				interrupts = <TEGRA186_MAIN_GPIO(M, 5)
 					      IRQ_TYPE_LEVEL_LOW>;
+
+				#phy-cells = <0>;
 			};
 		};
 	};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
