Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D001F37CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KztRnhGk3GWw/jJTfrKt1Z5bNqKDE4edPqJwe+unb4Y=; b=iixgpeYt3vvxG5aIPd+5c66q6E
	+X9vg7l4hvLUVuRn8BVyJ/s80S558GOrKM3caTLgYKLb6x1K3CTsV/tNbvdEtRbHfLhEFijXzeyKO
	e/TbP/O147UHbgj3NKzPIq95kguJm0u4JJuIWsiKPppDH8naxQJL6Jpiws9/mELD84tkL2d2gOQFj
	8e38S4743k0UuLhsCfnEJvhiFkaEAIKdyzS9VsWdslY6fCieYChy4AAdXtfA9sKRZ+Cw0WeStYf/H
	95y9jVtoNjvGD8LDXSHlk+mwg6sigBk3TiLHJGFqtyQSqMX331Qsp/tWa6LnkTFjZ0Ypkkc77vgnw
	Dgcj/t3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibLA-0005o1-8n; Tue, 09 Jun 2020 10:18:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibKF-0005Af-8h; Tue, 09 Jun 2020 10:17:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id b5so9872368pfp.9;
 Tue, 09 Jun 2020 03:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GaViz1C7phajEC01jHhddMW7VzXhQ3Zl5PNkL37o/YE=;
 b=lr683qheUJhLXvT0Shdk8NNrX2sIZgyJd5/S737Hi3D+5RtHGzASLEQff9fZH9tVf+
 r6bp8ckEz5po2xObkxJeV4cSt9CdLHNL0ynnGbjxYMs9IcWUj1Jam8qdcROYuZyMt2ii
 Z7sSW7WxzUpOERLH+b7+bm1cnAgm7+LiwktXx6s1zfNAUF9ADLl+HsEtq29OOLVIKIMg
 SsCxYSyIL38MeSmIbA/8jGYufg/9v6woVnz/rr72wFPQ82rFh6hsEYLF650j79OtZX+y
 lwWlWJ4J7/BUlmAs5k5JhcnA/a64Wf8TGFnst2b3klZzwgZcYe5Dr07rToLbXNkbVsk8
 Qunw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GaViz1C7phajEC01jHhddMW7VzXhQ3Zl5PNkL37o/YE=;
 b=nK6Ta1rDwGuNzbXTbv5orok/EOtxsdvIkmebzMBUPNmTrtoKjyo/hI6LO2T8O7iJwZ
 D735kB4wgZ6v090WTTlIisPAKAzVxDDaGxi1xFki8oj/4Rt9pNUsf2XVqB3RSrbCuMKT
 IfikNMsepNjbY3bxI7p6XFR7wYybSfduDDPvumotOnmpTUWmdnb2XkkWOyjsAtT59vu9
 Ke3X3cr8c+ZGWrBRUkb+6tPWvYd9kj2to1+3Mecfty2POy8wXTE5yt80Qr6GfMsIrz3s
 Kbmfol9nuux+yk7++ZfZlV1oeY+hdbtY+p8tMO8sBKWq7nCwVWriI+HuWQ1qfMkL7Vsy
 CSQw==
X-Gm-Message-State: AOAM532CJsfHuiILXIO9HdzJzIYczDl/ceaLoECZOOm1JOG3LwD3erwa
 Pd+tmyhwbbH29C6DUIBSCLc=
X-Google-Smtp-Source: ABdhPJzDTr7NdhFSHN9qc74QCMb1dDEOcethACVE2tEEA7eddP78bWgBXRKbzA3ZXb33/1N5MaIGSg==
X-Received: by 2002:a62:b40b:: with SMTP id h11mr24013563pfn.183.1591697865815; 
 Tue, 09 Jun 2020 03:17:45 -0700 (PDT)
Received: from localhost.localdomain ([223.190.87.90])
 by smtp.gmail.com with ESMTPSA id d189sm9637253pfc.51.2020.06.09.03.17.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 03:17:45 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 sboyd@kernel.org
Subject: [PATCH v4 03/10] clk: actions: Add MMC clock-register reset bits
Date: Tue,  9 Jun 2020 15:47:03 +0530
Message-Id: <1591697830-16311-4-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
References: <1591697830-16311-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_031747_311214_30A2BC89 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds reset bits needed for MMC clock registers present
on Actions S700 SoC.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes from v3:
	* NO change.
Changes from v2:
        * No change.
Changes from v1:
        * No change.
Changes from RFC:
        * No change.
---
 drivers/clk/actions/owl-s700.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/actions/owl-s700.c b/drivers/clk/actions/owl-s700.c
index a2f34d13fb54..cd60eca7727d 100644
--- a/drivers/clk/actions/owl-s700.c
+++ b/drivers/clk/actions/owl-s700.c
@@ -577,6 +577,9 @@ static const struct owl_reset_map s700_resets[] = {
 	[RESET_DSI]	= { CMU_DEVRST0, BIT(2) },
 	[RESET_CSI]	= { CMU_DEVRST0, BIT(13) },
 	[RESET_SI]	= { CMU_DEVRST0, BIT(14) },
+	[RESET_SD0]     = { CMU_DEVRST0, BIT(22) },
+	[RESET_SD1]     = { CMU_DEVRST0, BIT(23) },
+	[RESET_SD2]     = { CMU_DEVRST0, BIT(24) },
 	[RESET_I2C0]	= { CMU_DEVRST1, BIT(0) },
 	[RESET_I2C1]	= { CMU_DEVRST1, BIT(1) },
 	[RESET_I2C2]	= { CMU_DEVRST1, BIT(2) },
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
