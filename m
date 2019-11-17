Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0958FFBA1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 21:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tJkYzQjdsDLb3/DAwim3JSZd+rcAe9a7FjKosAOAVaE=; b=kOYpXWJMBdgXnY
	lemPMbapn6jScG4MytUy691p8meiYHz5jGpz9uh2ri25wnkUwEdPw9gtpPRubsokhpOAE3c43LweS
	9wdCBnumidWlxuMx1pTj6X7HJ+nXq4zEnxE6Tu34ZjxDM7B153Ark8c7L1A4D3LlhNpgCZ7gvbYio
	j2JOkipGdMbjcuDaQ9vmOUtIcBZgDXwso+tWb8O9w4nUEhkrDuBUG7D8lQ35x+UyQ6wv0EvwwsC4i
	ReZ6AzOX9bI+l9XQ7QqjNihDjf6OuqQN72FDA3G8dRWNODJIYOistWP6SOGFZFBylQlREk+oZ3zDO
	XHk9UOthuDCJm/wpXDww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWRaM-0004hK-0V; Sun, 17 Nov 2019 20:55:54 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWRaD-0004gx-Nz
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 20:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574024136;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=wbKXX1nOfYoJS3RH2L8z7sjOaFVKKHWctbqjU5FvcYw=;
 b=hl8eDqwKBD0qyXM7jjmZKv5qKuaXhJVNeJDist96YfrgNsf6zt3VpXAvs85EPX5C/3
 ybB95VbURXnQJNEXLBX8XmkxhNp7MgICNHkknPKaLii8CZVAbiCnuf3R8ZyZb8E3RIQd
 DBWPIlvoFe+nyqXhiI9lkZwY5I05TB2/AQjuRCUsrkioPX3ZxZKg9YSHHBFKB/YrV3vC
 p1yOhwLaTf8oKvpcYUt96V0+2yvYGKk39memHDJw+LIIMOzZM14AnIUgcAVt9KEKk840
 n0B21F5XcRjE5pGxtMExYpJjy6npmhPjHrl0WKs6UnUfZ24xvL3+k2HuVztnr/ow66IK
 4UAg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXsMvvtBRRPA=="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAHKtXb36
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sun, 17 Nov 2019 21:55:33 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] pinctrl: nomadik: db8500: Add mc0_a_2 pin group without
 direction control
Date: Sun, 17 Nov 2019 21:54:39 +0100
Message-Id: <20191117205439.239211-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_125546_365656_71828406 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:8 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some devices do not make use of the CMD0/DAT0/DAT2 direction control
pins of the MMC/SD card 0 interface. In this case we should leave
those pins unconfigured.

A similar case already exists for "mc1_a_1" vs "mc1_a_2"
when the MC1_FBCLK pin is not used.

Add a new "mc0_a_2" pin group which is equal to "mc0_a_1" except
with the MC0_CMDDIR, MC0_DAT0DIR and MC0_DAT2DIR pins removed.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 drivers/pinctrl/nomadik/pinctrl-nomadik-db8500.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/nomadik/pinctrl-nomadik-db8500.c b/drivers/pinctrl/nomadik/pinctrl-nomadik-db8500.c
index 726c0b5501fa..b9246e0b4fe2 100644
--- a/drivers/pinctrl/nomadik/pinctrl-nomadik-db8500.c
+++ b/drivers/pinctrl/nomadik/pinctrl-nomadik-db8500.c
@@ -391,6 +391,15 @@ static const unsigned mc0_a_1_pins[] = { DB8500_PIN_AC2, /* MC0_CMDDIR */
 					 DB8500_PIN_AA2, /* MC0_DAT2 */
 					 DB8500_PIN_AA1  /* MC0_DAT3 */
 };
+/* MMC/SD card 0 interface without CMD/DAT0/DAT2 direction control */
+static const unsigned mc0_a_2_pins[] = { DB8500_PIN_AA3, /* MC0_FBCLK */
+					 DB8500_PIN_AA4, /* MC0_CLK */
+					 DB8500_PIN_AB2, /* MC0_CMD */
+					 DB8500_PIN_Y4,  /* MC0_DAT0 */
+					 DB8500_PIN_Y2,  /* MC0_DAT1 */
+					 DB8500_PIN_AA2, /* MC0_DAT2 */
+					 DB8500_PIN_AA1  /* MC0_DAT3 */
+};
 /* Often only 4 bits are used, then these are not needed (only used for MMC) */
 static const unsigned mc0_dat47_a_1_pins[] = { DB8500_PIN_W2, /* MC0_DAT4 */
 					       DB8500_PIN_W3, /* MC0_DAT5 */
@@ -670,6 +679,7 @@ static const struct nmk_pingroup nmk_db8500_groups[] = {
 	DB8500_PIN_GROUP(msp0tfstck_a_1, NMK_GPIO_ALT_A),
 	DB8500_PIN_GROUP(msp0rfsrck_a_1, NMK_GPIO_ALT_A),
 	DB8500_PIN_GROUP(mc0_a_1, NMK_GPIO_ALT_A),
+	DB8500_PIN_GROUP(mc0_a_2, NMK_GPIO_ALT_A),
 	DB8500_PIN_GROUP(mc0_dat47_a_1, NMK_GPIO_ALT_A),
 	DB8500_PIN_GROUP(mc0dat31dir_a_1, NMK_GPIO_ALT_A),
 	DB8500_PIN_GROUP(msp1txrx_a_1, NMK_GPIO_ALT_A),
@@ -828,7 +838,7 @@ DB8500_FUNC_GROUPS(ipi2c, "ipi2c_a_1", "ipi2c_a_2");
  */
 DB8500_FUNC_GROUPS(msp0, "msp0txrx_a_1", "msp0tfstck_a_1", "msp0rfstck_a_1",
 		   "msp0txrx_b_1", "msp0sck_b_1");
-DB8500_FUNC_GROUPS(mc0, "mc0_a_1", "mc0_dat47_a_1", "mc0dat31dir_a_1");
+DB8500_FUNC_GROUPS(mc0, "mc0_a_1", "mc0_a_2", "mc0_dat47_a_1", "mc0dat31dir_a_1");
 /* MSP0 can swap RX/TX like MSP0 but has no SCK pin available */
 DB8500_FUNC_GROUPS(msp1, "msp1txrx_a_1", "msp1_a_1", "msp1txrx_b_1");
 DB8500_FUNC_GROUPS(lcdb, "lcdb_a_1");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
