Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A458149CC4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 21:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFWZFIZRqsJ9q0eFo4YOcnb4f9GGYsDxAY38nPhy7BU=; b=sS3D+4Rs/VEzxy
	NVajemUMPfl3niY9RZ1EqiPEx3h3u/mDeJaiHR5Gx1Tzrz8lAr8pKzcRqsDP+sGkWfhvVoghYbDeb
	GRz4lpviiwGYEJRoNGxqXNeXUXPBT0cOCDU9epcKqDjmbfF8JLHoLPnAdB4gGcLorXuVNKQd8yuF7
	WQZ5lUnREq7pzmxJMu0cX71SptF96vNecp5STp9bfwl6A2fx2Ce9/k4mhk4jndCeTU8vIpaOcFjkV
	IeSYlqseULnpadGdGFl5DjEPQozW42UBWMrHS41/XieAd9zde+T5Xeo+SFXT65ZmxnYWXjgoci/17
	0M7DNmuwkbSODs1UKIEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivoGm-0003Vb-Qk; Sun, 26 Jan 2020 20:12:32 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivoGU-0003Tr-EJ; Sun, 26 Jan 2020 20:12:15 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jan 2020 12:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,366,1574150400"; d="scan'208";a="222331124"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 26 Jan 2020 12:12:10 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ivoGQ-0006FK-Gl; Mon, 27 Jan 2020 04:12:10 +0800
Date: Mon, 27 Jan 2020 04:11:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC PATCH] staging: vc04_services: vchiq_dump_service_use_state can
 be static
Message-ID: <20200126201136.5c52szonqkuuavfc@f53c9c00458a>
References: <20200124144617.2213-7-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124144617.2213-7-nsaenzjulienne@suse.de>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_121214_544058_56F5C783 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 kbuild-all@lists.01.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Fixes: fc2dd7f28276 ("staging: vc04_services: get rid of vchiq_platform_use_suspend_timer()")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 vchiq_arm.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index a75d5092cc73b..f87818c03cfff 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2875,7 +2875,7 @@ struct service_data_struct {
 	int use_count;
 };
 
-void
+static void
 vchiq_dump_service_use_state(struct vchiq_state *state)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
