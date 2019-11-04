Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4B5EEAC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:10:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11WLcN1adAXdIac1Lzv7RUOglrnIohgkFFgEx4wjEi4=; b=I841tC9/Y++jMH
	YbjixT2IgzPHz9zZi+xs2AR3Uh3eDAbXQznLGNXs+4R7Z+Dkus28hC+RDZlw5vyjcs/OeTpfSa7hn
	QhAoB/cXpCFgeSHUyyflXL4IMkzVqArEb/Md0AfHsweAZrFM7IirUA9+nvuUWUcGWtew2QIZmPT/W
	bHwidY6UlIy9wYkqr4ccK7RKWRU6TsAAASD1pfIi0CO/MUcfpbjSvklED8WfH+4X6fUyC1m3YNzWf
	scrPmxrJpI546saN1zOsmZvstOapSwMUpzQCMWJ/SB/nG1QuyV56tw8HBbePDyEzhgSAICbFA/W0Y
	UxIvu6aLHe3KLBRNh2lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjcX-0004Yb-3R; Mon, 04 Nov 2019 21:10:41 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjbt-0002wv-E8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:10:03 +0000
Received: from localhost.localdomain (80-110-127-196.cgn.dynamic.surfer.at
 [80.110.127.196])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 9C6DEC79C0;
 Mon,  4 Nov 2019 21:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1572901798; bh=Gn3ce9J2FbN+mHmg7FuUk7jLgCYVhBF6tStil3ABUOA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fyZNsjykKx0mq2GuxxRWiho0uqUXE5JkmpP7C5iBUESAlhZZLPjeYXGA1DVdh98Hx
 IaHc+BX2QFCBJVLid4pgwNYMxTMJLD7FtGxPAHgJrUUzgiKalryJiZRO7eW/eBBzdA
 hjB5cI8BMm5EfP7FCwhx/XwWM/977e0YBoxrE1JA=
From: Luca Weiss <luca@z3ntu.xyz>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH 2/2] ARM: qcom_defconfig: Enable QRTR
Date: Mon,  4 Nov 2019 22:09:41 +0100
Message-Id: <20191104210943.101393-2-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191104210943.101393-1-luca@z3ntu.xyz>
References: <20191104210943.101393-1-luca@z3ntu.xyz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_131001_904269_CA781F93 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
Cc: linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Luca Weiss <luca@z3ntu.xyz>,
 Jordan Crouse <jcrouse@codeaurora.org>, Andy Gross <agross@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This option is useful on msm8974, so enable it.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 arch/arm/configs/qcom_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index 94d5e1a8c61a..a71201fdc8c9 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -45,6 +45,8 @@ CONFIG_IP_ROUTE_VERBOSE=y
 CONFIG_IP_PNP=y
 CONFIG_IP_PNP_DHCP=y
 # CONFIG_IPV6 is not set
+CONFIG_QRTR=y
+CONFIG_QRTR_SMD=y
 CONFIG_CFG80211=m
 CONFIG_MAC80211=m
 CONFIG_RFKILL=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
