Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEDA15881
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 06:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XQguSFDDNNC9uCM5eQ49qJycarpEF6ha+/C7SWIzDdQ=; b=b+l4ERBtBkX/C+J4WC2LUNbVgV
	dKPOhkuoAthrhcZcxoSFGhF2IgJTGNq+CdY66r34g81cBu7WW7teOP3Hcbqxn9qY24thcf0NWT9I0
	Uj5vZ/mgxfyeW78TnKJ6vIWhdf+yW0rnVISus8teRW4BsB6IV+M3Br1R5pp+FAj7IFocCJCgsXKUS
	1ziihWU0z1OKbn7lVX51Y2TdUB9DnzGpUqUx/VSWcqz3meKbs+idxvQJzkF16QedL7RDlKQENrHKR
	Tfen+5prczoRNZb4eS4jVnb5XTN2mSXT/j0zuqdO24Ciu3HpY1glm3C2TY+640hf7GUHBe8EquSG2
	rkC7233Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNrl4-0004Sz-FI; Tue, 07 May 2019 04:31:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNrkp-0004NK-Lj
 for linux-arm-kernel@bombadil.infradead.org; Tue, 07 May 2019 04:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TqAuIbxVy2/FzKntO5DYSCMkLj6kDOp0kDXIcVWdt1E=; b=iuO9QhP9np/SbLBtdIrR00CAQ
 8t6JgZ3xVnQBGBR3jNZRIt+Hkhgsryo1eACtHhHUydAL3vMs4eCHyZVFMtjAUgMzwnQi40uOG2mGZ
 349NOCc/H6TIVfDK4YFoH4Gxj2aGLTgH+/UtsvrEmCZG+icWTvHWphwi9J/NCL5T5WlyCSQsl4bQG
 iZ4U2KriPVQkOTwGDKr0J5lHU1V945HPURKBxhNlR9fJIUoGtik8EkyTeHvdCvS6LtPaL+bT7Ct3d
 I6grxIdLS5NicReOMbq/WSe8QlbKYS3LLtjIKNcA9WCblGXMAqlreic28lAeB42iteFCJBoFZ7V5f
 DwZeeK9EA==;
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr6T-0002oV-8i
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:49:18 +0000
Received: by mail-yw1-xc44.google.com with SMTP id w18so12101064ywa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TqAuIbxVy2/FzKntO5DYSCMkLj6kDOp0kDXIcVWdt1E=;
 b=BiCkq9ZGD6OCZW/4AtzJ6LCNa40fGYaitRW9sNTPS7aGUpkIIyLpN0d/X3L+VfZgP/
 e//mI6/LivD8FDMPg1Bib9LpEwaXLi5gikPbeE9RcMORCgdkZTX1bPGGKjuTrIsT3dcA
 GHsx5ZV/UVFuR3JDG4GaLklLjIcJSw+dtzcIdJP/kHTPsJdW+pwo4/5NQe4WgU/O/4gb
 +NLpQDH4fQ6/VbVvjPAiS2WdVEwZb5BYbNrkw/48ofrnqLqucWSJvf7VV+rOLNeYgC6t
 paAGwCMqpphb3082BTNRfOBfIXDPerVIdtheiZv+PDmRZ9M8KqiJxnX0nf9PidW7xAAu
 Jz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TqAuIbxVy2/FzKntO5DYSCMkLj6kDOp0kDXIcVWdt1E=;
 b=OU+lfhB5/ujAL37ohPuqQ6nhF2i6P/LwNrc/4ptXwFI2gRhy1cfxuadroggBLnz0Z5
 7JAC7wk1cgB7UBMr5A4EFT9lPnoiuOmG9INHhbRMVPPNjzW6e6IZ0X2r7hp62GXpFVSi
 lvcGwOJJIorcGje9t7wb7nFqRC2t+zc2LNltvYyn4M1R9L8a7UBJOOKf+aAHQNYoGGa5
 5g08VCvrfH9uTm7uRJRpJqTF/lzc+zFYi1/BnJSxT/1UMfm7WOfO6YLskECMf4GrjZQy
 QWZ6os1nCqXY53W2q93evHXnyPIxAHm4qqY3UE/GIlNDXbJCGqkSFQHAn3a43iciw7+g
 oYsw==
X-Gm-Message-State: APjAAAV7rJHw6NJ2Bh/PHRDQ4mDC4VdIbK112yq1aPw0OmZlLTU9PF+W
 0s86X3WSYO54MN0UyYh6lKig9g==
X-Google-Smtp-Source: APXvYqwoYaVfkjAuH8O0H+4shA+cQbltczt5LtbF37RevlS5+RrrrfpBtD0ke//8Oc1ukq0grv0Aaw==
X-Received: by 2002:a81:61c6:: with SMTP id
 v189mr19010928ywb.158.1557200955044; 
 Mon, 06 May 2019 20:49:15 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.49.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:49:14 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 17/17] arm64: dts: sc9860: Update coresight bindings for
 funnel
Date: Tue,  7 May 2019 11:47:34 +0800
Message-Id: <20190507034734.20622-18-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_234917_364154_A4C73EAF 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.chunyan@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight dynamic funnel bindings.

Cc: Chunyan Zhang <zhang.chunyan@linaro.org>
Cc: Orson Zhai <orsonzhai@gmail.com>
Cc: Baolin Wang <baolin.wang@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/boot/dts/sprd/sc9860.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/sprd/sc9860.dtsi b/arch/arm64/boot/dts/sprd/sc9860.dtsi
index b25d19977170..e27eb3ed1d47 100644
--- a/arch/arm64/boot/dts/sprd/sc9860.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc9860.dtsi
@@ -300,7 +300,7 @@
 		};
 
 		funnel@10001000 { /* SoC Funnel */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x10001000 0 0x1000>;
 			clocks = <&ext_26m>;
 			clock-names = "apb_pclk";
@@ -367,7 +367,7 @@
 		};
 
 		funnel@11001000 { /* Cluster0 Funnel */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x11001000 0 0x1000>;
 			clocks = <&ext_26m>;
 			clock-names = "apb_pclk";
@@ -415,7 +415,7 @@
 		};
 
 		funnel@11002000 { /* Cluster1 Funnel */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x11002000 0 0x1000>;
 			clocks = <&ext_26m>;
 			clock-names = "apb_pclk";
@@ -513,7 +513,7 @@
 		};
 
 		funnel@11005000 { /* Main Funnel */
-			compatible = "arm,coresight-funnel", "arm,primecell";
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
 			reg = <0 0x11005000 0 0x1000>;
 			clocks = <&ext_26m>;
 			clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
