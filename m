Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0086100434
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zbr+m00gCWAD2pIOdnS3lC+/KG9aQnQUAGM2jR0RuII=; b=u5urcTph8vc3/L
	d6dQZnXohzUIjyqBmCqQRGb03kbw02ddz2+f9fjyo6Cw0BN/EzZ5YCbGS6w+YMN7BbeTzCrP/7kbp
	VcZdrrLXInMbk3lkgWqMKNzPza90qibFuspgaOrD/doBB0470YvGWEZI3y++gfwtkVJQNSiXyV3iK
	hpPs+XzZXd10vEVCR44+J8VFC5LBQnv8N4MAceuclXouEXYtKMc7taiWPHShrHu74Cf8YLPXxTlcV
	BENwDa1l6Ers5eVOxysyqev1+b48OrAZerPEWDi0ibAqCSl995yRf8dayv0mLH4YCWcnmYeQWLuO2
	eps6P5odwUWrapqBZNVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfGX-0001bf-NG; Mon, 18 Nov 2019 11:32:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8T-0001HD-R7
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id t1so18984739wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1C8bi+Glp22eU2mPHcIIhRfHNSQMvhbk1zxbdzRB++Q=;
 b=TWX9iBpwdpSNUgpJ/cUdC3Epzue8lAUKQth8hP+iX2zCk3JnB67JdPmo2cnMyzbduE
 aMo8BAZYKyCe25eCCHhnVtjFsg6NdBfAYdBSLpK6akVSb6dEwTAoUQ0168Nhq2K9wUQW
 zPnEeNERzqbndvpDwZzJpYA4bOmnl+GKVAuj8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1C8bi+Glp22eU2mPHcIIhRfHNSQMvhbk1zxbdzRB++Q=;
 b=YIIZoEUdKkmuY17p8mtpnzDt8rVbS8xPmsoO7LkdIIz5/epqdjpLE7UPhxdCU1rCVR
 Vy1xDkp7JQT6v8LEoH0YVPgcjAwzSRAlqMDQUJ+QK8mNbu4OSQUw1pGIJUJZuNV8I3Kn
 OHKI5xdMLsPD8vW4mPQsV00GTnS/tXvdgveZW8hqA/7qyeQxD3Wj+RW+ajvdg3KSDK0N
 Zvzzd0+HzUrNqWtJ3MZPCDNSlth+jMzwRJYdjJIMjD1Jnzsuid/S5+7oKArZ6SNZtWAp
 S56sLbxdHSfdAPOUrsrvUXVJpVoio8nm0UfYU1kOADpWzdpvSyAUaz3W65xTE7P1wGy4
 2ylg==
X-Gm-Message-State: APjAAAWsxshYnXOi0DpbA00dymWcZzIk7Gw3emSGppokZMTcHySwU8Gt
 oa8C0GAUWYjXPzNrtl+KQR2pBw==
X-Google-Smtp-Source: APXvYqyU40TIEBeeNT1xotdOz5OkMurLXXVSorlX6DaEtGjrmXTvcB0yK0PqCzhmSIW/U7/u5ZYHhA==
X-Received: by 2002:adf:d091:: with SMTP id y17mr30844295wrh.182.1574076240560; 
 Mon, 18 Nov 2019 03:24:00 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.23.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:00 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 23/48] soc: fsl: qe: qe_io.c: don't open-code
 of_parse_phandle()
Date: Mon, 18 Nov 2019 12:22:59 +0100
Message-Id: <20191118112324.22725-24-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032401_942564_3CC0D212 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_io.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index f6b10f38b2f4..99aeb01586bd 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -141,7 +141,6 @@ EXPORT_SYMBOL(par_io_data_set);
 int par_io_of_config(struct device_node *np)
 {
 	struct device_node *pio;
-	const phandle *ph;
 	int pio_map_len;
 	const unsigned int *pio_map;
 
@@ -150,14 +149,12 @@ int par_io_of_config(struct device_node *np)
 		return -1;
 	}
 
-	ph = of_get_property(np, "pio-handle", NULL);
-	if (ph == NULL) {
+	pio = of_parse_phandle(np, "pio-handle", 0);
+	if (pio == NULL) {
 		printk(KERN_ERR "pio-handle not available\n");
 		return -1;
 	}
 
-	pio = of_find_node_by_phandle(*ph);
-
 	pio_map = of_get_property(pio, "pio-map", &pio_map_len);
 	if (pio_map == NULL) {
 		printk(KERN_ERR "pio-map is not set!\n");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
