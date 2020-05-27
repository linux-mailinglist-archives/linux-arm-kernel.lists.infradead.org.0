Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B93E1E43E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cnmn++p8Jaf3vDjo118bPHbmMCZzTAIVn9WJX3pIB5w=; b=U/7wYDYc5e6Ec3
	cO16Ji+J83Ao4H31WR6QgoBSQV8LdEuYH7GwKCFSW55ZOipFQSwWVRrRdmg+tNtuJ+UoYj1BXALIj
	YshBLEEMS3qwyi9ADEho7DlM68/wreLGJfs6+ZzHv2lwNDR0feDXuMfNiO4L2h9AezblQhMmunQNs
	gN3EoM5ix7y6X1xJz//Hx5FYnnAkZ2W1QssjjmOUTquJNoxMTKFVGJZGlc/f2+KyxGeEGZMwX7l2m
	2Ms1oowJOWlP+FnmVnuujdLRIeHgiAkRGPx8vf84Aagux5bguVP6LH3CYzYSf5QrW3FAVeWh2peCD
	VGw8PD5s+y+q3svHuaUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwFa-00019T-FA; Wed, 27 May 2020 13:37:42 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwFI-000183-RL; Wed, 27 May 2020 13:37:26 +0000
Received: from localhost.localdomain ([149.172.98.151]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MelWf-1j437k3y2n-00aqFI; Wed, 27 May 2020 15:36:58 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH] [wireless-next] mt75: fix enum type mismatch
Date: Wed, 27 May 2020 15:36:30 +0200
Message-Id: <20200527133655.617357-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:2xsdauHeCgoTJqtAjoy1w439KhbI5AyVOuAxW1IHW47YA4Gorsi
 Uh4YCVjbYsbddzHdqSL/9Nyka228g3hOyRaepN6TWoIe5HUzp67ihrRMluLbPYi2hFTnxyw
 1JRB8qLO9BliOGYOZdkWVaHW2CucwMbhaxuLQUo9QhEp3DP9AIG3a/U+jSsmX/6lg/tAn8j
 7jHNArva+RLoRfuAuh3Cw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FtVcgZauz7o=:scUFGVl1oIETlCqq2XG30+
 BY+OSB/p/C2PHbQV8moxHzruH1uP9Hs2Cmkfuzt1pzAyXtW82VPL+i6XhfkL4Kzn7fV4xIawJ
 A2HAq5Il64nn45Q6XqxowsRnC3JKSDVcU6+/hxjOI0t5GljWTrL92TJl527WU8NnDHJS4Tsmr
 KsgZU4nD98sSiKPVkTHHG6nMcDBR3BIOtqB5sWIH6/bz3j+ogz/P1rSXjrKE0QGmIvpjlYWua
 3SS7ZaIIfPGwxYYgrFIJ+K+IdIdOXXvEY8bX+OteZNxdWkg2RjR6bBm/P/yo4S8qC8nEl6Bow
 YJpUhM/w7lN9lF3hGTidifdzL9moxS+mjIcV6NaE77kl9pTr1m1pdb19VurLWicwiNgTE2fgG
 6wGAv4DAXmgkb6c6AwimTkBPyjXRsaK2gl5t/gWIv5dz++WZzoYVa+r+a2J4ZpwrK6K6pH5EU
 Z5Dy7USzvBQWE/JgGDaFqcG+Zk8lbixikSTtHW+LPnfyiDbiKHjlimzlMGpd4+NVXmrgc8uJd
 YgMB9mM3nsWcahk0NbkhXZsVMe14iaKWstbUlaF/zFJ1TnQC3bPfKIooWLd7eSJkNYMY6dJ41
 zAneqRyKhsqVGB16LHOiS9GXVxbBwaemmq2+f9F08NizeJDLOrW4MAY0hLNAQ5WzoMC9RUliB
 vSvJiyC5p01107GyNrmS7vC+Nfi31gg21wIlE8ej7ZltRD0sM09YzWVBnr5fkky8ZBGd4pQfE
 YxO/L8TcnJlj9bmltBSZuOTgEL8rM/nVk034s2QC/YfSrq20qSaPTCrGtTgxQncP9Ds0LSwdn
 lOjGQJNACJeHLPwBGXaDbUg2u7n3XaDiXVfLbhmQB6Wp7qadf4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_063725_175336_8F94A1D2 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
Cc: Shihwei Lin <shihwei.lin@mediatek.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, YueHaibing <yuehaibing@huawei.com>,
 YF Luo <yf.luo@mediatek.com>, Chih-Min Chen <chih-min.chen@mediatek.com>,
 linux-kernel@vger.kernel.org, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-wireless@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The __mt7915_mcu_msg_send() calls a generic function that expects a mt76_txq_id
rather than mt7915_txq_id, and it also uses the values according to that
type, which are different from the similarly named MT7915_TXQ_ constants:

drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:232:9: error: implicit conversion from enumeration type 'enum mt76_txq_id' to different enumeration type 'enum mt7915_txq_id' [-Werror,-Wenum-conversion]
                txq = MT_TXQ_FWDL;
                    ~ ^~~~~~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:287:36: error: implicit conversion from enumeration type 'enum mt7915_txq_id' to different enumeration type 'enum mt76_txq_id' [-Werror,-Wenum-conversion]
        return mt76_tx_queue_skb_raw(dev, txq, skb, 0);
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~
drivers/net/wireless/mediatek/mt76/mt7915/../mt76.h:668:97: note: expanded from macro 'mt76_tx_queue_skb_raw'

Use the mt76 types consistently.

Fixes: e57b7901469f ("mt76: add mac80211 driver for MT7915 PCIe-based chipsets")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/mediatek/mt76/mt7915/mcu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
index 99eeea42478f..001b3078c48e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -220,7 +220,7 @@ static int __mt7915_mcu_msg_send(struct mt7915_dev *dev, struct sk_buff *skb,
 {
 	struct mt7915_mcu_txd *mcu_txd;
 	u8 seq, pkt_fmt, qidx;
-	enum mt7915_txq_id txq;
+	enum mt76_txq_id txq;
 	__le32 *txd;
 	u32 val;
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
