Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EC6EB4C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeSz9oWmduaxOPXu5Mq7ZAkrxTwc7YcD+U7uFHtl2fY=; b=DL+OKJRrNmwQbg
	rXA0310XlXxd+TQIMB3ynQ0GjDE/+tGpoqHWVU5iJ1uG/hhSP1IE8hnywGnYMGvD0f/IQm9mGOdZ1
	1vH3qANW3UZ50NteycVLgL38SV/RYWu7RLLEnu2po8OYo8ZN0bvELcAynhSfZqXQ5WtZfLXpp7TX7
	mUXwcELOjTUxVstqMNmIwqJer/fz3EQgw2JI9WeisfDgUcN9QYHgXGbpO28t+fTcj6XPrRo3OXHWb
	WVroFen0v/MJ9hKbMYRHvWPnzaqJ8XrVWGn5V0EGxu/TgFvagVXR6jsQruHUXk1PPZThc4qR/w2Vw
	sqLalPGivKK29i12VKFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDPu-0001kP-SH; Thu, 31 Oct 2019 16:35:22 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDPl-0001iw-9f
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:35:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id C5E12510E3;
 Thu, 31 Oct 2019 17:35:11 +0100 (CET)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id tdqN4OfZRjxL; Thu, 31 Oct 2019 17:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 15A5451140;
 Thu, 31 Oct 2019 17:35:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id SPJhv-z29mOM; Thu, 31 Oct 2019 17:34:59 +0100 (CET)
Received: from belphegor.redhat.com (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 1183251142;
 Thu, 31 Oct 2019 17:34:59 +0100 (CET)
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Subject: [PATCH 3/4] ARM: dts: mmp3-dell-ariel: Add a name to /memory node
Date: Thu, 31 Oct 2019 17:34:54 +0100
Message-Id: <20191031163455.1711872-4-lkundrak@v3.sk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031163455.1711872-1-lkundrak@v3.sk>
References: <20191031163455.1711872-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_093513_494884_F2922A91 
X-CRM114-Status: UNSURE (   9.74  )
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

Ponted out by DTC:

  <stdout>: Warning (unit_address_vs_reg): /memory: node has a reg or ranges
  property, but no unit name

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp3-dell-ariel.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mmp3-dell-ariel.dts b/arch/arm/boot/dts/mmp3-dell-ariel.dts
index 61edb4d06880b..0855b5f1d1f35 100644
--- a/arch/arm/boot/dts/mmp3-dell-ariel.dts
+++ b/arch/arm/boot/dts/mmp3-dell-ariel.dts
@@ -21,7 +21,7 @@
 		bootargs = "earlyprintk=ttyS2,115200 console=ttyS2,115200";
 	};
 
-	memory {
+	memory@0 {
 		linux,usable-memory = <0x0 0x7f600000>;
 		available = <0x7f700000 0x7ff00000 0x00000000 0x7f600000>;
 		reg = <0x0 0x80000000>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
