Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3281CFB05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 18:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bfPwrWJSMrcCt6Row6eTot7WLoX1IjC1El/eJOeudZM=; b=ig6dbd20Uyjd+Lpz3spP4Kj7dK
	337rOK5thDY2h+SjvcoTNrzDPiCKmBoBZzQh2fmBg9OTwNRc1IWJyERn2PO7B08PlA78/uavPckaN
	zwJIGCa7WfQ85UVgIpjx64LcppQgrvaXWEHr1K2ThboyNzek4c+MqE23+7aqBwlDY7lUsmcdGrH9f
	B+JDTdektXp69vrD5xySnpuwldeNTQVtQokFp/wIDr3U8zPXVjTrsp+OrRd7UpTvZuls/XPXcGgTC
	DAD+OroVnnV3lZ2DH/O4BH+Z23P6M6w0nIdt+gxx8bOeb1e/12WkNV80MS6XbUlb9/Dt9lL8W1svy
	KhnEznzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXwk-00019r-FS; Tue, 12 May 2020 16:39:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXui-0007v0-U3
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 16:37:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1CA6711D4;
 Tue, 12 May 2020 09:37:52 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2E5883F305;
 Tue, 12 May 2020 09:37:51 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: mtk.manpages@gmail.com
Subject: [PATCH 07/14] prctl.2: Document removal of Intel MPX prctls
Date: Tue, 12 May 2020 17:36:52 +0100
Message-Id: <1589301419-24459-8-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_093753_048906_2242E690 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Intel MPX API was removed from Linux 5.4.  See Linux
commit f240652b6032 ("x86/mpx: Remove MPX APIs")

Document this change.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
---
 man2/prctl.2 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index 7a3fc5c..a84fb1d 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -784,7 +784,7 @@ option enabled.
 .RE
 .\" prctl PR_MPX_ENABLE_MANAGEMENT
 .TP
-.BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19) "
+.BR PR_MPX_ENABLE_MANAGEMENT ", " PR_MPX_DISABLE_MANAGEMENT " (since Linux 3.19, removed in Linux 5.4; only on x86) "
 .\" commit fe3d197f84319d3bce379a9c0dc17b1f48ad358c
 .\" See also http://lwn.net/Articles/582712/
 .\" See also https://gcc.gnu.org/wiki/Intel%20MPX%20support%20in%20the%20GCC%20compiler
@@ -859,6 +859,12 @@ had been called.
 .IP
 For further information on Intel MPX, see the kernel source file
 .IR Documentation/x86/intel_mpx.txt .
+.IP
+.\" commit f240652b6032b48ad7fa35c5e701cc4c8d697c0b
+.\" See also https://lkml.kernel.org/r/20190705175321.DB42F0AD@viggo.jf.intel.com
+Due to a lack of toolchain support,
+.BR PR_MPX_ENABLE_MANAGEMENT " and " PR_MPX_DISABLE_MANAGEMENT
+are not supported by Linux 5.4 or later.
 .\" prctl PR_SET_NAME
 .TP
 .BR PR_SET_NAME " (since Linux 2.6.9)"
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
