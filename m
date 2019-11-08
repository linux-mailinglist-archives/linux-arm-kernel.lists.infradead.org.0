Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEA1F4CB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:09:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mM+2dSENWxvehibhiEMfWtyxLXhtrkDdQi0dxK+52E=; b=sDE85nPag+Qdfi
	eJdLuZv3tNPJm37Bh6CoWjTAGphXdfjVEOQR9xdGx02FE3CpirBbuskCguHJKLahs0RWdO2glhKo/
	dXXf8ijg0pDsBvF21P2qFvnNdePd0snZPhs7ag5McYSyX5IOTaUDe1ghfML7h/mVVBSexsIaeRir+
	DEwj56XCwK9tVu1wYBJKxvJO75NtqZiXJNKB2YMOo1dbFhNs6s4xk4h2dOiAOCMIwR190HLSmFmK3
	dorrYnJTOSGaMXDqHQiiLfFa7UFsmBbgTiowpqjiaZ5uwTVwrIqKueTACqp3494nY3ou7vDyqCG60
	h7ULlw4recaWEA7JIQMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT418-0003Zx-BH; Fri, 08 Nov 2019 13:09:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tp-0004cF-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:03 +0000
Received: by mail-lj1-x244.google.com with SMTP id m9so6113771ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UljkrHErTTnMZOnzGC3cVx/3LEJEQ4UWt74UluMX0lk=;
 b=btUNt8m0uV4K7rFRwIU8q6zzflOOAMijjQeLyfrjzcaIczK5jbDtdELyjy9dr04RD6
 VsDmKA7rt6Vd7Bj8D6PEuCjxR7+LvQCtJVl/OhH5dz/1en8np2tnjoWXw+wArp7P9bhz
 9UKoh5jfu0tbKnJOUZqtsYgj/Cn0lm7JvLu4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UljkrHErTTnMZOnzGC3cVx/3LEJEQ4UWt74UluMX0lk=;
 b=o2zeprhf52uiColELU0ga3nFydk61pWEHFr7zIG9biRE/DSVZnRIZms0ujBpLLCe/v
 1Pp2qzg3kLeUeeCiFct1lBsCG2GT7DjtkeUvJdXOkzugKFNS5DTGvubeBOftyeBnZeeP
 HHdv4c8bzDAvTCocsx7X4yHTVb94FvcYKqD9qDK9F6OU+IpLtxAjR0JN+rZ674YzYH8y
 hH8MX/YFkPMbvdYutidh+XNIwpoolHfpcrkDdEz1PzKkdQ7Ag3ZFY1kpFnjaVQ8fhW4z
 ROlEsIxAWujGyJOPy6tgYLa9NtlOUbkqLQpZLACtHRdhPmE1LXjwaPYFi0sLxf9CFHTX
 JnIA==
X-Gm-Message-State: APjAAAX7JBPjBLG82M16dsqMi7/81UF+eUs7iigD2lcrp4JP0frYkA6i
 AliE0JeZB2R/mm+GwIg+m8Ekqw==
X-Google-Smtp-Source: APXvYqxTzVF8/JKsKMHYte+9aWvfI7aAER8ibdsachcG+KIWPQShSZfW9EYappa6aFPy4j79NTv/Bg==
X-Received: by 2002:a05:651c:119b:: with SMTP id
 w27mr6123930ljo.221.1573218119558; 
 Fri, 08 Nov 2019 05:01:59 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:59 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 25/47] soc: fsl: qe: qe_io.c: use of_property_read_u32() in
 par_io_init()
Date: Fri,  8 Nov 2019 14:01:01 +0100
Message-Id: <20191108130123.6839-26-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050201_669600_EA6A845B 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
