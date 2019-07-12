Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B6A66468
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 04:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5m0dqlLUG1JqLiyZct5Q7zIodtl0hzHyddbF+qUTAg=; b=SOCo7JnIE1Thnb
	0tU/NS4YxsiZ7fheQAPH9H4KVo7x5983sWW1Hf/7atebiqJycVQACv6tdfr8+Al/Ky+mHECBSdMyw
	QcWtgZlkIEVe4DYgnBemNURjqR06K/vczdkWSpcslKJTLDIgzJaoEfltWuBu7K7EuE6tcFfnGHjks
	ptW8WYAW8O/0tqU/NqESFrLbFn6N2ER77uvW6I85OoGJco5HzyIKfdeH+S8Zqhau0OCzwZb9ylk9W
	cab0Eovne6JJsAN7M7fGoS11syU9cJOSPSwSvXi6SXuyf1C6amJt7amhCO2bXz4poYsARbkfc9m1g
	vNyHCwcqjbE62m6q0eWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hllGF-0003Yc-Dv; Fri, 12 Jul 2019 02:26:11 +0000
Received: from out30-132.freemail.mail.aliyun.com ([115.124.30.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hllBV-0007of-D9; Fri, 12 Jul 2019 02:21:19 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R201e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395; MF=alex.shi@linux.alibaba.com; NM=1;
 PH=DS; RN=19; SR=0; TI=SMTPD_---0TWfTwyu_1562898031; 
Received: from localhost(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0TWfTwyu_1562898031) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 12 Jul 2019 10:20:31 +0800
From: Alex Shi <alex.shi@linux.alibaba.com>
To: linux-doc@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH 04/12] Documentation/m68k: repointer docs to
 Documentation/arch/
Date: Fri, 12 Jul 2019 10:20:10 +0800
Message-Id: <20190712022018.27989-4-alex.shi@linux.alibaba.com>
X-Mailer: git-send-email 2.19.1.856.g8858448bb
In-Reply-To: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
References: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_192117_851879_9000FBE2 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [115.124.30.132 listed in wl.mailspike.net]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-s390@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, kvm@vger.kernel.org,
 linux-riscv@lists.infradead.org, Alex Shi <alex.shi@linux.alibaba.com>,
 linuxppc-dev@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we move Documentation/m68k docs to Documentation/arch/m68k
dir, redirect the doc pointer to them.

Signed-off-by: Alex Shi <alex.shi@linux.alibaba.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Will Deacon <will@kernel.org>
Cc: linux-doc@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 Documentation/admin-guide/kernel-parameters.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/kernel-parameters.rst b/Documentation/admin-guide/kernel-parameters.rst
index 5d29ba5ad88c..dc283dcffae8 100644
--- a/Documentation/admin-guide/kernel-parameters.rst
+++ b/Documentation/admin-guide/kernel-parameters.rst
@@ -118,7 +118,7 @@ parameter is applicable::
 	LOOP	Loopback device support is enabled.
 	M68k	M68k architecture is enabled.
 			These options have more detailed description inside of
-			Documentation/m68k/kernel-options.txt.
+			Documentation/arch/m68k/kernel-options.txt.
 	MDA	MDA console support is enabled.
 	MIPS	MIPS architecture is enabled.
 	MOUSE	Appropriate mouse support is enabled.
-- 
2.19.1.856.g8858448bb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
