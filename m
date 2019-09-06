Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB93CAB801
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 14:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d4na+kp/M+H1C+qNZ2fcYpAzLvdkX3r3qTfd2USaelc=; b=GEOQoLpWMo9jCX
	AK1DqTxSjMGlCElgnuUg+n6uy9gIAOICiqI/BNLvgc4mmHRQi0cd+ekmpINPwGaulgTQBv0sBiXGp
	T4dMkzrE9HKhXq800noTgvNIgQY3eoQP6OGUbGI1A6CMsgWQmDeNYIe9kONWB9mwmZ3vvPMCDB0jF
	0/Y3Ud38RZqrZvPbR8yAaF4uoMdc2EkmajKNNCkW99zXNviSAdjByKGOfjmbIoV0d9DmzPsSaKEAA
	YFPI1Jv0HEKzSBJyAc55QInWGE5JrRPTqXAeh52teff9qL35G6hN8FXCwdM7aWpmlOtR6AIWARS0n
	PcIWQwv88F9s8DJLzcQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6DDM-0004Wa-1T; Fri, 06 Sep 2019 12:19:44 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6DDF-0004Vn-4Q; Fri, 06 Sep 2019 12:19:38 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i6DD4-0002Bw-N2; Fri, 06 Sep 2019 12:19:26 +0000
From: Colin King <colin.king@canonical.com>
To: Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Roy Luo <royluo@google.com>,
 Kalle Valo <kvalo@codeaurora.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH] mt76: mt76x0e: make array mt76x0_chan_map static const,
 makes object smaller
Date: Fri,  6 Sep 2019 13:19:26 +0100
Message-Id: <20190906121926.24080-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_051937_317304_2F74B060 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Don't populate the array mt76x0_chan_map on the stack but instead make it
static const. Makes the object code smaller by 80 bytes.

Before:
   text	   data	    bss	    dec	    hex	filename
   7685	   1192	      0	   8877	   22ad	mediatek/mt76/mt76x0/eeprom.o

After:
   text	   data	    bss	    dec	    hex	filename
   7541	   1256	      0	   8797	   225d	mediatek/mt76/mt76x0/eeprom.o

(gcc version 9.2.1, amd64)

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c
index 9d4426f6905f..96368fac4228 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c
+++ b/drivers/net/wireless/mediatek/mt76/mt76x0/eeprom.c
@@ -212,7 +212,7 @@ void mt76x0_get_tx_power_per_rate(struct mt76x02_dev *dev,
 void mt76x0_get_power_info(struct mt76x02_dev *dev,
 			   struct ieee80211_channel *chan, s8 *tp)
 {
-	struct mt76x0_chan_map {
+	static const struct mt76x0_chan_map {
 		u8 chan;
 		u8 offset;
 	} chan_map[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
