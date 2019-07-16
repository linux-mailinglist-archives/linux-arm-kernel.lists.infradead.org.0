Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6176A1F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 07:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AdzPt8O4Y7EoQb887+N2VC5ierOMiUqjQiuF0Gvwqvs=; b=R5JYe+HkthBOg8
	FezSqxnP1Sen899b38l4yWUPtUDpKf59e9lnF1iXHmcb0SWUPblspOK+YGlgK+JhpQs6c4NBldleX
	+89kBfx1Wl/m1S1WclW2Kb0kfhRd64vZ8tI3mrtUcyvgC5ehFl/L9jiO9npE824ISEcWhoouSirRx
	mxvJ3mpmkbxOww17v4saLgJe2B2YNSkKQbIm1+KqBDTmNa2lOMpVWhhN+RkUo/rKaGXMYXcpNKxrx
	eVs2b2TAgH/hGc8CAhxb3TELi8KaRMK/0vNzROXiXJeVNWpFSvGgaDkPplmkAB4oTiZTnkE4863oy
	YjwZS09IbSnAGD7OP+rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnGQy-0008Ud-Tn; Tue, 16 Jul 2019 05:55:28 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnGQn-0008UI-Kq; Tue, 16 Jul 2019 05:55:18 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so2551004pld.10;
 Mon, 15 Jul 2019 22:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RlCA90112tAvbzPxVBehLoEGm+dZ8qWusJBsaqezzKQ=;
 b=HJ0GlqX9vNn5vyxctp74cdCbjz9LEVbhrk+p9eA0p2nK9nPpRuTOort7hvWFlkEQZ1
 Ew7LwFerYdTHFIFvbadzxE6pOIveTNOWTcYInHyxxXbvcpvZ+2gR5FAOkqn4Kf2IfJwR
 A2rfO5rcuggbU94Cq/khoqv2jp11FtO2+ROyczZyLA4fvbTVcLGXXhndCw3Tgq6Qyedm
 wUIVNdsj8uHgxz7DWBwTvuLe4aJDGIHsPyrjAnwx3B/miZ7wNRAbBvaewiKh54ni9JDn
 F39jfn5yoQS1rt86M8KDzvEJ863o1kDCYTSC464UQbv7k0eZ0FQhs3Z57S0k1bRSLSiO
 RRpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RlCA90112tAvbzPxVBehLoEGm+dZ8qWusJBsaqezzKQ=;
 b=OeTPA2m45irxHVztiii6loOKa5qAPY4nhEmLEKRsweb3IALtlqrEpGGktL45QpDXSe
 h99/2BdF0w8AKqDy92I3Owi+2GGAJwrlXDTGnZYN6imPH+EKmNK+rbh8nLqT+EIevbgh
 wgxqwoekX/uaIVMYWycMlSGoeFlndG0IWXNo8HvPJdoXhV3DZ8T8Rega+tRaNKn/qK6i
 XDXW8sY/FGU+SnMyx4YM3q6zKuYFEkW9D2HtB/J7dgqFyuKFKnMxx0Zm8XzzAf13JPUn
 gNXcyeLIrO9Mfm4Dv+nC1bdqoDxLdrQFumgk+KuNmT+KQfM2xEcl5+8hz/31ujvQnVWp
 6XYA==
X-Gm-Message-State: APjAAAUzqRPyIvkQnYRDcbrFfQcDsUZm5lJrMSGoxBeFC80m85MKOcvG
 +HtDX7qTxGgiQ7Ipc/IS/YQ=
X-Google-Smtp-Source: APXvYqxIcfcb9KUVUeGLcIrM9l2ZeilXyPBlIyHa8kHAGZnRTQBO3fAUfhL61rCxNjOQG/fTtECgpw==
X-Received: by 2002:a17:902:b186:: with SMTP id
 s6mr32909467plr.343.1563256517040; 
 Mon, 15 Jul 2019 22:55:17 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id d8sm14787330pgh.45.2019.07.15.22.55.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 22:55:16 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: nbd@openwrt.org, john@phrozen.org, sean.wang@mediatek.com,
 davem@davemloft.net, netdev@vger.kernel.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] net: ethernet: mediatek: mtk_eth_soc: Add of_node_put()
 before goto
Date: Tue, 16 Jul 2019 11:25:04 +0530
Message-Id: <20190716055504.3113-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_225517_709951_101227DA 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node puts the previous node, but in
the case of a goto from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the goto.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index b20b3a5a1ebb..c39d7f4ab1d4 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -2548,8 +2548,10 @@ static int mtk_probe(struct platform_device *pdev)
 			continue;
 
 		err = mtk_add_mac(eth, mac_np);
-		if (err)
+		if (err) {
+			of_node_put(mac_np);
 			goto err_deinit_hw;
+		}
 	}
 
 	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SHARED_INT)) {
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
