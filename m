Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1738606FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aFIB7GnoX7/tQGKlE0Uy17CZtQIQdkc/tls0ZPkoSc=; b=uYZWLNgsBa8MDQ
	4kG+Fo5hAF+VduWBcrkqWgpljUlS5B+a0uH/uoSV85Ug/VtbXO3Ahr+BoTPQTuOdxURwV36yuBKCw
	GTfaGY7L+zgudV115sgzEReWOZtWcjKEHD8dE4gBnJiVa1a7bSiVZay8gBp1Yv8XWbfLVWZjX2N3t
	49cxNYqs0vt2zRj2wK3QLD1XFu33eq2q89eCmdeSPVSu3MESpYdF0LBDdMRafAEvsQaGNYhFlLlpe
	NuTz279AotI6KJ748Rn3cFmRoWpP50Ix0xU21kwGwMnmJK0+ap5qS/Rhy4n4CTQo8nZGnY3OKETFL
	XKGWPo4FFirE9vPR6Zxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOjW-0001MK-0i; Fri, 05 Jul 2019 13:58:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN2c-0004gt-1D
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 12:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sEk8eh/WZX52vhZjt9j66vA5gBnPvpML1f8yj58nR0M=; b=uFHOfOxa794tdzCHceRiUfVO6X
 eGnKq9DTVs/dh3zGruBOXdr70L4+KYDVSDdtIzKKkXiCccJvluRaQ6vxpAvabAoZTiDV4ZZ2TA3ar
 d+uDDmt8nnywcIVJOCW9H3imsGO9lVx877dbueZQR0M9J72aGLCxxV9CC1J+Tp/x3LrnZztRwmiQk
 gxubm9hQfUhtmK8EtjNNfAkF1ZmBm8ZALg1pb5ZuKVzHWPovjvTTgTuxoFt8DGUwxAguS8bUkcrgH
 uOhNSg/YJ+dId2EW2dNdSbBnKzUzZadOE4b4QBLIHcV5YaSgQxAmx7QPLh/IAiPQmaz8+i1ksrDlF
 /RnRNgnw==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN2Z-0000ta-4r
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:10:12 +0000
Received: from mc-bl-xps13.lan (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 4A055200011;
 Fri,  5 Jul 2019 12:09:15 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 1/2] net: mvpp2: cls: Report an error for unsupported
 flow types
Date: Fri,  5 Jul 2019 14:09:12 +0200
Message-Id: <20190705120913.25013-2-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
References: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_131011_216057_EB813AEA 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a missing check to detect flow types that we don't support, so that
user can be informed of this.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index b195fb5d61f4..6c088c903c15 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -1373,6 +1373,10 @@ int mvpp2_ethtool_cls_rule_ins(struct mvpp2_port *port,
 
 	efs->rule.flow = ethtool_rule->rule;
 	efs->rule.flow_type = mvpp2_cls_ethtool_flow_to_type(info->fs.flow_type);
+	if (efs->rule.flow_type < 0) {
+		ret = efs->rule.flow_type;
+		goto clean_rule;
+	}
 
 	ret = mvpp2_cls_rfs_parse_rule(&efs->rule);
 	if (ret)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
