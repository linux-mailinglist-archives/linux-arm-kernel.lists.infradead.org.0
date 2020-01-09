Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECA7135AB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyBUWIbih3jd3gFe+6ngBpIDmNg7skFP9owmKqLixIE=; b=ZCj72y6W8gepm5
	AJr6F+OA913Y6q5EflA1704xnR+mGwWnJVq+BmDYadnJp8sIucDmd5ZCi4Yt6llOYLkrsV21lXUCO
	l4TcKCO/sYBSEa8t2AstHSfMJm3zYbcxq0JNoFDsw2nfsQLHsCZwGxTzn/u+iEkiPEV9srzsUJrIZ
	h4D3SeQT7Z5pH/PV69xC+O803LCs/UBlptsCZ9I/E0A648diRT11nIgS5fE8Jx6jUJP767uCMekMC
	V6IvDXHMGfvDFc0w8bPwKHdEVq6KLohMZ9+SSmJjxHuploSOaJL2KRVeOc5GyVSB8IUfVhPEaMwTX
	S4GeCRcv3Vqz/P0bwZeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYGW-0005qa-4O; Thu, 09 Jan 2020 13:54:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEm-0003x4-Qv
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so7433507wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cY7VEq1SDPcCbR2gLted+yBjAeKIqKC5FGvxBvtyOjU=;
 b=YJV0pzx6ld6r0Ittxt8eGiqDQWelxWmJaXiOraeu7kqgy6yUKEl5CjC6krtJ4rrrxp
 4houNQ8Q8UXHox536aXCM7bWjnJil2sW4Ifwt+ACXDVydt8XuYEkC39UKfu0kzF+FufS
 a7g15u0+b0YHpt7dOUYfYHYD9xA5DZpLdHpNvgf6yEZzC8ttI2NzhYTjJyAOiloqwbaj
 bPWnY4DxpIgqUaZwfq9y210ggcbkH6fn+qB9lXXlVSK68lp3bFhfX08XzhhjgVZ3q8r6
 30Q/n6atlyOxZY/9UzXlCX2VifEXBhYnOQqhehai/Oesy1RbkJkDpih43bF3FMS6g507
 pd+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=cY7VEq1SDPcCbR2gLted+yBjAeKIqKC5FGvxBvtyOjU=;
 b=U7BZkqsX6EsOOHyaPGKh+bokHhQRX0+HpIfZsxqIEPjsU8Fjv1eYc9dPBPtUzx4FBA
 W39rhf7A5TaOhq+nZr+8i3T9UCbuchUZHVJ+8aCA1Ye21osxUDfrb/2KU5Kq7lIgyyBt
 Z3GV/UdpIbKVohSX2EKTT/f1hIGLedfvshtuFyEs7STES/BY4wFbaGYHnsEh3V5MRoX3
 XXuuLisSo4fsNYyO9MOTjLdzP2lLAMwKTXQsxDZDniD5odO85lThyoGRO7MsK0qCq/hI
 l+MiLZ6EZ+zVwvWErTaZnleRBmBYlLUQkZXD1aOy3LxxhTE4Bq7jgdouPamMG31J+5HF
 gmEA==
X-Gm-Message-State: APjAAAU03iVWUz7FFlTjU1hYA/KDTjPqPxmKioxjI17/p0RVzYIC//Q1
 dXbHJeCt4b8TbJLciqdd9L2pr2E8qYNJkA==
X-Google-Smtp-Source: APXvYqxIdhdkFDDM3qDOhD9CTVBp8Wso36d/Vi3BKD/mngqoG1YAwUgO6ZuEWuzzKIDn2YcQz8XRbw==
X-Received: by 2002:a5d:6ca1:: with SMTP id a1mr10795256wra.36.1578577955315; 
 Thu, 09 Jan 2020 05:52:35 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id e6sm8476868wru.44.2020.01.09.05.52.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:34 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 7/8] arm64: zynqmp: Remove broken-cd from zcu100-revC
Date: Thu,  9 Jan 2020 14:52:21 +0100
Message-Id: <b068e60d4058ccb0d784a0cc35e8aecf5ffb98fd.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055236_900382_8CD11E66 
X-CRM114-Status: GOOD (  11.11  )
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
 Ulf Hansson <ulf.hansson@linaro.org>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jan Kiszka <jan.kiszka@siemens.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Card detect bit was broken on revA and it is working fine with revC
board that's why this property can be removed.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index dd60f7d85cc8..2b3757dd74cc 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -226,7 +226,6 @@ &rtc {
 &sdhci0 {
 	status = "okay";
 	no-1-8-v;
-	broken-cd; /* CD has to be enabled by default */
 	disable-wp;
 };
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
