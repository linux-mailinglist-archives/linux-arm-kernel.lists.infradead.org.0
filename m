Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8203AB0F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 20:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=464AUiVGrd4arizIM/9fCodiCEiDrKeaBMLeCpxC+Q0=; b=Ko2+5LksoJDODs
	pXE/iGbGaUyUN5AARpFVucpmBi1rp4HORHfHchDwdRL5WDNpUVN+TdvH1zpm4PXeyrDycE0s+/SSQ
	DlA0xQnbGiPZCBFnMLFVvvy/9PkJdQuGaTJN4rnBEUbATMl8of910JNn+36yek36Swdi290Y4DhdA
	Zcu1Jv5Nfndml20CZOrOa9l71v4DZ7KldL8IYv/LcEXQUZIiXx3IQgTCGNrJ1nrmtWUm6rsrMRwou
	vgQUGNWZhSTZa9LoEzSVRtN6N7iks1T8ivVlhSZ4vOOIBptNEtiFRFW0C4fz6dhjhhauOx7Cwnz6z
	0DPHqatIVDh6h7bwswYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha2EE-0004LN-Ec; Sun, 09 Jun 2019 18:07:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha2DK-0003cn-0g; Sun, 09 Jun 2019 18:06:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so4229564wrt.6;
 Sun, 09 Jun 2019 11:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v1cIgIB/50o1TbuP4h7H+LIZ4pZcg3N52gZnolC5tNY=;
 b=A3czi1Dd8xVadhyrRlkBaDwSqjW0C9T7e2gfiqTTqXBWnEx1kL4TX8qXuj3Xy3qfM0
 5iny+h6uiPG/9QeP7zkvWcBhsfeCKwy8CGTIMEvub+SmrvjgDCwUoDfQaHzyiyIDEa+k
 tWDKdLgoefImiuL1ZqWnHWTvo5c59Wq6zCHt/Vv6ZRmsU02qdpxTsPPS/lTTUNkBCGtz
 vdCrDYoSvMO9YuyBmmRGpts6a17UQjzMJAyeAXOZdnpNrhhAGAKW+FZXIi562prgpzQ+
 1QDEdy6DOYRCzaSLxU2HiUEllLqYYxBMD9Ivg3yXp8csBGAoHjwsyF5E/2bbPrtPWCnF
 +pVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v1cIgIB/50o1TbuP4h7H+LIZ4pZcg3N52gZnolC5tNY=;
 b=BFb/QOZPzrLoXRn/hOgxjipB3qkuW24vgCFsVNhrCb0mXLoGJ+B2IGzpBZ/isVl+s8
 j7ryuPugdsCmUkXrgzacE6w0VJJqTzd6VanYcehTh/heRocM+V4o3e4XDiz6O8LcO+2n
 HrA/23SPsykOsrkIHGMDax/zkuPxx9ZmULJ5a5TjGCzgcc1rld/fPw2e9hreNbffGXHw
 4yUvhDiZILeafn1/W97F5VMjYtj+xT0QBMxBLSaVnigGNfmf/jf5CR9vtOg8SqHGJgbA
 PJJTXHWDm55thc1uZfoVQtVe6g04G+6zXSdybfheBFaMcbF5lpK8ynRDHRiGnKU2sEpD
 Z+1Q==
X-Gm-Message-State: APjAAAUaXXacP7EJckqrEhIpfOSKmY4QE8GPYyApU5CQzCtUAN+E9ITM
 FKt262dypETNg+dp+L+rcz2pQvQF
X-Google-Smtp-Source: APXvYqy7+SScjAXQjSTLA2olnCPdQUH0aM8+Jocv0daXnj4LKMXvOjzcZLeXAUQkW+23xSiMaGdOPw==
X-Received: by 2002:a5d:4311:: with SMTP id h17mr43160091wrq.9.1560103597686; 
 Sun, 09 Jun 2019 11:06:37 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400B42D8EB9D711C35E.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:b42d:8eb9:d711:c35e])
 by smtp.googlemail.com with ESMTPSA id h14sm2007731wrs.66.2019.06.09.11.06.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 11:06:37 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com
Subject: [RFC next v1 1/5] net: stmmac: drop redundant check in
 stmmac_mdio_reset
Date: Sun,  9 Jun 2019 20:06:17 +0200
Message-Id: <20190609180621.7607-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_110642_055465_674E8710 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
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
index 093a223fe408..cb9aad090cc9 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c
@@ -254,9 +254,6 @@ int stmmac_mdio_reset(struct mii_bus *bus)
 		if (data->reset_gpio < 0) {
 			struct device_node *np = priv->device->of_node;
 
-			if (!np)
-				return 0;
-
 			data->reset_gpio = of_get_named_gpio(np,
 						"snps,reset-gpio", 0);
 			if (data->reset_gpio < 0)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
