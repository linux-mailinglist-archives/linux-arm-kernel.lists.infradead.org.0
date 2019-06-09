Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A443A582
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 14:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R+QOSWZwUG5Ci5mgqmgBetxvM7PXpuBnZ/1UZE7FFbQ=; b=sd+
	r+qRkukckKbDoRAlACjh0YjJrccDoU2PFelm5U3yMG792HkPsNxKnKKPPQRn2xhBimA++hCDjrIo2
	fbkuC0DhpVaX2VcQgAnegNstabiKBLPnv7RYrNbSHQYourvdulF8XncdUZj3t+z7xviAmEPttNogB
	KJx8IDIrM8NiH3xPL5xIMKEqCykBAd+vHheQiLBM3ZNmTGf+Gj3EDltSKAZmqH+HxFWozOCgtxKVc
	05g7v75xD8atI64mFI+Dt5sXBIcjEcaNZ41RZmyRNrzDt08WKSK9rxkjfm1JBm1fCTEOtxIpQFIOR
	7yAXW+NkQ2rgisrPoFP5GybgRZ/CNNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZxAn-00076u-RQ; Sun, 09 Jun 2019 12:43:45 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZxAf-00076Q-Fq
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 12:43:38 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so3706751pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 05:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1epTJdne8mHMwBaPl2INMRTP7snEO6mPlFUapdOKIVY=;
 b=Ifm490hbTdmPeaNfGx8NmUrmsr0394njEzuU4gtuyPXoBab4Cp5RZCpYh0/HEeB/eE
 AS5Nk9QFp8bJIcmE4n95YIqkSHgsqGvzmgyRGQhOFcMywx9ccpCOUEDEQG5tYCd/cbZs
 aJoZhyZI56KW2e3WbQNlhKjvKxWIpcg6389G84tAmb8DcUgZR/8Wuy4ZI780YXf98kA1
 QKfJYozOKqlTAER9VMJY2DnHhgNavhvuRn8ZVTJsESjFr5AouVlz64Q7+w7CMuc57BVa
 LIcacQApThHZqWPSk4wmyfr19bKtwSWF+CTAUsgmabj1Bgr/d4DOXuMpJq4c5Iezs81K
 EMGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1epTJdne8mHMwBaPl2INMRTP7snEO6mPlFUapdOKIVY=;
 b=niSanzUJFakQloJtOXxKiOj+wY6f8Z2QlSl3oR8cZ9KuUWWZIvBqh31U/idCfYGSQl
 gpPxtJVAuh8mlP94GIHHzC10YwPIq+DRKGaKhXgEKFDuIjenGxWaSUEMxSlXxuEfAQcx
 h/APhWcincSmYIrPIvge6/4d/ZWqM0DvhI8lHJn4wU8n4IBq0exIZP9Zdg3rFyw+sAGp
 sAoq4WdZd8V4uxcodIgy3VuRLhQb4mG/pH24wO+S9+cbcsB2g6YTCM8rXCUJKcweWDqJ
 mB2fOaFewTBlXFE8BHA9Dc/KgshEpEOfn3/hVHdLiw06pp/ORsgwmHoclTc3z0mlAhl5
 +Keg==
X-Gm-Message-State: APjAAAUqgqhKwg9BRzwKAbuSlEUFVJFagmUa+ic/KYmtIO8YD74YTGhd
 aP2yj3iMNWStPGhn8m7tl1g=
X-Google-Smtp-Source: APXvYqzcFSwqth+ZM2HKw3qaFd9fYTnaedU1xkNcga9EUnL1AdkjHtGVoW9ReYlJbC1aoCtwmBSXiA==
X-Received: by 2002:a17:90a:cb09:: with SMTP id
 z9mr16145579pjt.87.1560084213710; 
 Sun, 09 Jun 2019 05:43:33 -0700 (PDT)
Received: from localhost.localdomain
 (p7131200-ipngn32701marunouchi.tokyo.ocn.ne.jp. [118.0.21.200])
 by smtp.gmail.com with ESMTPSA id u20sm7583138pfm.145.2019.06.09.05.43.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 09 Jun 2019 05:43:33 -0700 (PDT)
From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH/RFT] arm64: dts: renesas: r8a77990: Fix register range of
 display node
Date: Sun,  9 Jun 2019 21:43:18 +0900
Message-Id: <1560084198-2930-1-git-send-email-ykaneko0929@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_054337_556659_F40B8E4E 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ykaneko0929[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (ykaneko0929[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Magnus Damm <magnus.damm@gmail.com>, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Takeshi Kihara <takeshi.kihara.df@renesas.com>

Since the R8A77990 SoC uses DU{0,1}, the range from the base address to
the 0x4000 address is used.
This patch fixed it.

Fixes: 13ee2bfc5444 ("arm64: dts: renesas: r8a77990: Add display output support")
Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
---

This patch is based on the devel branch of Simon Horman's renesas tree.

 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
index 547e970..9b15da1 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
@@ -1760,7 +1760,7 @@
 
 		du: display@feb00000 {
 			compatible = "renesas,du-r8a77990";
-			reg = <0 0xfeb00000 0 0x80000>;
+			reg = <0 0xfeb00000 0 0x40000>;
 			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cpg CPG_MOD 724>,
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
