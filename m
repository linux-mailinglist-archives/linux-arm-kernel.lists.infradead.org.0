Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AB71FB358
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plVbslxju4SgHVR0M+jKe8B5O1Zs4bvf3hLs2gLNjUs=; b=mFxRI93fHMd42V
	oUn1ydhq39CYcEhxlDlnxLq4ML5Tx4v0l3dmU7i/iBwLOueS+tKQbSCyS2ftvP0HnAeGnXc/fjjMo
	FCAscjEoMRMTIHQLpzgI8omspX+ePgaVb/N2r2yuka/aJCnnfyjBXIf1oaNZZ7v2LLHFfI2rUBz1r
	H9lXgfvkdYPGhGqUx1N+qnaJ8odLC78NQcPAs8RTldheab4WKsOJzd9Sey9tJZ/onWvCYBAFz2uGH
	/yPRNkaKVUaV/TgWAbB9qJ31Dnu1Tb8PWTwoiFHZGyeYR3QwUp07KdoRKp4S9bM/bM/v5x7MtXes7
	5ryz4reN0+s5WKH0MOcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCBu-0004dJ-6c; Tue, 16 Jun 2020 14:03:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2H-0001rk-Eb
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id f185so3162521wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M3L/vhQHjDE+C9l0qudwi26/w+psczXMcfOt270RlEk=;
 b=WWyDyBs5/lglLdztMlKeP3eCq3IT9zB+pSBDzV9On7VRvPoGZ1onDmxKvlIMUrflCA
 DnBR2rYBuhKNuxgqb0YNj/i+ahf5DQJMe3n+MDHHao8lnCuiTyZ1Q/T2NH9RTqBDufET
 2WAN93v80t/wOu8ts5CYozmiqXUc9rYrkHy6KG0vZlohFvGWYzwO0A+keYAaFmDZLegV
 COMXdLz1S7ilS9BWHHZZssaVViCxzgmnDaArUxuYBP8begs2RtG3+IRthhMFP5njP0qW
 64urTl/UfKAZM63kk6Mfy+KJXzVwFgs1aYlxQoZjpMUbLxp6fRiZr0njqrQY6dkBT5Xw
 s1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M3L/vhQHjDE+C9l0qudwi26/w+psczXMcfOt270RlEk=;
 b=PyG+5g2mNHQrkI6BzsMe4+O+0anyScyTYTgGtA3zTs6poyjymVYwMbdZ+6l0WkpWGx
 +3MSdrcpYCj7T+Gow35wgaE5bImz455bYs0eET+qFL6UAZg7Ia0F288gkLaRfCTqHhiD
 PNCHMcMNrSh38WOs5xLJt5JqBhqDjd5OHHiBoTxsqVwH1LBte6DXCowbR/lLoRtJiFDh
 JG+kIH3bQUIZwoB7wp24Si5MrNuMaMPGfF3rhyAsOkXH8Tc1eTV1YQp2p/Y340scElAh
 zgWjjy9pGl7uDM3rUHkKnFsyE3hznurgi1eQSG2aa5VC8BMwXCjbZiLjsl5g/WN+XB0q
 6IbA==
X-Gm-Message-State: AOAM532C7cFDqrVlPqu35SITZvtWiBB3x3GGXIZ1AyOwb/utjwPDzgNj
 cmmKwLcJahiRiNJeRSKmJ9k=
X-Google-Smtp-Source: ABdhPJzGk/jl8TeiUrND4uefnaHAqsSQ6+a99XBpUrP6SsfayTbaa6VwGdJdqbB2VWl0LieJIkYi2w==
X-Received: by 2002:a7b:c842:: with SMTP id c2mr3404588wml.58.1592315636193;
 Tue, 16 Jun 2020 06:53:56 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id b143sm4139276wme.20.2020.06.16.06.53.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:54 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 27/73] ARM: tegra: Use numeric unit-addresses
Date: Tue, 16 Jun 2020 15:51:52 +0200
Message-Id: <20200616135238.3001888-28-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065357_578288_5B8A0A25 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Unit-addresses should be numeric. This fixes a validation failure seen
using the json-schema tooling.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra20-paz00.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/tegra20-paz00.dts b/arch/arm/boot/dts/tegra20-paz00.dts
index 91b6bb82e960..f6aa783b0f02 100644
--- a/arch/arm/boot/dts/tegra20-paz00.dts
+++ b/arch/arm/boot/dts/tegra20-paz00.dts
@@ -314,7 +314,7 @@ nvec@7000c500 {
 	memory-controller@7000f400 {
 		nvidia,use-ram-code;
 
-		emc-tables@hynix {
+		emc-tables@0 {
 			nvidia,ram-code = <0x0>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
