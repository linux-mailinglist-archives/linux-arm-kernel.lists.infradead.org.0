Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4020CF873
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XhRH5Ez3fxyPMudZkw+YrcfXEvODcytLxASWA93hpM=; b=ApA7YReaF5FWuS
	yfVYRXwwLMflTHt+yeWtNpuV7eAOjzXESHlkgZN9OLLR2w7SBCZ44eXmjZafOR+bLdaf+6snYfkc8
	VF7Q3mmng5qFGahzRXhMeQwDs46cGr7pMrNcKTY6erBpGdfYbRo61BjPv43wNk/zbb3ryZNRH3p/7
	SgN5pyBg46a1cYSG8sKt2tyPyHWeNHikrTuBfTcjhfUVHCf1JV805OHrDMicLwUkU0tEw2vLJJqaQ
	TGM9ooYfzM2eJ6ljuSi/qyhZx3F6No9dCnQrxV6tqOSRcp4ywyRYhIdkIz2dQGc5hLOwsnJqwZIJT
	/mP371zeJ63Q6kqCq4dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnlW-0006ZA-6g; Tue, 08 Oct 2019 11:34:54 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnl6-0006Os-3s
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:34:29 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 795A521947;
 Tue,  8 Oct 2019 07:34:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 07:34:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=FwWI9/MDx5th9
 3BPylor5pCFZ4biSV3bwPlyQ31srtU=; b=J2bgWrEKdLiSxVKsQHfspdwIW4M/o
 nP89ghxsFqU8xdG1vHZvtuDlte3JCnWb2Vs6ztb44LMJdzqWJ9OUs/PZSKNSZKGn
 EtxlL0cvPj0KCBCaETT5kd+2Fjw89yfLKbPqqwFENYlhJWFZMrSSABZRLO9noHNu
 vyxfeG+cbMrukkywZvd4u18ZXx31HGQcVL9eLA0B8d7u7MjJSP4hcF/vSwjU4FAF
 jRLE2oWUPbrZsRf4rvFw6GcPa5Rjip4M1PjgyOu0UfYjjzVceTZBSKxBcn283SmR
 hz6/6teBWTkmKnIYU59AiV7YHzrkZI2QSEcLhGCgRbW2q5Ufq2gob21sQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=FwWI9/MDx5th93BPylor5pCFZ4biSV3bwPlyQ31srtU=; b=iVEeZKv+
 eF+dvDxO9NHd0GbE1lc+WBUkCjWbVlpHWX7Sx8e/ufcDhLOfwuvF21zC9vf4nfo8
 HKykZntvU+MAGbRy+dhkOI+Yi6DTAf+hV1egvYfBrfT8EcvjbSgjnqxXw+7dVI32
 DwAKZgFYIxxtw4chJegrZX0yNxMCDnJmJ8Kpvo1a8FjQAYV/ojlMmLCbv39nSxI1
 uvfa8iyD1UXD2aaQZIz0VIO71Stv5GIwMAobCzaKKDhXqpoqldmQzY9GvAKBuB1T
 Qhkk1Pu1xfLW7xGKrsJEjAAWJ8/J1wDzascmWgyHwzUWj6sOrTVh4X/eao9kPHm9
 2yHVekz4ZXhaXw==
X-ME-Sender: <xms:Q3ScXaTEm5jDzj34Gkwp05BVzIeLpC_w07WjRfPdgCelnQ6oihQ2Gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheelgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtfedrheejrddvudehrddujeeknecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgeptd
X-ME-Proxy: <xmx:Q3ScXV78YvhlYY68_5UbLoBCwc_MNVrgJg839NfJELG_qFGZbVlukA>
 <xmx:Q3ScXag45dVG3gEmP11uihciUzFXfVAIxt3j4JNucZhZsW3lLa72fg>
 <xmx:Q3ScXT0euz7fG1BwZiu103X8FAQlI7y6Nso9MncdxcRh-JBr-EJ1Hg>
 <xmx:Q3ScXVqHIIG9FstAwuNS4vK672vAfPLvRpol7b0OF6LhzuRtYiBTNA>
Received: from mistburn.lan (203-57-215-178.dyn.iinet.net.au [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8C2EDD6005B;
 Tue,  8 Oct 2019 07:34:23 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: clock: Add AST2500 RMII RCLK definitions
Date: Tue,  8 Oct 2019 22:05:22 +1030
Message-Id: <20191008113523.13601-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008113523.13601-1-andrew@aj.id.au>
References: <20191008113523.13601-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_043428_225274_10DCBD73 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2500 has an explicit gate for the RMII RCLK for each of the two
MACs.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 include/dt-bindings/clock/aspeed-clock.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/aspeed-clock.h b/include/dt-bindings/clock/aspeed-clock.h
index f43738607d77..64e245fb113f 100644
--- a/include/dt-bindings/clock/aspeed-clock.h
+++ b/include/dt-bindings/clock/aspeed-clock.h
@@ -39,6 +39,8 @@
 #define ASPEED_CLK_BCLK			33
 #define ASPEED_CLK_MPLL			34
 #define ASPEED_CLK_24M			35
+#define ASPEED_CLK_GATE_MAC1RCLK	36
+#define ASPEED_CLK_GATE_MAC2RCLK	37
 
 #define ASPEED_RESET_XDMA		0
 #define ASPEED_RESET_MCTP		1
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
