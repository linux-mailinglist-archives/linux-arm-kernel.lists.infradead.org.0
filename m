Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1421936FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:30:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Wvpsjpg9ubNE+iNupTe098h033Ful3YoNCMa/4NNcZc=; b=jkd
	l+BmR71qr5oeBUdxYp4ho7SJCnoDDz4yC4bh16GFp1RkawJvkccmVwQbjWhzOWjjZXa2qdwBwXmrz
	AIqMR9+TTHhakQ+0E1KrWrdvDRBm/xdioVWSYn6nfvAikPzzyxtl9l5D1uBGJtHykkXhBb9uyU6nE
	6A1Q6482WYrKRbg/FHReeenSP0SUHn7/gBkl048TjrjEslgS8B72ZeJ7nP44DlBdac5wIDvlpBLsR
	BlN07ptUvZJRbscdYStlxC486XfzXUd59dLXgBnN6iOGckxOxEthPTS0DOmIbn/qawOZxempfWmbx
	jDIg1qQSVEiDUwQHrKSHsKDJN71UN2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJDx-0001a9-Tu; Thu, 26 Mar 2020 03:30:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8N-0004jN-WD
 for linux-arm-kernel@bombadil.infradead.org; Thu, 26 Mar 2020 03:24:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=2jEUCLMb20W+Sul/EloqSUqUagkBRPo4LCg7iCkVUUI=; b=ZQENCu+BA/3LfAe13sFaCTjrgU
 36LESRRMy5ohLMEMQrbrFifIy5s9BwLoCuil8+3IlVYfZR40D00lKQPLlpCwt7RhVk0bWDge4kp42
 O+b4dJi8TNhN7ubNVDzULa9TYz5xuHxp5dkR/aLTcFdoCcRFoctsD84pWoETS0uhEZ4ANuTMnve+f
 MYCV8LVPAGwbz6ur/5U0Q7TNJtwizrw4TJsWVoUJNUUBHv3k2stooqTepOvtG5YGffnqaZP4hehEL
 YKr5QmMYfmbPq+sdmIs4dYJH2xS1c/FnTEE9/JgejSFXDM7rnfv6wMUs2HtrI+fPTVkfCwMcpzOAZ
 ZG1UrIow==;
Received: from smtpbgeu2.qq.com ([18.194.254.142])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8D-0000cP-U0
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:41 +0000
X-QQ-mid: bizesmtp23t1585193035tu9mb8m1
Received: from localhost.localdomain (unknown [111.28.140.218])
 by esmtp10.qq.com (ESMTP) with 
 id ; Thu, 26 Mar 2020 11:23:50 +0800 (CST)
X-QQ-SSF: 01400000002000N0LK40B00A0000000
X-QQ-FEAT: IU1j2zQXGSmkjKfBymb3/eBCubbz8BvgGz5vB7l51ezvAZ/1ATsIlO3vZICwj
 Acv37/jbadl8lB/wbRjUCeazwOedLgObATbuZ0u4K6CzA/QTPwMyvoZeDj5Ct6rMNauxeL7
 VKOrc5A8H1fzt2T9a7+QUo1lPnzmjlDxpJfvZUKsYqAfYRRZXVrcvPKVVoqWQ9M9+LEURir
 4/7SqzxKeDZ0pt8KACtlLzOodNtamGOTzisWHDUPg5UwEs7amdeo5C37f0zxK3bCpY2i2jr
 M0tJ6MkCP0IJY5WKIneYMIl0O191uNY6TCgxY5JqGyHcURKCPq8WCxNnHWhR6Ff/nn2Q==
X-QQ-GoodBg: 2
From: xiaolinkui <xiaolinkui@tj.kylinos.cn>
To: peppe.cavallaro@st.com
Subject: [PATCH] net: stmmac: Abort loop after phydev is detected
Date: Thu, 26 Mar 2020 11:23:41 +0800
Message-Id: <20200326032341.30280-1-xiaolinkui@tj.kylinos.cn>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:tj.kylinos.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_032434_524238_42D98117 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [18.194.254.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org, davem@davemloft.net,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 xiaolinkui <xiaolinkui@tj.kylinos.cn>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A net_device only needs at most one phydev, There is no need
to recycle the entire list after finding a phydev.

Signed-off-by: xiaolinkui <xiaolinkui@tj.kylinos.cn>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index cfe5d8b73142..6fb87cc18d65 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -431,6 +431,9 @@ int stmmac_mdio_register(struct net_device *ndev)
 
 		phy_attached_info(phydev);
 		found = 1;
+
+		if (phydev->phy_id != 0)
+			goto bus_register_done;
 	}
 
 	if (!found && !mdio_node) {
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
