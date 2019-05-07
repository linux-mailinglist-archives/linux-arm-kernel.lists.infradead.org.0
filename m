Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B361E15833
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8tp4e9IsvMrooKbHpuScI70pS0efAD148kV6XlYT9Hs=; b=pKaFDftQxN3GsRjZNowRP4D7cz
	13LQ0j8hIaTpH+Fpeg19d5vmiuznCjSKs0/TVydzFnq8AteEp34Uud9dfWDaJkzN2XnrfPAYOAvUI
	Uo7C/4d1NBccjWE96LCiEYz5+g/nqFBF80K4wAGZASG18KV9aPJDtNE8lm+XlAPuMc0mdRwiokg5c
	IAC0HwdJOQhFV659/alwPF57xoWE5O6Ah4ftSb9Ulc9yiXMYFvK5Srjm91tMpajgh8LNG+MhlWUf8
	5Z25HhJUW2AGi9WLWuHMM/wUv1lFZttGojwhJ+gD1mWJ54VyBWA8NsXC8LPHrWlMY0fzlR6sKmfro
	Mg3IEjZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNr6G-00062v-DK; Tue, 07 May 2019 03:49:04 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNr5b-0005MG-Ra
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 03:48:39 +0000
Received: by mail-yw1-xc41.google.com with SMTP id b74so12004294ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 20:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BS1/jESCLQGl++18YgcjRnarhyKQVFv1eQaUnRRINiY=;
 b=okR2hVGuVkjD8DHfaC/MYFZVsl4nHJJRB7xMW6LbMiGt5kWBYDddFy0NnUhMtkv5oe
 25dd5pGdFXU4AiuwLMBjyWvOTD6oxXEPnYlAL+dGWgwajJ5O6tzyRDFzMvrhnoO211EZ
 msqDxOolDHmjdE8s82xBl68KGrh/oXtNLIrt1oDuoIF8BA16gH28vfMmifMAb7I55oAr
 4BptCOTWmI3xEkPzQe94sUXFTynMECcrlsWAfDQEspfoDstaMvKSga2N7nVlkRMojTcr
 u/1775q7EAVKm2wylFHTYfuCQwYuC+5/8JJTFpMyKDY/HkdFlXF6qfCSoPUZt1YiBKtM
 vdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BS1/jESCLQGl++18YgcjRnarhyKQVFv1eQaUnRRINiY=;
 b=qgL6IORd5fmJAnM2DXZnIbcK8r1YZ+QZlEvWKjPPZWl19PRctVSFlxe/31yKHkQlhw
 1fx3TvlIpoX66moxOUdSPEQPUZa0GJXNHLH8mZ7KDARwCRWTuA2lwEfM9eNivy3riOam
 SzZQbapDOL5vHx4teiN4QFq/Hir0MQXmqe9VsRaqhGZ15w1sha+cDVJmDK5A95zg+RyD
 oqEc5+Lfgn9/QAHq1pOdPbZPgrn2EGuz6qsPFD9WEh+4OuGmuCjBq+bf0FaplqO+OreR
 Qr/EMIqTEizd9sC80kRGDlaND3ZJWdDbN7jnNrrx7i9P5TssjyF9FUqbGVQQ8fsGEeXk
 8J9Q==
X-Gm-Message-State: APjAAAVCADlXfP3tLiTHxiPSS8q038eyNMLGRx+9m0xsFNWRvoO5EZ/f
 Etvxpw85jUiiFxqXkB22Zxc3kg==
X-Google-Smtp-Source: APXvYqwbbHZokSlUd2vZtUb1XWef6MQWf5XdYiGF6tNXj4WV+zJBLERROXLoN5lMWk/6wlzL7r9zNg==
X-Received: by 2002:a81:2408:: with SMTP id k8mr19479917ywk.172.1557200902857; 
 Mon, 06 May 2019 20:48:22 -0700 (PDT)
Received: from localhost.localdomain (li931-65.members.linode.com.
 [45.56.113.65])
 by smtp.gmail.com with ESMTPSA id a205sm2120383ywc.105.2019.05.06.20.48.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 20:48:22 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 05/17] ARM: dts: qcom-apq8064: Update coresight bindings
 for replicator
Date: Tue,  7 May 2019 11:47:22 +0800
Message-Id: <20190507034734.20622-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
References: <20190507034734.20622-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204824_507358_AAA3ADF2 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to the new CoreSight static replicator bindings.

Cc: Andy Gross <agross@kernel.org>
Cc: David Brown <david.brown@linaro.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 65975df6a8c3..c17d5de877fd 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1603,7 +1603,7 @@
 		};
 
 		replicator {
-			compatible = "arm,coresight-replicator";
+			compatible = "arm,coresight-static-replicator";
 
 			clocks = <&rpmcc RPM_QDSS_CLK>;
 			clock-names = "apb_pclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
