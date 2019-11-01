Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F654EC32C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mM+2dSENWxvehibhiEMfWtyxLXhtrkDdQi0dxK+52E=; b=Jun645dlpOUEC1
	brxmMuvF8vEV3sF1VyD7tPXJU5z8WyEDvqGvZHd03f+Dm7Rsp8mZe16SWxgiafUe4EAnvuuNDMvAX
	LiDYuxsH8nVoUj9Hm+wfznxigHVd2jky+C2LBJ9PXn/LXzICoF9bFCtKlUT2OLcsfQCbap4DS5mcA
	dSowiQIhnIEsTUfoeh91bp/CRXX6UKzrYhd6uyTRMywmJHR7EZ12AxpOrx1UvsB1vyDTpZtzjkwGh
	OboiEuJYmQWmXuFy4JlRLLwZTqgg5VAMoQ/3Dsq5vWlx2RDhw1n6tq0b4x4f6NKkDhh76HjkfMgeW
	pCXgBerVFrwxIT6r/Gzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWNc-00079U-73; Fri, 01 Nov 2019 12:50:16 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWGN-0008J8-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id t5so10150798ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UljkrHErTTnMZOnzGC3cVx/3LEJEQ4UWt74UluMX0lk=;
 b=OHZGBP1TBQfvAP3vjunmLBhfNF02xeHIP7Z4YLcGpteSui6uUZ8cI8v7DR2EY9/BCx
 /3owyBaDZ2Gd2fli4JuN+3IgLGgFzsDaImq3Vsqm51EFCVUaX6ilJa2+PUc2BYjusPhN
 Dol3W59JbHgfpwUAyWr3hYt83wZJbYJzIYXTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UljkrHErTTnMZOnzGC3cVx/3LEJEQ4UWt74UluMX0lk=;
 b=LkoNZv/OdpaI3Pxz5IQF9HcvNhMTAjfuZC4lM2irzTLZ8fKrGgzAvraZ85e/RASyft
 GwnI/N1a7Utr1/VdOR8jgXASTdT6GQRl1nglcd8IgMo/qWoYsdTzv4VZxsqX40rURthn
 tEkt7XQ1gYbtUMvNzxmG1YyFBI+bXyk1QtU/VIzYcU5vuhdXROcXlg5HFpG8FPuMpszH
 waT44lHGwJhAlMPQyLjLqVUy4V+xhsIdGJGLEqSwG3TSANKg2ggsbZwzYwTsRt1fQxcv
 Y9pIt84u8LG5hzGeCUVfsQ6r0g+yTCsCQcKHi4whcllEpx+K41S3qAXRmpHpWs9IjO+r
 3aBA==
X-Gm-Message-State: APjAAAWN64BAyLe4zTr14cvcPdI7kS5I2ECHyarCdPWyMUzsvvoINQWA
 Wj5gYCozd8zeBp5q5PFSt4rjvg==
X-Google-Smtp-Source: APXvYqy0SISrUEfxbTNa4aExJBg3oQJd6fkt7CSidNJBY4f3WIpx0ZRsrM9/V23RU58OsjkGftFV5w==
X-Received: by 2002:a2e:7204:: with SMTP id n4mr580399ljc.139.1572612166096;
 Fri, 01 Nov 2019 05:42:46 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:45 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 25/36] soc: fsl: qe: qe_io.c: use of_property_read_u32() in
 par_io_init()
Date: Fri,  1 Nov 2019 13:41:59 +0100
Message-Id: <20191101124210.14510-26-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054247_924250_A5F6A6B9 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
