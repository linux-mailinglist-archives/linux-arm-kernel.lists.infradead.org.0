Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA066F1A81
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:56:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Fbo4MDZdXVCqrOBNpR0J0HgHqMoFmZ0TxLr0sKR8H24=; b=RVa
	E9yLPKoePmdjm42psT+DbH/Mvu8CcM0TnX6eLsHcxLkzCxvkJNjDhZIAef6sGDUWqSIjdEFUtmk/7
	4sjzMbKUfK+LSKchvbERA8yhcvHfrlbzlBK6M+KaCbRsTqscF7XBcPgOeXlIDjRweXxrDOYunWfkh
	gEJJYmxz13Qwj1k/qqN/zHggLZF2pDO8cOSSPTE75ttaJmJ8MgPksUfeVo+TCXvixbxDvBnJvfg8c
	WPTJVnEEFnuRmwvFqCNjqNEvL7n3IJTGLkKj5omJDc5bHyc3bKGv3BehEhzstZjiWT2XZAgwlsO+N
	aiSDhFVqwYhrIiFLkPYb4nFEj1IDJYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNfG-0006lJ-19; Wed, 06 Nov 2019 15:56:10 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNf7-0006i1-5D
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:56:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id t5so26722238ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 07:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Qpl59SkxVGxYRO1y4hy9vYURdogoOxolBZEq335zpV0=;
 b=crGU2R9aBYvgI4zzKv7bUfa+SWTkLwQp6yyPjoaL6tkbjuYf5Ky2/o4a7yo/q/UUzV
 MBKRcJbbSQRyYxLd6Pg0NoIVnxAi+FiKD00neMcezQYG2t5xy+BRy6DxX9ERkkQw4xjn
 HhcBt4EHaXif2TNLuNf5HP2YPobFp3mCibv/P6flxs4eex0tKWF7MIInNsyjx+AjG1Zs
 gV5B1AXA5+r95uMX6mSO+4fdyWnRzLsbRk/5WKmIOPTyXX0Q3aL29fzpyEmX0R7ePaQZ
 DwM7Tor8rWKV6+1QRPGX08LlbvGpfXU+vkYl2kR87IQwFOkMoDpxSmOjN0z9WAOJDAZ/
 Hdxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Qpl59SkxVGxYRO1y4hy9vYURdogoOxolBZEq335zpV0=;
 b=EHEBH+AcY/mxnCNzXqMQoaM3Bsf+lt+djnsxS87D3t2LSxWUmgzhET7R/URJ4i0xDM
 whEnJt4fvJ+iWG6VYma5OEfPr/90KVkqqtcDE0XWDxI7STj83xZNmrnk4z1eIIUkp5HS
 OBLjzwhQmGRF/i15JyZ/g2jYXv3zWnO17Nmn9uQQP9aLXeMEDk4o9ymN/b5RjCm6e6Td
 +n37MDRx5WJRnPf3d8gU42RDn64Tc+qg1WqlJY2x2qx7BD99uQYScCdxrSiXoWDbUOcK
 OxTUpRDDWw4xpNvQpO4L9ijfyPztJDHnkiTrifUUeoxWyzmUGq43gRbEHZkmFqD9nTYK
 fFDQ==
X-Gm-Message-State: APjAAAXNGk5C+E2TSLWt9vjJCuhrSZ/n/6ZjsnOXojvmdCU6M4quw0MR
 JuRV4Kvl28FATV57+vVt0i2uWA==
X-Google-Smtp-Source: APXvYqyIDCj1EArqUS/KfCY+Ed7DLtEfID0IusRmXwjbGvjfcC5kpcSMGPxpQznGRhH1feDUSsZBdQ==
X-Received: by 2002:a2e:88c1:: with SMTP id a1mr2591237ljk.204.1573055758918; 
 Wed, 06 Nov 2019 07:55:58 -0800 (PST)
Received: from jax.urgonet (h-48-83.A175.priv.bahnhof.se. [94.254.48.83])
 by smtp.gmail.com with ESMTPSA id k187sm4704895lfd.54.2019.11.06.07.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 07:55:58 -0800 (PST)
From: Jens Wiklander <jens.wiklander@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 tee-dev@lists.linaro.org
Subject: [PATCH] tee: optee: fix device enumeration error handling
Date: Wed,  6 Nov 2019 16:55:38 +0100
Message-Id: <20191106155538.5618-1-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_075601_335991_740F9944 
X-CRM114-Status: GOOD (  14.13  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Victor Chong <victor.chong@linaro.org>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 Jerome Forissier <jerome@forissier.org>,
 Jens Wiklander <jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prior to this patch in optee_probe() when optee_enumerate_devices() was
called the struct optee was fully initialized. If
optee_enumerate_devices() returns an error optee_probe() is supposed to
clean up and free the struct optee completely, but will at this late
stage need to call optee_remove() instead. This isn't done and thus
freeing the struct optee prematurely.

With this patch the call to optee_enumerate_devices() is done after
optee_probe() has returned successfully and in case
optee_enumerate_devices() fails everything is cleaned up with a call to
optee_remove().

Fixes: c3fa24af9244 ("tee: optee: add TEE bus device enumeration support")
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/optee/core.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/tee/optee/core.c b/drivers/tee/optee/core.c
index 1854a3db7345..b830e0a87fba 100644
--- a/drivers/tee/optee/core.c
+++ b/drivers/tee/optee/core.c
@@ -643,11 +643,6 @@ static struct optee *optee_probe(struct device_node *np)
 	if (optee->sec_caps & OPTEE_SMC_SEC_CAP_DYNAMIC_SHM)
 		pr_info("dynamic shared memory is enabled\n");
 
-	rc = optee_enumerate_devices();
-	if (rc)
-		goto err;
-
-	pr_info("initialized driver\n");
 	return optee;
 err:
 	if (optee) {
@@ -702,9 +697,10 @@ static struct optee *optee_svc;
 
 static int __init optee_driver_init(void)
 {
-	struct device_node *fw_np;
-	struct device_node *np;
-	struct optee *optee;
+	struct device_node *fw_np = NULL;
+	struct device_node *np = NULL;
+	struct optee *optee = NULL;
+	int rc = 0;
 
 	/* Node is supposed to be below /firmware */
 	fw_np = of_find_node_by_name(NULL, "firmware");
@@ -723,6 +719,14 @@ static int __init optee_driver_init(void)
 	if (IS_ERR(optee))
 		return PTR_ERR(optee);
 
+	rc = optee_enumerate_devices();
+	if (rc) {
+		optee_remove(optee);
+		return rc;
+	}
+
+	pr_info("initialized driver\n");
+
 	optee_svc = optee;
 
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
