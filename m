Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B3DDC56E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKCQyC1gD/dJIiyD8ORYBGgA+8waz4o642Xxp2hV8nk=; b=iWuL6uXQzWfhD+
	3vCCtM54L9CJ9cYldffvuETSMjg1Tha5SKI1srHsgSql1hfaMEsd9rMjRtQz/CD7K2zcKtx7TSOcu
	7gaZh/7+rjCdTxbtNiLWuMiHZ6xaeCSuPtABlFOJOJm5oZM8VSQIEjDR7gkGUCZILbvGr6PDszLCg
	rMMRcPfy/kv/MYuwzs1EepoXbnVdM0LpLxdEKl6osL6kRD+qQCj8Ap+s2rl4oIECfexAvHlZUJeW7
	L9av62XLStDYfgvlfysJU7U7kX1nBGDkuVvgeUrcIzfuLPuU+n2kz0j5reRMmd/FtbWy7OwcmraPg
	ToLyHoZKGQrtzlKqWZdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRkW-00053A-A6; Fri, 18 Oct 2019 12:52:56 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRkJ-00051i-Qs
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:52:45 +0000
Received: by mail-lj1-x242.google.com with SMTP id f5so6103223ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=76C3KCBVTIWXOJRoGbkicD5UasUbJ5XDGEEs+OOGNvk=;
 b=FSHcuBzPR1mmeL4PACLKsTbqTj+24LBzK/6l+O/Lm/1IrQLP3nhdrLnFf6MSg0yH0g
 HoftTcmnUioa5SuvRouA12dlbveQ/icRsojJyg7o+TA6FzCF4LpHeb/WCkcTlKMjOMFj
 W12H1zsXT9+1u+Ng90qJFYXAQtc1ter6pD6Nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=76C3KCBVTIWXOJRoGbkicD5UasUbJ5XDGEEs+OOGNvk=;
 b=o5k0eAO4MmvevRDT2KxtukWF1BN9YIoqOOFRp1MKUdGqSEM2eZF9thzQekOMX3BLjs
 MSMuaeJkwBbb0xawJRsJ9jLTHJuk2mI37yeXqkDHGRGCWjrHDQ0d2JvFS1BIvivcD1ar
 FY6ezZ34uH2Ry30KYQ+TRK3u2FG+LdNiRwRR+Kxb4ukx8tacI6oNX0TtVFXvY3VOJkWF
 8IQ4Q/7REnN5pUFiYpKxTgKcToeXxClboN4ZD2Hr0BpdwA4wIvq4IFaVFCIcSWkGcA2t
 Mr4VZLKdfcyZhuad+3wQowRHAIc9/yAvkJotsQvKywiuvp35d/1iI629dM/OTCYRif+u
 0A6Q==
X-Gm-Message-State: APjAAAWx2MlRqsZ/VvDLUPTRpPyRXX4bDUPGkLU1Vf5aAM41SA+MsO+z
 iKQzU9E2PXTwOMW9QCUJfXzx0w==
X-Google-Smtp-Source: APXvYqwYe6ilX8TDGuGskrpio0qKSxCNGwmNMC2CS8ROsNPpnWHiv5TjxIYmTv9OVkt1GHfcoMvdMg==
X-Received: by 2002:a2e:9112:: with SMTP id m18mr6305431ljg.75.1571403161898; 
 Fri, 18 Oct 2019 05:52:41 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id m17sm7454792lje.0.2019.10.18.05.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:52:40 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>,
	Li Yang <leoyang.li@nxp.com>
Subject: [PATCH 1/7] soc: fsl: qe: remove space-before-tab
Date: Fri, 18 Oct 2019 14:52:28 +0200
Message-Id: <20191018125234.21825-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055244_024962_97A30813 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linuxppc-dev@lists.ozlabs.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 417df7e19281..6fcbfad408de 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -378,8 +378,8 @@ static int qe_sdma_init(void)
 	}
 
 	out_be32(&sdma->sdebcr, (u32) sdma_buf_offset & QE_SDEBCR_BA_MASK);
- 	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
- 					(0x1 << QE_SDMR_CEN_SHIFT)));
+	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
+					(0x1 << QE_SDMR_CEN_SHIFT)));
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
