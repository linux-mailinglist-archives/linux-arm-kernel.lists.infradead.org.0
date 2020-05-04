Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FA11C4086
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yeN8Zx4wYCLA48YES6xUyc3dp3sYpAAEMMGNRIadodE=; b=J/Ntxfu/T4OuVk
	12zPcqHrFBQDtinA6+e+9e9K/WrXUOv7Y7oWcpCQe5UAD4LOVfuEUuoPk1FNeV6LqMWxOJWa3y+UM
	8yjlGgHlAqtCOS5FBqppXj6VG135rk0jR/iY2vPokkVMkI3vzgZVn+X1EWSb+kpgk1YDajAwfkL13
	VinKYD+sH8uH0qCYa/5eckGUB1sPnEwv//Rv046YWd52UNoLLeUaFWK7pp0s++BmfoJN/ZtCqem39
	CMpmVqzbYoLEuL3iPFpG2XCSHjDuPr3g45ijFBDjl1mnNxqA6JTZphFNsLOC4kyj+Hs1LSEyyjb17
	R3NrSCoH82GkfNhXBe7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeL7-0006ek-Vo; Mon, 04 May 2020 16:53:09 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeKx-0006Xs-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:53:04 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 190E822FF5;
 Mon,  4 May 2020 18:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1588611169;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=s3MJel5dUV3iL+D3nK/MzZnYREoru8RurZpnEykOVsQ=;
 b=t9zuEan8+Y5jKryk55vfcPI5vOFxLGri2s2STZlooSNGGkQqD/3NuI4nMpimzXixTW0zlu
 8oIX9gF/JCn5vb2Ww1SDCUEq0HP98Pe7rGQyHQo0QgmmFx6DOUB7RvIhfwXlFBCqdQiGu4
 H/PN+kTxkxOReVCPH8UZFx7FloB72i4=
From: Michael Walle <michael@walle.cc>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: [PATCH RESEND net-next] net: dsa: felix: allow the device to be
 disabled
Date: Mon,  4 May 2020 18:52:28 +0200
Message-Id: <20200504165228.12787-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 190E822FF5
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; NEURAL_SPAM(0.00)[0.858];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[11];
 MID_CONTAINS_FROM(1.00)[]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[davemloft.net,gmail.com,lunn.ch,nxp.com,kernel.org,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_095259_501376_E11C5463 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Michael Walle <michael@walle.cc>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If there is no specific configuration of the felix switch in the device
tree, but only the default configuration (ie. given by the SoCs dtsi
file), the probe fails because no CPU port has been set. On the other
hand you cannot set a default CPU port because that depends on the
actual board using the switch.

[    2.701300] DSA: tree 0 has no CPU port
[    2.705167] mscc_felix 0000:00:00.5: Failed to register DSA switch: -22
[    2.711844] mscc_felix: probe of 0000:00:00.5 failed with error -22

Thus let the device tree disable this device entirely, like it is also
done with the enetc driver of the same SoC.

Signed-off-by: Michael Walle <michael@walle.cc>
---
This was part of a two patch series. The second patch is already merged.
This patch was never picked up, although it was Acked-by: David Miller,
see:
https://lore.kernel.org/netdev/20200314.205335.907987569817755804.davem@davemloft.net/

Since there is no more dependency, this patch could go through the
net-next queue.

 drivers/net/dsa/ocelot/felix.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
index 69546383a382..531c7710063f 100644
--- a/drivers/net/dsa/ocelot/felix.c
+++ b/drivers/net/dsa/ocelot/felix.c
@@ -699,6 +699,11 @@ static int felix_pci_probe(struct pci_dev *pdev,
 	struct felix *felix;
 	int err;
 
+	if (pdev->dev.of_node && !of_device_is_available(pdev->dev.of_node)) {
+		dev_info(&pdev->dev, "device is disabled, skipping\n");
+		return -ENODEV;
+	}
+
 	err = pci_enable_device(pdev);
 	if (err) {
 		dev_err(&pdev->dev, "device enable failed\n");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
