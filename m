Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA0A100595
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AO/ZEVT1RC69H62F71qyji4TJXxytAlEFaU9mydST9M=; b=Dc82GSe5Jrt00w
	BR1e1tTWRiULERmxtns4Gbru+f1pZoTI1dKqYgQWvwFWFSOe5OiKr6Jg3GZtTu/x3+xE51JYc6G0l
	w2CPmm+4c5fh2DGxDBIjIl4MwxuwOc93KnOd658i2ZFp+BrdO9GLphRWLh6A7vQCDjukluLSfNFXE
	natAwCEv/4TmrDREHMR5605c7LVJq3y4VsSqr+JVHdkiA88i8EISLl5cjv9LFqicn9yvLEEyas69a
	yp+gELUxGwDXpXf/2TOgQFLLA7KkHI+rAxk+AR5+QlDqBtve9VoTiz0pMoisHb4MoxCkJmjwgkhM/
	LjFILCTHd5A/ngewTMaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWg8b-0008Pa-CH; Mon, 18 Nov 2019 12:28:13 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWg7w-0007zO-EC
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 12:27:34 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7ECB9D59EE32EFE213E0;
 Mon, 18 Nov 2019 20:27:29 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Mon, 18 Nov 2019
 20:27:20 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <mripard@kernel.org>, <wens@csie.org>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 0/5] drm/sun4i: Use PTR_ERR_OR_ZERO() to simplify code
Date: Mon, 18 Nov 2019 20:34:39 +0800
Message-ID: <1574080484-48744-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_042733_045635_B9A5648D 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

zhengbin (5):
  drm/sun4i: Use PTR_ERR_OR_ZERO() to simplify code in
    sun4i_hdmi_init_regmap_fields
  drm/sun4i: Use PTR_ERR_OR_ZERO() to simplify code in sun4i_tmds_create
  drm/sun4i: Use PTR_ERR_OR_ZERO() to simplify code in sun4i_dclk_create
  drm/sun4i: Use PTR_ERR_OR_ZERO() to simplify code in sun4i_ddc_create
  drm/sun4i: Use PTR_ERR_OR_ZERO() to simplify code in
    sun8i_phy_clk_create

 drivers/gpu/drm/sun4i/sun4i_dotclock.c      | 5 +----
 drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c  | 5 +----
 drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c      | 5 +----
 drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c | 5 +----
 drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c  | 5 +----
 5 files changed, 5 insertions(+), 20 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
