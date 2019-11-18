Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686E6100413
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diBAa16x9XPdDUp0A1KYxeZFBMXsO4TuOMF+ipKjFZw=; b=IgB2grbHzzBeIp
	oEVcw6RRzP3HLTZVr0/3ba8uWQswR5gsOxcdF6QjcyF1y71QgK9KMv3kyY86zNP5P9mWGVjbk9+4x
	S7cJqYo2/UEBUxLONBjj6BUN461o9u64wGw+57aiENSWSa5xoxOTVNkNexFuZS0twkrnf7OC0Hg7n
	7S/s869oRre91fa2ZrcumZpZ9cOK76IGG0AetwvQCSXAzbIlo89m7oSE52XsQylZkt80JgxObYqox
	t1OBxqMmqYdmMHykf4wqvnU3or8Iq86QIV63MgddPwfj+/crxfaFBlwlnnCBpccQ5orbVtoD0ztCj
	/W9h9FnaAfXVkR48TaJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfCV-0005Cn-Tt; Mon, 18 Nov 2019 11:28:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8C-00011P-Ls
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:23:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id r10so18996842wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c6cX64DMSTf/KsycxtOgXNPxmcIGKLx/O+3SoX0LMUM=;
 b=cUCcyumyZWoue8UKqpho89r5qAqWtZm3cCD3s6yvL1ZAIjEdjV/iA1g+uot/suUr76
 mgN3wnD109p+/BxYSQtR3MRIfynOlo8CHLqvYM/2VL//6doQaKXUzW0bBOXQIlKfDkVt
 bE2Zy1hsnKS6iQJLp7YN42rV8yqYAwM8H+ou4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c6cX64DMSTf/KsycxtOgXNPxmcIGKLx/O+3SoX0LMUM=;
 b=MBDwNeirpcH+WNjqvLypVWa819/Ewitpvra04Pp/MZF6wSagZmtBcbjCzzKT0K0Gfw
 biULcYXODvAP1BLPz5Z1JyERfiUkyNUyPPvWGNfGITJs9ScMAIV0usi1H1KJws4k+gql
 RcsyxhIZgZRzEmQIfnSg35BZkbBKPqTPhCMo0lNI6GXucZMnUt4c1SQ2MV59nrfaCAOF
 B5BsC1dB9cB58ynC8PRFmb5t0PZn25ensxzwzSJPG9OK9WbaD3tSNxBxmM4iGbXqY03i
 8iWZXnWkpg5hFkKvGs3aEBVB35Ezes0F3Y/RmlfzbUn20fLNoJw+GKvizLDjZctRLq5S
 SUnw==
X-Gm-Message-State: APjAAAUrfj7rvNYDn8mV+Pl4xub68CM70T75IE4Yor6LYnXIasgnJAlJ
 YwHBVjwsGORCI7mi2eKStG061Q==
X-Google-Smtp-Source: APXvYqxKtQ/L0jtybhpqM+fbDm+9z0zHRS37cs3RGG+HQSXfkyGVUGkwSkFQQXJyDBhH+RoV9eP+Og==
X-Received: by 2002:a5d:55c7:: with SMTP id i7mr30697760wrw.64.1574076222980; 
 Mon, 18 Nov 2019 03:23:42 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:23:42 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 10/48] soc: fsl: qe: remove pointless sysfs registration in
 qe_ic.c
Date: Mon, 18 Nov 2019 12:22:46 +0100
Message-Id: <20191118112324.22725-11-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032344_742383_7CFC8F0E 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

There's no point in registering with sysfs when that doesn't actually
allow any interaction with the device or driver (no uevents, no sysfs
files that provide information or allow configuration, no nothing).

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.c | 31 -------------------------------
 1 file changed, 31 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.c b/drivers/soc/fsl/qe/qe_ic.c
index 4b03060d8079..f170926ce4d1 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -474,34 +474,3 @@ int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high)
 
 	return 0;
 }
-
-static struct bus_type qe_ic_subsys = {
-	.name = "qe_ic",
-	.dev_name = "qe_ic",
-};
-
-static struct device device_qe_ic = {
-	.id = 0,
-	.bus = &qe_ic_subsys,
-};
-
-static int __init init_qe_ic_sysfs(void)
-{
-	int rc;
-
-	printk(KERN_DEBUG "Registering qe_ic with sysfs...\n");
-
-	rc = subsys_system_register(&qe_ic_subsys, NULL);
-	if (rc) {
-		printk(KERN_ERR "Failed registering qe_ic sys class\n");
-		return -ENODEV;
-	}
-	rc = device_register(&device_qe_ic);
-	if (rc) {
-		printk(KERN_ERR "Failed registering qe_ic sys device\n");
-		return -ENODEV;
-	}
-	return 0;
-}
-
-subsys_initcall(init_qe_ic_sysfs);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
