Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12BB1E6684
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rNGEOKWdg7XRNS5EFB88ypJkfpUsKlp7pCrfjKsx7/g=; b=upfHVdgOwz5HB3
	T86aqxDWlGI4XaWWyg8zuQ/yDxbiV/hFe+VWT670bdtA6HZkkVdbxPdRCsm4ueUBAbUKeLKi9DCf9
	uJsSIFtGwyJv/V07kNBIdvdxVVR+SlfrQXp+gbe980gc2GzHdSwbWInFCkZPi4Uhc65Ye2qu1BsKc
	pXtmAOz53D1/ou+KOjih+cMnR/RDqI5EOJwak3TgmVefVn4fwGJw5OYWD3U2x0427WHTEPg2NGhdq
	WFUN5GnUkQaGAM1h/UO/iAbMguhsBK2PBxJWIzfQCqr+s7Rr6QMFb67VauF5m1TmGClmn9IQ1VXg1
	g/0xgFeVpwILqud3RWxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKik-0002bU-Q4; Thu, 28 May 2020 15:45:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKiT-0001Nu-EH
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 15:45:11 +0000
Received: by mail-wm1-x342.google.com with SMTP id n5so3743056wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 08:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RRcpe0H3lCAzNpSzTtIGdoPxExC1gnrWV04XMN1Ki5Y=;
 b=g0HFkoJKIY9iSEkgGQr+z2ngQ5RvAXjSLWxFjTtoZKt7hmDAuvtCGVOiKVewJ4rQqt
 T2/8s2EPboAsw2RPb5z3xfaPEiobgw2PMqFJ1KOvmAxxWtVsHP9U0UvlOUIuZFjX4prO
 EROm0xvcPNCKxVAQ4MY81faMt0ml8cV0vQj1lO/w0BPMLaIBrby2hr1ncD0+i5Oordpy
 EMCYu6kRDEgoyGD2TDNNS7Uc4me45W8sJuzMWwUmnF6BmQH2E+ng5a6R0eqKr6M8kiXi
 zeJapxgvsGZrHT30JbNBOTMLluxih3uG2BT13+Qk13hcumfHzLaDzvuwG3Q7yAmDOOAc
 +mLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RRcpe0H3lCAzNpSzTtIGdoPxExC1gnrWV04XMN1Ki5Y=;
 b=YnZHITlx+2xxofAaQHqwjIaXCFC4x2Q3yjpZ0Ebe1xpLW3gn/qeO2UHdQXWc0IHOPx
 2Lup2isHPiAqhWvuCqyAxQ6AeqK6hFZGZWYnv5AZ/YLnQCMNHpcvkUCvFj0v/c1hFJpO
 D/uKRaGU4VwpqK2JzssckhkWnSua3m4zSJHMu4PlX9EaR+3DdrncFi0f7o/+c/P8HGYu
 NeZulVuud1sHBasgJ4JCdQc7t32f79grYA0ziX6g4CIRtM0H13KOz8sONyafBZlbQFpy
 Nv/DT+9PyMcF++0Cyi6zVyY9Ph+jQtpiJOsmWZMDONyWfzWfMXrnuCn6E3h2n5jd6GOd
 WhAw==
X-Gm-Message-State: AOAM5327n6juHGyfiIuedKjgrtJkHFIANwcnz82f6+4wXqzmb0707o7U
 5C4+FYQ7Nj3H0/eeppXl344IPw==
X-Google-Smtp-Source: ABdhPJxsoz5O8Wu+pBo3JregNWfan6WrHopy2c2n+D7n8gRcdVSFiDJEqbgTrXNos0B2dRpaa0ksxg==
X-Received: by 2002:a05:600c:2201:: with SMTP id
 z1mr3945929wml.70.1590680707286; 
 Thu, 28 May 2020 08:45:07 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id n1sm6285650wrp.10.2020.05.28.08.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 08:45:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH v3 0/2] regmap: provide simple bitops and use them in a driver
Date: Thu, 28 May 2020 17:45:01 +0200
Message-Id: <20200528154503.26304-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_084509_575666_077C4DE2 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

I noticed that oftentimes I use regmap_update_bits() for simple bit
setting or clearing. In this case the fourth argument is superfluous as
it's always 0 or equal to the mask argument.

This series proposes to add simple bit operations for setting, clearing
and testing specific bits with regmap.

The second patch uses all three in a driver that got recently picked into
the net-next tree.

The patches obviously target different trees so - if you're ok with
the change itself - I propose you pick the first one into your regmap
tree for v5.8 and then I'll resend the second patch to add the first
user for these macros for v5.9.

v1 -> v2:
- convert the new macros to static inline functions

v2 -> v3:
- drop unneeded ternary operator

Bartosz Golaszewski (2):
  regmap: provide helpers for simple bit operations
  net: ethernet: mtk-star-emac: use regmap bitops

 drivers/base/regmap/regmap.c                  | 22 +++++
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 80 ++++++++-----------
 include/linux/regmap.h                        | 36 +++++++++
 3 files changed, 93 insertions(+), 45 deletions(-)

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
