Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9262D94E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zloeTiyILFGBEQl4KdHwWVXdknFaUem5pVP11uwWQZM=; b=aPL97uLYvVKnmR
	YGcGtx6IbRq91nZFl6TxMSO+IPpHuSXkuPmC0lWmme/+OD52e+2+JZYrC5YoHzMCKnAYE0IABLUG1
	fcaw0PixsPZSioB+1xu+iHzliY9Jv2Atz/xoRRPhg+tTpZDCzHa3WVmxlO80NOE0/2jrtfW842uBf
	nRZMaLxtQe9igXDT+9FgIQdfwHyvy+zSy/vp7gFcg0IzQ2jT/EThWRnarqafja1ne4hQw8oDbQ1sg
	mD5C0MGOn/F4OnDCAaM5GeSHmTQ4mCq11sLrBAlzDygbzhhEofycFU58v28t679lImwGRTuQfa8Zt
	UwSrTDQ++YZCeyO86cmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkqb-0002Dh-HN; Wed, 16 Oct 2019 15:04:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKko8-0000EK-PD
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:01:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id p7so3287671wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 08:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BlSNEKakkPz3qSacpRbF5fymVNSJO3OQiWGq/ZKj+yQ=;
 b=GkCbdZxZSlrSuU1lMZlxTCRgfOho3FeWP9Qb8VexJMxSLiNn5QjHzSDGN78YTYZ6sY
 HKcjigC+gPZxcNGwA+C9HVpZNGqNRCIMCliHH6+LLpJo/rYCco8kbNNcxtKNclmJCNxu
 fUf3b1rOa5YFScI5y3mJyeStfmJbnwLf1KI3rznvtXKk6YpImbYcjFzIYeLQT88OVbjh
 50Zmmg9bqWdU5PesiUkB+cQmqKOpb4PZ0VAV2BfqcJ9QC14Nbh0RaZYXqcoeQlIswlDI
 fLh6Xsp8MlT7CWp0QWf9W2nfQP35hri/lFKjBDEY/3WM0nYcvgdZEeM7DfEa1s9BPBfG
 //0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BlSNEKakkPz3qSacpRbF5fymVNSJO3OQiWGq/ZKj+yQ=;
 b=JN536jjvQn4Fjou84U/Rjtu5ZR1aQlDOdRah5/0oXJtOc+nD7X+GnmCSggeTkqU7Gu
 fTbMA5F5uVHNdo1IqViRL01X6o7wEN5w2nYMUUrJ8KQdH6hayh/LzbNW6SkDq8TjWtnM
 CfqkTpoCNtcONvL2SWN6iC++8HXTBpW/qn6eIJ8KfyLjwvmpnz/GKgUJ00JH+kOHVjXE
 JF5GsnESt4aXtjvKUw5mP/qg2O3O2THXl1FQ72z4JdKFW8cUG2zmy9PsBiRlzXuSTikU
 A6cW/PM9N/yy7g5DZ65mH+xXzwL0kGH1sBklSnu2SCkg/AZOjJVjhublfODiH/9eRD8c
 41wA==
X-Gm-Message-State: APjAAAVJ4zJhd06yqouyy6vhWlrcYSC8waii116R2Wi7POHkvA6WHZOC
 w0WymV50gM3mlJvRGV4nKUQ=
X-Google-Smtp-Source: APXvYqyue6RFZDMQ83zyZKJMte1ssg/sfGhwzL3H+VaAWeAsF0+fICPVm1OXG4lzzdoLXx3jmhHPPA==
X-Received: by 2002:a05:600c:2185:: with SMTP id
 e5mr3908701wme.78.1571238107027; 
 Wed, 16 Oct 2019 08:01:47 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id r18sm3215437wme.48.2019.10.16.08.01.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 08:01:46 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v5 07/11] ARM64: dts: allwinner: sun50i: Add crypto engine
 node on H5
Date: Wed, 16 Oct 2019 17:01:27 +0200
Message-Id: <20191016150131.15430-8-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
References: <20191016150131.15430-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080150_458429_E2ABDCAF 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner H5 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index f002a496d7cb..e92c4de5bf3b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -127,6 +127,15 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-h5-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		mali: gpu@1e80000 {
 			compatible = "allwinner,sun50i-h5-mali", "arm,mali-450";
 			reg = <0x01e80000 0x30000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
