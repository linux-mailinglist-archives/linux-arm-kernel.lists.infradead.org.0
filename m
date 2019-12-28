Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FAF12BE76
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eE2lhoaooT993yStIFEbFiGfTP6x2cJ7QcEjFLvbFGk=; b=MWJCY/6Vv04CJNqnnV1ukPfSCU
	1TFq8N0InC4afOeebg5NNedliWQzW+mDzdnLYy8dUbNBB6yUFEFtvDs/AR0lKFa9SbdBDUlr/1W40
	o5AwupbaFvZNfOgnZpblkcWfyJ9AtTQdCTE43x74Oz23oezP3mGiH9Gub2mojElOqVXA5I0DUJIeN
	++6fB0Z73F07HYdcbZpvlAo89xOFrcOzyhyl7I+QG8WQPAqdWXvPZxDVg/3VmB628M2dqbAVb1aSu
	GXEIg6e5OS4d9ALDyRArjiJ2og++sv0Qz2pqzhWidl8fwJ8zJMHez/MFzPmv7rh+6Yki1QzhWHZEp
	WQS9uG5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGwr-0005Bd-9K; Sat, 28 Dec 2019 18:36:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwA-0004rX-Bn; Sat, 28 Dec 2019 18:35:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so16063226pgk.2;
 Sat, 28 Dec 2019 10:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ck7TpFNaYsTfHjkSWvol6O0HxhZOnUYsxWnfPAIODG0=;
 b=SEK8+t673PBtRzm98GmczaWYIBSNYcOrsEXBKK6zpG07VibtJQX62dTHYPFL4w+jn8
 J20u/cIUNnFSow7+ZChaXz0UVQuYAZd8oCZy7nnV/qto1fHLZWL/W5re1lp/81kjaOOB
 0XTi/yHyByCZ8cUJeKUMhCHhH5hUe7VYE/9t2Lum5P7P4pY5ew4fu2nA0QzW4bY/jFRE
 g9cF4BVNx3T84j2SNec0geRbXtvFbo+UyEeTSJ54I8iOJF2CSVxIYb2HDbqnWdvaP1H6
 ZTaEXNeqmvV4XlhIL/ZrmGrACVgGlzp8uUPkzAv+dPL/pbV6GLtTuPbwRs8FyhFH8yDq
 pVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ck7TpFNaYsTfHjkSWvol6O0HxhZOnUYsxWnfPAIODG0=;
 b=hZRYojK53y4E2zTu6OfbOPLkTPWo+3DrVaJiaaM5NPx7l20Zet/Ff7fnGHS/m+YrC8
 4K7z/Ma+XlsZ13dwJWXrxiP43OoBulBik7sXdghvc90wBFUydCQbmQiHSe8uPdAuJitk
 myIjguCd9J/ml/jMVil2Y9pCHcUhe1rbNnlD1p3g4CDdORLrfJCEsJn5Ana4wS973e88
 Wak5P2qNc5SRaZrzVgYwNspE5Uo0cn/TYM7cYP4QFb2FNIX/WhY+nr1wPIOgSzCHc927
 B3bb3cLmGb48k2EFvrbJuVSmU8dlKryX4kcVztX41bX1UhikoOb+MGzNE7G1bTSezExt
 +9Mg==
X-Gm-Message-State: APjAAAVn5at6tau9r0M7P0jPuw2jb4uLMvV6f5wb7uqm5ILgDwlr3Ufr
 ixfuVLI+Ai1U66hlD91TjtI=
X-Google-Smtp-Source: APXvYqx5/QP/GNVoyrkVJfv4Aq0NGpfhph/LLs+Iu2oE/kr2AvgV3Rb9EKdPNpuSs0gUI6foQXJ/1A==
X-Received: by 2002:a63:338e:: with SMTP id z136mr62252030pgz.60.1577558141763; 
 Sat, 28 Dec 2019 10:35:41 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id o31sm42035078pgb.56.2019.12.28.10.35.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:41 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: jassisinghbrar@gmail.com, nsaenzjulienne@suse.de, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, lftan@altera.com,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, nios2-dev@lists.rocketboards.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org
Subject: [PATCH 02/13] mailbox: xgene-slimpro: do some cleanup
Date: Sat, 28 Dec 2019 18:35:27 +0000
Message-Id: <20191228183538.26189-2-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103542_401607_397980C9 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.
'i' and 'rc' are variables of the same type and there is no
need to use two lines.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/mailbox-xgene-slimpro.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/mailbox/mailbox-xgene-slimpro.c b/drivers/mailbox/mailbox-xgene-slimpro.c
index de260799f1b9..908c0eb99b5a 100644
--- a/drivers/mailbox/mailbox-xgene-slimpro.c
+++ b/drivers/mailbox/mailbox-xgene-slimpro.c
@@ -170,10 +170,8 @@ static const struct mbox_chan_ops slimpro_mbox_ops = {
 static int slimpro_mbox_probe(struct platform_device *pdev)
 {
 	struct slimpro_mbox *ctx;
-	struct resource *regs;
 	void __iomem *mb_base;
-	int rc;
-	int i;
+	int rc, i;
 
 	ctx = devm_kzalloc(&pdev->dev, sizeof(struct slimpro_mbox), GFP_KERNEL);
 	if (!ctx)
@@ -181,8 +179,7 @@ static int slimpro_mbox_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, ctx);
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mb_base = devm_ioremap_resource(&pdev->dev, regs);
+	mb_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mb_base))
 		return PTR_ERR(mb_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
