Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6621085C2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ATmroFJLB6eBcAyPUBnSae60MiDR6VBl7Ibcn8w9vs=; b=u9GjPd/RinivMP
	oyMMh62LJ+xw2e1bMxQbzJVhUXEJZQYpILN2yoQzovMGN43OfbaqVlk9lToYNC417yy7d7UOh3LAY
	kIUuA4rDB61m6K582OLapBtxzOovYZLVg5im3jrh8itPEQT7chWiXa7smgMQr+bURaP136UNUY3wd
	KMkf5oodocgC7Y+Gkfvx29XoFZxXXaa+8Z7zAvi1um7BOTGyXFEtAe6Ix9iOGGSbbx52ax5zOI3NQ
	Ul6SAqb0Gg1LnMMAfWlofFAjb+ao0ct5CGOpSA4uLp3EaQ4VpP2eYdxfgK+jpDuyM7bt77SzSyErS
	ru1P2kK6jBgNPRPgFPqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdGe-0004TV-DQ; Thu, 08 Aug 2019 07:55:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdGP-0004TC-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:55:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so43605022pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 00:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AenDtBrpVG4930TDhGN2DV+HTpyLOWcIzVhLu9zuE4w=;
 b=sd8ghvqFngt6Wd7gYlTDBvi+xzGc5m8Gcv+Q1s68B8x6rx+kNgEaCyXniwyuD/BTlD
 464oe3yobiTKksTwqQnuNIMzWq2o8Os1uztTYyMvMBNpthEq1dJznYaU3GNcclhQAonO
 i6z+pA3yMIh9GXZK/W2ubhcTJQtvaCQ7TXhOwwpxixhU0WiXaPRCYQDtptxZ/FTeongT
 bS655Lmu2EroNzrH7I3qQP+pubvA6mxUAixK6f1tmiF6qd+b3RXhlvB5nMNmh0ju9qMS
 kbuYAqUnx851oU4+T0iQcx3uE+tBC0Qy2q0iup9NZuNmJ1xphwZiUxLVPiY4ABvR1Tkp
 YdOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AenDtBrpVG4930TDhGN2DV+HTpyLOWcIzVhLu9zuE4w=;
 b=sn8cWoC11eA2S36dXO9PRfJ0H53FFAzA5cAJyk+qvL85riiiYKPDtt7uoEqP5mv5MT
 1GiXk1afs6JeHGfhsGf7XbFIjDp48a0FHAceEyfICo8TliDA23kVbLPKV3QuWgOFS1XE
 KfQtI7glvTFkCsj6W3KkFoDrWuVqyoYwhTSakL24x0fJ0etp/K3UpZnHA9iTdI0EOIEi
 oYqSRdMGIGO3TFUdFdHx+eAu39aD4YhPI3AEz+vmUufGuelTC0pUtrXV40LOGEGwIuXu
 kV5E+grCeLWybwEJngtTXKMlGkuBJm2aR1bp0fup6pDiDoQ6vlu1KxF3aFOoK3RnigL3
 F+Hg==
X-Gm-Message-State: APjAAAWTEUG+wdn+KTjhkd8sqg0G+Pa5ET1M/akSKWTpeoUUijlgcC5U
 ex/BhShu4YRrfGLHcIp/qoA=
X-Google-Smtp-Source: APXvYqwwX8sR5i5r5i+v6lD32wo6zEVFVFqLJblNiw7wl0jbxCwGEUiMOVlzTRqeOr0TI/WrD2DBCA==
X-Received: by 2002:a62:e315:: with SMTP id g21mr14409156pfh.225.1565250909269; 
 Thu, 08 Aug 2019 00:55:09 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id v14sm9370402pgi.79.2019.08.08.00.55.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 00:55:08 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: linus.walleij@linaro.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, linux-gpio@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] pinctrl: stm32: stm32: Add of_node_put() before return
Date: Thu,  8 Aug 2019 13:24:56 +0530
Message-Id: <20190808075457.16109-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_005510_046557_5ADA3FFC 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each iteration of for_each_child_of_node and
for_each_available_child_of_node puts the previous node, but in
the case of a return from the middle of the loop, there is no put, thus
causing a memory leak. Hence add an of_node_put before the return in
two places.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/pinctrl/stm32/pinctrl-stm32.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
index b453aed1bbeb..2d5e0435af0a 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
@@ -615,6 +615,7 @@ static int stm32_pctrl_dt_node_to_map(struct pinctrl_dev *pctldev,
 				&reserved_maps, num_maps);
 		if (ret < 0) {
 			pinctrl_utils_free_map(pctldev, *map, *num_maps);
+			of_node_put(np);
 			return ret;
 		}
 	}
@@ -1468,8 +1469,10 @@ int stm32_pctl_probe(struct platform_device *pdev)
 	for_each_available_child_of_node(np, child) {
 		if (of_property_read_bool(child, "gpio-controller")) {
 			ret = stm32_gpiolib_register_bank(pctl, child);
-			if (ret)
+			if (ret) {
+				of_node_put(child);
 				return ret;
+			}
 
 			pctl->nbanks++;
 		}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
