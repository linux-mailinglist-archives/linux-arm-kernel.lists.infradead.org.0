Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233F612AE27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 20:01:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04RRVT8smyvMUb466OgWFUoWtUay0qYsEkkAsALIPDc=; b=CSilS9p281vDfx
	9vA7/69p61scHk7eerbLrgyBDBfnFWxCJsjZvWzK5RNSgc94Ito1ERQMXbAwynLV/NI7xV5FDlwOn
	g4yLXToiGsLQTgbOtZHG7KkyPeG4OXNMSpFXQw5gb3xwVTk/4CWt4dI1oazntYtsCak+nzHOt7/Mf
	DoUBkdhc3LVo5Wkh2em4AhOBMphNbyfA/NS+KpJ8ZbBXB2o3VVY7q8AsWvNuyj4QHMd9jz4/U6tGJ
	6TjsoHYXZDN05EVCD99tshHuqqQhHCHiYV3s+NjKNMY3j1/A3Ueemg0ZxMPUCXVLN4rA+4iB8Hk11
	/WhLP0b+1oHO8otZ5rGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikYOI-0006f0-8b; Thu, 26 Dec 2019 19:01:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikYNp-0006MW-AA; Thu, 26 Dec 2019 19:01:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so4921403wmj.5;
 Thu, 26 Dec 2019 11:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G3rTKkxQ4jW7k/v9aR/psmRAwE+gN+ZcbP3Syw4+shY=;
 b=mELOjX4SoFXM8AIHXZRIeFnnO9Y9LgnWsu0GIsFn/9o3LYHSDm34OAyN54M0CIE976
 g6x4Mv7Z1xm/KtdgWm+DtHlMDMtdcBlKd8JzOVuyRJn/nTmxS5qnmqGrDdkhnYx1iqqT
 uJeydm1jD+sPIvsAb+IjfYPHOX2Etf2GNbfnuSDMPe6zafIuuvhnTwraW6BBmTsQfNbi
 aUsNny/3WM2NxfQoZuH/JjU8imbxePoXVI+IQvqq5QRlm7W+dwQTtx4g4aLVfhqHKnDm
 M47QUxht+pMbSs35w9DCmZk2F8XJb2CgZaHESFNfgq/tCg2TagCC2tYhLPANuDqrJrnG
 SPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G3rTKkxQ4jW7k/v9aR/psmRAwE+gN+ZcbP3Syw4+shY=;
 b=UlW6fk8Om0neHAQX26WML17m9gpFEW71yEV1HJ8h8sa2ZmL2pbdte1IjwxAql/Z+fT
 dkFgk0YVr97iG8MMhrTBgGIc62Z4rJLRmoWroQPD9JmU87G+Wiq6mSPcXdZp7ZbaKl1A
 n+9L/H75PMko0gzZaETQUS2HVO/sJ7fxIcoeg0X6wO15pRdtmeyTuGdH5077fua9ryKg
 Fb/G6OXM527lmy5cHV/iZ1BHZR7LkPfsogRpmd1mQlvT0y/EZJRoYElsQ5NIUtT0+f0L
 zdEV+h96c09azxhU8kwUIHAgvjPKP/+SKbXo4SSmSpU7m7jQdzy8+lqNnvR5bpMVElTE
 iR5A==
X-Gm-Message-State: APjAAAUTN5sqHyZq1APXNM4ly4XNWYez/ex6G5UJ0us7aIgeUcUFWlkA
 UmxS043crFrThf6+Vpn+MYblEzgB2Jk=
X-Google-Smtp-Source: APXvYqxXejnGcUgKodwQOfW9DCOGrgj2XtI1U1hjLycE2F7TOewPOhFjXUH3LM8ZXUN0XWcwkm3rWw==
X-Received: by 2002:a7b:c392:: with SMTP id s18mr15862281wmj.169.1577386874993; 
 Thu, 26 Dec 2019 11:01:14 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id u18sm31777854wrt.26.2019.12.26.11.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 11:01:14 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, davem@davemloft.net,
 netdev@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH v2 1/1] net: stmmac: dwmac-meson8b: Fix the RGMII TX delay on
 Meson8b/8m2 SoCs
