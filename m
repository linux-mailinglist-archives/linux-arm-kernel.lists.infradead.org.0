Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE97C133C48
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PkRiYdmfvFVt4YqMcc/H1qzc8c+Zt9HjVq/oN/CuCDE=; b=p7f8APPmhQOvlWH2oSJ47HAhLw
	OuY9Ax3g1c2LV5yTQ5ulIqpc64TEnlEGjHk3ffb5TRyf8JXtCYagW0ESXcXoKnWKQDoxMj/SktMeO
	I9AdCGNNLYVGpH/7giq+faBUfE6K9K/WB1QJ8zq9bxxAx+Mfcr03q9Lz6FK8Rlwzjb9c6DQoG4n5T
	SUYvb+u3EqAr5pL3F/HQ+fdaluXpnDcMY5fmAg2q18fsfB4lxeXbh4MFuGOncZMUK3gKXZOkqSEYR
	1oFuvczs48SeKCC3JLfbmFU7FULkNjAa8EoD+UBcbH2NFU8F1KPQvEoWgvIZdS3OdPDOYukl6q+qv
	9/HDYHAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip5kC-0004xs-1H; Wed, 08 Jan 2020 07:27:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip5jn-0004pH-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:26:45 +0000
Received: by mail-pl1-x644.google.com with SMTP id bd4so752107plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 23:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7VftiggN6dkZ3Wld3EMtRQ7oFxfSHkKpxj6onZ/SbJc=;
 b=Glfycd+SSp+dBJBi3Ypl6EParnW4iGMSf+JYdW6Pd3J68JqoN/r8bol0HWwKdYSZ15
 zc74LTakqvZhLaMNTzaGrk4zGl+4xLp1Qbo+Aca8Yz9MYe0qqOYqb3ZC/1GsUIt/id0e
 uY9yR8PG2CcCbVXnpVfKqQ0kd6CTtdZ485/ggaCNAIGfJDI5yo6Rnr2mdRsfHb9TGi6+
 LbcR9mwVMnpWIiu8rX3oPPdUxIwe3Htdn4XXDrMYQEbZMB+O2cyDOlT4WZBk3eXVaSHY
 RdgxoHjAveUdhnyjGWm78KpGL2OyLi/zIcEyhCrDvy/SgGpdF+kYdM6OI/5jPh7Q5aD3
 YT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7VftiggN6dkZ3Wld3EMtRQ7oFxfSHkKpxj6onZ/SbJc=;
 b=Q/3PCJwtsi4BVGbV7RDSrAODxyIao2yCfVKQYO0ZBGDTm4/f9lAzA2TWIc6ccmAtmO
 1L+riPaxMLUvhm+7Qb6qef9BRFnBLRfZUHFkSaMajVCQXnzZ3kyPOieqjqom69NfoIkP
 3d1OquX8NNCYrZsHuv/w3HiJEriflV1rGfA5zzUUuQx/T/0K7W1LSZnnbNtVzsJ40XLU
 J8b4sxWaq7WdxLyaEtdPD1pN57gdc+Kyz6ereSIkDjPjomc36M9TotRgmwyeSX4Rorko
 tROTWIr0DPEiZfuUi5nOixC2jl6IR35dvJ2vIDBUEJBwfyM4XnV+ZW0SxGBPAa7Y1eST
 Ciig==
X-Gm-Message-State: APjAAAXH65OAkKeuoIx6fm+hwY+y9bkhOYLUiFxyPXDj4NVSt6jt6pc/
 Art2jx798f8IOCQpUWbgLacLMpY0
X-Google-Smtp-Source: APXvYqxbFTnUZ6d8VqD/d4wmwctKRYDWxkXacHotBt/0Gx6M6rHuYA5t3zbUJvR7A0x/TKP1/atRdg==
X-Received: by 2002:a17:90a:c706:: with SMTP id
 o6mr2758419pjt.82.1578468403228; 
 Tue, 07 Jan 2020 23:26:43 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id n4sm2149624pgg.88.2020.01.07.23.26.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 23:26:42 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com,
 martin.blumenstingl@googlemail.com, treding@nvidia.com, andrew@lunn.ch,
 weifeng.voon@intel.com, tglx@linutronix.de
Subject: [PATCH v2 2/2] net: stmmac: remove the useless member phy_mask
Date: Wed,  8 Jan 2020 15:25:50 +0800
Message-Id: <20200108072550.28613-3-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108072550.28613-1-zhengdejin5@gmail.com>
References: <20200108072550.28613-1-zhengdejin5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_232643_967004_CA743B23 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhengdejin5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhengdejin5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The value of phy_mask in struct stmmac_mdio_bus_data will be passed
to phy_mask of struct mii_bus before register mdiobus, the mii_bus
was obtained by mdiobus_alloc() and set mii_bus->phy_mask as zero
by default. the stmmac_mdio_bus_data->phy_mask also set zero when
got stmmac_mdio_bus_data by devm_kzalloc(), so doesn't need to pass
the value and remove the useless member phy_mask in the struct
stmmac_mdio_bus_data.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---

Changes since v1:
    add this new commit.

 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 1 -
 include/linux/stmmac.h                            | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index cfe5d8b73142..662b1cde51ae 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -388,7 +388,6 @@ int stmmac_mdio_register(struct net_device *ndev)
 	snprintf(new_bus->id, MII_BUS_ID_SIZE, "%s-%x",
 		 new_bus->name, priv->plat->bus_id);
 	new_bus->priv = ndev;
-	new_bus->phy_mask = mdio_bus_data->phy_mask;
 	new_bus->parent = priv->device;
 
 	err = of_mdiobus_register(new_bus, mdio_node);
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index d4bcd9387136..e9aaa9bfb304 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -79,7 +79,6 @@
 /* Platfrom data for platform device structure's platform_data field */
 
 struct stmmac_mdio_bus_data {
-	unsigned int phy_mask;
 	int *irqs;
 	int probed_phy_irq;
 	bool needs_reset;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
