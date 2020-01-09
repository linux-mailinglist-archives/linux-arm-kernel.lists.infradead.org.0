Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE10E135AB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyGTP7Hl80c1XWJsQjRLzwMn0zSRS8sIFPeWg1jwBNk=; b=il2GNobup7wNKv
	a+YpRBCZuDF0F2WJxG+QY4O/mqRyKhWJS/u0enyHVoUQrQqL2JqY22DCnKL9L2iXDmoYFZRaqsCxR
	KjaVJ1CRpzmUXg+Bbbwg48LmX4ZnMafYTb8vgInCSxfCT+Dhl5ZtlciAgyfxMQ77XheMkztZOvl0p
	RNl3w8bfBxJM/AWT+wZ8myCspqGHDljyrJv7KrUbxMJCYHRwjvxKwhWZdqC7JQXtY8I8wKizlKC4f
	HfkwrFH0krBEfI816FKyUPzv+1+ZsqpjabpJpFTDm0dBWLV53yFtWxxaKGbpb//5lPv453n8TQpPA
	cgy9R4aBKbAWOxyHG5kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYFZ-0004gn-G9; Thu, 09 Jan 2020 13:53:25 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEg-0003nd-Hy
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:32 +0000
Received: by mail-wm1-x334.google.com with SMTP id b19so2999515wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5Dls9W9bj1Gd/Lpqv5BPHUUP2RvMef3FCTEyB1xcyHE=;
 b=ZmSrs3gfZlGX9yRHbls/OTOQJMinpbZpam24OqN4vYR9asSrgRGCPLZpt0NhLiuQpb
 wzZ5XSKUTJDyRkmIWZwv1k8GW++vcg36BoxACbhfOj7wKKVrvbWDcc/W8gmp+lKivacg
 JIB4lQwlXP4prJWeTZ0YTg/Y68sYDKVuKZyw+9WjU7vdXRXB5KUTw42Muyk/Rjv/tZkr
 cP/8jjSpE7H1Dsr6NtQ9j23PVU2yF0P//wNubjtDiL/s/Q7TKk90DdUGyWpGeBCQpv38
 KJnHpdATT/CUuFXt3P/CUcv+VH/LtGVavzS3Z/qFQcWMMakOkTfbV49mIPfR+4KNDcKf
 gF3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=5Dls9W9bj1Gd/Lpqv5BPHUUP2RvMef3FCTEyB1xcyHE=;
 b=raJjqP+H6o9wd+rmuDAd9aMkm1SWCbuSLbMjafJJqnSZeeHoYFcYmpRCiRF9h9Usg1
 k5IgGXVTvkiYCe8UdVq5yHuDg1Rba6GpnZ9u1oWyJDPGpERgZyyB7CM8JvGd7M2SBJkg
 KKPPt4SqiVcDrTnm0tL8uPZmVCFOYdFOFeJhPF3dQ67CspwHV2fbyAwTblxxiWLm98bo
 qSXwgvAvdIFZmMAO7IueKHu+4rkvbkkX7hcZH7VXzm1yD5BKabvTubCs1NqHJik5Qglp
 soxtT2RWfh4N9mkTTNo0N9FJ+ZgMg7YK7WUEF0cPvehHyq2FOdehsw3acVTXdArZKgQS
 3pig==
X-Gm-Message-State: APjAAAU/htOxjI5E4P1jJYsAt+vIuf8d4KYFLvYf7C9nz4dkWIR64nvx
 GRJgLIOkfR3qSKpNTymnhoeYPLBx00b5BQ==
X-Google-Smtp-Source: APXvYqx0+sXU9Xa6uVSv3/rkJoMDUEUGho9XMFd9d3+XzkDYUqX5o+JlJlKdL+1KOfK8+bnYRZVCOQ==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr4957307wmi.45.1578577948805;
 Thu, 09 Jan 2020 05:52:28 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id q68sm3178254wme.14.2020.01.09.05.52.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:28 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 3/8] arm64: zynqmp: Fix address for tca6416_u97 chip on
 zcu104
Date: Thu,  9 Jan 2020 14:52:17 +0100
Message-Id: <100294ed4d902923527de042cc87eb59648ce91f.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055230_614571_044DC9C5 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
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

I2c address is not 0x21 but 0x20.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 2d71b4431cce..7a4614e3f5fa 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -118,9 +118,9 @@ i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
-			tca6416_u97: gpio@21 {
+			tca6416_u97: gpio@20 {
 				compatible = "ti,tca6416";
-				reg = <0x21>;
+				reg = <0x20>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				/*
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
