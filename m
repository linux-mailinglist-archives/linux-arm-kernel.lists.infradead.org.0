Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C76116BCE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q7BkLrYcP1UF72bsmDgVB1e65c/KLnz6RlR+oHTaefg=; b=QWZOHslEk3q9u2
	wUG8mPwvV4Y3YjXcZtMVNO+zcs8O0S8XJczjYLgFbDP8lqaz3CHtdnHnEtoh0KKUNy4cf/7eaDAK1
	kZP1Mj0ANMdK10IT2u4PjQWs4RPEj4xgv8uNwE5/HdndD4SVgyxUtYHINBhv82zZESRYJDeW5Oy9I
	MQTPbpol7kMTclqmb1F/zUaneanFzcZq0sDcD5JF0IL6DElGnnJsjHd5BHo8Tz5Bzuf69lhx1Kc0F
	MEZ9hMGjUATUssi6FkM10nbHwapgVst9Jin8I59cenNM77BCByXlUW/1yXiIhbAFKwEOK3IMV2P/B
	YcC/Ygiml4UcKyimJ3rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6W55-0006fY-BY; Tue, 25 Feb 2020 09:00:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6W4w-0006el-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:00:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so2238056wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 01:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vn4rZGzk+IAH+nxFswZJCGBxbGSA0YI3EXXacsRbD08=;
 b=lQKlfzSBMr6+Iyq1U8QB2M4CNB9uvrNtci+HBZTL/I4Qo5menq2+zDW4TqHl+cCY0w
 54CAtPTyp7TR3wF8P++z1IuSs/tnTuKvLgn70iWfxef1owUQQepqcJOx4zNTwe3jWdK0
 OzZ+M5wZOReDYecL9wivW1Tin+NDEI1Z6IlXimgglU9IInF6Ebq0wRekEPMu04dgy3Vk
 V/2RTYH2Qs1W4tMcx401cHUxJ2E11fUelpmH69e6+ZKfskNyocFde7WA7WiaqNmW1sdw
 KtHPUTeRHCg8t4hSVA55LfZdTBayB+aA8QGwpCucpRRBZ0JhRJiU1P0M/uV5h2gBvBK5
 s5Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=vn4rZGzk+IAH+nxFswZJCGBxbGSA0YI3EXXacsRbD08=;
 b=lSH+dZ7DVkB7S3AodCdsRMvstWq/fGGQ1u4lZPXavvvLNbQeUwgkEfIFKmbQfQrqHd
 2OS0YjtPxb8x9kZdxIzsfbINzcxEVIqe9xd5PB+IKSCnUolvL7AxN8ExCTqSdZmBba+O
 X2rLIFNBBhcZEIFUqWouj2JSOn8rNZLJ3eQzZT+yN9YNNGvfazSPogs0ufQyd2PvPU1a
 oTRIJDxIqQrpJK5k4A+MgN92UhmeRJqqPMBE2cvlicgJdI3UYaBEgD/VBZZw/qn6pOCV
 YDlLptiC7OSqPN64U7ltc0w7orf2rUOTd5s0ICVAiFi/98xPLWh8fBDB1lvx4UJ5dHPx
 k+/Q==
X-Gm-Message-State: APjAAAVti9XVjZfbYEnacopXR9FQCR4PYsd5v1m2KxyDleskMDxWAMbB
 CkvmnFOr+2qv9sjT3B92RIqJbLobhIklFg==
X-Google-Smtp-Source: APXvYqwnbRU6uWCX1oIuC5o2BD9NzbI9iIQCmIV4naL5tZmKiHJH+4Za2QhGieEJuOCl5HIpwSNrhQ==
X-Received: by 2002:a1c:3906:: with SMTP id g6mr4241872wma.49.1582621232288;
 Tue, 25 Feb 2020 01:00:32 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id x10sm22346431wrv.60.2020.02.25.01.00.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Feb 2020 01:00:31 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH] arm64: zynqmp: Fix GIC compatible property
Date: Tue, 25 Feb 2020 10:00:26 +0100
Message-Id: <a50412fbb520954e4602f274f19a7ffbd1154ead.1582621224.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_010034_432779_A6989C78 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Durga Challa <vnsl.durga.challa@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Nava kishore Manne <nava.manne@xilinx.com>,
 Michael Tretter <m.tretter@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Manish Narani <manish.narani@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dtbs_check is showing warning around GIC compatible property as
interrupt-controller@f9010000: compatible: ['arm,gic-400', 'arm,cortex-a15-gic']
is not valid under any of the given schemas

Similar change has been done also by commit 5400cdc1410b
("ARM: dts: sunxi: Fix GIC compatible")

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 1ebb540624de..cde6025b7e24 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -233,7 +233,7 @@ amba_apu: amba-apu@0 {
 		ranges = <0 0 0 0 0xffffffff>;
 
 		gic: interrupt-controller@f9010000 {
-			compatible = "arm,gic-400", "arm,cortex-a15-gic";
+			compatible = "arm,gic-400";
 			#interrupt-cells = <3>;
 			reg = <0x0 0xf9010000 0x10000>,
 			      <0x0 0xf9020000 0x20000>,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
