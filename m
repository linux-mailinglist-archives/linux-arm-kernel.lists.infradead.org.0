Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAA411F12E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 10:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aLcww5TYl6oOJb3/5Ds5AYxEV5Cj2aJ4z8SiznaTR/o=; b=hnmQJWuagRHVIW
	Yb1GDTPHP2+qojLhOkyB0I5KLgpBG3mAjZ+x+a6wWCLCB/dEoGpbNLbCW0AZt4MuOMu/KdBALD6fl
	wnA4FKcfuwQ67BBvoaN04zR4p3rhTpL3SxCxt0djw1kmOYJYpbDNRPY25RyjwVhrlsFVd5xQntqXi
	ZwWkwJosaBJhveKnSDQOvRIn2B3+uMUvWHaSHd8RWn9hO1EvZuchAEjyg87rdu8Hpe5z7eUVUzYlq
	Nc8uFyXixcsgEPGr29RiK6AQycPyBj1I2xvP/+FJQ33d+yKmBdC48IvwddZiNOPOcwYN4TzM3LLYV
	Mady5MNNKXfqvAwv8e7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig3yl-00051n-W5; Sat, 14 Dec 2019 09:44:52 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig3yP-0004rL-EP
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 09:44:31 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8360E5AA241FB3A45991;
 Sat, 14 Dec 2019 17:44:18 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Sat, 14 Dec 2019
 17:44:09 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <mripard@kernel.org>, <wens@csie.org>, <jernej.skrabec@siol.net>,
 <airlied@linux.ie>, <daniel@ffwll.ch>,
 <linux-arm-kernel@lists.infradead.org>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH 0/2] drm/sun4i: Remove unneeded semicolon
Date: Sat, 14 Dec 2019 17:51:29 +0800
Message-ID: <1576317091-24968-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_014429_696299_AE1EE838 
X-CRM114-Status: UNSURE (   5.34  )
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

zhengbin (2):
  drm/sun4i: Remove unneeded semicolon in sun8i_mixer.c
  drm/sun4i: Remove unneeded semicolon in sun4i_layer.c

 drivers/gpu/drm/sun4i/sun4i_layer.c | 4 ++--
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
