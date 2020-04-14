Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620811A8EB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 00:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0NS7HpiUMdwZgj598hIZIVFyS2QdUkL6w+iXpas9YKs=; b=rCggJpBHMyVsR0
	8eXhF2F1fklOZIOtLTxJrBay0mOeXBx65mMOFhKO7pNQU/fcy1mjxFMrkwqPdzPFIQhJBgMuyIUKr
	PAYglV+JPuQslHESFfP+V+qlwRI0RcnuTRwczRyJzNTSqM0XBsexTMytRpW9njCI57Y3daPmzKpm1
	qO4M/zjikU+Qvas2p3H4v3ts5gemViyQvZ02L8HdlfOle1Jo2RyZhyzmcP7qF5ze6Cy3uNr47+vCy
	d5GhJ9Z3iI8KutE71mN5XEHRTloaiYgm0Pmr68rfhvDvhyy5Xz4UZwwLG9CI2FxGE0t+VIsNJQBoK
	rumuRBUE6rdhskB6ZKUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOUE4-0006W9-N5; Tue, 14 Apr 2020 22:40:16 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOUDq-0005Po-Rz
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 22:40:04 +0000
Received: by mail-pj1-x1043.google.com with SMTP id z9so5849152pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 15:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9t1OfRpRitZtOf4uo1UYB1/mDlF//ZHx3ZZOkOotBBs=;
 b=l3XQpqCuW3oYa5DHK/NlM9glUOcgF931LKIPpyUBbva6wQh/ApqWSeCHyzi1hghTZH
 E28Z7/PJgq8fK1ExjJYDRNg4bZEoHVY1Ka5gYHY7mRzcqb+ZSh6TFhMkpczIT5DetY1E
 Vfj0fgXh0s7lbHOBTeyH7qVzN6vqDxOPeyU369EWm3IC4lAaYIl58qqVXJdRpWo98ba6
 YwME3XfFr32hcDXqmy2j9PTh2FH/yV5Kc3Dbd3hIWB0AH7Sd2tg6uCIGaKfOW18TVAkM
 jLTIivkcJLKxd3oVpuERxs6gjCojoeC0IVzTuimvDjg/UPsqZ8qI/Yy/o+l+uNXkalOH
 7SeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9t1OfRpRitZtOf4uo1UYB1/mDlF//ZHx3ZZOkOotBBs=;
 b=WXy85hBwC4DFc58jKZHW+6lDka0WqVkUSAWklloACQdVG2X+sfCf38wblGh3I8wxoD
 onub22A589ETJP/QGjpyAAPGq7DnE0Nr8InqkE5/t/l74gXkpoiJv6e0AV5ENQ514JvE
 xJwn/+o4klCIsLEBzISYaWdLrP4b/Mbw2QZMRGqlTfhr+DfvIGw2CFy/pzxNBmK3GNh2
 9wHVZpwQlEovmisKcCw5t66IxKQ4SichMmoTRZv9Ku52IwoSASYGxWOJNlEYp/MWv9iE
 bDaLC2SLiTKvghOrC6s9qruk8sO6MNTkT23xKNghwPc7EeULwOdP08sLjKN/GYDhMQt8
 gO8A==
X-Gm-Message-State: AGi0PuZKOEeewtNGU6duLeRzyl2U5IEFttsqWudUQi+ZS6fGNw/SV657
 w6HMOfs6+btE6aauJgHkjlw=
X-Google-Smtp-Source: APiQypLpzCWuUJeGz0XSN07gJ7EzCXSnJI9C2zEP968l+WFRfqF85ygGJoM3ztime9HQeFmq1bturg==
X-Received: by 2002:a17:902:262:: with SMTP id
 89mr2073094plc.131.1586903997813; 
 Tue, 14 Apr 2020 15:39:57 -0700 (PDT)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id e11sm12176214pfl.65.2020.04.14.15.39.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 15:39:56 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net] net: stmmac: dwmac-sunxi: Provide TX and RX fifo sizes
Date: Tue, 14 Apr 2020 15:39:52 -0700
Message-Id: <20200414223952.5886-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_154002_943443_249B6855 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, olteanv@gmail.com,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After commit bfcb813203e619a8960a819bf533ad2a108d8105 ("net: dsa:
configure the MTU for switch ports") my Lamobo R1 platform which uses
an allwinner,sun7i-a20-gmac compatible Ethernet MAC started to fail
by rejecting a MTU of 1536. The reason for that is that the DMA
capabilities are not readable on this version of the IP, and there
is also no 'tx-fifo-depth' property being provided in Device Tree. The
property is documented as optional, and is not provided.

Chen-Yu indicated that the FIFO sizes are 4KB for TX and 16KB for RX, so
provide these values through platform data as an immediate fix until
various Device Tree sources get updated accordingly.

Fixes: eaf4fac47807 ("net: stmmac: Do not accept invalid MTU values")
Suggested-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
index 7d40760e9ba8..0e1ca2cba3c7 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
@@ -150,6 +150,8 @@ static int sun7i_gmac_probe(struct platform_device *pdev)
 	plat_dat->init = sun7i_gmac_init;
 	plat_dat->exit = sun7i_gmac_exit;
 	plat_dat->fix_mac_speed = sun7i_fix_speed;
+	plat_dat->tx_fifo_size = 4096;
+	plat_dat->rx_fifo_size = 16384;
 
 	ret = sun7i_gmac_init(pdev, plat_dat->bsp_priv);
 	if (ret)
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
