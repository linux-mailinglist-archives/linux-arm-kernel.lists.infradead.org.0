Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AE3159E39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/IZ+SANlmX/SxiRxiMDJ9mXZ3+LEq+VoHaJZS9JzWg=; b=cjtsVmmk1DoA69
	GTP9E6D45uNqrj4s//qb9D4uUTfHJbv7WJVlFnlcXzEzD7Sj0d2V8Pb72y+VGj55hTU2K8nEszsu9
	s4CY9i1Svpq/wOa77AVdBp7kXP1FGyleM4Ah/Mv32ffFtiKu0SD4t6ov9cth8n9iMdmJV4Iwey+fu
	fTP4Y70ntcdop7s0b+MzR/+VjGcmlAIuZ/4WbxRAlyzirgPWqhIq9103Ck9oH+r/zTp45m4ZHnDlX
	Do5ngM8Qog+s8b9oukVtmkXndan1O+WmoIB68DR3myrBgTAanWlVqx+m8FdpAdIemGB26NjvRJxVv
	WwtniMKEswcIIPJbm3Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1g7C-0001xj-9i; Wed, 12 Feb 2020 00:42:54 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g4i-0008EC-8f; Wed, 12 Feb 2020 00:40:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id e18so234127ljn.12;
 Tue, 11 Feb 2020 16:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ttJW9peokq5rUpFOQPvSx+wLa406veCgVEoVyR6YAV8=;
 b=SHcDvUlKTDjrSUyYrLPEjMYJTvRDrw/kwd1X2ZFXrBSCah3TbdHcdOnpB/sdh+Cjbf
 Z3+loashg/BSX7zm1xHB0W+YgWvQ3iA8VQTogN73YaMluPA97Gg7d6wYVOck+f+5YRxH
 01YZjhYwC49vPTcoHoTD8EYcXq/wj63Cb5C+5Xt+tlu/gSN+Y85OCic5r1bRg51TsnW3
 05BudZ7Mt9kohFXmGNF74A3ZGE+mh3Mj3lT3rGJVhIbUdLGjVlDON2Hfgnls//ISsp8B
 3TAh/IExYhEiGEwLHODItVelxBWh230DfJp9RNLFRZsWMqdnoFX+L3KJ3Ag8VTHxzlpM
 4x+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ttJW9peokq5rUpFOQPvSx+wLa406veCgVEoVyR6YAV8=;
 b=uoL/60DcFN/X8vFeYshXUYyOHpgPjdNjl+TwBjY47WvQy9ERRquJ2PDtzq+/qU+G2n
 jUleiSkri6enQaXHu5XSJ6z+POzdmXtXR3IdjYvsOmxotnVd8YgW/7TPgDPs1golnO8C
 bxdZ/qvBjc+6m/KMLPLD6XhyOl5w/qKwyME8S0YI7z0khzStYz9hwt2OdbkWKi7yDlBG
 i9Sf8QbD0p3GWNOpUqnxwK29ttrh55unwXgn4GKVwbLHiMHm9GzcliT4nAWSV09IQyKM
 4LL3oWKu4UKjkLPIjDi/ksfmQ/rHFHR7IdIZzetCKaCgKqothFOS6ic90kWYJlE5bi0o
 NXJQ==
X-Gm-Message-State: APjAAAWDQAw5gwCa/zUFdPPDC72Fwyv1u0xxNIHV3B26dd8DrN1eWUS5
 Deo2BeCFNi3LF0ipC2YT2Mg=
X-Google-Smtp-Source: APXvYqwnNi3Y4kZzLlTAlPxy+jEgL87XZNvOHJv/JSD1vBuRqr4PxxEZvgCLUMMsg5LNGxXQvOlRpg==
X-Received: by 2002:a2e:b4ef:: with SMTP id s15mr6242730ljm.20.1581468018867; 
 Tue, 11 Feb 2020 16:40:18 -0800 (PST)
Received: from z50.gdansk-morena.vectranet.pl
 (109241122244.gdansk.vectranet.pl. [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id e8sm3621935ljb.45.2020.02.11.16.40.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 16:40:18 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>
Subject: [RFC PATCH 05/14] mtd: rawnand: ams-delta: Enable OF partition info
 support
Date: Wed, 12 Feb 2020 01:39:20 +0100
Message-Id: <20200212003929.6682-6-jmkrzyszt@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200212003929.6682-1-jmkrzyszt@gmail.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164020_334858_FA1C6629 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jmkrzyszt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 linux-mtd@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide MTD layer with device OF node info required by OF partition
parser.

Signed-off-by: Janusz Krzysztofik <jmkrzyszt@gmail.com>
---
 drivers/mtd/nand/raw/ams-delta.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/ams-delta.c b/drivers/mtd/nand/raw/ams-delta.c
index 25f121adea6f..fb96f6a3b0b3 100644
--- a/drivers/mtd/nand/raw/ams-delta.c
+++ b/drivers/mtd/nand/raw/ams-delta.c
@@ -222,6 +222,7 @@ static int ams_delta_init(struct platform_device *pdev)
 	mtd->dev.parent = &pdev->dev;
 
 	nand_set_controller_data(this, priv);
+	nand_set_flash_node(this, pdev->dev.of_node);
 
 	priv->gpiod_rdy = devm_gpiod_get_optional(&pdev->dev, "rdy", GPIOD_IN);
 	if (IS_ERR(priv->gpiod_rdy)) {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
