Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAAB7224A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:22:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xoWTQC5116rrj0LIeWFK+n0e546OR9Sn1wok6q76fTU=; b=D/N
	gIukyMybA9w8xkkj2jIz1cqdHCnQL/YQCjb5fyCskgnH8GPHshSfMdNZ2vCipZqPvPvkmQOxNnOWj
	SKa245WfiyL9b/a5lumUi44IUZ0oKwor9juhhOLzIXmLCEEaHBchFsSRU1WEpilYekYENMAi5AWy5
	ybDUpXMho/uGiz8Q2vKe0R3OBCE6PTfff2pHTKqMs8q20wLjGz1qUmgJjbkZFC2li8KNyOBR6RfWh
	+wlWba8dDbYe6nOA1eIfYYI1e6TmLtSI9XdqBd/wcXoBYT4vLEJ/QJqqCXL5upVkGlmkNCSXFFqye
	Tm+8JCbZv0OT9qVPPwm5UJB0xdhhFOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3Aj-000196-Vq; Tue, 23 Jul 2019 22:22:14 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq38i-00077Z-2n; Tue, 23 Jul 2019 22:20:09 +0000
Received: by mail-io1-xd42.google.com with SMTP id j5so81112289ioj.8;
 Tue, 23 Jul 2019 15:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pl9nO+hunkGocGh4P+3+7RACb7n3AOCHKdRk3PRyj78=;
 b=jClr9tGO0M2uPdTqgL+wilDjNYPCY1lHULxJyU4k5vGRMTiCplHDR9talFGARjm7fM
 WaQzedbOLIChWY2xd0aavGY1YIl0rc4yFY1QjuAdhFpLnHbnquNpQhnyWdCtpD/yh0wj
 mic0mlosfXm6fh2jHggFADTo3xWjod0o0w9F7sh+It2QAgSNWfwcfcRKhDg4DFqN94+h
 ji0X4ENlzZZuWoW70qUl9zRrs75DGINQ0bLoXjHq010Tx1Ahq71E4+ryf93RiyEK95rp
 YvkGkm2a3vss0Nk42AMTYFrs7VsYkuxBS7APMVVSARpeApcEDLQ/NmTZMcXqTLfb6OxH
 OCfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pl9nO+hunkGocGh4P+3+7RACb7n3AOCHKdRk3PRyj78=;
 b=skWzpJXuWPi01o6kWh6BVdEIQoZfxtrS/yvA1xpnOjbd2oZD3H8n7W8NoRpVJxyXHN
 wHO6oWL1z+9kjBqikBeb3nvYiYWeakUlw4UMKkVKTGenfXsOWaz0bRFxY7ReySkwcf0F
 cUaZ9KGGk2IqQ+1/7ZXVTJj1CLBbluAHB3VRT0G31HCfqOntRM5n7Ux93LPnhd1CeilQ
 lMI1yFm9x6PXWRQ5TUw9uPgWZ76SC/vt41g4ZWSk7BSydix58QCoIswZMWiHY/FRA4Is
 Aqbimy/RUPzNFx8wxwVITqNjmFf/sJzoupJowTTK5F8fB396s8rnl10SwsK3xAqncafm
 fjmA==
X-Gm-Message-State: APjAAAXN/e83SV9Tnzn0vTDbQ6ipy6IUQ7De9ivxEoc1Hy5bnO3CyDD5
 faF9M1hlL7r2atCow8D5pKw=
X-Google-Smtp-Source: APXvYqzWffs9myy9EKo6r23AJN8vEydCexjw2y+Jif/lnPMEBM5O8yaoI59b8eVQgRLAxQMFdQQJNQ==
X-Received: by 2002:a5e:c241:: with SMTP id w1mr68853307iop.58.1563920405893; 
 Tue, 23 Jul 2019 15:20:05 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id x22sm33378952iob.84.2019.07.23.15.20.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 15:20:05 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] mt76_init_sband_2g: null check the allocation
Date: Tue, 23 Jul 2019 17:19:54 -0500
Message-Id: <20190723221954.9233-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_152008_160553_F1FC5716 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: secalert@redhat.com, Jakub Kicinski <kubakici@wp.pl>,
 linux-wireless@vger.kernel.org, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 emamd001@umn.edu, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, smccaman@umn.edu,
 Matthias Brugger <matthias.bgg@gmail.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_kzalloc may fail and return NULL. So the null check is needed.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/net/wireless/mediatek/mt7601u/init.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt7601u/init.c b/drivers/net/wireless/mediatek/mt7601u/init.c
index 9bfac9f1d47f..cada48800928 100644
--- a/drivers/net/wireless/mediatek/mt7601u/init.c
+++ b/drivers/net/wireless/mediatek/mt7601u/init.c
@@ -557,6 +557,9 @@ mt76_init_sband_2g(struct mt7601u_dev *dev)
 {
 	dev->sband_2g = devm_kzalloc(dev->dev, sizeof(*dev->sband_2g),
 				     GFP_KERNEL);
+	if (!dev->sband_2g)
+		return -ENOMEM;
+
 	dev->hw->wiphy->bands[NL80211_BAND_2GHZ] = dev->sband_2g;
 
 	WARN_ON(dev->ee->reg.start - 1 + dev->ee->reg.num >
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
