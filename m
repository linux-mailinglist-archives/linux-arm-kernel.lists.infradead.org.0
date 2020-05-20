Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6F51DB137
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CgqAnAuQut0SDTIrBf3VFc9YzB6a4l0RC+EFN2yaDOU=; b=P92CaGXpMBdXlwr7uMtJQq5VO1
	Q2gNtieQBJddeW0ulPbXerizO/pgA05eVEvkNBUacTOMS8Q3uUTXYyJYPAtaO5wj4qGRPMoVkWAtt
	UDLJFpSuAwLbcGqTA3JsPpe4P2mFZUKp1FGzSNCyC4UMjKjbBtjG62kYLaBy42Cq2ZS8SaI4Ycu2G
	e1CRVeybsv+f7C0zGbXGVLxonc21y6W7J4APkAM7bN5olkhiUR69TpAkeGrLhaaDdzvqM7Ih4jikl
	OFeF1CeFBCcKetzR38XcGYHSmNiaNHWVXLlDohJKt4rKiipbx31xg2dDn/D06wDwoJQIrrZdqDm7Z
	XrB+hSZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMfb-0004yu-Kx; Wed, 20 May 2020 11:13:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMey-0004fW-8I
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:13:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id n11so1264166pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L4VlC3w2vGN2vXDu2vdOxtfNJ1ZDmhnMu1C9iDb4k5Q=;
 b=qNl6HzvIrP8iK8PRiHj/zvYTJ4DNHplta8G2LBd6c7zrLo9i6ACDRVaLkd6wXoXCJB
 +Fuka+XhWtRFpeAoF054KBR5WugZjBOv8jYQKfvLaSICPXf9AP3Zltm4vXBY+oWnEfez
 J1s6wj0eGeX1s/UrjZsBUIjUJKuYkd4aznXtek3r9WIw3NWoXXiMxBgc5QUGuJIdRYTu
 +yD1LPTQQ6D1fOc6EZ1NjUvpkAa3wEo8qscsWG+J7LF8y7qEUCk6GeYvOEmLUuJ03SAi
 Bin0nIdV7vyudrOoQomqHhjsrl55+SCMPftq7nhExZAGFrnf1zxw64T90Necr5seGfNb
 D3MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L4VlC3w2vGN2vXDu2vdOxtfNJ1ZDmhnMu1C9iDb4k5Q=;
 b=nRzHB++i751FG84o20/D/X4VsP35pb548S5APwDK674EV6A1UoxJ8cPoLjCUbYZcxs
 aXV0RziaKO4pucWsRAQQqcxTac/Wro4b0hNB5ZZkbKF1atnBpL2T0YVjfXluRf2d2+nu
 jnQ9Vfb8dEKaP9LGNVYBY78y2vCb8X4EqszFAKJDgu9LTxuy4+g7Gv52tL3Q+ynadfgl
 fc589K33GXKRK1spHi3uxJhLpHJ0Btv9rXAUf46842RdhyX9MSAZNpLDuqjVMXdc2zZC
 n9OGuaVkyGQv6DoCJiYB4iPqWUi7yBBAOYexydEr1Em/esx5mHnqvYj9JYYmL1JR9qCL
 nWyw==
X-Gm-Message-State: AOAM53066S+dVRUemwzu1fw8TbEeaOB0koaOyoe2xBqcP9LW94ybccg5
 VZbUXvUVl9q1umGRV9syzAdgj3b/lNE=
X-Google-Smtp-Source: ABdhPJzFrj1psMvJysAYcuO/Cf5POOGdTZuwteJpZy4CrbC1e194avqYMKbaNslTxsDvhte0gChECQ==
X-Received: by 2002:a63:e60b:: with SMTP id g11mr3836980pgh.120.1589973194777; 
 Wed, 20 May 2020 04:13:14 -0700 (PDT)
Received: from localhost.localdomain ([117.252.68.136])
 by smtp.gmail.com with ESMTPSA id q134sm2044974pfc.143.2020.05.20.04.13.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 04:13:13 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/4] arm64: smp: Setup IPI_CALL_NMI_FUNC as a pseudo NMI
Date: Wed, 20 May 2020 16:41:54 +0530
Message-Id: <1589973115-14757-4-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
References: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041316_481595_2760A6D5 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, jason.wessel@windriver.com,
 dianders@chromium.org, linux-kernel@vger.kernel.org, maz@kernel.org,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setup IPI_CALL_NMI_FUNC as a pseudo NMI using generic interrupt framework
APIs. In case a plarform doesn't provide support for pseudo NMIs, switch
back to IPI_CALL_NMI_FUNC being a normal interrupt.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 arch/arm64/kernel/smp.c | 35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 236784e..c5e42a1 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -68,6 +68,7 @@ struct secondary_data secondary_data;
 int cpus_stuck_in_kernel;
 
 static int ipi_irq_base;
+static int ipi_nmi = -1;
 static int nr_ipi = NR_IPI;
 static struct irq_desc *ipi_desc[NR_IPI];
 
@@ -986,8 +987,14 @@ static void ipi_setup(int cpu)
 	if (ipi_irq_base) {
 		int i;
 
-		for (i = 0; i < nr_ipi; i++)
-			enable_percpu_irq(ipi_irq_base + i, 0);
+		for (i = 0; i < nr_ipi; i++) {
+			if (ipi_nmi == ipi_irq_base + i) {
+				if (!prepare_percpu_nmi(ipi_nmi))
+					enable_percpu_nmi(ipi_nmi, 0);
+			} else {
+				enable_percpu_irq(ipi_irq_base + i, 0);
+			}
+		}
 	}
 }
 
@@ -997,23 +1004,33 @@ static void ipi_teardown(int cpu)
 		int i;
 
 		for (i = 0; i < nr_ipi; i++)
-			disable_percpu_irq(ipi_irq_base + i);
+			if (ipi_nmi == ipi_irq_base + i) {
+				disable_percpu_nmi(ipi_nmi);
+				teardown_percpu_nmi(ipi_nmi);
+			} else {
+				disable_percpu_irq(ipi_irq_base + i);
+			}
 	}
 }
 
 void __init set_smp_ipi_range(int ipi_base, int n)
 {
-	int i;
+	int i, err;
 
 	WARN_ON(n < NR_IPI);
 	nr_ipi = min(n, NR_IPI);
 
-	for (i = 0; i < nr_ipi; i++) {
-		int err;
+	err = request_percpu_nmi(ipi_base + IPI_CALL_NMI_FUNC,
+				 ipi_handler, "IPI", &irq_stat);
+	if (!err)
+		ipi_nmi = ipi_base + IPI_CALL_NMI_FUNC;
 
-		err = request_percpu_irq(ipi_base + i, ipi_handler,
-					 "IPI", &irq_stat);
-		WARN_ON(err);
+	for (i = 0; i < nr_ipi; i++) {
+		if (ipi_base + i != ipi_nmi) {
+			err = request_percpu_irq(ipi_base + i, ipi_handler,
+						 "IPI", &irq_stat);
+			WARN_ON(err);
+		}
 
 		ipi_desc[i] = irq_to_desc(ipi_base + i);
 		irq_set_status_flags(ipi_base + i, IRQ_NO_ACCOUNTING);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
