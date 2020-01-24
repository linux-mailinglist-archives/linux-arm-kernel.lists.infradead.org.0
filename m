Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C5B148A8A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGnHJiuPKZq5FtuIQASogRx8MOWI/LXA8RpOOluXGEc=; b=cUL4UTsKGSMajj
	7CbACktQZQjvyypBCfcwGhRsJOLA4GNMEp6RLogaenHhOQo1T3ctYn2YVzWr37Fz7p/MZHdp6ygXQ
	jVhNY6RHIJi7zp5kazG22HGjvdtdkpqOwOo/2cfDgDtxp8HW1RJtT/o7ZhIznsKnpXN1Ej64wosqW
	DnpUrhli+IhDETvCxdnq5I3NwImSXBg+wixzDXB+47Fa468T2tnvUpmtExYKZefVSVJWEeCjmsRXU
	l7pm7PWr+nfxK7AZlG/rGHJhiSqEhgLDo/sa1Vl/z6rHBowuLgjiwLDQveMTcv2c48YefMyC8A7fp
	tNAPVJj/lpfPiEQGntPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0IJ-0003bY-4V; Fri, 24 Jan 2020 14:50:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EK-0007hI-TO; Fri, 24 Jan 2020 14:46:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DEA2CAEEE;
 Fri, 24 Jan 2020 14:46:38 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/22] staging: vc04_services: Get rid of
 vchiq_on_remote_use_active()
Date: Fri, 24 Jan 2020 15:46:05 +0100
Message-Id: <20200124144617.2213-12-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064641_119674_8D4CE66D 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Function does nothing.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 6 ------
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 1 -
 2 files changed, 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index a90d6fbbb54b..dbe403f9291b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2961,12 +2961,6 @@ vchiq_check_service(struct vchiq_service *service)
 	return ret;
 }
 
-/* stub functions */
-void vchiq_on_remote_use_active(struct vchiq_state *state)
-{
-	(void)state;
-}
-
 void vchiq_platform_conn_state_changed(struct vchiq_state *state,
 				       enum vchiq_connstate oldstate,
 				       enum vchiq_connstate newstate)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index f135d55b29e5..c5493dee6dd7 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1815,7 +1815,6 @@ parse_rx_slots(struct vchiq_state *state)
 			vchiq_on_remote_release(state);
 			break;
 		case VCHIQ_MSG_REMOTE_USE_ACTIVE:
-			vchiq_on_remote_use_active(state);
 			break;
 
 		default:
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
