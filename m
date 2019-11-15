Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04053FD300
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 03:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cN73/gvnmFlDElqZ959Z6yXRSwvhohTLsej1VLXI0NY=; b=klklZ8eyt4f0Rp
	tuO+RW2aUlr+0RJsozMU5NXoEx8kxfrTy2Fz6gSfCmGKOe9oODyejn6cw9ApB2MPyYb/yOBqxkSjp
	xMm5+HFnKYPlHqPtW3CupsdvaE8zEYAdcu1tA//vsLnBRS41GtytBGhxlgrFjNeusf++6vfkqTgO0
	W59ufTWhLw2B2jUpaKO+0Wpug0pC8+YBRI/faf4vHG/nABZpzARwdIKrQ1CNxaVCQ7+oJVXDTMYSs
	69OM78fgof84OroIwEjDKHkwG9Ebbul9hFjrDX2EO42irUw9+VdJ3ubxWyZw2SzXJg20Udx+XI3bh
	hxCvRR8Y+mag/BZGaJRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVROh-0002ts-JT; Fri, 15 Nov 2019 02:31:43 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVROa-0002t0-8z
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 02:31:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id b19so5612728pfd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 18:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cR0gnrmhbMOKM+lRTo6HMYyjWyd0V/IOlryadjiD5LE=;
 b=DlRWx4GkuZ611eGPy0M4ipPKCwRCTM1GWJpZkvQni7qSBrIuB76dGQkCRblfOmxS0g
 uVpdqW2DhYLc2yq0qaYRN+GqutCcC1RTRTzLfEKCLskCm8v6GuFWP/lkKr354gTHdeOP
 xgLkQYx2QKkMHHLSSS7l0K8F3jvH5wWVZN7yKp+7eGULeGQ9BSRTAoNTP6nkdqz/BBuD
 lwYhiPv/tnwt1ghpNh+6nSNB+iHjyfqTUABhhOZzZRHkMJuuXgR/wDmD25vGEcsV7LJP
 3Vysfw7wtay6MWZK6oTTLNoAqm3sIUsFKNOF7GBeSqXKdpRdR6Qze1BYCOSFZwklKquK
 +Iiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cR0gnrmhbMOKM+lRTo6HMYyjWyd0V/IOlryadjiD5LE=;
 b=oXWyyLTnsk5hPGHPx8SB0qmPWrKT0TJG5QNgl/4V+chzwQAryXSAbkEeZ+SSKB00kP
 4YhCpfTcjt6S+Ef6alOW+/UkxQWtpvcQffhgFH+qrq7InUkwVV+3c4VQCpUf1po1X9ID
 HGpUQZeh2AOZMs0BajQ2U6MtpGzKXE4f50/g/uKNeUqLsMjcMJ9ZahoP7KO1IE+FuKpY
 Sw5Xh6mRBFtUfeKsTmXlfMlNIxaUUzzxkqSVK+QYuVUZWHu84hp/hlOXGBCwKGfePNMo
 9+XXV0uOw3QKjw00RmnCLTOm6bySlJjyVIxhykfNZ5hyo6do5Ihuk99dPLZPQOxfYf6K
 LL8w==
X-Gm-Message-State: APjAAAWw/ugdAMZAg1c7OvVsyDpHkzIb3KhE6mGub56nrmj2+M6QpwQS
 RW6h6nKiQJqgKBd6yhUoVK4=
X-Google-Smtp-Source: APXvYqz+unYf9pay+wRvfzQE8p/IF+5OKV960yTH+9GEgEMwPUq5afSEhqMWwz7SFJkukvrkNWRzQw==
X-Received: by 2002:a65:6145:: with SMTP id o5mr13239624pgv.38.1573785094807; 
 Thu, 14 Nov 2019 18:31:34 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id k190sm9794626pga.12.2019.11.14.18.31.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 18:31:33 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] crypto: picoxcell: add missed tasklet_kill
Date: Fri, 15 Nov 2019 10:31:16 +0800
Message-Id: <20191115023116.7070-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_183136_341948_177D8684 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Jamie Iles <jamie@jamieiles.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver forgets to kill tasklet when probe fails and remove.
Add the calls to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/crypto/picoxcell_crypto.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/crypto/picoxcell_crypto.c b/drivers/crypto/picoxcell_crypto.c
index 3cbefb41b099..8d7c6bb2876e 100644
--- a/drivers/crypto/picoxcell_crypto.c
+++ b/drivers/crypto/picoxcell_crypto.c
@@ -1755,6 +1755,7 @@ static int spacc_probe(struct platform_device *pdev)
 	if (!ret)
 		return 0;
 
+	tasklet_kill(&engine->complete);
 	del_timer_sync(&engine->packet_timeout);
 	device_remove_file(&pdev->dev, &dev_attr_stat_irq_thresh);
 err_clk_disable:
@@ -1771,6 +1772,7 @@ static int spacc_remove(struct platform_device *pdev)
 	struct spacc_alg *alg, *next;
 	struct spacc_engine *engine = platform_get_drvdata(pdev);
 
+	tasklet_kill(&engine->complete);
 	del_timer_sync(&engine->packet_timeout);
 	device_remove_file(&pdev->dev, &dev_attr_stat_irq_thresh);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
