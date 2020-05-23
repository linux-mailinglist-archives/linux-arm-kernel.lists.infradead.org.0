Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D4A1DF793
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 15:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2IF2/Kiq06QI2lKzuqPMvQHHu49m4PwRZBDFSPKwMeA=; b=qXoFw4H4vo6K2q
	ZbGuz46xXDQH9lY5eobiZ1zOx9fy7iA3S0MVo/o9J9VmRKXgZpXPoMVmGC/MsnSkMabCb9p2VPIk2
	Jxq3h4HzJZL5A4Xph9aVMSSPEuSYq8Jtq7cHfJNHXY4GglczZD+yAH/ZLSlxkpE2TadUvgk4OmqFO
	Ua1mCAVWQfvZs9cdrAKMPNkYKn/u3/TUyUmpjjA83fVH1hv6ip6JA+Tvz/SiO1A9QRiId343trRdB
	Ekh4fwHUHHInK/YxnKFhhEU7NqpGN9ftl7uB4bDz7mR47p4jARAnnUl4cBOPfgeF/8NElCSE4gyn9
	kF73aNYQqRJN6bsWOnZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcUBf-0002xu-Di; Sat, 23 May 2020 13:27:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcUBM-0002w7-Rn
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 13:27:22 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so5485950wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 06:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vkX2gAQLIXJ9uj3WUomW1bZyEutKwO7zwPcKUvDNbGs=;
 b=aZv6u+u9OcqamzTM8oSsMQCNupHcwIZaVmUQ/fuDEAEexf93ZxyIIjhx/CDw4aXOgv
 NOPwijbXQXl+FdHr6Gj5klzGzceksP3UAh/tC40uAT6uib99m4ACrWQjfI0LuP1TDWvz
 R+rymcQKGqccVYvw53qMdoLS3UoIPQ63N4laBhqwXtg+r8GnxpHw89Odof1q5alrLC9i
 m1uJD4F8+Sp2as/kHK7dAxCVLkML/rW+rE9amtXsHc+eeINmpPp0wVCw0REwh1uCTivn
 owbwr8iy0v3xnFeZaNjnOMrfR7o9IAhLk9WBAE8IPU+/QUkYsJcKepvoMR0SNAPBPs+8
 mKwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vkX2gAQLIXJ9uj3WUomW1bZyEutKwO7zwPcKUvDNbGs=;
 b=He8Aeo3IKFuxymljZl801Ac0oXkzDHvbfCtk2+1DBo/GVvq7nhVsfwlAfsQ/2sBqKu
 KPh7T+1NHZMiJppDStgjGyWyXbYWQR/dWK2vv69mS5ju9MHFfGs8M0W7zGLNGCkyl4pM
 /YDP8bVMDnLSpbK2TBg2S7UpWbBRF3YHPnc73LkbIL0y9U1ZNtHTN9VCzeyI+zeTMV3s
 Z5yFdipUy7LQcQ+WM+psOuTh30SLxVsZh7hzXZZ3m4LM7Fljl32FCBQHVx2SdjjKZUV9
 9p3Nm9WW/1P6N1HFMJ9dmMEvBS69yQaPvswJyZLOqHl9fJPB50TqTib3EJQAWLFGusF+
 TMZw==
X-Gm-Message-State: AOAM531asehsa2rH5INwzvCbTbZiU7hwfMqz0MQkRgdVI+KYOD/tW+0o
 naiaK+WPvdWUlW1Ow2teDyQ5TA==
X-Google-Smtp-Source: ABdhPJxC8nZI33xT+XlLdoH7IBEbX8XggatVzrK5OwzBh8IMeKhz7+y+q4FCGYH/str1A7VuWBOXaw==
X-Received: by 2002:a05:600c:20ca:: with SMTP id
 y10mr18295681wmm.126.1590240439200; 
 Sat, 23 May 2020 06:27:19 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id g69sm8098703wmg.15.2020.05.23.06.27.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 06:27:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 0/5] net: provide a devres variant of register_netdev()
Date: Sat, 23 May 2020 15:27:06 +0200
Message-Id: <20200523132711.30617-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_062720_901878_7B032119 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Using devres helpers allows to shrink the probing code, avoid memory leaks in
error paths make sure the order in which resources are freed is the exact
opposite of their allocation. This series proposes to add a devres variant
of register_netdev() that will only work with net_device structures whose
memory is also managed.

First we add the missing documentation entry for the only other networking
devres helper: devm_alloc_etherdev().

Next we move devm_alloc_etherdev() into a separate source file.

We then use a proxy structure in devm_alloc_etherdev() to improve readability.

Last: we implement devm_register_netdev() and use it in mtk-eth-mac driver.

v1 -> v2:
- rebase on top of net-next after driver rename, no functional changes

Bartosz Golaszewski (5):
  Documentation: devres: add a missing section for networking helpers
  net: move devres helpers into a separate source file
  net: devres: define a separate devres structure for
    devm_alloc_etherdev()
  net: devres: provide devm_register_netdev()
  net: ethernet: mtk_star_emac: use devm_register_netdev()

 .../driver-api/driver-model/devres.rst        |  5 +
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 17 +---
 include/linux/netdevice.h                     |  2 +
 net/Makefile                                  |  2 +-
 net/devres.c                                  | 95 +++++++++++++++++++
 net/ethernet/eth.c                            | 28 ------
 6 files changed, 104 insertions(+), 45 deletions(-)
 create mode 100644 net/devres.c

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
