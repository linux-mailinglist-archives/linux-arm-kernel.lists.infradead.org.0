Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9CFE4B55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5Vr762c158rBEBwYGrFbfTOAVCa4NfyGTI+zWb8+PU=; b=golBhqmigpolFc
	uPjUxnuQa6T66YQsfUSBxHML11UAe87NS6kSLHBQkmpsTA8qAQs1aFXSdYAsfgl+at9jEoQKEqAnH
	irnCOlEHh9J10IRdtRh8MwyhvZ2DwQTstsK3jKxH3A0OuyWeuYSQTe0QE3capBt/CY1zxO/VJZ3lP
	LjoNcR/XWmDK6+31pn0bl+2yqLWBFrm4+hzMpespU3siEJnOnz7y0NYNoOn8mfM3Jab9f7sSXushE
	Y6blM4xwolMS2fWlMEdK0KSaoymSTIJqeJUOXeItjbG3uDf64vBz2/dIcm7PlLvtBemveFrNfwnpN
	M419kDZy4ofpJrfX3Igw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyut-0006up-43; Fri, 25 Oct 2019 12:42:07 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyty-0006F2-SG
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id i15so1617505lfo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fgKnxJ1wOt4EIZwRcA9XPxDbDGGhVcBvHA7yIdz2HCY=;
 b=i58fVaUPnJK7wm55cSIpzM94MYvaZzY+Sn1vefsKSTwyL6EPMdUr7hZeg8dREi+Hkr
 Ab6iCLKcMZsjQXTlNye4xQSNgvGRtroKi8gtUrwuSep0SzBezpStEJCBtnaSuh6YKwJU
 G2R+j1/b4sM4dOTtAUkxpe5bHoyj2eRQlcXHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fgKnxJ1wOt4EIZwRcA9XPxDbDGGhVcBvHA7yIdz2HCY=;
 b=R8kbG4UxJ7KJjH2zXM1/5WccfryBLgssq9O9o/Y5SydMqjmlI7jhAKk3tKqguXuuJs
 y4U2SSCpPDqNBdc2mymN3fC+Wzr95JzG2be6b1xm7SlvgXpXrIPxvP6u61HTt68K04dV
 LLDf04fRS3tKya0W+BeBJQGD2U2C3Ozs8B5w6xA+wQ3LgMuMOsm61/l7J9SlXEfnLkRB
 xwRgQUGSaiuoHSZR+6Krm4ftPTCd6I4xJDhdkBHZCu8bCaWdyUzyQE/XG4rohygL99Q+
 vaXtnJtYa9KvW8Nat9H3SwbvxozrUs9RvyX3U3ZnJ5UMfZAFHlh7bhzPFynMIHeMNipG
 L/kw==
X-Gm-Message-State: APjAAAVcp5IdVtzuFwN2gYcJ0pRMysLuuoGEzpj8nioTiEDNf/PuXAeG
 bNaiHvhm/ZForKLdh6btKuvqmQ==
X-Google-Smtp-Source: APXvYqyIT2xLWVoaJP+X3MZLfQiywdsydM/+DaqNZhO2Hd1pHXm0z/JSsmbXZuo+4b142OCkiN3qWA==
X-Received: by 2002:ac2:4436:: with SMTP id w22mr2568863lfl.161.1572007268911; 
 Fri, 25 Oct 2019 05:41:08 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:08 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 05/23] soc: fsl: qe: qe.c: guard use of pvr_version_is()
 with CONFIG_PPC32
Date: Fri, 25 Oct 2019 14:40:40 +0200
Message-Id: <20191025124058.22580-6-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054110_918324_6CC43BDE 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
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
index bcdec37b25ca..0ddf83d8e3ce 100644
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
