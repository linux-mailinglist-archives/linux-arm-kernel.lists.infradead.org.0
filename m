Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F78D46F77
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juM7ccjxn/5IbFa7ASq/L2xYMMafKpf7X0YCssZdB1M=; b=PnmZFvUJqXMhyh
	Bk00lA1MaJ/4ZVoNjuh8t4zr0sPPRvBYZntiklaSwPMqOdIH+/ZUpxBQoPbFwEm6DRqLYQvEAnt3x
	MC6V1XRQBDtBlehbeZDId7Z6cTe1GMVoIIiUO5JC72RuelKwEVUmTy4vagAaJMhrEVaGtklzRKnJh
	UENkWhVeyf6stf1wuwuZmuWQdNLGOi2acKY2YxXQT+2RSJXogtuuTI2il0NtW2EuMFRDYhmRjN3S9
	HFjU7NQhPnnjb3fS+EgXnbFWvyBiWbADya+jznq94O95JnKS68maACgtDhjzoEw9PC43Bam5p6bzd
	XIDulx8+lhMfmCnOzQ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc5dl-0004Va-Qh; Sat, 15 Jun 2019 10:10:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc5d2-0003Tw-Ej
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 10:09:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id m3so4996508wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 03:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TU5sPWxUXVpDKkXIHMQHJv1/QjLj/w4ResWwHswsQ9k=;
 b=q81b6gQfj2ao1vMnyoQZgvyXuRVm+nRF84Z4NPNDtAifoi/Yds9AbbXmST9oPrQNxJ
 L0ObMFgHifNglFniPaYe94xkfWZ6qQaOST9bYl1e9Ayf6gwzkYQ/hxWHkJvpH6uVfHV3
 D4p1mG0AJUyq2y12T1gCO1lCH9qfjmOT4Y/V5Ew4L+dqDF4g1OIPaWF5A3+9QnQ8vT0Q
 fHx+Uknj3PAygSVc90vpZ7SNvkxpKOQv9E3pNE+YtXjhyy7rOAxOzzEHZQjUVnTbjeD6
 BCAeqRCaDVuoVlkgpSgxMmXe/yNwCw7MFqnzQh+3ospxDwTv4XA6xBDzXQwufGJAjqxB
 Lgbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TU5sPWxUXVpDKkXIHMQHJv1/QjLj/w4ResWwHswsQ9k=;
 b=Oj6GoUJugXL5e1WvoH769bg5xZiI2Ym5u725sJt1OfnfKUACOcv3qGhDkJ1Ix341Yh
 R84p/XhnDgPH27zhmqK9Hotj+eodwToEZCxxEVWruTjs9DZ4WcPc7Dx9h49SwV+rEQWT
 IiaF6+w8YEmvyxXFobpoiJeb6OObFDfbcsxz1Qq22LuUHpWik/1ZqP2byz40so23dfh+
 7KXerUqxJZ8AsD+9H1KGs07M4p8xdVaed1iKFh6Ueo0O0rjaw0oYSb1ivDiA9dxlw3vw
 cH52ZIcgfQ4tx9CyQBW0mMPqmKdmYWvsw09t9fk5/4J4TBU07Nr+d/Z0vGhmEvkzae/u
 lIhg==
X-Gm-Message-State: APjAAAXoTqotdcV7nNONUbeZ7UVsUF8/jn7lY547bjD3yKmf4bcdeyQN
 XGjE71wAtsgkZ3qGC0T4DIY=
X-Google-Smtp-Source: APXvYqy2T6u5Bo9cJYCElKkMVr2UauJqohfFkH8EkNhL0wrkkh3Ih6tzMAnD1ivvjWgec4OC5yaLDA==
X-Received: by 2002:adf:e84a:: with SMTP id d10mr3190321wrn.316.1560593382566; 
 Sat, 15 Jun 2019 03:09:42 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id f2sm9270513wrq.48.2019.06.15.03.09.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:09:42 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net
Subject: [PATCH net-next v1 1/5] net: stmmac: drop redundant check in
 stmmac_mdio_reset
Date: Sat, 15 Jun 2019 12:09:28 +0200
Message-Id: <20190615100932.27101-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
References: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_030944_525673_D2726073 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, andrew@lunn.ch,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A simplified version of the existing code looks like this:
  if (priv->device->of_node) {
      struct device_node *np = priv->device->of_node;
      if (!np)
          return 0;

The second "if" never evaluates to true because the first "if" checks
for exactly the opposite.
Drop the redundant check and early return to make the code easier to
understand.

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
index f1c39dd048e7..21bbe3ba3e8e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -256,9 +256,6 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 		if (data->reset_gpio < 0) {
 			struct device_node *np = priv->device->of_node;
 
-			if (!np)
-				return 0;
-
 			reset_gpio = devm_gpiod_get_optional(priv->device,
 							     "snps,reset",
 							     GPIOD_OUT_LOW);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
