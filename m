Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3A018E215
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 15:38:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d+zwf3Hdop1e6SzTZvpzJV5wZtxPbNzDn0skE3w4MY8=; b=dY5YWN3xfcilAb
	ExGgdNJimh6wci3BZ3MgOr8pKFt7F1ARxUIP6NzF1S4f/kCMMynEhppfnipJZRjduDoYy9tR+W1X1
	b+ztds3cXWmndVv1s8Wwi45UAiv9mo0o46iytYHi9VZkMKBEwmp2CjmHbbLxaAxT7RpBwO1tki3Ch
	mAyZ/SjWFu7RLX6hLKTQzoah/jqWzxj0AOTBAb/CiPsyk6evarffTFQTv4VDHDmbHXD0oV7VGtfUl
	B4ptdn9SlkmOi8ABV1lg+2ePRQhkzH+xY4hpnUJ8IXlRs29HX8gUTelTe/jtK370zczTYYLqfab1m
	JNtzLWwFKViV6S1bqOxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFfGx-0005Wt-Rt; Sat, 21 Mar 2020 14:38:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFfGn-0005VZ-Mb; Sat, 21 Mar 2020 14:38:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id h4so11049700wru.2;
 Sat, 21 Mar 2020 07:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KHezbaonDObNhrnITsOBJjiiKzk30bQA9Nv61l1omqk=;
 b=cIcG4ZRm5PgmhKA92ygSxLPrxu7LZhPesEZxIfgPAfNuVpC7YynZsD5a/+MzA5EpaG
 ArirO23mGiHwzZYi/B/SyqQPJCqOCb73+L4OJo+pfY61/k43+TIAY4q2LUuU+rYsFd0j
 6KAWqV0zF3TRV7jnt+t+368F/ULon3DMD54hukiqnZ2huZsCrFoU2PopNmc6Apap92ZQ
 vS4AzOXyyvxnGKgRLMGkMfOFyOR0697PVql8GAy97analmoW7YVKNNG6C0IR1YBfh3Na
 wKI4PXD9KuA8QMHDrh0rBnyP21DFlRrmmhV++5JKSQXxrOi7dQSVafzDtkGo45gw/HnP
 5SHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=KHezbaonDObNhrnITsOBJjiiKzk30bQA9Nv61l1omqk=;
 b=ShL1gQNdSlcvbcd/TvF+mB1hRJ9dBq7DR+MZKdWP4ZmTeadOi8hGXXUq/a4m481bv9
 CjjUnyUArtffd9IbXNvohaBXHnmlTsINTvnDanxycJThkMvAi5uX1JD0QFZXJwae3EG/
 6Q2Ia3w1NjfOErqpfGZuutO8xAjs4uBZafDnp3W8UKKqCKijag7sIyPPM2MylEVZ+aI4
 zND1DV1k5sB39EWuqmmy9/u8enEvZrsDT3M3buaZRQtVBB2sqXkScXDEknXx9YAQymyu
 CXvytAzagc+uCtRbtJ9k6DxMjqIgvrf3X2hWagd44bbP3LGli/+Jx32ZajCFY+MlvunE
 Mk0w==
X-Gm-Message-State: ANhLgQ0qvp1XzdO3S94AwLxrxSPCrgrtHYEig6Gajit2Iw84Y53DrmQz
 eWiRMpQ6uMfNZW+nt71tVc8fA61g
X-Google-Smtp-Source: ADFU+vvpJtD699uzrYrAyKDY3EnPQVf/SKIbwRg3zTVmGJ/b93WqeNNUlBpkc62TVccvt/eOjXNkHg==
X-Received: by 2002:adf:9b96:: with SMTP id d22mr19058977wrc.249.1584801514210; 
 Sat, 21 Mar 2020 07:38:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4262:1ab:c:b4be:c5ec:d5f1:2a7f])
 by smtp.gmail.com with ESMTPSA id w204sm13499569wma.1.2020.03.21.07.38.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 07:38:33 -0700 (PDT)
From: Emil Renner Berthing <kernel@esmil.dk>
To: netdev@vger.kernel.org
Subject: [PATCH] net: stmmac: dwmac-rk: fix error path in rk_gmac_probe
Date: Sat, 21 Mar 2020 15:36:19 +0100
Message-Id: <20200321143619.91533-1-kernel@esmil.dk>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_073837_762882_C487314A 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.renner.berthing[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jose Abreu <joabreu@synopsys.com>,
 David Wu <david.wu@rock-chips.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Emil Renner Berthing <kernel@esmil.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure we clean up devicetree related configuration
also when clock init fails.

Fixes: fecd4d7eef8b ("net: stmmac: dwmac-rk: Add integrated PHY support")
Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index dc50ba13a746..2d5573b3dee1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1406,17 +1406,17 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
 	if (IS_ERR(plat_dat->bsp_priv)) {
 		ret = PTR_ERR(plat_dat->bsp_priv);
 		goto err_remove_config_dt;
 	}
 
 	ret = rk_gmac_clk_init(plat_dat);
 	if (ret)
-		return ret;
+		goto err_remove_config_dt;
 
 	ret = rk_gmac_powerup(plat_dat->bsp_priv);
 	if (ret)
 		goto err_remove_config_dt;
 
 	ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 	if (ret)
 		goto err_gmac_powerdown;
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
