Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435D27F9E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MtXfodwb6z5eG7uyv02JhNjGLy9iXnYaMxUShYPodhs=; b=KWoPXXkBAQgyEh
	occHryoQ4aUIViIl6bVPAa2oQvoPH47gBwneV4TdEYKfWa5PAW+RK4rTTtOFghrRnJLKbvGBtLGPk
	08MFR8+lxoOd/H4V+qUvF7Vl4wQEAcpSzSp89sHQXXVYK9KelaiBpgeQXm7lyxnyfD/ZEaEwQ7upj
	Eldu0cLU4wTYtWqmfC5uMY/haozwdNT8d1sYwZOCMb2PBJR9X6J1Ty1OHNf7ul9lnhZtjg9rSz52L
	hjvhXCmaJzbtTUSCLlJgJYbmUQe1MJaG7upDgyrGe9W5xUgiFL55CQnDZquNrPFt0qI7FjQCP0iwq
	Kyfp8+TUdF4qQtyvJC2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXeP-0000aS-AM; Fri, 02 Aug 2019 13:31:17 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXeJ-0000ZJ-2H; Fri, 02 Aug 2019 13:31:12 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 98B08AA14CE5C9058219;
 Fri,  2 Aug 2019 21:31:07 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 2 Aug 2019
 21:30:59 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <herbert@gondor.apana.org.au>, <lars.persson@axis.com>,
 <jesper.nilsson@axis.com>, <davem@davemloft.net>, <thomas.lendacky@amd.com>,
 <gary.hook@amd.com>, <krzk@kernel.org>, <kgene@kernel.org>,
 <antoine.tenart@bootlin.com>, <matthias.bgg@gmail.com>,
 <jamie@jamieiles.com>, <agross@kernel.org>, <heiko@sntech.de>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <clabbe.montjoie@gmail.com>, <mripard@kernel.org>, <wens@csie.org>
Subject: [PATCH -next 00/12] crypto: use devm_platform_ioremap_resource() to
 simplify code
Date: Fri, 2 Aug 2019 21:27:57 +0800
Message-ID: <20190802132809.8116-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_063111_275974_1111AF5D 
X-CRM114-Status: UNSURE (   4.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_platform_ioremap_resource() internally have platform_get_resource()
and devm_ioremap_resource() in it. So instead of calling them separately
use devm_platform_ioremap_resource() directly.

YueHaibing (12):
  crypto: artpec6 - use devm_platform_ioremap_resource() to simplify
    code
  crypto: ccp - use devm_platform_ioremap_resource() to simplify code
  crypto: exynos - use devm_platform_ioremap_resource() to simplify code
  crypto: img-hash - use devm_platform_ioremap_resource() to simplify
    code
  crypto: inside-secure - use devm_platform_ioremap_resource() to
    simplify code
  crypto: mediatek - use devm_platform_ioremap_resource() to simplify
    code
  crypto: picoxcell - use devm_platform_ioremap_resource() to simplify
    code
  crypto: sunxi-ss - use devm_platform_ioremap_resource() to simplify
    code
  crypto: rockchip - use devm_platform_ioremap_resource() to simplify
    code
  crypto: stm32 - use devm_platform_ioremap_resource() to simplify code
  crypto: qce - use devm_platform_ioremap_resource() to simplify code
  crypto: qcom-rng - use devm_platform_ioremap_resource() to simplify
    code

 drivers/crypto/axis/artpec6_crypto.c    | 4 +---
 drivers/crypto/ccp/sp-platform.c        | 4 +---
 drivers/crypto/exynos-rng.c             | 4 +---
 drivers/crypto/img-hash.c               | 4 +---
 drivers/crypto/inside-secure/safexcel.c | 4 +---
 drivers/crypto/mediatek/mtk-platform.c  | 3 +--
 drivers/crypto/picoxcell_crypto.c       | 5 ++---
 drivers/crypto/qce/core.c               | 4 +---
 drivers/crypto/qcom-rng.c               | 4 +---
 drivers/crypto/rockchip/rk3288_crypto.c | 4 +---
 drivers/crypto/stm32/stm32-crc32.c      | 4 +---
 drivers/crypto/stm32/stm32-cryp.c       | 4 +---
 drivers/crypto/sunxi-ss/sun4i-ss-core.c | 4 +---
 13 files changed, 14 insertions(+), 38 deletions(-)

-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
