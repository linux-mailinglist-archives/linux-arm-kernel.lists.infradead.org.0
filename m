Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87942135AA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsYEYLClZVMv2OWJZPd3sN/W28NEJZ7q471HDYiN958=; b=Pv9bkP9ED1um0d
	yOR11Ol4M3BOkfmvebcCoD2PMnOmGDPS/bBaLBWT0kIIN+CM9154N4Vu9RxBmF34Pwq6qZI6GWRxW
	NDxhcLvCSCwfw24lb1g8cDlOUkrueiYXNeDLvRi/UN6oKR3ou30lQ31FiUJoOzEG2vPEWO1GphNMi
	VpOusgJECzCsbazSRTGkGH9/L2KKmQlXlMgtnwMT5+HzsDjhsSSnwvOBsVv8ekyUvueNF+jFF3eC3
	7gL0JRX10banoVydzNFq/0XOofxzLfhRPuaB1mBVZEg181R7fbi4iHP4Euwrx2PDURK+YK3hduzeG
	0BTtr5hDAt9knC2A3H0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYFN-0004OT-72; Thu, 09 Jan 2020 13:53:13 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEe-0003lx-ST
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:30 +0000
Received: by mail-wm1-x32f.google.com with SMTP id d73so3016371wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K7qiBD3jGRUcHWoFC2hnyMKPOIBb13dj8QhjT8ONsas=;
 b=nx5UGTtM+N44G5BfUdc3Hoj00fE93TiIJ0OTpxjq1JPUPs+YTEFkJU0EPhmhKSMdpY
 GhJPWXpNjCPzvGUsDdKGOMZb7xZudXYtkF9UGyP7wfllFAkothn8FMz2JKvyrki5FBtK
 j4P3Al8Q/wbAEZKPJaZrYxYLsZzBWAAhd/YahAfiFt67OxwmathgPog0CaEqdrFV5ICq
 RLI96sdHUMdQ+iHC8RUksj+lNrSj/JCEJNJCgb9Vu01X4/xqYlKVDx0Iofd5LSZvfzjL
 OAGDqmj8E6JTBqaxg1CHGV26yg+tAkvZO0t15qLBamNWhW3SusJbLgs7L66kcwsDA5qz
 pPJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=K7qiBD3jGRUcHWoFC2hnyMKPOIBb13dj8QhjT8ONsas=;
 b=KCU69GtjQ+4LyYWCe0tsEXLzdMC/w35izJvmsxVSswN29Oa1a1TkTPKDswWXnxtpAs
 3lwKR/FMweNz0ypinXkFUEvSOLdEEw8mh4x/dMU9IHyscW2zWVTeoMjsFgl7UjGHgeFP
 WLpVFZ414kgtD5XSn30PTkXpIT3Pa/8ylCdEV7iO+l331YjYwZ86UOqd0BmuhewP4vr0
 c+1jh1LLqinu+RL3YPUXQm6P0mCCKFYBP93d09cfSUJJ69D/NI9w9tFdn7oSQgDFnejn
 UHC5KL6HDjpqDjvt9+LW37YqnGVL6KNWB4ETWmS9IrQuoQfEjkCHvulfsI18LnNK19I8
 g89A==
X-Gm-Message-State: APjAAAUftnaV2/j09lLyyrDRV5Eyvv+xG9SDhOvmC7OJT7RHajXKS98W
 sK74qehZAd1GRPPq51IXHOSb7jeBkbSp/A==
X-Google-Smtp-Source: APXvYqza39AuRdSj+WTPtS0AXsMxw2OjmXIO7LOV133rsNOr259smnP3qqSflId6/fIhXVciJNR8Eg==
X-Received: by 2002:a1c:7205:: with SMTP id n5mr5243604wmc.9.1578577947211;
 Thu, 09 Jan 2020 05:52:27 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id v17sm7903169wrt.91.2020.01.09.05.52.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:26 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 2/8] arm64: zynqmp: Remove addition number in node name
Date: Thu,  9 Jan 2020 14:52:16 +0100
Message-Id: <34e9e2001a874428b3e3fb3c73799589783a6278.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055228_928852_127689DB 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
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
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Harini Katakam <harini.katakam@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change is coming from mainline review that's why this patch is
sync.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- Add missing patch

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
index b75235ae7d30..4a86efa32d68 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
@@ -123,7 +123,7 @@ &spi0 {
 	status = "okay";
 	num-cs = <1>;
 
-	spi0_flash0: flash0@0 {
+	spi0_flash0: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "sst,sst25wf080", "jedec,spi-nor";
@@ -141,7 +141,7 @@ &spi1 {
 	status = "okay";
 	num-cs = <1>;
 
-	spi1_flash0: flash0@0 {
+	spi1_flash0: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "atmel,at45db041e", "atmel,at45", "atmel,dataflash";
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
