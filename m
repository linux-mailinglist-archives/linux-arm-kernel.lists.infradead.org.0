Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC7310CBC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1p59NRTT8/aZ/R2/5jmQE02qG3g5BTMc2BjHtG0UxI=; b=RFzKJ1tkDLKBCg
	ghA5FnMsqjChdc3XlcIHD8BES43TGxd95OnRqYym512K0BHDjLWPu62/uUI50gqEZ24dJkbTsqrzH
	fx0cgkByp/Oc3FxGXeEZiZWyfRrbLtRFGUqNzHI+2BAZtCoS/0wIvaD+QsDoyTXSu5Ukg6b5UWu83
	Dyeb+y1gFkfR7x+pfVuxMe832qoGAVkJEltYH0nGpSx/0wc95ZngCugnncNpEs+Z/nRQKgnb0HxP0
	ZF/BoATEtZhiqIK8HYNIBwPOJkf42PjQ9urt5X14QXDbm1fXNhPvWu5mwZEnxJxmZx5fFQ8Ma0N/S
	kqWMFkXQv9VPzjWRC71A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLoX-0007TB-MT; Thu, 28 Nov 2019 15:34:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLn6-0006hW-Rr
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 15:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MvM6nM6rYnMj/7VFTI0rv5G9KH57+NDrgUtr1bVU1Oo=; b=NpYUh0YkeM7RBCmTfWXQPCAWEm
 Vij1FH0NgDz5/fVUF7UNA7y3zuFV9Mavfp8fc4qjJ3YWSmfbPClH+QieTfvLbpMSTkZhqfS7wkCpK
 Cv+f75UboLsH18VKrg7wwmrZDeCDyriR4VseRxl6nSTvAnhweJqOkPGSvDhdormI2anY3aSpJWq7l
 1QwLyVB7tZgjRcTy9N6vBsOWBzdUXjfsPKFQHEaruZsZYy09s9Rqda0OzKIvg7KKr6G/pTn5hI/J/
 OqPURgeuW10nn3ZmHB46YNSAnoEKZXNEGq0pmsqLhLRc1JA4MhKAegUCcDuKFQAJz1PQV674Qi6e1
 jgS1VsBg==;
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEh-0002th-Cf
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id e9so28811269ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MvM6nM6rYnMj/7VFTI0rv5G9KH57+NDrgUtr1bVU1Oo=;
 b=e4aBLwHSEzy8sONERW/IwRDhDSYmz2xR72o/4T0/8DlresPv1aHRcv2mF/UxFqnVYZ
 dr0Cd9fhZZRCC+/2Z7pzkTYZpfIa5RO/B5S5colgeJW38Clo2Jv9cfK7JNcF+4votG96
 jEiOkgJ4r2LBjozkTCIyUlgmBI9ZKS6LH7WCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MvM6nM6rYnMj/7VFTI0rv5G9KH57+NDrgUtr1bVU1Oo=;
 b=dTS0OAkRYraZqg54B6qX6/feiuGPfJfYK76Pl5J3xz0+3qZ3RjTEa/5fyvq17ypCjw
 lvnTzgmy3jka/ocOZ4RB9Oh2WXJ6kc6GnnTAmPbnARq9dihx6VjiHzVE4vu0Tb9OBZgZ
 g94p2Dx4VrnTIW1+LvNAU2YR4zuIF6+2hWKnngaRp6OXtXGp7+Ae31vzisbxVG+l0w0o
 4m+JgQUvitMtCTU5SJ3eI1kapkfRp/ZZK33ZN8MX3rLI67r3mJdWlxR4P6vSAVcrZ78b
 dCLaKIubLopVlJ272mhQIIpJyIxa1euSSIFwinEy1X2b80ieZIs7e0Nwy90eOY8Ft+4U
 t9cg==
X-Gm-Message-State: APjAAAXPp4nunWu49R9Lt37u8k/nKHqJwi1EwFrCJaVJlYg0JJ3rZfHd
 jgOIOwliOJE0xOjMmf5teZzjlQ==
X-Google-Smtp-Source: APXvYqxmpuOqtK7ASzusSfLJEMa3pAop3ficVhHUNDn6fZ5q7zMOSDs2fGSSox4I3LFNqV3q5D+1oQ==
X-Received: by 2002:a2e:3a15:: with SMTP id h21mr34921217lja.256.1574953057257; 
 Thu, 28 Nov 2019 06:57:37 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:36 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 25/49] soc: fsl: qe: qe_io.c: use of_property_read_u32() in
 par_io_init()
Date: Thu, 28 Nov 2019 15:55:30 +0100
Message-Id: <20191128145554.1297-26-linux@rasmusvillemoes.dk>
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
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

This is necessary for this to work on little-endian hosts.

Reviewed-by: Timur Tabi <timur@kernel.org>
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
