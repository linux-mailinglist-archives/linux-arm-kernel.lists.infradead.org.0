Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E724884C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=STkNtI5Upk8MW6j7YHrXr3i3SueyXsFZ+mxsVxdOTis=; b=dI4bARtv/XFBac
	tu6OBJFA6dpDP46Oue7rx98LGwr7zXpjTZ+hsQCOTghHu7IsZPFsiHX3alTKoKVJj5YdgQvmwLUH1
	Hb8XtjNWu0/MglcoB2lr5h3LWuhNqWIZ/PuGD4X49HHh9w1d+ylFpFfMPAXrYAvx3O5HJbZZ31Zfv
	tzOFUYkOn6LsXA8ClJGslLhxr4gWYicz6yZqPR0JvGiR/EeWdCHT3vrsxrNf7YgBlfC9xGr/HBqE4
	aIjywPrjubRr5VQNLUQh96y3RXuaefSrv9zN7IRjym2vf9wZAGCiNEcADAzluJy7Ao4YZuwV9F/QI
	Vg4LblzJAPoubdZSE9oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu89-0005RR-V3; Mon, 17 Jun 2019 16:05:13 +0000
Received: from malenstwo.juszkiewicz.com.pl ([37.187.99.30])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu7S-0005DI-Fx
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:04:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by malenstwo.juszkiewicz.com.pl (Postfix) with ESMTP id 9B688C0C73;
 Mon, 17 Jun 2019 18:04:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at juszkiewicz.com.pl
Received: from malenstwo.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (mail.juszkiewicz.com.pl [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x1s3brb9MEOK; Mon, 17 Jun 2019 18:04:24 +0200 (CEST)
Received: from puchatek.local.com.pl (89-67-26-161.dynamic.chello.pl
 [89.67.26.161])
 by malenstwo.juszkiewicz.com.pl (Postfix) with ESMTPSA id 6C66EC0067;
 Mon, 17 Jun 2019 18:04:24 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
To: arm@kernel.org
Subject: [PATCH 1/3] arm64 defconfig: enable LVM support
Date: Mon, 17 Jun 2019 18:04:09 +0200
Message-Id: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090430_686489_81129CAF 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [37.187.99.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow x86-64 defconfig on enabling basic LVM support.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4d583514258c..864800307e2f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -230,6 +230,11 @@ CONFIG_SATA_SIL24=y
 CONFIG_SATA_RCAR=y
 CONFIG_PATA_PLATFORM=y
 CONFIG_PATA_OF_PLATFORM=y
+CONFIG_MD=y
+CONFIG_BLK_DEV_MD=y
+CONFIG_BLK_DEV_DM=y
+CONFIG_DM_MIRROR=y
+CONFIG_DM_ZERO=y
 CONFIG_NETDEVICES=y
 CONFIG_MACVLAN=m
 CONFIG_MACVTAP=m
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