Date: Thu, 26 Dec 2019 20:01:01 +0100
Message-Id: <20191226190101.3766479-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191226190101.3766479-1-martin.blumenstingl@googlemail.com>
References: <20191226190101.3766479-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_110117_348142_52A80505 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GXBB and newer SoCs use the fixed FCLK_DIV2 (1GHz) clock as input for
the m250_sel clock. Meson8b and Meson8m2 use MPLL2 instead, whose rate
can be adjusted at runtime.

So far we have been running MPLL2 with ~250MHz (and the internal
m250_div with value 1), which worked enough that we could transfer data
with an TX delay of 4ns. Unfortunately there is high packet loss with
an RGMII PHY when transferring data (receiving data works fine though).
Odroid-C1's u-boot is running with a TX delay of only 2ns as well as
the internal m250_div set to 2 - no lost (TX) packets can be observed
with that setting in u-boot.

Manual testing has shown that the TX packet loss goes away when using
the following settings in Linux (the vendor kernel uses the same
settings):
- MPLL2 clock set to ~500MHz
- m250_div set to 2
- TX delay set to 2ns on the MAC side

Update the m250_div divider settings to only accept dividers greater or
equal 2 to fix the TX delay generated by the MAC.

iperf3 results before the change:
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   182 MBytes   153 Mbits/sec  514      sender
[  5]   0.00-10.00  sec   182 MBytes   152 Mbits/sec           receiver

iperf3 results after the change (including an updated TX delay of 2ns):
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-10.00  sec   927 MBytes   778 Mbits/sec    0      sender
[  5]   0.00-10.01  sec   927 MBytes   777 Mbits/sec           receiver

Fixes: 4f6a71b84e1afd ("net: stmmac: dwmac-meson8b: fix internal RGMII clock configuration")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-meson8b.c    | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index bd6c01004913..0e2fa14f1423 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -112,6 +112,14 @@ static int meson8b_init_rgmii_tx_clk(struct meson8b_dwmac *dwmac)
 	struct device *dev = dwmac->dev;
 	const char *parent_name, *mux_parent_names[MUX_CLK_NUM_PARENTS];
 	struct meson8b_dwmac_clk_configs *clk_configs;
+	static const struct clk_div_table div_table[] = {
+		{ .div = 2, .val = 2, },
+		{ .div = 3, .val = 3, },
+		{ .div = 4, .val = 4, },
+		{ .div = 5, .val = 5, },
+		{ .div = 6, .val = 6, },
+		{ .div = 7, .val = 7, },
+	};
 
 	clk_configs = devm_kzalloc(dev, sizeof(*clk_configs), GFP_KERNEL);
 	if (!clk_configs)
@@ -146,9 +154,9 @@ static int meson8b_init_rgmii_tx_clk(struct meson8b_dwmac *dwmac)
 	clk_configs->m250_div.reg = dwmac->regs + PRG_ETH0;
 	clk_configs->m250_div.shift = PRG_ETH0_CLK_M250_DIV_SHIFT;
 	clk_configs->m250_div.width = PRG_ETH0_CLK_M250_DIV_WIDTH;
-	clk_configs->m250_div.flags = CLK_DIVIDER_ONE_BASED |
-				CLK_DIVIDER_ALLOW_ZERO |
-				CLK_DIVIDER_ROUND_CLOSEST;
+	clk_configs->m250_div.table = div_table;
+	clk_configs->m250_div.flags = CLK_DIVIDER_ALLOW_ZERO |
+				      CLK_DIVIDER_ROUND_CLOSEST;
 	clk = meson8b_dwmac_register_clk(dwmac, "m250_div", &parent_name, 1,
 					 &clk_divider_ops,
 					 &clk_configs->m250_div.hw);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
