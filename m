Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2ABEC32B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zbr+m00gCWAD2pIOdnS3lC+/KG9aQnQUAGM2jR0RuII=; b=Kh46iF8hftRtUQ
	jqCqn2fzHefS4PUGrQFJTgadNsVeUHjuNplzrPbRUeE7IsiDLrI6Uwj2QXOY3V+ipXmp1FlyH+9QM
	nVhgGjVVH2w2qZODNBHNfq2KDTFHua3irWzJtd8fBX8iDodx4B+jUz1ibV59nOjykRFEsXtXCDm2Z
	5Nd1sIM3uQJjOLAD82sZvDYXSoI1GvFDg23g/838b+hO1r7JJdU7k4DIqvGj2w+0kRzSxaeu730iT
	ImRSRJsyGZR9iUJKVNW2i80BiWEKQhKSm//Mjpb9YC+LHDTOuuWznt8++OpfDprPZJ25GwVGClTFY
	4byiGCAkc+Tsnf3FKUjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWN0-0006jf-R0; Fri, 01 Nov 2019 12:49:38 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGM-0008H1-En
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id q2so3561857ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1C8bi+Glp22eU2mPHcIIhRfHNSQMvhbk1zxbdzRB++Q=;
 b=TKeI5WJ5HApJ0bpDzJiCOE0G53vmWWtXk5nF9C/9USrhBPI9ZALZhnUbAm1tvtRMKW
 OFi9vIGQA9UR1/zZExnDHu6ZCx+LKx8j+FBnKATUCkOxnSdz0vv6wvCHXrsNus7CNMsy
 gBIDN/LX7KNsH7MZ+LmrHTnn4wCNf+69eCkN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1C8bi+Glp22eU2mPHcIIhRfHNSQMvhbk1zxbdzRB++Q=;
 b=B4wA8f2ddUKPrQsHg8ahT3rGEd6wQZuwioXaeHbKFjW6what7cwRILV3CgKUtLsN3q
 AfJqWjYps5Ylv/sFZJox8kk8SPF7VDA1y7hZ7+P6V7JB6OrGaF1iz2qLob0IH1zFOGQ2
 bCgNf9n/PmOGbLHitcB3hemlrEQcV8lpVhyFVqH7pRpBMnVidwo/NE14a3LvzuO8PYRv
 rOAervOlymRe1bbU+XmPluyuJ4uoJLyDIRA/zccew0xhRn1FoLv6cvF9bbtDRHUVKq6G
 MhT3v3nj4his+ScHrKua9w6mEOueIlc65aFYKOBtF2BavJ8SuTO+9oYDVpq4A5n7Y4QB
 dIgQ==
X-Gm-Message-State: APjAAAVbRkmU2FxmUd2DXKc+ndg56P7xp4Xc/Ce1pYbRHQ79vmcr0Y98
 e2/7svTrgfhoWBPEU48sYtAZIg==
X-Google-Smtp-Source: APXvYqwaR+A8MH7lH/sC0yoJ4mSYgmPfqD0xbkFeC/pa2axliSAcW4VUXOMG3J3WRdSDgDQTi8u32w==
X-Received: by 2002:a2e:898d:: with SMTP id c13mr4497954lji.54.1572612163835; 
 Fri, 01 Nov 2019 05:42:43 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:43 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 23/36] soc: fsl: qe: qe_io.c: don't open-code
 of_parse_phandle()
Date: Fri,  1 Nov 2019 13:41:57 +0100
Message-Id: <20191101124210.14510-24-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054246_521528_CE5D4A78 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
