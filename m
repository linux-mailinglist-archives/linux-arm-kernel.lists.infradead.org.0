Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD4946F6F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M6n+KjcSK1aXn8Q9rlBROow35Ib2OvjGSHB8ZBkgpMo=; b=C/umOOlg1m2DIX
	nTARtwPrDt5/rzMpWs8US94soHe1N5qgDS33no7FK0vZfKyhs07klWz7nGvCD8Q4AoyhSYlOqrupI
	xIvpr3xZ6ym0jDkbJgkG0yFYanL6K0OJxCD3M5MBKZCTFN/6D83x/MM0z4f/f0tOoSZGEo2DsNEZE
	SEvTOi1v5lTaQ+2UL1gLD5lNS1dHtHPV8ZqQdsjJUf7v7a9FiMGws/DEP6ywcu5KqCwZcyhOMnsVl
	lBcVl2jN/IePw9EVs7mTPZweyrY9CH9IZ1O2CkFWzBGlVZowOWPucVwZ2D2rHjvrnrpzfXqiOibA4
	fyWtmY3qwd0coEDwESoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc5dN-0003Vx-WA; Sat, 15 Jun 2019 10:10:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc5d2-0003Tv-Ek
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 10:09:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so4954489wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 03:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wQ/7cnUYQSqiuGdmyeXjvKaUkmct1ono9wLPLG3OrfI=;
 b=dEJNbnbtlA725Ds40u+2L6IvPXX97I2cj+85TIxzwnn6bjCqZSc3PaREK2NSuN/c1b
 SU+BC27Q9RCZpk9pGQWCPbKll+qi0PoaddVqWSnHT1uZglo/rYcblshG+a0fduy+/OjW
 42768ywLGfqMrrUvtSCbN7MaIS5RP/nj46gTmKiPdr96eN6fiKlBqyGwNC4rWYsH0Df2
 SGLT+wdS3pMgXeC+S8HcSkd1sAIvq/JiJRZMqi8IY4BLY2RK6p1LK6eYmA0ultymVVSI
 SzugkySWnGevMmz/NlWPIxTPPXSy5JouG+SStaSzZrRGS+YbTneXuMBycBuRH4vWPecc
 Cc9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wQ/7cnUYQSqiuGdmyeXjvKaUkmct1ono9wLPLG3OrfI=;
 b=f6E/WZON0oixVve5OfEKArrG3k75a7SX6SL9wC4hKUF/Okh0lkwum5rLt0XJPbLNjG
 sV3eGpc3xvYQK5k6MbxNUBC3MfpPhc7tVtDI5DjXwnFjkDq8aZdGgFm9uRr8275rLwHP
 TW77mIHyVeuGJXef7vYz1rIX68jSvTc2IIoxAS0nqx+RVYolIPHkTid/6XwTTK9CPHiu
 BSabhEysy6D7K/MfAxIa5Ka5pNfNPTZxMjwVjK2/ol2q4/WVeIeRI6/2PXL/y2KmF0+U
 GKonETPImVs8t99mpvxByptDuLIeCTUo3hkTP+uu4n4ic1ei9WgAPCk2brXuHZEvLzx1
 l/xg==
X-Gm-Message-State: APjAAAW7lh1kNlTZJ68rSozSjcy8EF8nO/Nx7jokQTLjuTCdqrrHrTWf
 50UrLFXsxk5uiaow888AcBg=
X-Google-Smtp-Source: APXvYqwdaH+X0Ee2lmqzRgtTJBEBf2J7LCaaYiBmWtAtwEBuXsuqiJKtSsKBjp4BmTscPm40kULU9Q==
X-Received: by 2002:a5d:46ce:: with SMTP id g14mr10882357wrs.203.1560593381288; 
 Sat, 15 Jun 2019 03:09:41 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id f2sm9270513wrq.48.2019.06.15.03.09.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:09:40 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: netdev@vger.kernel.org, peppe.cavallaro@st.com, alexandre.torgue@st.com,
 joabreu@synopsys.com, davem@davemloft.net
Subject: [PATCH net-next v1 0/5] stmmac: cleanups for stmmac_mdio_reset
Date: Sat, 15 Jun 2019 12:09:27 +0200
Message-Id: <20190615100932.27101-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_030944_525441_3DE60A51 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
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

This is a successor to my previous series "stmmac: honor the GPIO flags
for the PHY reset GPIO" from [0]. It contains only the "cleanup"
patches from that series plus some additional cleanups on top.

I broke out the actual GPIO flag handling into a separate patch which
is already part of net-next: "net: stmmac: use GPIO descriptors in
stmmac_mdio_reset" from [1]

I have build and runtime tested this on my ARM Meson8b Odroid-C1.


[0] https://patchwork.kernel.org/cover/10983801/
[1] https://patchwork.ozlabs.org/patch/1114798/


Martin Blumenstingl (5):
  net: stmmac: drop redundant check in stmmac_mdio_reset
  net: stmmac: use device_property_read_u32_array to read the reset
    delays
  net: stmmac: drop the reset GPIO from struct stmmac_mdio_bus_data
  net: stmmac: drop the reset delays from struct stmmac_mdio_bus_data
  net: stmmac: drop the phy_reset hook from struct stmmac_mdio_bus_data

 .../net/ethernet/stmicro/stmmac/stmmac_mdio.c | 52 ++++++-------------
 include/linux/stmmac.h                        |  5 --
 2 files changed, 16 insertions(+), 41 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
