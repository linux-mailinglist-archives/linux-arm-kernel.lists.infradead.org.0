Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D37F4C6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:04:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omXSnIDn5m1mrqS6mGETw1zyvYLCVaQBzuzJx9tNajs=; b=Rt86Oe2Q+XNqkQ
	9EryY28NWdCj7666enk+D3bZyH7Hbu8zxUXYAUNl201OFUslXqUThavOAAO7tuLkS6PeOKruVklhx
	8u1TyCYhxfayPgf3+RZligktxgsIpF7ZnATPkwTiY3M/hmvzBEe+lGL9QGXFVn3rvjrr8kxDV1Xk2
	pwW+Yi3T0au+liU9CAEaUICKdwOo1IxZyGZkdHgLLnNuwDWuMGirpfBw6NHAaSR0xtNZE9zouhNMQ
	rcNwZOEsq0Ue/UdcOeiwc9Vdn3kO/ZoPT0fxWnI5Gxw0agpuvCvTaPJiHPbxwk/m+rURnM+5QvlwS
	Lr9Xk30TH7H5OpJfKyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3vy-0006Fb-Ux; Fri, 08 Nov 2019 13:04:14 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tT-0004Ht-87
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:01:42 +0000
Received: by mail-lf1-x142.google.com with SMTP id j14so4393376lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KU/n1Q/VNXJbWwIQys/qt9rGcT4PXz5RLqrj6x2UwvM=;
 b=HJOJZkxwDS0medOsmpThvkVAMPgReePyoCZfeE53ipRTRMDB0W6c5pAuf6ddW16YzH
 bTOd+bBAagLh5RkQgulpK6Rx2eot8KegFwHr4WplwoCtgkFmTv4Kl1wWcO7q9ySV5I6z
 pMMrXUWvpVqVoyCYDeiFszP4vKVSXYmeRZehM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KU/n1Q/VNXJbWwIQys/qt9rGcT4PXz5RLqrj6x2UwvM=;
 b=bw73eyWGAWe3PA8qNL9n7s/3eXckHNaHSmFUbqGRNB69TpOCAph8jgL2z8nM3ke1hj
 DfSe06ZJIcCh44iMNYkr0uO6AO7pAXp5P0in34oIf9oqKAQ75Q8sfqYFGmm50mvBB2ug
 4QkWoNK99UhAVUSjkHqkVj35wZjd+0yQ58MsurK0UgqcIvhcN0E6ioeAnfoHA8Z06hMV
 3mft+oyNIXnAvEK5Y5xt3Q+vpYo9saaE1l1w/5adCtsIehv6MDw0ePf9WeZRtRnDf9dO
 aN+Aki+mGUEUVxu3MYRKrKhY0IyK4WT0kFhhDgOmxHXIuVJeuL9g3ipfvMM5a2yHKsxl
 EV5Q==
X-Gm-Message-State: APjAAAWAQRmharzl4yOD0dak3fENmFFmxeZb2JQ1XwDBGImEyXYHSQOI
 TSye2cIv5342u0v7BLwZ3rY+jw==
X-Google-Smtp-Source: APXvYqwV1QSJeo2zO51t+HaG52pdBxkjO72k8ABUQOFAqLzD+fyt+4MoIaNvkXvy8mC20ecsyTXyqQ==
X-Received: by 2002:a19:5e53:: with SMTP id z19mr6167585lfi.111.1573218096769; 
 Fri, 08 Nov 2019 05:01:36 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:01:36 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 07/47] soc: fsl: qe: qe.c: guard use of pvr_version_is()
 with CONFIG_PPC32
Date: Fri,  8 Nov 2019 14:00:43 +0100
Message-Id: <20191108130123.6839-8-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050139_462733_B115B4DB 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

Commit e5c5c8d23fef (soc/fsl/qe: only apply QE_General4 workaround on
affected SoCs) introduced use of pvr_version_is(), saying

    The QE_General4 workaround is only valid for the MPC832x and MPC836x
    SoCs. The other SoCs that embed a QUICC engine are not affected by this
    hardware bug and thus can use the computed divisors (this was
    successfully tested on the T1040).

I'm reading the above as saying that the errata does not apply to the
ARM-based SOCs with QUICC engine. In any case, use of pvr_version_is()
must be guarded by CONFIG_PPC32 before we can remove the PPC32
dependency from CONFIG_QUICC_ENGINE, so introduce qe_general4_errata()
to keep the necessary #ifdeffery localized to a trivial helper.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 85737e6f5b62..1d8aa62c7ddf 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -197,6 +197,14 @@ EXPORT_SYMBOL(qe_get_brg_clk);
 #define PVR_VER_836x	0x8083
 #define PVR_VER_832x	0x8084
 
+static bool qe_general4_errata(void)
+{
+#ifdef CONFIG_PPC32
+	return pvr_version_is(PVR_VER_836x) || pvr_version_is(PVR_VER_832x);
+#endif
+	return false;
+}
+
 /* Program the BRG to the given sampling rate and multiplier
  *
  * @brg: the BRG, QE_BRG1 - QE_BRG16
@@ -223,7 +231,7 @@ int qe_setbrg(enum qe_clock brg, unsigned int rate, unsigned int multiplier)
 	/* Errata QE_General4, which affects some MPC832x and MPC836x SOCs, says
 	   that the BRG divisor must be even if you're not using divide-by-16
 	   mode. */
-	if (pvr_version_is(PVR_VER_836x) || pvr_version_is(PVR_VER_832x))
+	if (qe_general4_errata())
 		if (!div16 && (divisor & 1) && (divisor > 3))
 			divisor++;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
