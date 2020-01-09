Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C6C135A61
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:40:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDrRTqwpdqB2xjKxq6WzlCsR5w1/guUQHiSuq5PFJSA=; b=fSIe93VNQSCuJM
	bv3gfEOv19sAw+fCiViZh5kFdqqN60NyJl9HuRFPngExL2Dkh9wz1eJxEbPp5X2MTFtPe0SDQqpEi
	2wnCPgYjeXIrlvIlxEchtpaVOtpct+1uDMOreV4G9rmPcKU+KpFDxljN+GWiR4xfr+UPll/GjJHG4
	KZ5I/cEN+PTNX+FN/hUUN7uby5n9KIA2fgip9bxOkZDcWPn4Csr9al+DwCQCZw9C2xQdEdNOr5W2W
	qYfCjaF3ApmBRzCSm4tibIJIDbZ+AsA/sLWQlWWhuTZjahRRWY9rxGdYhX4cwa6isUPDCGl6T8yzT
	fe+mMVcveXnEuzjOu+Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipY36-0006YD-Vq; Thu, 09 Jan 2020 13:40:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipY22-0004UQ-IX
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:39:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so7457702wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8iGe/BokIqYVIferI0k5q9JOZCEsfURHQgz30AC5VkQ=;
 b=eo1zaEGlu59ZCciIZUQL5j6ovn7/ex11pNjDfx0qLWOl11Bjtz0XMgKZy0TWPgZTh1
 13VxWDNHZ5MnvvZ5TI3NfsAxE6TMzyKuL8+N70jJW/ulwEj36FLWTemAxVlXlG6ZMssx
 2ygvegR3HhcUGPYnLUtsv5ffMHjn78iXXaXArFzYMD5QUXUB75JfgPJmvfwEP6h9CM7B
 DO3CxXA/jTy12gQ6hZSsuv0O7P6GF9VWR5hEK4psHT9gJqXtvBOArVITlIzmzT2eN1Eo
 sUVwPFQoMPzuLeB3+KMVzuurypWqjTH+kr6Nj9yrdBoegpn/xO4gefFJsW/qIoumAJE9
 fxrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=8iGe/BokIqYVIferI0k5q9JOZCEsfURHQgz30AC5VkQ=;
 b=TGZFBlWAwuV3Y8mzeLw0ibGysdCgQ0x3VKHzaqD+KMIR7P3m3Hohf6Y5iaOao5BNVp
 IwpesbyIv7NOFEMWCH0dqXNeAY2KiV/+TiJmVarBMVxnL01HA086zyx46cZ1mxkJJDn+
 eZSC5ordMWT9DL7erPlDdCeVXyPZ4+dbtr1YLXotbiOuUo+JXgk4fc30FZVwFBqbBttY
 chK15t8wXeGQK+nrEhzGNykXNN7xk9KATXDAWHjVWBu/aXiNuj4iac+p/2J8Y4P81Mu8
 1KWTWITJyR9Ke1X4oj8ehqjd71mUKf+G55Bh5eMPabnyhvXhaAJuPEJiIFtq16ZKUayN
 EHUA==
X-Gm-Message-State: APjAAAUGm5NatQbc8bw16gZnZeMoWO/KZMtYAziSmZki8Na9MX7vf/ot
 iEKkdgBgRVOAagjQCDDTVnxL0TIuPLys1w==
X-Google-Smtp-Source: APXvYqxHNk75iP2xMF1ahG95r2ei7cIYSOulT5oG4ZmfepYBGl7fgDQ4d6VHHMHAzCG3BfSnypjb0g==
X-Received: by 2002:a5d:4cc9:: with SMTP id c9mr10782702wrt.70.1578577164608; 
 Thu, 09 Jan 2020 05:39:24 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id d10sm8455126wrw.64.2020.01.09.05.39.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:39:24 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/6] arm64: zynqmp: Fix the si570 clock frequency on zcu111
Date: Thu,  9 Jan 2020 14:39:13 +0100
Message-Id: <f16ade8e75ef9f9eeb133145d510b142c13121e8.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
References: <cover.1578577147.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_053926_633524_021D0D02 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
