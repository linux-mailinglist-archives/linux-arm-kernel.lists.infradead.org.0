Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEA110CBCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:35:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsEyqlrYyTBHs6kIp64VxXuyK/8ZV5fpAxWcfkI30SI=; b=lTIZiPQxnnBqz0
	h7oQbyFIPdD9Wuu6zzC6iunCsU6VuAp0j48q5ZLnIJjT9iYa1nF4+25o25UlJ9TDbyOGp16uk6EaJ
	X2YXwZ+E4DSiepA+OoG0Fi9i7jfiZOUdehZEdNlCuYqurKX0aBPQbHw6nJ9cXlYgkrRxCaSkWW/Ah
	rGBQgCsyYRhNJKA+v9yrefsqapetL+hFykJM6hbaBI/Mj8q33QnUZWFfrvf9Y3M4h3UdHqkCt16Ow
	QbkNcoRtX0ISlLpiyt1u4QP+ZtcqmLzs218ehcUgN6+xhoCoNLB8eK+EJ4kzO09eslFNoYWlKRmDn
	ewqlBPqedYuvY2WMzyWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLpZ-0000IB-E3; Thu, 28 Nov 2019 15:35:45 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLnD-0006hW-7D
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qpr+mYQ+9NhljhKb64xmmktj4amAj+pnq2WBWOuqqds=; b=cwaWJEeYKOYFXL+iPsgm310HeX
 CvPwX9QA5VDy1wQsPq0Lv6K6RryVESsHUCUtWIYLLvavIrNKW+tqvWu+pe2OweFr54FxcXuiUIQQr
 d+9OJgSjJpbUc2v7AL1AFAZcCBgNvTqadB53JRzinDDEdB+VokzRMhr0Quxd9YJlsmwPep9mz5iB/
 BU6gZNmjbYxiVokFXcCjtGFsQT+23LoT/yf/JmTy0ItWeGpCKrUE62dwJMWcEtgoowqNPchri4NNU
 4eUbueMjQq99DrPRvlfVED7O/65OTKwYaQRlEMPMsCP4wNXRetmc0qAlsNXAqqtk/g9S/0KVJJjHW
 UVVzLo/w==;
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEN-0002sP-MW
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id m30so18408876lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qpr+mYQ+9NhljhKb64xmmktj4amAj+pnq2WBWOuqqds=;
 b=d3kmOdLH1nQ1nKEoDYYtc0T6z2HuyQRGRStUwfE2OY3yRETb5N94S4G2Kpj1PAc9Xn
 pAzCDOtkxI9HSMWxUvxzwM7qJUNFuZH/NZUf0Qlg0JcuFbCamVQsU3TgMVUwyGnhimXn
 oIBPeX0gtsrm4gJDjQK6zKTksO4njOigj+cV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qpr+mYQ+9NhljhKb64xmmktj4amAj+pnq2WBWOuqqds=;
 b=bIA0e/p3/zUnyzS0xCNd5ZfWRpjY7Cso27hadTk7QYbwykOQDQ16XDkJs1b/WYQcFt
 +wM2IgZ9608JO+43WlJHIBVFKdYE7V1tuPHv77lESucFnafjdo2oBrH4KJ57hBdFLM9W
 MHrDJRVGNehA2Mc0JZws4GmhqVSN9MsYAD7VQUXlaQTeuhVWtkvSybDePM1uJtQtraRy
 ROlaFsaBf24ITrKxH7QNSLQCANL38obmI+yrevBiu//PHiAigyC4WF0xr/ljU0xDgMlf
 QSu/z+c69lVkBVo15MWk/oxXtUl9+47+iWz+l+T9lOyLgyuB6lZpVuJ5HHWxgfo5NZsj
 EbXQ==
X-Gm-Message-State: APjAAAUHEVkiY3wr3nu5br5YLr5iQWFrQS+v+IzaSN6xa/XswhOzAo2u
 G6iUB867MyE20+hbqNmBcYCKSA==
X-Google-Smtp-Source: APXvYqzBPcdHaviXcZ9S4ZGfso3OF5EGZpWvSwdjKnbpQV7b22GzQm/MJpik7k/V1g3rb+yQCOnAAg==
X-Received: by 2002:a19:f107:: with SMTP id p7mr32135574lfh.91.1574953037520; 
 Thu, 28 Nov 2019 06:57:17 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:17 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 10/49] soc: fsl: qe: remove pointless sysfs registration in
 qe_ic.c
Date: Thu, 28 Nov 2019 15:55:15 +0100
Message-Id: <20191128145554.1297-11-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Reviewed-by: Timur Tabi <timur@kernel.org>
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
