Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D43191DC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zqyMng4S8arwDv+R4Qxt4yJdiLItS2vip0jFw6dssD0=; b=tMZ7e7WlrIhBCN
	Mudvwc9+xeyjsuYrHVaEh8F9nDcHUYS4tsQfdq3TqHoXUqVtwl2oSD8ItdIhGZolHENQ3bAcatvxp
	J1RDY59UWHOH8G1QTKUB4w+AoJW8hmv8xjmnNbNmo7NiZvhfoJ4oySEDlz13L/tPxORCCAmNXhUpA
	ZY7U9ylCt161sNavynKbRwvjmc5IDRgEyMX5GgcK8IiHyeQlmvCrud7U0fsF06PBdPRsdzAkf/WY4
	iWyYOopSG19zd+C9D2bTV7/+Jzx0ouvsuO4cK/BDsTK3Pi/tHTs0CcgDfRG16t19E4ENQ9H+MsPuG
	DK3Phnp5j1kZMEqaB33w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzc4k-0006NA-Kb; Mon, 19 Aug 2019 07:27:34 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzc4T-0006Mc-Vu; Mon, 19 Aug 2019 07:27:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id 129so657825pfa.4;
 Mon, 19 Aug 2019 00:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VQRIe3TChFRyXdxRGe3aSOX8NvTgeh2sO+MrQdRfJfQ=;
 b=X41GCFmjZE+53yWhhAhv+BG9ETVRpdLMB39GhtJePpASGXI66HFO3qalN7vAdwxzKo
 2qIDZUakhTxlNhyUSrZy4vY+ZERhEDtdlalGYfSgVdB0cQYxB4WZZVk85Vm6njBK8AR5
 HkD6qPu9LaZkVeFLX1sJyIEgU4BdywADTfKNfFLvYvIYtuuVLq+MrVj7zegdoO4t3ESX
 7kb5rJ0IiNbeQelLmXzpV31uhBCkkRixcU9zV2E+3bgY8piX9LKc8+bNc2H5ondH86+s
 O588PvL8t7wv4gAd3Z84plQCoW3/WEAAewpHGOFYMRmdmmUh9R239zobJGGU07jYi5Yb
 TwJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VQRIe3TChFRyXdxRGe3aSOX8NvTgeh2sO+MrQdRfJfQ=;
 b=DlQHLgciV88AlAOw8hiBdOlkJ2QonK4QptFYSRWJZyxpB5ZBkT9/PqL6cdPXIDbK/J
 o/ihU8AR8TzLQGrep3VLC4uaDb/hugrKW+DDdPJmUVhzV8yhyDwdTsgcmVM0g3cdhAhs
 fcSLOLcwiH5MHW+c4h+lKAzcDCQ8joOjiaGZTkWlqjXUjTdjtI1UEofjsKtfvlA5sLaA
 dawrbQ8u2pstEyEA7vLddY795p17Wizgy2fprutYNKk0Z6uet2SvMyp6c/5hXMIoz3L1
 ddNFJetksImWajH8XtCCWImeOFfdBN5LhsoAgDQoOoepq8QcEvuiGHndMygLPmZrNHnx
 lZog==
X-Gm-Message-State: APjAAAVsODm1ELoZJ7toaFZYy36g+Tgi6kxEIbct33wSLWW9/FDww1f2
 EUmadVNPTjHxV98fggNlbIBvt2s4
X-Google-Smtp-Source: APXvYqzhl7TSi883y2yAyMZn4MZoHhDOoBmIbs55kK1oFVR+R13YRJoVT+8P0NhIlGTWusuc4QduiA==
X-Received: by 2002:a17:90a:17ab:: with SMTP id
 q40mr19679774pja.106.1566199637529; 
 Mon, 19 Aug 2019 00:27:17 -0700 (PDT)
Received: from localhost.localdomain ([110.225.16.165])
 by smtp.gmail.com with ESMTPSA id p1sm14994814pfn.83.2019.08.19.00.27.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 00:27:17 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: khilman@baylibre.com, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH] soc: amlogic: meson-gx-socinfo: Add of_node_put() before
 return
Date: Mon, 19 Aug 2019 12:57:06 +0530
Message-Id: <20190819072706.31732-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_002718_029708_D1D5ED8E 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The variable np in function meson_gx_socinfo_init takes the return value
of of_find_compatible_node, which gets a node but does not put it. If
this node is not put it may cause a memory leak. Hence put np after its
usefulness has been exhausted.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index bca34954518e..13695a72c695 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -138,8 +138,10 @@ static int __init meson_gx_socinfo_init(void)
 	}
 
 	/* check if chip-id is available */
-	if (!of_property_read_bool(np, "amlogic,has-chip-id"))
+	if (!of_property_read_bool(np, "amlogic,has-chip-id")) {
+		of_node_put(np);
 		return -ENODEV;
+	}
 
 	/* node should be a syscon */
 	regmap = syscon_node_to_regmap(np);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
