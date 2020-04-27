Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688E71B95A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 06:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O7SYjuImJNVvBGekHsCes0h61V3WKUhbDYNgoebEuiU=; b=SKy
	TUy0MrvdEc5goFq3XHEPfsmsEvAkNjtj6LbsGT4MtNTl99Bqr0pXsUwGBd9dJFV8QyuizafQc6gHv
	q/aFidUVnQ/J2G0Ko+UM2hRu/VjiBqI+j6sEkJK/fs55WzrjsUfOEic73sDYSDKvPKcbAXW4xnX9a
	Hien6Q9QI0zt4/cJGdQ4uoljvxVl7h+uTnXIWWqK1Qhenp05jSefU+65DPLZd4a/pTGshiktKjvkA
	0gEqMfP3upXPhepAxYdVYBXY/8zc5zabUwUMz5lr6lJ+L8hlYyC6pLh1Wkv8w3twhW15sixR+Qb/M
	8p0I6ThBrn/112ibnLK2fIz/7hkeeTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSuxT-0005ag-PJ; Mon, 27 Apr 2020 04:01:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSuxL-0005Zc-5b
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 04:01:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 803D51A0FA9;
 Mon, 27 Apr 2020 06:01:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 281FD1A0EAF;
 Mon, 27 Apr 2020 06:01:15 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6DF50402FF;
 Mon, 27 Apr 2020 12:01:10 +0800 (SGT)
From: Yangbo Lu <yangbo.lu@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
Date: Mon, 27 Apr 2020 11:56:55 +0800
Message-Id: <20200427035655.18157-1-yangbo.lu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_210119_350989_6B1E8337 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Richard Cochran <richardcochran@gmail.com>, Li Yang <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Yangbo Lu <yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Output PPS signal on FIPER2 (Fixed Period Interval Pulse)
which is more desired by user.

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
 arch/arm/boot/dts/ls1021a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
index 760a68c..b2ff27a 100644
--- a/arch/arm/boot/dts/ls1021a.dtsi
+++ b/arch/arm/boot/dts/ls1021a.dtsi
@@ -772,7 +772,7 @@
 			fsl,tmr-prsc    = <2>;
 			fsl,tmr-add     = <0xaaaaaaab>;
 			fsl,tmr-fiper1  = <999999995>;
-			fsl,tmr-fiper2  = <99990>;
+			fsl,tmr-fiper2  = <999999995>;
 			fsl,max-adj     = <499999999>;
 			fsl,extts-fifo;
 		};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
