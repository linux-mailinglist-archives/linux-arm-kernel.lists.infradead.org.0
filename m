Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB98210043A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWBJBk8AqhWqqP9TD/ouHbFlXhjaE+kOrFHU1r7qVRE=; b=e4drwhMhdzBPgS
	EXmScIQ2Zh1EETn5smyeZk4jDk5kqDDNrNXHMlj6qN9LHVpnoCTdJMVwIa6hodvezTQB+keIuyb/I
	ScNCD9mPEwj41zy5hczrtKURRHlgcbgobCd3NeeDso5+J20DOq+G+TE4ZlyfPEKfq0CxFA+4/ersR
	8rWX3mfwHLQ7f0UO9LuCjXPBgKzhlRhaFd8CHJ8+YtcyPoax4pukNQO8vgSphz3fB918P7dTZNHSV
	hKX1seTDpif6ng7uDmQPWADEHGu+ATxmMcglXDcTl0parg6SwLwaKRmPWvvXM5lLGMSsAm6JkbBiE
	ksI+t1E6HdXV1wV0UNtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfH5-00023c-Fi; Mon, 18 Nov 2019 11:32:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8Z-0001M8-J4
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:09 +0000
Received: by mail-wr1-x441.google.com with SMTP id t1so18985105wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N4h2w9DiO+4P3jPc0w1TT3xARdv8ATB93lgz8xw4vxA=;
 b=BtVtcRzODZ8MQHGzYCVSDPVdMWLdRIEn5FSDxW2pv1/RNrvGTyDeG/pgWB86cSvaIv
 TNZNSFsrEdvVIiE/woLEJuWE8Lw+0gQ9MXrSekMCN9clwVZSZaJ+i5oBqoP2hIOTM4Dr
 AtwK+Z0xVzRVdRSAV1aHZtBvtqhp4cgkNfOQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N4h2w9DiO+4P3jPc0w1TT3xARdv8ATB93lgz8xw4vxA=;
 b=BHBuwqC/QiX65ueHVEBWCgT92sfqYN/uZa8Ru1ctx+LjBNS3DrLkkWLNEmeztLXOon
 Clzi2jWMXwD81wT4CTv/nt6VKBPID0lTuvVcLsEDjbezv5b6QNrkaQQVDr5eddWujeZs
 TPvRBMIFm0MqXXJiCCLdzRz2yBGCu62Iz+mCaOuIcDO/gZ9FbB+ctCM8sCWyC2stDPsS
 geSB9+eshk/5O/sz6gmEmkprm8DSWM51LYxS7+OICY+PuXQMqq/E5VXqDWOD9uBX6rK3
 1/rUy3Ud9azZnQOWHrQCrNm2HnYUoERBcNt97OA4oOnczgVhM04jVDG4UG1ZA2iZfJWo
 Xe5w==
X-Gm-Message-State: APjAAAX2VH8Y6tq4LX1cvsy8xG2wMOqqBccECtbQu3/uHJmlz2ItgABE
 N5erLKD3BFZhgJ7iLp/8Eq2NOg==
X-Google-Smtp-Source: APXvYqySwYyYLwaAMIcShPAMqzsR8c5V+8U/1LZVhB9UFBPpSlbgcxnFk8Ug1vEVntOXvm4iiz96Mg==
X-Received: by 2002:a5d:62cd:: with SMTP id o13mr20477009wrv.367.1574076246235; 
 Mon, 18 Nov 2019 03:24:06 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:05 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 27/48] soc/fsl/qe/qe.h: update include path for cpm.h
Date: Mon, 18 Nov 2019 12:23:03 +0100
Message-Id: <20191118112324.22725-28-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032407_712156_B812486F 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asm/cpm.h under arch/powerpc is now just a wrapper for including
soc/fsl/cpm.h. In order to make the qe.h header usable on other
architectures, use the latter path directly.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 include/soc/fsl/qe/qe.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
index 9cac04c692fd..521fa3a177e0 100644
--- a/include/soc/fsl/qe/qe.h
+++ b/include/soc/fsl/qe/qe.h
@@ -17,7 +17,7 @@
 #include <linux/spinlock.h>
 #include <linux/errno.h>
 #include <linux/err.h>
-#include <asm/cpm.h>
+#include <soc/fsl/cpm.h>
 #include <soc/fsl/qe/immap_qe.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
