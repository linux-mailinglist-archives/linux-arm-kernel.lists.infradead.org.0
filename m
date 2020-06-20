Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0359D20262C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 21:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MIDhcIL3GKF1Ol9PNUhyB89E+Dwbz/SFVRykhGy+6c=; b=lb8aGE25J6F/IC
	o9E1fwvG5e+tCwS4uJJrDW91Ja2RHOcjkqKpQDB2PUdbneTbRO77A9WjArk/lY7mjlaWZyLVDNrjB
	7uFo0jDe3xICmuJG321zko9HlkeIeogejHk0vKo3/d7bKcm7cr2dJudTe+9d8MvE8NMV89JIJ+6xk
	NrAMFOVlzm36H8UGoLMQvjQjc7r6zcM3tR9wdh8908i44I33pI7YOlvayKUPK0VGw+6nnLszH1JLV
	uxRVYCt9Uu3dQyyKDZTd22PRrSzWORqEjShbMg9IFZeLJuinchLvFkccywflYaiyAJu1ss4ytlkNB
	wOo0ly1oDXw21oL/dySg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmj9k-0002hs-Jt; Sat, 20 Jun 2020 19:28:00 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmj8r-00029e-Hc; Sat, 20 Jun 2020 19:27:06 +0000
Received: by mail-ed1-x544.google.com with SMTP id g1so10457888edv.6;
 Sat, 20 Jun 2020 12:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=scA6CqquoWk914rmLn3+nLtaspjuXK54NYNT8t78XLk=;
 b=qbC+poHvs39ZVCGTzMyJeIJUpytQ6pFd5qeGE3oFWIyiMKZEs3zbCIIiubSaxryjqV
 fHZRmmlzPFxZAmT4fjc315VsprFu9yXwFVTZN0vi4+ogvLhR+DUhLmUmDWlARfH4lqP0
 r6IiIGw2ywL+HM32SWPgf681lb9qGq8eGvDXWEeP7vGDUbWHKB4A3orCW0P0W8Y6nkSZ
 OgbgK/AvNr8N2kaXrsvn/ZibEN+NvJI3DnlZF4FJWQZOu5Cuhzmm1vvW9LZurAgweB8C
 cz7vBuOmkMsfWs5srbSEo67PGDoGURRN6jPG9y+GnpFnomPdS9ocuZVCOabSLdFbm0uZ
 2lHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=scA6CqquoWk914rmLn3+nLtaspjuXK54NYNT8t78XLk=;
 b=HzLq4R3cQBVWEJ60N8fnnDQu0JHSFQZRoPeQ4McstGdbCumPi6nGSv/rNbUsUWFA7Y
 8HJeLmY7GPukJhClo976UaLPwt9JC0IaALK1b3dewWqxh3g+9mzZ/4W106u44W2wtgYI
 vOsOqi7kEoSTPJbZuPVpBU3bf3XFn84J2Q+iQqkeHSDLykWBdEWtCg4H4YyOaEhr45f3
 MVw9KVb9XXicpZeik152oJsIxfnsQEMqfzpPlHl+LfqvwMfZPtmWdb7PgDDl0g73P9wr
 eAaSUbFHZEl5VrjHNY3e0GLOlUOHwwYuovDMnhkH2v93btnY5typvmQ2+KP0o6Iwn99/
 32DQ==
X-Gm-Message-State: AOAM5333veUqHzkSE6ZYzxzEPbJPapbWZPMTA5PRdm+G9c32fh9iEMMD
 0B+Phvtr+0gtswR4t2Lct7qOJ/Uo
X-Google-Smtp-Source: ABdhPJy+PKswvEJEFTPfiOtJ7Poy9kSHj4bTMlki+nCfU+FckH9OWUmHYVZxY191m6NdiJ0yfebZbA==
X-Received: by 2002:a50:d78f:: with SMTP id w15mr9700997edi.245.1592681224048; 
 Sat, 20 Jun 2020 12:27:04 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id
 gv18sm8034044ejb.113.2020.06.20.12.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 12:27:03 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: davem@davemloft.net, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, robh+dt@kernel.org
Subject: [PATCH 2/2] net: stmmac: dwmac-meson8b: add a compatible string for
 G12A SoCs
Date: Sat, 20 Jun 2020 21:26:41 +0200
Message-Id: <20200620192641.175754-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200620192641.175754-1-martin.blumenstingl@googlemail.com>
References: <20200620192641.175754-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_122705_577000_FB3DD67D 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic Meson G12A, G12B and SM1 have the same (at least as far as we
know at the time of writing) PRG_ETHERNET glue register implementation.
This implementation however is slightly different from AXG as it now has
an undocument "auto cali idx val" register in PRG_ETH1[17:16] which
seems to be related to RGMII Ethernet.

Add a new compatible string for G12A SoCs so the logic for this new
register can be implemented in the future.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
index 234e8b6816ce..544bc621146c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c
@@ -491,6 +491,10 @@ static const struct of_device_id meson8b_dwmac_match[] = {
 		.compatible = "amlogic,meson-axg-dwmac",
 		.data = &meson_axg_dwmac_data,
 	},
+	{
+		.compatible = "amlogic,meson-g12a-dwmac",
+		.data = &meson_axg_dwmac_data,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, meson8b_dwmac_match);
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
