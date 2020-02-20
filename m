Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B80F1662F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:31:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LoEmFD39yAV19uEFdqsOx4CC6+doMhPOyE96zmzXofA=; b=LPYcIVgH8MB7Y66XOpXeGKQ9Hc
	gYnMRqlWx9LCY1UUFcWF5V57ECq+iXEh4hi9bQaGrPiXnl0BkH0VRtybKN7ZG9lNaOpKYzn2md01A
	TlhYqWA31JMTZfeNolYed0m8RJx6ThrBwsBooxT7QQH10/nCH/aNh09HQcZA+wKpxNC6ugveARIDU
	G81ZFiFUXVgUliBD8y2gPNbtty98+cReF3KOdVu8e2f6JUySGzhqeTScIpwKPTgMfREG4ziw9CVU7
	Yhdjq0C+k3g/d7fUUZFrw+Y19M4U2PpuGjdFK0hjEc+IFq6hg2n9qp0ulmz/0+ASa4wwsU3M3wS+w
	zC1LCh+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ojt-0000Gi-Le; Thu, 20 Feb 2020 16:31:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oi0-0005xT-6i
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:29:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BEC3B1A17AF;
 Thu, 20 Feb 2020 17:29:50 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B261F1A0D00;
 Thu, 20 Feb 2020 17:29:50 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A2F820328;
 Thu, 20 Feb 2020 17:29:49 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH v2 6/8] pinctrl: imx: scu: Align imx sc msg structs to 4
Date: Thu, 20 Feb 2020 18:29:37 +0200
Message-Id: <bd7ad5fd755739a6d8d5f4f65e03b3ca4f457bd2.1582216144.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1582216144.git.leonard.crestez@nxp.com>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1582216144.git.leonard.crestez@nxp.com>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_082952_420275_CBF0C379 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>, linux-clk@vger.kernel.org,
 Franck LENORMAND <franck.lenormand@nxp.com>, linux-gpio@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx SC api strongly assumes that messages are composed out of
4-bytes words but some of our message structs have odd sizeofs.

This produces many oopses with CONFIG_KASAN=y.

Fix by marking with __aligned(4).

Fixes: b96eea718bf6 ("pinctrl: fsl: add scu based pinctrl support")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/pinctrl/freescale/pinctrl-scu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/freescale/pinctrl-scu.c b/drivers/pinctrl/freescale/pinctrl-scu.c
index 73bf1d9f9cc6..23cf04bdfc55 100644
--- a/drivers/pinctrl/freescale/pinctrl-scu.c
+++ b/drivers/pinctrl/freescale/pinctrl-scu.c
@@ -21,16 +21,16 @@ enum pad_func_e {
 
 struct imx_sc_msg_req_pad_set {
 	struct imx_sc_rpc_msg hdr;
 	u32 val;
 	u16 pad;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_req_pad_get {
 	struct imx_sc_rpc_msg hdr;
 	u16 pad;
-} __packed;
+} __packed __aligned(4);
 
 struct imx_sc_msg_resp_pad_get {
 	struct imx_sc_rpc_msg hdr;
 	u32 val;
 } __packed;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
