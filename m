Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC154135AB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:54:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKPQAEwUGf7QD/cC/uNB1NRuQsTTsCcCnwqIzat8+9Y=; b=GAopYUGd9Uf4u2
	tlAnPEl42ID1B2OoNKcVkkdGmXuOKdmCjMihywgayz7rgPV3z+uZfZsZLwrKA9Y/uAAgSnrQ5FxFE
	tkvHmQ8YFzxMaN+nIZHrTe+PTElz017WIy43pmh+WJtkUEoS/XRjMVEO3bxJgaRYufmbdLLI3MwHm
	2K88AQGIslGNUhTl0AIovLMfEjH3omaBZWf4+6DfDjR8GTwkq+adWQ8WCDx/QkwZ27DNfwKjdeXZY
	OtDs1wizHVn9asctKVi14X4FchTjbB3W/uwW9k6yHV1qS9MMSH4GTYwxw/JC/dMn9Ff90dDR9bD3h
	2+acqBHkwvBQXoJjn2sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYGI-0005bn-QG; Thu, 09 Jan 2020 13:54:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEl-0003uo-Dy
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id d73so3016777wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wDdT9mwNJb39SdHGme3Rl9FLVtZ/pPu7zEryCFQu5mw=;
 b=dpQhhEzU8ZdAV6dngpJDK3vCdHcsoKFGCyJyp60edFReYxuWDiZXLCljlb0JMvhG0A
 50BZK6liDrJjpi7/eqHoCqYPwnETOCpaQ4qArOHdegCqviTE3qfNrE6iMzmAjmv80SQ9
 OMbO+VkEitn1bWBdLoPAb7xKgjBZCFuBS9HqcRVktviHRiyzUKiBv2Q/mxotrIHhmR++
 ULYRzUpqfJHqRu9lU2kCDjPdtthchZFQ7tM3D5XDysbInMt2Bx2i4uprH0VooHLPmYY5
 wTOj7Hf+cHVaIsfajvI9aG4FkiwGqDKATl4pMuGV0011ZNBf938GuUpJNLvO43t2k4cl
 AZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=wDdT9mwNJb39SdHGme3Rl9FLVtZ/pPu7zEryCFQu5mw=;
 b=ehiWxN0guOJKUgPzjt4a6Ogv9zrsQllCPQe99SNRJazjOUCPtemOCcJdIDRrJNiP1Q
 tc1XMt4YWbmPTdhH2qUx9CoTbMDr8sXxwVsHVC3U0tovdKxfP4UCFNsH7c/OUsLQrQ7a
 m5y0Jebqd9/UwBs+eU2aG1gXTnMSPZCnnGBe13YDY2zY4JRJ6mKK7ZZSRVyjZUCkUbCk
 CozkAiLoHT771L6AN0gWDJIrgZVbjBqulgynfb1Q9qT5M5rCjFsulxvQmvGnf8h8NjDj
 Jv9EM5jskipiU3me8gJmuw/uJb9FB2qaA76SIVlZyfOF6+yQNCdJMa6l+p4kTUWa5zip
 LjAQ==
X-Gm-Message-State: APjAAAUyqqLS7g0UvPhmTp+DJw97lfhCSuN2FQGwZ/lBhJtMvCtTJY0z
 vyA6E4mMWsZEjvus/ddPiIqaY6i9kQ47eg==
X-Google-Smtp-Source: APXvYqwi6eSbXZCs88gz3BT3ZgLThAHMy95DtZQwNI4D3VZDjgmv6pCPIEVoxQkMsNmck5ND5GcXqw==
X-Received: by 2002:a1c:7f4f:: with SMTP id a76mr5153449wmd.77.1578577953676; 
 Thu, 09 Jan 2020 05:52:33 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id u24sm2880054wml.10.2020.01.09.05.52.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:33 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 6/8] arm64: zynqmp: Fix the si570 clock frequency on zcu111
Date: Thu,  9 Jan 2020 14:52:20 +0100
Message-Id: <02f0e609601065c8aa4acb4ed9916bade10c6a14.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055235_563081_0CEF7DAA 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>,
 Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>

The si570 clock frequency should be 156.25MHz as per datasheet.

Signed-off-by: Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index 022c732005ee..cb2e46833a7b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -317,7 +317,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u49 */
 				reg = <0x5d>;
 				temperature-stability = <50>;
 				factory-fout = <156250000>;
-				clock-frequency = <148500000>;
+				clock-frequency = <156250000>;
 				clock-output-names = "si570_mgt";
 			};
 		};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
