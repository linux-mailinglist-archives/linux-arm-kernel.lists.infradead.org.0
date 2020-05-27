Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7701E3D80
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zql6eYB3P9ldUo47U6dsMvm6J587K5B6h5+qRmii5Iw=; b=UZVNRE2CYfVHaa
	flJkRcCC/0zsjDqTgSS86Dot8QXxw+WFklf8ZJxZ0zpE65bE+c7KAk9II4fKZdXyZHMJbGyCvgGaf
	l3U04ot3diU+mrUZwYSH4P2pBQoV0zbS0ZqYgYd86J8p+f6qdnCAabmH8/7bNd8E1MZEGwA0dN9kx
	ysXEC8FZyspkHlqokcfsulfpRqRgHydpdy22QWUc6ujbdoQSZuNK6NFbyfUPaIQcgZAnYMZH/0+AS
	xPcbSZc0H/jXqnJTKezW9UZOWHbuvWphogT2A/YVdHkPM2ccnlVhTXSIyoA1qBHdd69f2kgm5eSe9
	iIenF5Bi7ooy7JvtmzZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsIY-0004EZ-Ls; Wed, 27 May 2020 09:24:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsIN-0004Dz-Ik
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:24:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id h4so2346739wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 02:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iK/p1RCXvKF/OvIr3JooWyPvnEDB/sbZcEn98mkIDwE=;
 b=K9sfDNJcKCyRlgVNfYviMiUKOkM1L1ErbyvdGqC349mim10kIuJ7iesKN3kHKaByg/
 9aMV+55ANv6LyrS67uYorbrZ7jMaXwcPPtbOq66POFClQLvDUGeA3ckVrMl1X8Obagqx
 E2oZe/pmR+eoF1mVMwgvRp3DI33gG466+YY4+Qd3Fl5YXJ9zW433Xk0/0UNwi3JxbOpI
 SwVI4dnmpxTuQqJF12eLnupZw2ZTGgpRF6DHpEppgi+dgLsu7l6Nm5Bm+8r0y5glNSl8
 z3cCOiDxTJ+vg4IFq8+dNTQ4VLZSIOW4fExS/0qo3rcOcCpBlh6FS1kkDKAKDbrqPfzb
 xFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iK/p1RCXvKF/OvIr3JooWyPvnEDB/sbZcEn98mkIDwE=;
 b=ANx6IIR4/SUTyUbhambBLcPqv+2r+IK3zULSvGcACQareX66VKLxUdtvoHN35rRAt3
 u5t1iM0fpLT2Lc6vtyACKVejs/syZPphK2bkLwdrb/9R4kc/25GCibX/YSOEeuMe+O8A
 FzCKWVBffmWF+VDuKOlv9JIjKunec1sBUkgguLfOqYytdddRcrbqJJJgNeTwlNY3bB+N
 S3vGXKC15lYjXdNykJMllM6aQj6C1gIN43XnFMFDC46JvZ0r2tseEcnaIw1tCUWKavuZ
 iSci8MJeLxiCq0A4dB+OGPB+rp8rS4ETo7fkmoYpNu6oCAcypuWxaipUxI3hvlyVJ4tX
 SEfQ==
X-Gm-Message-State: AOAM533JDW054ULD3W7cexkx7mTV+0ihO6qp2TEZN0GuLJzsdqI15NWc
 U9+6x66vhoAy8YlWH3Fbzp5f9A==
X-Google-Smtp-Source: ABdhPJyCox//hlsTwOFPPKuQKWeWBXVZn0uc8sk6yk61mpiZuZ7Lb2amN/+W7d8zFEtcVbRbgYS+mw==
X-Received: by 2002:a05:600c:2614:: with SMTP id
 h20mr3540149wma.155.1590571458351; 
 Wed, 27 May 2020 02:24:18 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id o6sm2278500wrp.3.2020.05.27.02.24.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 02:24:17 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] net: ethernet: mtk-star-emac: fix error path in RX handling
Date: Wed, 27 May 2020 11:24:04 +0200
Message-Id: <20200527092404.3567-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_022419_621775_1FAAC78E 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The dma_addr field in desc_data must not be overwritten until after the
new skb is mapped. Currently we do replace it with uninitialized value
in error path. This change fixes it by moving the assignment before the
label to which we jump after mapping or allocation errors.

Fixes: 8c7bd5a454ff ("net: ethernet: mtk-star-emac: new driver")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
index b74349cede28..72bb624a6a68 100644
--- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
+++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
@@ -1308,6 +1308,8 @@ static int mtk_star_receive_packet(struct mtk_star_priv *priv)
 		goto push_new_skb;
 	}
 
+	desc_data.dma_addr = new_dma_addr;
+
 	/* We can't fail anymore at this point: it's safe to unmap the skb. */
 	mtk_star_dma_unmap_rx(priv, &desc_data);
 
@@ -1318,7 +1320,6 @@ static int mtk_star_receive_packet(struct mtk_star_priv *priv)
 	netif_receive_skb(desc_data.skb);
 
 push_new_skb:
-	desc_data.dma_addr = new_dma_addr;
 	desc_data.len = skb_tailroom(new_skb);
 	desc_data.skb = new_skb;
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
