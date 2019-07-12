Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F57669C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p1XPgxf8YeeYDMEBBh1H2XGSxGd0nQqdMY6ao0OB1Yk=; b=Z2xNwvDf5CBPET
	soClvLS3KsrxC7emkMNQUNRzebZRDGb443vYCjZzuOiYrf4N1zs4C2lDmf6r6RlxLKpk2bodGBg26
	SNXjhUpDz53j3O5jrAulwzQdhjzLeAtUpZkatOirEcjhVtwXN1xybJiyfF9jMOBEro9hecneHHSza
	qnibP96DKQ77lDepPK7Ix45Ns4kiKf+XHFu19/gQS9QdMBW6WdvO16eGE+vwFLti9ddQY/oYWtBbo
	F7Z3/2jqTw3Wzidl7qeExnqbiUFAXZvCzMg/+Jdylq25F3eEwQXWTyLi2yfLELlwhJU2HCOrsRJ5C
	l+sfFiThy6gOXF8KVawQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlrdA-0000PD-5s; Fri, 12 Jul 2019 09:14:16 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlrcy-0000Nh-MR
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 09:14:06 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N1fei-1iRkwp00C0-0123fC; Fri, 12 Jul 2019 11:13:59 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Linus Walleij <linus.walleij@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH] dma: ste_dma40: fix unneeded variable warning
Date: Fri, 12 Jul 2019 11:13:30 +0200
Message-Id: <20190712091357.744515-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:IqYlz58Jar5GCfS+BZKg5bdqodHpJJt/MRJG83qdyqbt2wfk7ay
 jgv77Bskqmv+zThYp5kQxBEEFUeJK/7TEWSZWua867UbUso4FFhHQKnxPAM/k8dUhftd1aX
 y7qCx5kTs23ZNbzvo1LLw0T8py9EL/oY97aciP7U+nRyTwDquP+Q3p4UaA05YRQuw1y8Kge
 hBQ0KI5XLuPXrw1icvKAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6sMZM3JYPV8=:jyJYAUc8zscanrU6pozE1G
 AX+FwJn88+Pr8mfWbhlSKByrpoMhzgLZCQYLOWr0kfZzOWog3drPLTiCLB1w80P7ooJSYjYs4
 Q/r+AzrbR6rxiU165D24jzF8eRXYFFa40MctPdcGfVURNTGf1UMWxg5z5AXM4KfegjpbJTY5+
 OPIF6md7cG9OA/ysWXOFLV1PQsndISFclli8Sl967GgvqSp9Znh+94EUaNHeWvEXLKEN0kygR
 CAgixXrKg/apAFlYh7wViBwKEy1Laxfds4HLQH8R52roaRnOqTUV51JUubf26QH78X/NsrtLB
 XNjW1HlYcf41tdHVnDj3QZDycjtEbdVA7qnfVDzi5WQATtIg32WC8WNSCobXgKXKdZrSugMF1
 zzozNu/5LLK83os0EscPV+OYd29crmsV7myk/5kpZ79nONHb5eakWYLhGbmTXkJg2eFfdr9nu
 KRgmTtmChv5BscbncoZF/SZq11klmYDmzaxmNhumLqO03tMj3PVPQlfcbTbh5EVb4+srb24rl
 BKWrKgkoB868mZGy1L7Yc98QnjbkjxQx0GEQjeH+208gc/qogGi/yqNTex07RNhSu1akZL+r2
 0kjgrM0lkGEFH7qj6uo500ZqYWnmX/LDbgSvOPOv6ghorjrW2HgdIzvFjDVFanpRB/993IYe1
 LJZcifHQGymfvYOAKR0IUYyeuoqXMqd5rWrB9EbHJrBLR6Dkf39jFwIVPxynKNbnOnSnpl5z1
 rJG1dNpLPukoJm1tg3QKCmoTAKqZ0a2X5H1/PA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_021405_027916_5CA0A90B 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: dmaengine@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

clang-9 points out that there are two variables that depending on the
configuration may only be used in an ARRAY_SIZE() expression but not
referenced:

drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs[] = {
           ^
drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs_chan[] = {

Mark these __maybe_unused to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/dma/ste_dma40.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 89d710899010..de8bfd9a76e9 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -142,7 +142,7 @@ enum d40_events {
  * when the DMA hw is powered off.
  * TODO: Add save/restore of D40_DREG_GCC on dma40 v3 or later, if that works.
  */
-static u32 d40_backup_regs[] = {
+static __maybe_unused u32 d40_backup_regs[] = {
 	D40_DREG_LCPA,
 	D40_DREG_LCLA,
 	D40_DREG_PRMSE,
@@ -211,7 +211,7 @@ static u32 d40_backup_regs_v4b[] = {
 
 #define BACKUP_REGS_SZ_V4B ARRAY_SIZE(d40_backup_regs_v4b)
 
-static u32 d40_backup_regs_chan[] = {
+static __maybe_unused u32 d40_backup_regs_chan[] = {
 	D40_CHAN_REG_SSCFG,
 	D40_CHAN_REG_SSELT,
 	D40_CHAN_REG_SSPTR,
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
