Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1837F6BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sp6ocpf6+Wl8b2nuTj8Kj5fN4lMn8CYFjj+OcEBW/wA=; b=hs+h2TUipHxwRE
	UEAQ4C+kAST4Pintt9Ml+qhR8P0osdYl9pYoG7rR00l2llLgcrv5E4sopP1a43UPzVapa2ySozuXD
	GkpRKaQywzC7ymLewWcx9rcgWdT+p3Fwok7wJ0rMhqDTzK430EGmvZ3xlVR684QdDY0sFPPXQksgN
	2VcAWIkp5eV8JlY0HsppsYm08dkdv+4FkftjnpfHDEKlmCVz4gqIRaBZw9UVjl20aMrTgTPpZcsPi
	LS4t9EhCTPnFnOwH8Ah/7byBb9HqXXBchmgE1UZew2IAIgYUsDuJXOcd0ayHmgT3GJF15URfHVWqo
	VSrQ7HzCtvurAHlkZLbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWYj-0006o1-Aj; Fri, 02 Aug 2019 12:21:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWYd-0006ni-CL
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:21:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id p17so76947097wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 05:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H5wGh69dp/2MC7doWK21wK95kqVnSSNKp+yReUaFMfw=;
 b=BFng/ii5ClHBf1j1zpaCDA5IzvC99gvtcgwdudRhLryKG6xIUyU9jDeLLixoNyvf/B
 ixf/kgetSJEvj3F0WY3AGf1a4QSlN0zXBU5B10YKflkzqLpq6TH+Y+fk0tGT0u4oe6Rx
 Nh1yBs2HgyGjOoN00wDW73WDIqtCQyDEhMI+cOqYBUqyCFAAQmwdHPv5RAaAtgG+3PZl
 3lbtMZl6nZQcY6Y9QipEhJFrv1Q9gnxHnsZAmwZ84CwgSYsRVnlobDOfxt0WotLodijs
 IkZOKAZf/4fVuX7kXJhVsArdgSO7DkbilnpByIQ9omEPIKpFIAWQ2abShToFNQbduEcq
 vs6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=H5wGh69dp/2MC7doWK21wK95kqVnSSNKp+yReUaFMfw=;
 b=cQ5Y8X9ti5kHYulAl68uUYTYw2x9+2KBpMTfx1e1MUYbFEcBjTxr1M8iQGqrA0MOrz
 f6GIcvnaq879Y9MAFn35WLNf28USytKwIGMHrFOuYFMmKqTN8SCuhU4Y5RrhrzjLRqPM
 cC9jtXrRHnyIBKYq/5veKhboJiQM0SWR0oysUdIQWw9BBIYdiw/7LsfFS6ebDyc+pwqb
 /3m6n9cr5fkzrlfgtoKt3Wzpq4s7qZ/IGtjPgum2cpMxlsPS5jjm2NmAKyUe14LHqO2s
 CvavthiLjK+hywcGKkKjIjFyoxZgYD/3v+AQKYrxOP5WwBz5T630EGH0tOfmFqyclNfP
 hOWw==
X-Gm-Message-State: APjAAAV+h0nYRnnPfOtWd+3ugGP3fDlcGdJOl1ikkAzvSCu+S8ArnYNm
 HCwwtcGVmZDg3fSzif4lWgo=
X-Google-Smtp-Source: APXvYqy+ImRfcO++8pTE4rtugXo1crID7Pxh+mRV5Xz2OkfmY1enRlxel8RpiDgIXD3i69edDA16dw==
X-Received: by 2002:a5d:46d1:: with SMTP id g17mr92750552wrs.160.1564748472965; 
 Fri, 02 Aug 2019 05:21:12 -0700 (PDT)
Received: from localhost.localdomain (62-178-82-229.cable.dynamic.surfer.at.
 [62.178.82.229])
 by smtp.gmail.com with ESMTPSA id n9sm120612691wrp.54.2019.08.02.05.21.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 05:21:12 -0700 (PDT)
From: Christian Gmeiner <christian.gmeiner@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: defconfig: CONFIG_DRM_ETNAVIV=m
Date: Fri,  2 Aug 2019 14:20:28 +0200
Message-Id: <20190802122102.3932-1-christian.gmeiner@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_052115_425209_51088C92 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christian.gmeiner[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, etnaviv@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Simon Horman <horms+renesas@verge.net.au>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For imx8 we want to enable etnaviv, let's enable it
in defconfig, it will be useful to have it enabled for KernelCI
boot and runtime testing.

Signed-off-by: Christian Gmeiner <christian.gmeiner@gmail.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..ae5bbbce8a30 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -531,6 +531,7 @@ CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_SII902X=m
 CONFIG_DRM_I2C_ADV7511=m
 CONFIG_DRM_VC4=m
+CONFIG_DRM_ETNAVIV=m
 CONFIG_DRM_HISI_HIBMC=m
 CONFIG_DRM_HISI_KIRIN=m
 CONFIG_DRM_MESON=m
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
