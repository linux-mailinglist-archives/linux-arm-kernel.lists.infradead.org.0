Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5272912BE7A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Sim52D2EykBW/DgcJ1L+b0rDsv/ZwFBrvGzleGs5k4Q=; b=mOhhVIcTC+0REEQgxiA6pBtbur
	FJwXeJncznFfiqCCSImrBppYKH4EJwbMsu5G+5WWKUZq5omKlZmzAm3clyhtcQQZI6Z2Hrbx+yznO
	zynB6hS/T3KoHugsZkHeTvwbh5fHPrLK0gQ7XgqWOzA/MzVcTIH1PBQmZs1vRFdrNK4/0PjUQJ3Aq
	eWNsAPwfiVwohctZtAXe4tb1mnb0SCdE42L5LQN4wvpzcJFs0wplpm2SAc6jgepJMpowvlExkgXX3
	KXSixLFJm/TWM9Ja05/fM0p40V4CLYudeu+GRaKKNP67aSlNvGIaJjtue5yF6Sq39wT8HHFBtrPpk
	NVHlO71w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilGxj-0005rH-VA; Sat, 28 Dec 2019 18:37:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilGwD-0004sl-Gs; Sat, 28 Dec 2019 18:35:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so16317003pfs.6;
 Sat, 28 Dec 2019 10:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hqSfykticrVROnPZePmOru2pp1VCz0LFD/v0VexrqBA=;
 b=TN5UMyKtGRFA9r24t/ZYgRXLOw/LCoKmhLVbbsgo4/9YAbF01PPDODx3Tg5TIqMice
 9+t2T8Cz0hK+BqG+Xyey3W3XOXnNK/H9hEE7XXjFeftyMBA2os7fKbrgmOF3Uf5qv4wY
 Kad1ZksLn7TWdjNFT78COriJqMCYMQlUSNkosa2FmFDxWXLUSMcitCKdiboBnxd0zQWr
 hi88HS+npw/ogvjqq/+jY0hby/cENDfini7neUTe9xDcEijGSkGIfMgDPXTucJ+luVYd
 g5QYLr1IVKvSeLPoTvbnpyRgJMJu43ss8Kly5/kDA+r+v1DElUws4jNDk1dao/QCykbv
 jxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hqSfykticrVROnPZePmOru2pp1VCz0LFD/v0VexrqBA=;
 b=lh+GACuUTHb/DFo4ap4qOG5OeWrVPUiiBPxie9T0prHB/hRbJQK2sFsQLnI81sQVWe
 nDm+ypAT8xZx7eg+u2n+yqTFQ/poUUnbGvHFoWC+v2niV38wIHg+17P5A+qf7z6EJeIL
 C9upoVBkpgS31JZjvhggLPnVNQfOCYbNvSV8nom58Ck+oS67eE5FrxpK0ROqaVw4fWp8
 3KiKRq3Foz6NloE9mBGD2jf/KqTCR2xu6RMAkUIvlHJt4cbkXJuEL9EG/IvOlLwEgu0P
 ZQdJ9CP2V35zdnQ43VvlOmL5avbNXNHYcCocdnkeoz7yJRYUM8V7eBC68+QHsGuEy5VY
 53TA==
X-Gm-Message-State: APjAAAWDDam0qtrjl/CVselLop9DK4nNxG2GZQ0KHhVmZZgIcedbsk7I
 UoVlHYisVruOT7bnM0vkWuk=
X-Google-Smtp-Source: APXvYqxhLmtho2czElmGfzLozaAqFNdvpPt2BmXqglNEJ0AN6V99RjBsDbUR/heJgBjeBiaCFQdPeA==
X-Received: by 2002:a65:621a:: with SMTP id d26mr59969401pgv.151.1577558144795; 
 Sat, 28 Dec 2019 10:35:44 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id k190sm42068720pga.73.2019.12.28.10.35.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:35:44 -0800 (PST)
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
Subject: [PATCH 04/13] mailbox: mediatek: cmdq: convert to
 devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:35:29 +0000
Message-Id: <20191228183538.26189-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191228183538.26189-1-tiny.windzz@gmail.com>
References: <20191228183538.26189-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_103545_572012_BFFE6EAF 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 9a6ce9f5a7db..7f9e34b021c8 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -458,7 +458,6 @@ static struct mbox_chan *cmdq_xlate(struct mbox_controller *mbox,
 static int cmdq_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	struct cmdq *cmdq;
 	int err, i;
 
@@ -466,8 +465,7 @@ static int cmdq_probe(struct platform_device *pdev)
 	if (!cmdq)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	cmdq->base = devm_ioremap_resource(dev, res);
+	cmdq->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(cmdq->base)) {
 		dev_err(dev, "failed to ioremap gce\n");
 		return PTR_ERR(cmdq->base);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
