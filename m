Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F2B19CAB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YWbf94kutoo1Jx4eQISBOGR/mutv6/tAj1XJYF10mC8=; b=YNV7/ha5EXTcen2T6Nw06N7at3
	sIgw3Rm+WjxeuP1SUlBZk8pFJU7WWoN4kUfGMDX4bqfYp/5LFW1F5ExKDwqS/tGVWwcIKxqW+ED7Z
	uDsce7tK4SbP6g+aFr0/U0xlHRlVfzY/KmP3BabhfDfYTfnyKU/ANKiTV3CIwUtDxjyoqRQexy2Ol
	jCCZ8J8gp29b0xjUWpztPfwKKvMKKhBtAUYQ+PQ2cj63EC6rJhkxHfMFCGMLOUY/DRV0iqTTQLOPs
	eeE2GM8NF91dxbQXUhp+urCLZiagkYc8a13BvhhfMiFL6l7zal+meZk/8hSRIbiMQA1SL5z8FVYHE
	49HnbKLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3jG-00032E-J9; Fri, 10 May 2019 11:30:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3iv-0002DK-AD
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:29:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id c13so2909119pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 04:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=3omjhH7TbR3FmFs5TtPgVwPetLA6H87w8Ypx7qlc/xQ=;
 b=HoRmKH63l7C7FzvYpQKh9CZ7kohym54pLp7tXuBRX+GWRJfziLnjDDh+iRDQO9D9ee
 L4gUVGETEU2esvl0g5q9h3bRgSsop0fGsD0JpUSAmANdczdGmY6DncD+TdxbG83VSLOB
 ECMSRiDOXP/Qvyj9HQXFZqa4yto5zcrr+/ckIp8uh6ttN53QE3GNGRsdrEOGhUKa9tN6
 cpDhWAifzey2GtZ4GhvpKvoMeoyVVNA+uQAOJfdNMJAJKf91DdZ6OPg+2ndEz9dgdFSr
 HMdKg/UDzXCfEyHxEksgJUnkPpgp9Z2LWM6luP+ICipwxa3FyktPtwlvuTTzOwiY+Lzi
 QKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=3omjhH7TbR3FmFs5TtPgVwPetLA6H87w8Ypx7qlc/xQ=;
 b=itcIa5NSZpu43PXfBST9S6XB1OQ3h7Ea0eUc13PGsWppJuiGX/rjsv7nCm9dW5Q2oI
 05/u8rIoZ/2kAPuNAvpTU508kfFdzrdnk6IPpwHQvQNi+JzXtLWyh4LhRRrQsK8+Q/Cz
 OlIl5AluTGfHEeRk7mHl9FQ9Az3TYCEJnhz5zVAmZuVDrDh32e8MwePHCtvV3b5nxFP6
 9bUFH0ITAUCl9uIamMcdGLBXH0M+BR44+EMY7wAfiEM6iF1yDxY9hD7RT1X8yZTuwoDa
 8wWihca3lOr4/abZM479UC2q3eqM/8T5szwTFd/+ZSdLCtoGJYOq+1dp6CvQKOEPOtRB
 xCAQ==
X-Gm-Message-State: APjAAAXna15fy7DvHHOh51wp4ktra0BBeOKQWqTI3qo1ODJ/QA1gT7tu
 f/Y2bHH6IJZyTZMyBJ4AaULpVQ==
X-Google-Smtp-Source: APXvYqzNyy7bxRrQ7l94JGdi1xN/ExFPIGkh1mhDP9vdWj+8z618L0x1+xHqlUuds8ama1WOaBRHOA==
X-Received: by 2002:aa7:820c:: with SMTP id k12mr13044777pfi.177.1557487796788; 
 Fri, 10 May 2019 04:29:56 -0700 (PDT)
Received: from localhost ([103.8.150.7])
 by smtp.gmail.com with ESMTPSA id s137sm2854428pfc.119.2019.05.10.04.29.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 04:29:56 -0700 (PDT)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 bjorn.andersson@linaro.org, andy.gross@linaro.org,
 David Brown <david.brown@linaro.org>, Li Yang <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCHv1 1/8] arm64: dts: Fix various entry-method properties to
 reflect documentation
Date: Fri, 10 May 2019 16:59:39 +0530
Message-Id: <ab5bad0258e455ef84059b749ca9e79f311b5e3c.1557486950.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1557486950.git.amit.kucheria@linaro.org>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1557486950.git.amit.kucheria@linaro.org>
References: <cover.1557486950.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_042957_578548_E1A3E494 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The idle-states binding documentation[1] mentions that the
'entry-method' property is required on 64-bit platforms and must be set
to "psci".

We fixed up all uses of the entry-method property in
commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to
reflect documentation"). But a new one has appeared. Fix it up.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 2896bbcfa3bb..42e7822a0227 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -51,7 +51,7 @@
 		 * PSCI node is not added default, U-boot will add missing
 		 * parts if it determines to use PSCI.
 		 */
-		entry-method = "arm,psci";
+		entry-method = "psci";
 
 		CPU_PH20: cpu-ph20 {
 			compatible = "arm,idle-state";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
