Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEEFEB4CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPbmNdnGajQp0h7apE1QnSWeVq7eVS0I7cxKCjSDpCo=; b=Pfvn7rX1glqgK7
	8BEyjhYLxSgFTvmGhtyWox6JeznfATI/Zb9uMJusJ8kgi0x5OoHJ7MbPZ/erGqkOgcE3T8P8oPA4Z
	XhqBScntx06NTrfXDIbKQ15sg2oa38hl7ve1cGqN/78gm872yW7hEUpbjOu9iSoYfbW0ZWqLftqzv
	0qVxISgo1APOsMC11BYzavlZlaNhdJI9fLlQep8x9SK5xSQWeZsgW2kMqhSnmTnXtn9chJvPisXju
	870gNzXrPVp9IV8aW5DuB0MJSfZHr5k/u4G2gqhiaYJjgXZWzvuC18/MUUZEQayorrPwCOmvzjq8/
	Z/LTzluAIUoVu5wVrgxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDQm-0002Rc-PP; Thu, 31 Oct 2019 16:36:16 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDPl-0001iv-9g
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:35:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id A295C51142;
 Thu, 31 Oct 2019 17:35:10 +0100 (CET)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Te_oO1nBQVKz; Thu, 31 Oct 2019 17:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 51A1651146;
 Thu, 31 Oct 2019 17:35:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6mCmVhTsI1n8; Thu, 31 Oct 2019 17:34:59 +0100 (CET)
Received: from belphegor.redhat.com (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 3979C51144;
 Thu, 31 Oct 2019 17:34:59 +0100 (CET)
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Subject: [PATCH 4/4] ARM: dts: mmp3-dell-ariel: Add a serial point alias
Date: Thu, 31 Oct 2019 17:34:55 +0100
Message-Id: <20191031163455.1711872-5-lkundrak@v3.sk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031163455.1711872-1-lkundrak@v3.sk>
References: <20191031163455.1711872-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_093513_499597_8802B309 
X-CRM114-Status: UNSURE (   7.35  )
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

Make sure UART3, where the console is, is called ttyS2. That is
consistent with the early console.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp3-dell-ariel.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/mmp3-dell-ariel.dts b/arch/arm/boot/dts/mmp3-dell-ariel.dts
index 0855b5f1d1f35..c1947b5a688d7 100644
--- a/arch/arm/boot/dts/mmp3-dell-ariel.dts
+++ b/arch/arm/boot/dts/mmp3-dell-ariel.dts
@@ -14,6 +14,10 @@
 	model = "Dell Ariel";
 	compatible = "dell,wyse-ariel", "marvell,mmp3";
 
+	aliases {
+		serial2 = &uart3;
+	};
+
 	chosen {
 		#address-cells = <0x1>;
 		#size-cells = <0x1>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
