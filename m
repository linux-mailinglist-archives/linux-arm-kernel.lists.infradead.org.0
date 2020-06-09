Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182FE1F3AE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EksS168g4GiWWGGQsduvw079ADh0N0pF7jR6cHR/8lw=; b=MtzmWDJeMvevPR
	rj+GoEC35KAIbsq9AVuimre1RC6Ag98y6Garglh6LWqHEEFeaGPiwf8XwGaUsv6umtORmb/BKNdDl
	cQjuJinj3gbf9yrJaTyD2TFXpoZgoUuil52nNss2pzIGdqatMD+uh3rBXlri+V/S+7iVxEcTmbRYs
	6eFBwGCE6kOjlDqtC+TG3rnGcCbIESO5yOJQ9Ctyd0iDY520BE00kRooavlalmpz+m7LDe7FEx1x5
	NL64Qfo09ompinYiHWXsEguPDFKJgfZ4opvdKqOasfU2+U3GC81sZ6BrMAonIIMbGEAEtwn2YJSqS
	IpQmKnYwxgMLmHvv7bnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jideP-000139-AU; Tue, 09 Jun 2020 12:46:45 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jide9-0000zm-Fv
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:46:32 +0000
Received: from Q.local (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net
 [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8A22231F;
 Tue,  9 Jun 2020 14:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591706776;
 bh=a7uVQzE49137RdV07bw9OGdl1LVEpyOGkBAVLWh288A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=taZU2srR0rq3tgq0s/XYJ2NbHuZs6zcUWj6cz+aBT1b1hB61FHXbyOHh9JXUzTZ12
 LVQwPXpUuMpxeZ/R4EJSZbNfQblSD22m3FzzTFP0XOvUygWwbDAMGb3vTHEEd6Wxpt
 tF41LyJbmXKQ7v6f5wO7MMyx34q6QqND8H+03DB8=
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 01/17] arch: arm: mach-davinci: Fix trivial spelling
Date: Tue,  9 Jun 2020 13:45:54 +0100
Message-Id: <20200609124610.3445662-2-kieran.bingham+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
References: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_054629_684767_F38A9774 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jiri Kosina <trivial@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 "moderated list:ARM SUB-ARCHITECTURES" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The word 'descriptor' is misspelled throughout the tree.

Fix it up accordingly:
    decriptors -> descriptors

Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
---
 arch/arm/mach-davinci/board-da830-evm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-davinci/board-da830-evm.c b/arch/arm/mach-davinci/board-da830-evm.c
index a273ab25c668..1076886938b6 100644
--- a/arch/arm/mach-davinci/board-da830-evm.c
+++ b/arch/arm/mach-davinci/board-da830-evm.c
@@ -266,7 +266,7 @@ static struct mtd_partition da830_evm_nand_partitions[] = {
 	}
 };
 
-/* flash bbt decriptors */
+/* flash bbt descriptors */
 static uint8_t da830_evm_nand_bbt_pattern[] = { 'B', 'b', 't', '0' };
 static uint8_t da830_evm_nand_mirror_pattern[] = { '1', 't', 'b', 'B' };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
