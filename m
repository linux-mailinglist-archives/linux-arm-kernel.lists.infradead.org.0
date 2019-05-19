Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D3D225BA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 05:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9bYApKy6LIIdxE2+fAfzTVlLgX5d8bJIB5dfu8TELGQ=; b=QvX
	cZqTo/PPLyKb1NecE7u8ovUvO/M9+Qzaw8jjibwsaIneoU93AaD5a+4sLFicTp7py3gbZimWpijvc
	jn4SgIUTfzJgjq+IlMSG42Yb2Blkh8R4nWlJwJAnSc9GWe8K6P//mfqhwJAy3XazHKPCEIR8/HfUE
	AG3MZ2+u52y5lYJwBYp6Gztd88igghM9RPmr8rPlS0N2PhRffo6JyOvEZ86tdIKzJqZQvQYzzyv4a
	G9ga/lKhsZ/gmmJEfFKYmf77j5n4qdEPLUtuPLCJlnuFGkRy2z8DhyKmnB4JtosWNIQTduUoSoL4a
	/uhVjGMWqZcfPTcLoEpdN0buu6KiB1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSCCg-0000ZZ-MO; Sun, 19 May 2019 03:09:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSCCa-0000Z5-I0; Sun, 19 May 2019 03:09:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id q17so5528592pfq.8;
 Sat, 18 May 2019 20:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WzJCr5Mqo7KDli7/APapwgRQAN+3Dg6ZabacVkfKewY=;
 b=bDPww6T9HxL4G0YBVqH8QA8CxtSPz0B8H38YvWR1qMuAfAhv4ImEaMvavxWgzBbY1S
 Ui44qaJO1e7sKwZqpav6+PoKS0jvRoCz9DpNUi5xytn1plf4WNQLdnOT1TDrSmIXZp8d
 7oMmJdHlmSP6IYMH1mxvfdm2/zWKht5zkFz13Y793V+GqLq3HlJP84FizNUIccz/qyV5
 DbW7830t96KocxtQu56drxYLzDznc1tgK4OCQoewDb4X0otT3bIhuWQpt9x5Si07IzQM
 1/XKlnL5gWsRnOy/gtTyPK0NXhSluLir8CnznHsvMMFnskMVDYOUoVB1EExDZ+qmlIgb
 jVuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WzJCr5Mqo7KDli7/APapwgRQAN+3Dg6ZabacVkfKewY=;
 b=eUT0KelEV7e12RC2p7vWF9vHlz8Jxv+e0d1QrwrWwOaIKqt+LR6Tu2gLyyWs8CswiV
 BHr6C9EvymxYFRmQ49K1bBvRa4Xb8VVw1TPSEk41u9grQ/e06i1WxlBMbsXVTeRFO1fk
 5CNfltDmmALLe4UbI3WDixtrySWoKx+9ObquWzwL6Efga3f+wsG/BqyoeAQvZOa91d4C
 JcF8yKtO7rQPUwotgMdqyOzUBHwWBks8F0FCUlow9Li9Ky2nwfKPckPXNAgcjtWeSIyb
 QWuvX9AEzqX134PtTSt+9m5nEHzGWKKkcrf32oYpgOfyzJ9V97GJxsFUaem4l2P+zABL
 nnTA==
X-Gm-Message-State: APjAAAVO1vtc1mc+1ADzd1s01/cft41/4MEkIKSnYqDFg6jM7wAxzwNW
 Z7hdEJESBhL889wKI066bNs=
X-Google-Smtp-Source: APXvYqzUDhR+agkX0dI26XmwhEq48+gxrghmc6If8Xc5OS7eLq2qfmYj8EnWhg/A70HjcFg2S8X8Iw==
X-Received: by 2002:aa7:90ca:: with SMTP id k10mr72091047pfk.20.1558235368251; 
 Sat, 18 May 2019 20:09:28 -0700 (PDT)
Received: from localhost ([43.224.245.181])
 by smtp.gmail.com with ESMTPSA id n127sm13217809pga.57.2019.05.18.20.09.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 20:09:27 -0700 (PDT)
From: Weitao Hou <houweitaoo@gmail.com>
To: nbd@nbd.name, lorenzo.bianconi83@gmail.com, ryder.lee@mediatek.com,
 royluo@google.com, kvalo@codeaurora.org, davem@davemloft.net,
 matthias.bgg@gmail.com
Subject: [PATCH] net: fix typos in code comments
Date: Sun, 19 May 2019 11:09:23 +0800
Message-Id: <20190519030923.18343-1-houweitaoo@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_200932_621008_B73D3FC6 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (houweitaoo[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Weitao Hou <houweitaoo@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fix lenght to length

Signed-off-by: Weitao Hou <houweitaoo@gmail.com>
---
 drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c b/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c
index 6b89f7eab26c..e0f5e6202a27 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c
+++ b/drivers/net/wireless/mediatek/mt76/mt76x02_usb_core.c
@@ -53,7 +53,7 @@ int mt76x02u_skb_dma_info(struct sk_buff *skb, int port, u32 flags)
 	pad = round_up(skb->len, 4) + 4 - skb->len;
 
 	/* First packet of a A-MSDU burst keeps track of the whole burst
-	 * length, need to update lenght of it and the last packet.
+	 * length, need to update length of it and the last packet.
 	 */
 	skb_walk_frags(skb, iter) {
 		last = iter;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
