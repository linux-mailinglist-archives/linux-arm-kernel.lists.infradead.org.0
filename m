Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B87E7354
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:06:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GUaH15Gt43PwItKYxjty3TlX7IUYEGCFPzyZSGJYiFw=; b=blv
	LMe+CodQs/CZcZ2U/592UlnuJjjIbbrsZsByvCc1PY+dE9rsSARfdXyISjQzWls2uYaZvCKtQ2LMY
	Ir/oZ424kL2sjYKZJe+hvmTDrQDJ1BZFG38Vwc3nH2uxeIum5SYHtWRqyT+7eTiE2rKDyqljyqhdB
	9xHlp82tGHDALgl3tuIq98V+Ge9Ilv5NxJi+hIz3sIAuJPr2cULpod5BJ0E3Ge6VhEgVrz8d2Tz85
	fngMbHP0KJXlFjcB8aX3rbn6eQcByqOtn3nuGhGzWQMRgmORAt4G1Pobx3YuP5TWdyxzTFQ/pcJvH
	SFh8k+chG2VmYMzTjvkOXRJjnkLiBHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5f7-0004yt-Mg; Mon, 28 Oct 2019 14:06:25 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5eT-0004nu-GW
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:05:50 +0000
Received: by mail-qk1-x744.google.com with SMTP id a194so8533051qkg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 07:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mP1EjpYpeQZmnWOc/fj6cBSC/7lAuYtigWK9wnvfedw=;
 b=C7VIjLoesVJpY535cDWv0COuloPP4bOVG7Mf7sogybhHg0dPBb8HBjqHLAUIp1qj53
 +nvwtg8VBiHtDOjDfL4ax4xdOFNfIeinDngNS+gJupQepqDjjgZk9vBBo4GBGcOgQ+SU
 0lkgNd0MIGcGFzQETOdpj5WX/ld2xd1GHYaAIB+dMYoPWWSo06AMHHVZsigTIf10WOJN
 YRpMmOuwhWdr/1agrvjH1X/jV9/uUVHEL/YWqDVaOmFSqWLRixGtSIao5I15mHNLk9ed
 mq0rr5/whEmz0dYhen2SJ08WlDAmsB3rIYRtWUfG5KI4no3L6l2UjOLA+DRPD0XWeyz5
 6gZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mP1EjpYpeQZmnWOc/fj6cBSC/7lAuYtigWK9wnvfedw=;
 b=EslPSKwCAfxjsHm8AXavlRQXwlhq279B7r/rF5qSRgau/HrmXX5f3HYd1fQ8ykJKEf
 rffyi2y2SZ479p6STgP7WteCLX8xZq0rTM5jvETGuEmXDoOkhv5JRPQj51OfmEGTHeF6
 AeXP/C1cxV8Uaf4fwOPeCD7KSrEhDcTnYO5neF0Dtu4TSAMXqYwODSkqcttLny+QnYJl
 LOpEh5JuL2xCgaXaGlg9+jKvNyVB6pQBfO2sAt4c/74t9EC7832cabm/MTKG0dkDxrIE
 7mMiEJtmnvAG1cRgZW5T7t+mT4mNOsvdXbsxO0QqYNjax8SZlHWm2uWlUptpR1XBwUjk
 MsTQ==
X-Gm-Message-State: APjAAAXR9CpFzgUPKO46Wtey4oAvwv7EjtOs+HRoEJIIpfniak9nenj2
 S1GOAvj+cgZ2dA0QuNCbkLc=
X-Google-Smtp-Source: APXvYqz0xyu/b8wmgzlpTDeIYaD5nk874pSWKI7hMXXosSVXzPhaK28Wxt5gdx4vcKBFSCKbkzipZA==
X-Received: by 2002:a05:620a:14ad:: with SMTP id
 x13mr12863420qkj.58.1572271542964; 
 Mon, 28 Oct 2019 07:05:42 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id b185sm7000854qkg.45.2019.10.28.07.05.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 07:05:42 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/2] ARM: dts: imx51: Adjust CPU operating points
Date: Mon, 28 Oct 2019 11:05:44 -0300
Message-Id: <20191028140545.10218-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_070545_624297_2A74C1DC 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, cphealy@gmail.com,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust the CPU operating points as per the characterized settings from
the vendor BSP at:

https://source.codeaurora.org/external/imx/linux-imx/tree/arch/arm/mach-mx5/mx51_babbage.c?h=imx_2.6.35_caf#n1343

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx51.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index 0a4b9a5d9a9c..eec423785849 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -83,8 +83,8 @@
 			clocks = <&clks IMX5_CLK_CPU_PODF>;
 			clock-names = "cpu";
 			operating-points = <
-				166000	1000000
-				600000	1050000
+				166250	850000
+				400000	1000000
 				800000	1100000
 			>;
 			voltage-tolerance = <5>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
