Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74315177B05
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 16:51:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSW5VDGneyKDS8o5wSVD6fxcEoFOa+0N/ZO/IRasizg=; b=iZds3ijBQYGwn5
	RYCcEFUZvrC6RkkNayAXW7yGzeKY6MeoIBCFu3GwAxvdtHkBva1TuS1+q0/7cdW/P8mTzsTs5X7Jd
	nHskFiiqWrUZwdMnGFv6yG9oyR15R9xi223bZcow9mVh+8PHqdiAy1VIOJBCSBMUxQnPshft21H4T
	yit7jluhTBFUfSVPJwSGh2xddo9NyT0hKS4KGY0kvF6LBMVI2gAl87nk/07f4q0tm8l7eTzNHkp4i
	lJY3jWnC1OePdMIt31Z1HkjSC/7H6TZ7f7+dpkYzld0D9C9TCnzr9HddANcxOrKQPK+7ckMbUtonz
	iytv/Thg/KSJ0RK44b4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99ow-0008LW-O5; Tue, 03 Mar 2020 15:50:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99op-0008KX-2y
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 15:50:52 +0000
Received: from mail.kernel.org (tmo-101-56.customers.d1-online.com
 [80.187.101.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BC7521741;
 Tue,  3 Mar 2020 15:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583250650;
 bh=PyKCDooU4KzQOkbDDZXq892AnX71lclOSwV9wlmYVO0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mY2zVi/2UJK8rPzJbpBPpMZUN48qXP3MFxbHZpeInZ1W52behvVDlAAQDY6SpvpGY
 l1Mc7YQhchvIzchQAMf6IFu8bHgggSiNzFwWBTHG5pIdM3OJawzM5/y0THK+FK38TY
 9dT7tNnwnmFHqrYThmLPGjZ4gTeTGt/mky/K0YOE=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1j99og-001ZPA-KL; Tue, 03 Mar 2020 16:50:42 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 8/9] docs: perf: imx-ddr.rst: get rid of a warning
Date: Tue,  3 Mar 2020 16:50:38 +0100
Message-Id: <b27b54bd4f847032fd33313d6497ff320c0f3d78.1583250595.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <afbe367ccb7b9abcb9fab7bc5cb5e0686c105a53.1583250595.git.mchehab+huawei@kernel.org>
References: <afbe367ccb7b9abcb9fab7bc5cb5e0686c105a53.1583250595.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_075051_154215_796999DF 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc@vger.kernel.org, Frank Li <Frank.li@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

    Documentation/admin-guide/perf/imx-ddr.rst:47: WARNING: Unexpected indentation.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/admin-guide/perf/imx-ddr.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/perf/imx-ddr.rst b/Documentation/admin-guide/perf/imx-ddr.rst
index 3726a10a03ba..f05f56c73b7d 100644
--- a/Documentation/admin-guide/perf/imx-ddr.rst
+++ b/Documentation/admin-guide/perf/imx-ddr.rst
@@ -43,7 +43,8 @@ value 1 for supported.
 
   AXI_ID and AXI_MASKING are mapped on DPCR1 register in performance counter.
   When non-masked bits are matching corresponding AXI_ID bits then counter is
-  incremented. Perf counter is incremented if
+  incremented. Perf counter is incremented if::
+
         AxID && AXI_MASKING == AXI_ID && AXI_MASKING
 
   This filter doesn't support filter different AXI ID for axid-read and axid-write
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
