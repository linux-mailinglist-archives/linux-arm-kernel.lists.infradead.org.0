Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04231C99B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 20:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pp3zLC7F9Kjfg9OKJnKl+C86kZjS13NJvBtc/c0VsQc=; b=rSLnPem7lXoweU
	xAf9NxoHXqsLIIbOuyd9ZD19lH5rkJmnaXmSbpTBp5G/FYoHRgjCL9XKYjn6wE9ILpHfpE961NrmE
	wbTP6yepuSBsGT9fOqm+4e7kTploswC4ByIH8ibB4+11bxqXYzY41Dcqui0+NsgV/a98T9ftQ5Fb3
	iQlnf2jOnPvuGfM/OjhLl8+PT9TpL8vK3IPrrz12k/T9Sut6qnrbqwPcqg0KgJSRirAFR6/yT2Nmg
	kGXCUDFB1/S61G4XYgjBJg5FNNEsJVM449Z62gRZDHr/xrvl2/W1JL3s9/fWeQhrRg/s4IubLJlfS
	uGliIA0fCzphqwWgOmvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlZd-0003zo-96; Thu, 07 May 2020 18:48:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlZU-0003zU-6V
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 18:48:37 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18FF521BE5;
 Thu,  7 May 2020 18:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588877315;
 bh=eVID7GhEbcf0/8Q5jvZMrtErhyUthXxPmrIJvJbk/+0=;
 h=Date:From:To:Cc:Subject:From;
 b=oGR62nntwkq79FCOWn7nFoj1c0oW3WjNOnphBMx4Dq82vtNhdigMNzMmLyQFKEC83
 A0ZA+AbFawVcm9ae2RIV9vD6RbaS17vFxeyDGH+RbBTdnEKlmiLAfrz2jskEv5bsuF
 6mfzbK2eQ9T3AzL1Kjk8CeWEw057BF+M6M44vK6w=
Date: Thu, 7 May 2020 13:53:01 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: [PATCH] treewide: Replace zero-length array with flexible-array
Message-ID: <20200507185301.GA14333@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_114836_264273_8F1EE6D2 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

sizeof(flexible-array-member) triggers a warning because flexible array
members have incomplete type[1]. There are some instances of code in
which the sizeof operator is being incorrectly/erroneously applied to
zero-length arrays and the result is zero. Such instances may be hiding
some bugs. So, this work (flexible-array member conversions) will also
help to get completely rid of those sorts of issues.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 include/linux/fsl/bestcomm/bestcomm.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/fsl/bestcomm/bestcomm.h b/include/linux/fsl/bestcomm/bestcomm.h
index a0e2e6b19b57..154e541ce57e 100644
--- a/include/linux/fsl/bestcomm/bestcomm.h
+++ b/include/linux/fsl/bestcomm/bestcomm.h
@@ -27,7 +27,7 @@
  */
 struct bcom_bd {
 	u32	status;
-	u32	data[0];	/* variable payload size */
+	u32	data[];	/* variable payload size */
 };
 
 /* ======================================================================== */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
