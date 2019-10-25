Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2883AE4B77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uoU1DPqnvwtZPXyjjdRan0Z3ddjKpMkZxHUAQFeEiY=; b=Rm6674Eqtf4j+8
	bTRSUPpS+fCWNuchU7qJ4+YZ/ImoT6zRfqag0mqzlFUz4vA96yZtqqBgtW3IbCISd25OoP3hKFW23
	Mq1WeA2Bq8g7oQTf2sPOPYgtq5RAHle466bCJjd71eQelQltJfi6nssageI281xOkrwby9buESu/8
	3KejYjcIxFBPyKyFG+1zk0wXMSJ4UGgKY/gZ3LbosaVO0MDqwAFy0gpXJjLGokkcl1br6HX3cyLd1
	x08MbNxhnmLyI6uNt2jK8/87N1fpcOXasOd1uw6e0fma+6p5da7v9LC+O++f22av413kUee21zkFs
	2RP6TtYlScBPDrV2QXdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyz2-0002Xc-SM; Fri, 25 Oct 2019 12:46:24 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyu9-0006NS-0s
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:22 +0000
Received: by mail-lj1-x242.google.com with SMTP id s4so1663236ljj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=25nZvlQO3yC7IxomA1FSL3UVFhWXmdHyCH8gs+B5jDY=;
 b=CHlNbLznCLD+9QqB53UKVxFWZZx6+NuuoSSZ04+l9L/wWDzqpQDRs+hb/7KwGrnUKE
 DXwI+kb2gkU0u8cK+N+oOl6YK5aRBzeHmMaUTEpH2Fbpd/D4tunbyu1e5xE0bT7G1Jgs
 HXleEroGe7pXlS5k2YW9XUhmioLEBexahKruc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=25nZvlQO3yC7IxomA1FSL3UVFhWXmdHyCH8gs+B5jDY=;
 b=e6LpIfn75l2ACn4/TNTS6RcLMDjc/TblJrOwzbE52eoeQa6roPHwyRa3IF7ek+8Lkw
 7uX0LxLPDh0DaDUT09Kxer40mw934qgHmJldzEi90pUt8545TwDxVXMn9Z9HZLW9LXpE
 NAuY30m/Vl4+JP6zYlSJhcAxCPGhr3vno0w09VFPJlA/7bC3gBrE7aTin7nxW9kcRdqC
 J2IDngrIk9CpB74AjIFug2I2EiJ4K7JoMekN0qNojh8RVDk/0ypasLfNLHqFnqhmaoPL
 EBNdfIZqPe+WvMoq5Yjm0k7ulQWIiAyUkeWw8Js+n5McuXOITD2V1lNV7F4isOKGYqrh
 r1vQ==
X-Gm-Message-State: APjAAAX5vgfi0zTcBcoYGRd2Cf8UcruqDJUxMJgtCJLBxHLIupOiyqFj
 LoGcnWB/Lr45q82gGASXXvGtog==
X-Google-Smtp-Source: APXvYqzyE18HLcIQwkmrc5Pv5A6HQWczyLJz1SK8xGVjYLYsbDkY9CpxwHjOUK4P61qt5TGlioKYvg==
X-Received: by 2002:a2e:89d3:: with SMTP id c19mr2340355ljk.201.1572007279184; 
 Fri, 25 Oct 2019 05:41:19 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:18 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 13/23] soc: fsl: qe: remove pointless sysfs registration in
 qe_ic.c
Date: Fri, 25 Oct 2019 14:40:48 +0200
Message-Id: <20191025124058.22580-14-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054121_086798_25684E8A 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
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
index 61a40e40f3ae..6bd6d6fb9696 100644
--- a/drivers/soc/fsl/qe/qe_ic.c
+++ b/drivers/soc/fsl/qe/qe_ic.c
@@ -604,34 +604,3 @@ int qe_ic_set_high_priority(unsigned int virq, unsigned int priority, int high)
 
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
