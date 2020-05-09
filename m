Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35B21CC033
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 12:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1/RGDKtfmgEc66/iaO5YFdeJ/gg54VWWwg04KPqymJw=; b=gLS
	49bdqKx6WizxmQZGsKIw4ZIgOkZRpSJb9mcQjqjjnFTIwmvXc/Wj+8UlvKgBilmbgfsc+dOPjZvxw
	SQ9s8p5dPJhhJ1F/Jy1KVDE658er9F52k5vSFtFOj+4oGyC4yVUrqf1zc3FmWrim/YkiJ7hnrAvkM
	DzZO54JJAIwarbYK7FxDwRo8HxsBgeNtjhqpVLJLHQzs4rnlxTgiGuTtA7DxfVIt7ik7QuZvFGmnW
	EF+ViLkKLQ3/IM/a/XK7r2DJq0ieb2WCaao18GtunN6kyDbl6bY/URBxNXCQH0EYLQkmv5I1hpM+K
	2z+c1IFoHINJ/XgUxb8/q2RzMF6GWeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMOd-0008Je-6q; Sat, 09 May 2020 10:07:51 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMOR-0008I0-9F
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 10:07:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id f8so1829460plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 May 2020 03:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yGdNVJVc2hx+VBlbsbRaJylSj1Gy2Co11S5g9FSchK8=;
 b=UEWj44wa3MNkFiazKpfDxErjqe7CiPUCjKlCcrUnVcLAASIpzww064vSl5EHG8jvD9
 bbgh6Cf6GdqJS69eNG1n63MeQw8EURn15OhbotG14zc1y7FrtKraUnqG14RrcvkU/pUR
 ZKycFLY+SXGlZeTdeXwpDiHjK/v3bbraw2xihC/eGlKLZMve5H/bJ3NnjLbQypo9pqfF
 su1Qw3eHcQ0NLeNJBOYZqjENhJOnj2XxbLHGjDW0CnZULsNLh3+zrxuDgxuodHl6wINf
 NVgiSwc3VF4XjPPyvh3KGCpDt5fC16bzCil2g3zJ/4YJoE1u3fj5MwE5S+4LEpWyeOqO
 M13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yGdNVJVc2hx+VBlbsbRaJylSj1Gy2Co11S5g9FSchK8=;
 b=gDNcvs+R5Xrz4Ryfq/nt3QsYAWTKK3g+PnN/TaV6to6IAQ2mzEoDhyeaZPcnZDDYsv
 qMWcHTFEzSSzpi5fCsSNF0i1bYEn30D1vIelilpKXAkx21OdiCNNuDCvw2J2c3/MoLlW
 jEWI6UuEGQTnD2yw+HseulmQi2nl6vIL2VZufZV9MoijxnoN+mfkqkBNAf/2kJMfmMFY
 QOujC2CwAXuc+a52rB3RVOPhbbO/7krIvklHihQZU8QqjSxL4NFurQ2UbxLW6AJsdbBu
 mec0Jcs8X+c4NAy/qt2yfurFzCoZ13YyfdXIAYuqpgT7Qk94H/Pu8kuJM0wJ36eBNgUF
 bz2g==
X-Gm-Message-State: AGi0Pub20OzHZ84zSufIijTY3LKghHdiKQdpG6/dXjP8ljOTmkn7uHfd
 rF+jyIhqkZE120+9MKclFy4=
X-Google-Smtp-Source: APiQypKncBOHCP9M1qDYMuIz0gWMUBZ9E9kKuIqJHgfxSWuOka2tJKW+iMGPcgL5MLTjEB2xW2XJqw==
X-Received: by 2002:a17:902:cb91:: with SMTP id
 d17mr6470059ply.129.1589018858189; 
 Sat, 09 May 2020 03:07:38 -0700 (PDT)
Received: from localhost.localdomain ([103.240.195.135])
 by smtp.googlemail.com with ESMTPSA id h12sm3321116pgi.5.2020.05.09.03.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 03:07:37 -0700 (PDT)
From: Harshal Chaudhari <harshalchau04@gmail.com>
To: derek.kiernan@xilinx.com, dragan.cvetic@xilinx.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, michal.simek@xilinx.com
Subject: [PATCH] Driver: Adding helper macro for platform_driver boilerplate.
Date: Sat,  9 May 2020 15:37:16 +0530
Message-Id: <20200509100716.11044-1-harshalchau04@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_030743_878154_25A4F035 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [harshalchau04[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [harshalchau04[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: harshalchau04@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Harshal <harshalchau04@gmail.com>

For simple module that contain a single platform_driver without any additional setup code then ends up being a block
of duplicated boilerplate.

This patch add a new micro, module_platform_driver(), which replace the module_init()/module_exit() registrations
with template functions.

Signed-off-by: harshal chaudhari <harshalchau04@gmail.com>
---
 drivers/misc/xilinx_sdfec.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 71bbaa56bdb5..db16a42c66f4 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -1484,25 +1484,7 @@ static struct platform_driver xsdfec_driver = {
 	.remove =  xsdfec_remove,
 };
 
-static int __init xsdfec_init(void)
-{
-	int err;
-
-	err = platform_driver_register(&xsdfec_driver);
-	if (err < 0) {
-		pr_err("%s Unabled to register SDFEC driver", __func__);
-		return err;
-	}
-	return 0;
-}
-
-static void __exit xsdfec_exit(void)
-{
-	platform_driver_unregister(&xsdfec_driver);
-}
-
-module_init(xsdfec_init);
-module_exit(xsdfec_exit);
+module_platform_driver(xsdfec_driver);
 
 MODULE_AUTHOR("Xilinx, Inc");
 MODULE_DESCRIPTION("Xilinx SD-FEC16 Driver");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
