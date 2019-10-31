Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D3BEB4CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0aTIEYzpWOeI0cMENCZ/zWSTAnmll1jfv4XahKI1YE=; b=k/i4vAfJFH9une
	4UoKsk90BmzM1d3s8OJ1NuhqEbDVjoQBC5skstvSAApflmy0jgO1Bas/B8nsG3h/RKgczffZykgx5
	qzBvIYbGFrvgfuWHgLQPPNFIgTK0vWN/33jW0A2mm9gpYV6bm0+tdj4i1o8imv+UwpDgGug9IXlYb
	NTzJrxGjaDuQIMlcBKd7TWMV3DUMCNfCaiKgwuz5Twq8sa4W6SwgqAt4ycLoBi/JhpcNFWUROkkEY
	tj9eA3oXAfCseCM0u2bKiIw46i0laaoquTTTXAMB8YMXco+aUnmEw1ewlZofehgMSiOC/YfAwLZKJ
	YkmAQEjlJqCtqSRKxKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDQw-0002ft-2o; Thu, 31 Oct 2019 16:36:26 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDPo-0001k7-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:35:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 43F465114A;
 Thu, 31 Oct 2019 17:35:15 +0100 (CET)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id zvjU-IS_3jVr; Thu, 31 Oct 2019 17:35:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 2438351145;
 Thu, 31 Oct 2019 17:35:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 05n_IocmDdl0; Thu, 31 Oct 2019 17:34:59 +0100 (CET)
Received: from belphegor.redhat.com (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id AD11051140;
 Thu, 31 Oct 2019 17:34:58 +0100 (CET)
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Subject: [PATCH 1/4] ARM: dts: mmp3: Add a name to /clocks node
Date: Thu, 31 Oct 2019 17:34:52 +0100
Message-Id: <20191031163455.1711872-2-lkundrak@v3.sk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031163455.1711872-1-lkundrak@v3.sk>
References: <20191031163455.1711872-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_093516_809868_65C85A91 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Olof Johansson <olof@lixom.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Lubomir Rintel <lkundrak@v3.sk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It should have one and DTC is indeed unhappy about its absence:

  <stdout>: Warning (unit_address_vs_reg): /soc/clocks: node has a reg or
  ranges property, but no unit name

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mmp3.dtsi b/arch/arm/boot/dts/mmp3.dtsi
index e0dcdab196355..b1e928ed77d66 100644
--- a/arch/arm/boot/dts/mmp3.dtsi
+++ b/arch/arm/boot/dts/mmp3.dtsi
@@ -486,7 +486,7 @@
 			cache-level = <2>;
 		};
 
-		soc_clocks: clocks {
+		soc_clocks: clocks@d4050000 {
 			compatible = "marvell,mmp2-clock";
 			reg = <0xd4050000 0x1000>,
 			      <0xd4282800 0x400>,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
