Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC19100432
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:32:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mM+2dSENWxvehibhiEMfWtyxLXhtrkDdQi0dxK+52E=; b=G84dionuvQqKwa
	j4efmAbCbe7ZcUpyqVMaYl5e6snZhNXshMMkAWyKiWnqcIqdf5/Eded0p/fzxdMRW0bnB2p7UG8l0
	P7HZFIwxLsWYqc6ABFn4sYlSNyxe24KixIOS2EFK2ybYz//wMHEWPMyZUzUe6hTEdbfg8t6MBD5H9
	a5ubZOmjNcAW86NvG/tn8VxnscZMSBO0PfKNQgfuWYHi3oeVOW+b2wnWZ5RRTD0xhdB/mW+In/dgt
	9ua/Z+V6dVsxjInglbJ9Q520m0HfocsHTegECABIcQ8AXdO/0aM0jDWLmc3l39NYNpS2HaSgDT10B
	267y+taeINpWa+cTcZMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfGK-0001NR-K9; Mon, 18 Nov 2019 11:32:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8W-0001JP-Pq
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id l7so18973912wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UljkrHErTTnMZOnzGC3cVx/3LEJEQ4UWt74UluMX0lk=;
 b=Hs8PX4sVJIwwkhMnX/i23yvXVKgiBAZ0EflioICFlUiNZBktVM50OF+N1SRAhov5c3
 bEK5SKUGxm13GFe25nWAeNF04u+FVpabTehtOzibHm8/2w1qxPg65sxQcTApGI7GMrCs
 Sdfak0xZuyoukt02m38D386ldKNHrflp0r1yk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UljkrHErTTnMZOnzGC3cVx/3LEJEQ4UWt74UluMX0lk=;
 b=M48M183tGLLW66tyLN1MNKLZ9AuNSxXzjFQEMAI3iWy80iGu8/0dErmAENsxnpJA4Q
 8+bWXgvNWk2ALeRNU6gzm54Qw2sPgR3f5XheJ2q83W06hqgYhGg4MZFgKMRTOyIiGhy2
 acTzss3g+UAJDEFGyiKldtzpjoBxH3yyy3WPYKG8yBR2U5XGf9GA8HGCioNBBJh9qVsS
 Ywc+7y2rTl9Vfgxfbt6woJ8MpZa39aTUWaDjbvhgaEQ7XTdhLWx+CNoae0hTpA+yidmT
 xXhiJQnhhbVPYfHe5yeb3c9K0ZCuXsJN7vsd7DS/2TcuijBIWFsPePlwYF2AY86cWOQt
 2oIQ==
X-Gm-Message-State: APjAAAXq+X4mAxiJWQg2mwKbE6j38HbJtjKoZXqAzYAFtU4vzoDTo/PA
 muP6CK71dRwHEITHg5FGquhTmA==
X-Google-Smtp-Source: APXvYqx1qUmVxbnUojGI2hh8REIAqzLfraBuKrR6T3lZNpWA7RXt75BGBSItMF5rI/cMRCq9gCkq5A==
X-Received: by 2002:adf:e3c4:: with SMTP id k4mr10747487wrm.356.1574076243541; 
 Mon, 18 Nov 2019 03:24:03 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:03 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 25/48] soc: fsl: qe: qe_io.c: use of_property_read_u32() in
 par_io_init()
Date: Mon, 18 Nov 2019 12:23:01 +0100
Message-Id: <20191118112324.22725-26-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032404_880555_3F4E9894 
X-CRM114-Status: GOOD (  11.02  )
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

This is necessary for this to work on little-endian hosts.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_io.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_io.c b/drivers/soc/fsl/qe/qe_io.c
index 61dd8eb8c0fe..11ea08e97db7 100644
--- a/drivers/soc/fsl/qe/qe_io.c
+++ b/drivers/soc/fsl/qe/qe_io.c
@@ -28,7 +28,7 @@ int par_io_init(struct device_node *np)
 {
 	struct resource res;
 	int ret;
-	const u32 *num_ports;
+	u32 num_ports;
 
 	/* Map Parallel I/O ports registers */
 	ret = of_address_to_resource(np, 0, &res);
@@ -36,9 +36,8 @@ int par_io_init(struct device_node *np)
 		return ret;
 	par_io = ioremap(res.start, resource_size(&res));
 
-	num_ports = of_get_property(np, "num-ports", NULL);
-	if (num_ports)
-		num_par_io_ports = *num_ports;
+	if (!of_property_read_u32(np, "num-ports", &num_ports))
+		num_par_io_ports = num_ports;
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
