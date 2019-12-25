Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB9212A54D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 01:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DXwV1sqTSjiPTiir2EX0hJy8VdOddcMZ5LK0WNOZ+4=; b=FIrbC9Vfxgq9j9
	ehsAyNXKzEqfr9ix1x62ySeRZ1uvyfm8uCpe12Rx3TqvJkzyuS0BJSpIfgSgY2ABgIIDqRw7Jad8v
	EsITZG8WRIhrAqxNVT06LRJDRvtpqxI4fINtNrHcrjtZtd7qgMQA5UlWrKIrwpfofVmzzSwRU1Br+
	godeOqOy36xQjV/VTnxSjvtlvn7voUiSG3AkPvNN2peYz+qa5if120+19GHfzUqSyGLdptmgCvm8J
	HIDD0FtTcMNvN2KiwJkV0ndqcM3zP/T3mRWmJkqtGsQ8XNxSIGcSqmgeC9U/2/eWGxlB9/1cKLUj+
	ryCTHm1QRnYAMcNRV86A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijv0R-0005GA-NY; Wed, 25 Dec 2019 00:58:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijuzs-0004vk-0Z; Wed, 25 Dec 2019 00:57:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id d139so2799124wmd.0;
 Tue, 24 Dec 2019 16:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6qx3JuRWucxWSZ+edEqkzvKfjwC/qHMJGDM4MA7mRVg=;
 b=WAwEyf9Z6R6RPOxZ66EqNRQZQ/elC7tzeA/mn5bIOlxp8yZz+nS/BxDaKgYaFwfrwf
 9b6O3XYC0Z6/4CSU1raIO9xqGyG0UXjUsvZuz6PihpBJc3JyAT76iT76Xxv2PhW+F69E
 YcBYqaIDmNM3HZZmTC6kLjY9vQng9uwX75RxEuhAKlrNji9btuO8khgsADSUsGWlB08p
 vSaG//6exaCwKeBBy5q29SFW4ugGU7isTDy0weKFZJ2ZD3TinNdcT22uPYuDz3fjjH2s
 EpO7/UY1LUXPzIiFg9eku7VkHkUjW4p/bJZX8DogDpQOAYAdMwbZHgKZZz03BQx5YKlu
 L57g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6qx3JuRWucxWSZ+edEqkzvKfjwC/qHMJGDM4MA7mRVg=;
 b=aEc8NRuQIuCq+Nyj+IM1pjny0dTgy89gEX/TTqoUBzvetzcIR0KkIA3EezYPP3Mt15
 5m9s43i24LKI6oGaecXUiBZTvPTodJ/zNeBBbnA6n1dIsgumIHuHhk5dJNlZwbOlzB21
 QI9EH696v7QRSl5yhe2PBxYXIgNq2MNgitVeF5W2xy+29FJgYozyr9HvBV+kObWb3UOc
 AqHWB4iSMXS4C7pYhT+A5N6IFL7lVJYI2kcP8GSeaiTOiDWJcNzurdhKWa9c6/5Fl2F1
 b1qvqVXElpn50mJxZK5ExBoIdnLVju4egDvZzkS0m1uD+ogf4CPBFWefMHaHakjYQ8Eo
 veHA==
X-Gm-Message-State: APjAAAUotv4oEVFLdk+gL2iDgU3ES6Mqkxwx08QzkXoLSnwaf+bRktfK
 +7d7Mc8EkY94zh2cHM/Vlg7nnp1d
X-Google-Smtp-Source: APXvYqxXWv43UCTkk1HCYbZEh4PBsUSaBygIx+bAc3UIAf86L9GvuTHsdSzps77k73Ih82tygfr34w==
X-Received: by 2002:a7b:c957:: with SMTP id i23mr6473304wml.49.1577235474370; 
 Tue, 24 Dec 2019 16:57:54 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id e18sm26034448wrw.70.2019.12.24.16.57.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 16:57:53 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, netdev@vger.kernel.org,
 davem@davemloft.net, khilman@baylibre.com
Subject: [PATCH 1/3] net: stmmac: dwmac-meson8b: Fix the RGMII TX delay on
 Meson8b/8m2 SoCs
Date: Wed, 25 Dec 2019 01:56:53 +0100
Message-Id: <20191225005655.1502037-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
References: <20191225005655.1502037-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_165756_052304_C42EF274 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linus.luessing@c0d3.blue, balbes-150@yandex.ru,
 linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-kernel@lists.infradead.org, ingrassia@epigenesys.com,
 jbrunet@baylibre.com
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
the following settings in Linux:
- MPLL2 clock set to ~500MHz
- m250_div set to 2
- TX delay set to 2ns

Update the m250_div divider settings to only accept dividers greater or
equal 2. This will allow the Meson8 and Meson8m2 .dts to be updated to
use a TX delay of 2ns (instead of 4ns) to fix the TX packet loss.

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
