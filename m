Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B708C1E6232
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w04S+ju7WN4H+vrGoZouDBa4QEakgeCbMj2rWjWCg7M=; b=bVCSfpuzhmtX0k
	Q61gClS0qw5HprWU0oJPUAP6mba3PWqulMkjhXJGou6KL0uaM9twn+emx/cvPImM1A+/BW2JUAXqz
	35yT+jZothc+PqeUf1kPJhdyo0FoBQWGVv9krpI7H6QpbsaBG38yj22HcnIAq73STK5J6ZqFwHYNx
	T4wmn03Kn29GoLTcgnOANAGA45uG4b35WFFWJEp6vs1X6uTbqwBaJAuMGsS8sfIjj7BDpZPs0VSHQ
	xC+Vz4UUI0DOMvKacANWejz7LzGl5gZ7TLFOWbPYys/yz0Xkm8RMFfeBSzLLiQJnx2EbeBY8ADD09
	rmhd9RxV0f56lnXe/fGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIZq-0000sZ-M3; Thu, 28 May 2020 13:28:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIZg-0000rf-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:27:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id r15so3147676wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 06:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9cN8WC7B8xH4SW3c0YEgj3hG2uP+gsYVa8Phs/daLJo=;
 b=XhU9Ag1ZLhT6nRnPcN/QI44p0PvvTskUnXmbN7WZRjd0YK63lIUd2JzL7Ymo5MnHpF
 CKuiJgYA8GajqzmjbrwTZBPpRm1rdmf9aUTcTr1Ptu7f5DEizfgwzQrBN1yqo1ZynKXM
 gsHFRlzRGEEKjj4pUGIUil9HKgvMyyc+xTk3o3rxmRZ/WDY2zuuNKPNoGZvDvhFReQPU
 JmRi9ZP6d6BgpPtIXPvFqOgY2ngEhp0ozEYddVmRNK/q3inC/U8ubvRcTlBaypFAdyte
 9nV1SyMkXnOZOBNr6wmwBL5sDwijzaWBPwXlRsa4Qmfc7ohCOkuaeKf+EOcAtG2Tvg/2
 dM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9cN8WC7B8xH4SW3c0YEgj3hG2uP+gsYVa8Phs/daLJo=;
 b=iNjT2Ezxb36DTQ5VF1jWlogoJ7RP1P6xausJ+7U6cOQillJm2wGrFhN2lsAgID0LBX
 x7mmImgvGCGDq9DQcWgq6xuaCgZ6Jrtl5CkkIrfIqMOHHwECaetELnFs0Zj+nENKQ/zh
 PHUzPu1Xz1wue4AipJjcSTqsJIbMVYrb8PpEMxPoAKwyQGOVwMJyBoeTIRA0ykdbQWDN
 9BYAXUsDJw3EnMPbgVeLgGAqnxYWR2uW3M03iy04kTYxVh49hwFWJeEa3M509A2/7FiG
 BxQe7hcee1bDRsi6aXL5qEzUBLOvrcUAJiZCxT3rh85qz8qm5Ee1lTvlDCRA9GbzUmnO
 jzyg==
X-Gm-Message-State: AOAM531FvBRAnNeYlRfp/8twUp7SbToucEMeq4efdc7eHfCdogymO3r0
 X7kMi6R/vtU3otC1ySrCykrnAg==
X-Google-Smtp-Source: ABdhPJwGxbatIHlP4QiBp7yS7pM9Cy7ihGVx/tvTL9NgArY/12jr4DGk9+/NG/bPpKAD3mawZpovqQ==
X-Received: by 2002:a1c:a943:: with SMTP id s64mr3345147wme.103.1590672474339; 
 Thu, 28 May 2020 06:27:54 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id q15sm6175408wrf.87.2020.05.28.06.27.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 06:27:53 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next] dt-bindings: net: rename the bindings document for
 MediaTek STAR MAC
Date: Thu, 28 May 2020 15:27:43 +0200
Message-Id: <20200528132743.9221-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_062756_630077_B6B5A67B 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
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

The driver itself was renamed before getting merged into mainline, but
the binding document kept the old name. This makes both names consistent.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../net/{mediatek,eth-mac.yaml => mediatek,star-emac.yaml}        | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/devicetree/bindings/net/{mediatek,eth-mac.yaml => mediatek,star-emac.yaml} (100%)

diff --git a/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml b/Documentation/devicetree/bindings/net/mediatek,star-emac.yaml
similarity index 100%
rename from Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
rename to Documentation/devicetree/bindings/net/mediatek,star-emac.yaml
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
