Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E196D1A4CD8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 02:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yk0QTBfhaS3XProKy9a2fkq6XMwx0Qz27PNXCcLjGg0=; b=EhqzX6GSnJCkmb
	AuhMG8p4uZ14Mr8CqvSFt9qHz4VlbpvHBxMe846WgFypMJt9iMrSNbe0Qr8JWWSNnEkLvD0MQGDIB
	7ieRlulFmW40GwruAneI/lxv/0Bp5ttE6v8zuGd1nzH2i4cfdenpwXhGe0x/ySjfUlovhvJA/Mftc
	/DXy77ex7Y031/J3gYkOOp1zR03JCe4BjEQmEuNLaPPv94gt3MtXR2i9ysfEvzpd6oWS0LOFMyKWS
	6tm/U9J1ekElCrmHRE4BCE8N9oWBlpIjCoyO3dc/0nareHcnGjnEl7+g1QLdxPK2qDhdDrkGEJMlx
	8m+aliUkydCwKY5a03eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN3sx-00036Z-17; Sat, 11 Apr 2020 00:20:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN3sY-0002QF-81; Sat, 11 Apr 2020 00:20:11 +0000
Received: by mail-wr1-x441.google.com with SMTP id s8so4057444wrt.7;
 Fri, 10 Apr 2020 17:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=agKMMUEnxz6VY0lkHl06TnhHs+ST6griE6g5IoxABZ4=;
 b=WkejCNHLvfgBnKU7wOp7VoMf0V8w5oKiBuxl4TSpcyytvmQK+bK5BNCA+grUsP0dol
 ltA8Uy5e7T4Q6u2wyQ198noHzKzIOKFmW9xkHvik3RppQC3+L6aW5h4qhvFtvrs/gWHz
 rIQHYyNl7aNzZS+KLFQAuLvT+bLmvYrBYa6ha7LPRA6qTpiIF1X/twDJI2qGFbl+U0cR
 J78dHZfLU6oedEGbJ7MpGZzTGmSpbkSeeyKhwSaQie6xYg47wJw2h0S/uKEDVG3GVFyM
 AudpQfbmcExiS/TnHDdlfB4CZ3PpvNMVooDDdrbVcJ/OJbCxpFBKLFrduYa9VHXktRL9
 iHgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=agKMMUEnxz6VY0lkHl06TnhHs+ST6griE6g5IoxABZ4=;
 b=iyLEdDNJIBz0PlaSMauw/MlN8lKvfKhzzJZbYv2vjZ0BKDjzSq6zJIG9ztIhQlZmb2
 bEADS1PNDQg7tSiuqiZ1u1czy9OIPHgLs/YD1y1fQqx1E9cJLY6sJavG+FRMX4Rl5syK
 Mx1XE8VzNjFHhWjYXqjZdTd4H+nlanLox/EGqlhjDw+wI7mC25FJEKe4U0O7AlyDCBr9
 TuOXIWcwhWGSf0JIcmmFEObytY7fG0Viq8et1wKHwg0g9xwmxl06fyQ3A1idUPtooDCA
 kgA8n37W3Q05QURj+mVNZcObtRiIHfGA1eThOkfqn5iz+2ZuH6tFdQSgm08m3vawqNJb
 n34g==
X-Gm-Message-State: AGi0PuZEB/RP/bdvIJWLnrrSUXAMZW7O7KekjuT6PS6H4xqTv9M/w081
 s4VlpXZqhEiJlswG+e1D7g==
X-Google-Smtp-Source: APiQypKtUhTN6JrNR0HHq9eQB8JauCAxv3amDtUoNn0cEwEHclvopkR8/cBSPWuPpv4WmZeuWo4IlQ==
X-Received: by 2002:a5d:4a11:: with SMTP id m17mr6816815wrq.125.1586564408662; 
 Fri, 10 Apr 2020 17:20:08 -0700 (PDT)
Received: from ninjahost.lan (host-2-102-14-153.as13285.net. [2.102.14.153])
 by smtp.gmail.com with ESMTPSA id b191sm5091594wmd.39.2020.04.10.17.20.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 17:20:08 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/9]  mt76: remove unnecessary annotations
Date: Sat, 11 Apr 2020 01:19:26 +0100
Message-Id: <20200411001933.10072-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200411001933.10072-1-jbi.octave@gmail.com>
References: <0/9>
 <20200411001933.10072-1-jbi.octave@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_172010_302864_B099556C 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbi.octave[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, boqun.feng@gmail.com,
 "open list:MEDIATEK MT76 WIRELESS LAN DRIVER" <linux-wireless@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sparse report warnings at mt76_tx_status_unlock() and mt76_tx_status_lock()

warning: context imbalance in mt76_tx_status_lock() - wrong count at exit
warning: context imbalance in mt76_tx_status_unlock() - unexpected unlock

The root cause is the additional __acquire(&dev->status_list.lock)
and __release(&dev->status_list.unlock) called
 from inside mt76_tx_status_lock() and mt76_tx_status_unlock().

Remove __acquire(&dev->status_list.lock) annotation
Remove __releases(&dev->status_list.unlock)
Correct &dev->status_list.unlock to &dev->status_list.lock
	-unlock not defined in the sk_buff_head struct

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/net/wireless/mediatek/mt76/tx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/tx.c b/drivers/net/wireless/mediatek/mt76/tx.c
index 7ee91d946882..7581ba9c2e95 100644
--- a/drivers/net/wireless/mediatek/mt76/tx.c
+++ b/drivers/net/wireless/mediatek/mt76/tx.c
@@ -101,18 +101,16 @@ mt76_tx_status_lock(struct mt76_dev *dev, struct sk_buff_head *list)
 {
 	__skb_queue_head_init(list);
 	spin_lock_bh(&dev->status_list.lock);
-	__acquire(&dev->status_list.lock);
 }
 EXPORT_SYMBOL_GPL(mt76_tx_status_lock);
 
 void
 mt76_tx_status_unlock(struct mt76_dev *dev, struct sk_buff_head *list)
-		      __releases(&dev->status_list.unlock)
+		      __releases(&dev->status_list.lock)
 {
 	struct sk_buff *skb;
 
 	spin_unlock_bh(&dev->status_list.lock);
-	__release(&dev->status_list.unlock);
 
 	while ((skb = __skb_dequeue(list)) != NULL)
 		ieee80211_tx_status(dev->hw, skb);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
