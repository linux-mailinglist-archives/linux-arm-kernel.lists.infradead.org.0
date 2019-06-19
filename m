Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB594B93B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=17+HzL8Y4DmbIVKs0WiZ69XGHqmihvPdm7jrQp4yu3g=; b=n4hgVGy0PRU9Ie
	+ZsFvMo++w+0N7dxdI6hvvqcSwunM8Y81z2Kkr6KLnEABDU1h2VQ1m334lSiy6YQ7tMXh05mV68RU
	NIZzbxzI7UNmlYh0jAMRwPRZ6towtxH78UGdkZK8FhPKSd98+EMeSLlwAOBEyiib8y2YQVvVGaEcc
	DczsqYkw4ZhGSXJ1we/HJ/mLOuMA26A8j8+sfnUVVCQgZWG7CChVBVE5J7Zz+dArohKsuxC6C5Qia
	sHJP72wxrUKusUIUgQlmJ4SexNk48WSOgvVHNjAwnmERrrLToQuJjgqTFhJeddtKidiPB9Jysazmw
	dGV1qwGC5p1UKfkwLJHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hda9D-0006aG-MD; Wed, 19 Jun 2019 12:57:07 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hda91-0006Zn-MP
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:56:57 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Md6dH-1iCdyW161r-00aBCA; Wed, 19 Jun 2019 14:56:39 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Joel Stanley <joel@jms.id.au>
Subject: [PATCH] soc: aspeed: fix probe error handling
Date: Wed, 19 Jun 2019 14:56:23 +0200
Message-Id: <20190619125636.1109665-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZJwSOzQMuPpHsrU/+qvC0BE/4HBT6tcQ0i6nWWwdFMZI7Lp37LT
 EhDuHwiX9TgKYWtK3bytwlf9alSchNSd3HIu3+i2ShJqPpZF0IycKFhDZRLr5nSzcurUU8s
 TTlggu2/kKjAzmi0JMsgLMKJmUrck9PseSduRgPAZEBfkRhQNKngF+cstswdqnsCwYfUOtC
 DYfjeGhgOkWZQRKdeV1CA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LGDpA5YzoUY=:XTDjw9epM4xTzibkdByj5K
 GhIoK1yF82OWjpMeOzQgnmeVnkx98/kU1pZTERJCdJi9xsYO1rzx9v4BHyw5hNVXMy/hoCMmg
 R8ZUvFbo6ALJY8qcu7O5sAM029mTaKymbN4tbNjRxpFH09r/9tst6rkT/62mTG1X0CaIHbqI3
 3NDJMvWo9oGLsuysv9X4bzP9Ohdb1IPgcYF81bZjPJ5Jlvk7UR9kul0VZwkrWf0PoT+2fe4aH
 MJlMnX3rtqs4jmF0+rRuDvyuBggJN48PVLtQxln1U5D2RIpZ6Jab4MFQDQV7qEsJQDgreu4DZ
 yYsPkVE4zRFFgpoaHazeuL0hCbVHIuMe3osHNpKwDMmQV8PosE9SLcSWhVhM8PB7DqE1urHWI
 SeUA6A9vR3ajuhrYaJ9R/ggQqrQT/MwGZrOgQeoey0A8bRDrGMtRF9sJWkJzVs6lR+LBZ/Qd4
 Fh42eJZWNZYEmS3P1g8BeedER3edpIzzMXbxCpf/UMTBgviowSsQJs7shQ/ziyd09yYR/tfun
 NuC+QPCKou2F9BahTgQTYa+LcqCyJPLax11e2Y4nfwrpWDSSbqzbA2bqqatWpKGYyvZOG0pJM
 YFfWa4oPOTxWvC+bVAjlmbmiRPXRbMGMKEBSUKU+GMW/9c5sWM81NlPtEdifftrsH1Wuyv9bv
 lJREE0KyXnqutSAdXz7DjuUmD/K9lGRQXfkts2x5y1NJ0jP3hWiVyFq05qQ/fhd2egAL4DpIm
 RZkS4jUol5xwipOEO5zrS9SItLbZ3JG+d4LH5g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_055656_044648_E074A529 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Patrick Venture <venture@google.com>,
 linux-kernel@vger.kernel.org, Vijay Khemka <vijaykhemka@fb.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

gcc warns that a mising "flash" phandle node leads to undefined
behavior later:

drivers/soc/aspeed/aspeed-lpc-ctrl.c: In function 'aspeed_lpc_ctrl_probe':
drivers/soc/aspeed/aspeed-lpc-ctrl.c:201:18: error: '*((void *)&resm+8)' may be used uninitialized in this function [-Werror=maybe-uninitialized]

The device cannot work without this node, so just error out here.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/soc/aspeed/aspeed-lpc-ctrl.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/aspeed/aspeed-lpc-ctrl.c b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
index 239520bb207e..81109d22af6a 100644
--- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
+++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
@@ -212,6 +212,7 @@ static int aspeed_lpc_ctrl_probe(struct platform_device *pdev)
 	node = of_parse_phandle(dev->of_node, "flash", 0);
 	if (!node) {
 		dev_dbg(dev, "Didn't find host pnor flash node\n");
+		return -ENXIO;
 	} else {
 		rc = of_address_to_resource(node, 1, &resm);
 		of_node_put(node);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
