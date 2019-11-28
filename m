Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E02810CB50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:07:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRMULnTEDva3hzOU+VtFLmATCYL8SvO/TD6c/swJCTM=; b=fnJyQGkNS2mh7r
	oTxmahdPPcOFRjMjeVBN1MFrbx33BRYl/Fm+slz9O9VTNiOJBwn3z92gBxsKBNVY4K+Q5iXM/S/Na
	KOyy6dP/0rlPf18Jnrpqf5s7FXm8UIH5qSvhqV/y2TaqNxJx6Jz/8lsItP8GbLRecYfdw6z9+G0sm
	4vMsKQUVytAotWsC2O1C4ZUdwLwmShTXMc7fBeBfiXrMc1b37K5HWZFt9tg0WMuyWNbfkAeSycuzQ
	NbjhqitVNVgN7mnz5QAlBiGjBgCT95s0P1xt2EKmi2lqBQmkTENEJlNL+tCNloTpmJaZ3IAka+Y3P
	RUyF8AgKmMSUDTUEl6EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLNn-0001C1-Pi; Thu, 28 Nov 2019 15:07:03 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF3-00015Q-JO
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:11 +0000
Received: by mail-lj1-x244.google.com with SMTP id c19so1822802lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KUBWPv3JkV5Q2rpwN8YKM1iLDpQKFkQg1V9KmI5YIqA=;
 b=gnMSL36DxoMRWV5dmkqn64lmHepkAi/UCIfJXPlQpgy26UZTuq1MviK2Qwq0XpyewR
 plZczgrN/M/mdswUw9R50HmZN2QjhZiXFk34AyfSzViZWRYCFTF5rtIK7G5qaiGCCR/K
 jIf31rx5xnRhK1BzOC7zTsNV7YczeL2VTJkhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KUBWPv3JkV5Q2rpwN8YKM1iLDpQKFkQg1V9KmI5YIqA=;
 b=uidwNwFonrvnr8BSdr6UgpUOBirPJKRP3AlIN5+msWHoiAlXFrhN64V3SoLII2JeeA
 UDNX5OmbwquPGQsldJft4gGreRgomsCY1GDuZXiQISzRamJceiXMYisThGcQ9hJKH4Im
 brSuewdMmx/tjr2TOW9GFmwPV9xstt5Fx3KAJ6tYGZdr+RRr2JqHTy53EtaK777Bosj+
 a3QuYl4fgGBe7+p0ZvXS/dFDM++7FpAcV1soX8rixnlrEA2obWcNuaK/VACjhoTLpLZu
 rsYcOka3DiQ74GMtZ1j2CIDleGNaUOOB8tOTqcdCOj6EVE73/cLtAYXHZ5HwW8CCYb3F
 erag==
X-Gm-Message-State: APjAAAXOVJOaacJE72UwZtfqAdg6lOaZzHiEF7gqbCcMdQ0bgnRWwFfA
 Ls1gw57DEfpAzWyHsUG1dXizpA==
X-Google-Smtp-Source: APXvYqxZ7tTPDopj2M7w11v+y/JLwNd0sGMUxyWwupXPa/c1vlU0GkGXVop9xXN6GCNtZPzQf300Zg==
X-Received: by 2002:a2e:b056:: with SMTP id d22mr22072255ljl.73.1574953079877; 
 Thu, 28 Nov 2019 06:57:59 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:59 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 42/49] soc: fsl: qe: drop pointless check in qe_sdma_init()
Date: Thu, 28 Nov 2019 15:55:47 +0100
Message-Id: <20191128145554.1297-43-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065801_726217_A263F63C 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sdma member of struct qe_immap is not at offset zero, so even if
qe_immr wasn't initialized yet (i.e. NULL), &qe_immr->sdma would not
be NULL.

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 5bf279c679ef..96c2057d8d8e 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -367,9 +367,6 @@ static int qe_sdma_init(void)
 	struct sdma __iomem *sdma = &qe_immr->sdma;
 	static s32 sdma_buf_offset = -ENOMEM;
 
-	if (!sdma)
-		return -ENODEV;
-
 	/* allocate 2 internal temporary buffers (512 bytes size each) for
 	 * the SDMA */
 	if (sdma_buf_offset < 0) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
