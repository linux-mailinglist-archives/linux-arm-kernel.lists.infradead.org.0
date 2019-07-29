Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A89878340
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 04:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1PSLDbBbyBbWiyV7dXUvMdfPrwTSs+zRhveiPmOkl0U=; b=MbO
	6s8bMiWlxc/8bdX6y0AYpJb0jtk2tiaOIS4NL9RiNSUdjg5f8FfD/epBY3sOyWrbXGmPrWfgZ6LxV
	0A2j473rKsGPGaIiJkbY/Nl48tc9dXRBrxlHwl5fckKRwFacWXOQFAawJQyDZQF6HjrCqnlkuaF6b
	BdmkZBHXeM6t10fdqx5N9Vgqm3pyPf7aA1kG6h2UzxINpUhmF+Q70TXc1NUuqu08+eWqIkgSRC+jC
	huY2NWI6vGFJEiLVnAA33CgqZfj8Wi5eAgo/tZn/EhQZA+ONynZrgx3GKod9oDXbSxsLPHfEpkySe
	t3OTkT1hzMaQp6by8uGRfU324LLFDXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrv67-00041s-Fm; Mon, 29 Jul 2019 02:09:11 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrv5u-000419-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 02:09:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so27164224pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 19:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=GgqqXrj0IVL3XCjuqMEeh46rLbd7N7hEVY5Hg1vftSk=;
 b=VhQ24Xm4qxQ1CYPaB6WhF5IedavT1hfH+pAW+nNKczx/aBxtKhr9dgC0SKzTRe7Ki1
 Q/JIQnvaFXbFkPQPNUtjOH9TiNTZxLeArg10E3/dbQT5HukCE3gU6ogpsY0Xe023uXaB
 xn6L0Njlqzzes1/8U6W8kkKjqQWd09QkV9vm68h+BXbnNyszCP9lzlVNMEulf7UTfHVd
 r6c/3wkyPbUYYHd411oyZDnVh08fs0lVD0Tki4DtGEgvvM2GURS+ibiV/DJcHrma8HIU
 g/7LUwI7OneWn3HokbE90LPxQFDugrsUgxA8SSO9yUJfauib0nV78nnai5iBhOqMhig/
 QmQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=GgqqXrj0IVL3XCjuqMEeh46rLbd7N7hEVY5Hg1vftSk=;
 b=EUxE/zipLxw5hdTHppNWeLN3KqQYiJoDOCQc5ZYmbK2ID+Qdo2RCrfjPVpUcqq4WJn
 Jv3Mui25zmWhH7L/tuSoqG0zrxAJoywxRdBexrsB/DzH8qoQBZ84ozAVIfOxkn7IwUdy
 UAVMSqL2kcJ/KEg/QuBm0GAC+A03mjLASTbKLUAmb95/qOItPNhpBeihbOHa2/8HOZGR
 VeEOhPQPZD94XzKWKnYKvOWO1y1RS5zypbdPhC4AF6nv+CsUW862TPTvKusHySldTzP8
 NEsU6XiYLHrnelF+9vEX1dYV3xnp/lBMWPjFCR4RST8xXCdPfir5ee2eAujfrV17wQhm
 oE7g==
X-Gm-Message-State: APjAAAVOD7AjWtHMKdVmU/rQZr9FC009bTHnkTC35EY3nInWjG/1U9m0
 CbXkhzKwJnfZygSfasFMWJY=
X-Google-Smtp-Source: APXvYqziKiVqdTi0EohhcF4w3kBjAEogyGJ2Ibb+1USarrNmtJONCBPCB1AYleTdYQ9v52s4F2E6kA==
X-Received: by 2002:a65:68c9:: with SMTP id k9mr68919329pgt.17.1564366137516; 
 Sun, 28 Jul 2019 19:08:57 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
 by smtp.gmail.com with ESMTPSA id p15sm57011634pjf.27.2019.07.28.19.08.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 19:08:56 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: vkoul@kernel.org, dan.j.williams@intel.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH] dma: stm32-mdma: Fix a possible null-pointer dereference in
 stm32_mdma_irq_handler()
Date: Mon, 29 Jul 2019 10:08:49 +0800
Message-Id: <20190729020849.17971-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_190858_936025_ADB94F73 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baijiaju1990[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In stm32_mdma_irq_handler(), chan is checked on line 1368.
When chan is NULL, it is still used on line 1369:
    dev_err(chan2dev(chan), "MDMA channel not initialized\n");

Thus, a possible null-pointer dereference may occur.

To fix this bug, "dev_dbg(mdma2dev(dmadev), ...)" is used instead.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/dma/stm32-mdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/stm32-mdma.c b/drivers/dma/stm32-mdma.c
index d6e919d3936a..1311de74bfdd 100644
--- a/drivers/dma/stm32-mdma.c
+++ b/drivers/dma/stm32-mdma.c
@@ -1366,7 +1366,7 @@ static irqreturn_t stm32_mdma_irq_handler(int irq, void *devid)
 
 	chan = &dmadev->chan[id];
 	if (!chan) {
-		dev_err(chan2dev(chan), "MDMA channel not initialized\n");
+		dev_dbg(mdma2dev(dmadev), "MDMA channel not initialized\n");
 		goto exit;
 	}
 
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
