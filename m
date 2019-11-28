Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE2A10CB1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8pUvoHqWWplnty2yTtNzUuupioyfFjBomcJiPAqqWBg=; b=tvtgrj5pkIFJ1b
	FufCpbSFKLgPvhmK01Elpozw+krvE3NOrj4uogFyRXGvsfH3XG4CeIJu950K+wgSYS+1vct5X9CSj
	M2CIREfERD+GLKL565tM5tVObg6exkMNc2rtzNdsjZDZoZheuXbjzGXmzj9vWwXgh34s8X3IxSlhm
	cWbIHG33+buqzWvD/ectUMwxRZVYvYjYS0QRcgXVnl2mmwIQ5x8tx5a7DXXsWqd934tiKGUdBLkMt
	IeLwmyBwHF5lKIpqvX4ABcvlemF0tKEIbRfTpgp///44o7zl5sass0caAL76O7+nR9LGA0tE6acVe
	Xl1VuTW9Pmbk7Jr53RNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLHB-00025i-LC; Thu, 28 Nov 2019 15:00:13 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEF-0000c2-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:29 +0000
Received: by mail-lf1-f68.google.com with SMTP id f16so20273280lfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r0Z99m46uTitiY7EAqUjdsfnbt8T6jBnOkYMa/lxzFc=;
 b=f/W/exb9eqrLZUZU7hVxEY41tbm7yL1+b7JHIp/+HXGPW6D57B7kArjlPKFQAP795y
 JFFg6GJoWjgAQzfamqMMSl7siZ5vtxRSyA6w4/O5Y0YSqBAYYsiufM8Jod3NrLYjb9DT
 QDUuJMw+ZdkL9v/N3IHXbu7xg+vS9msqIMmXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r0Z99m46uTitiY7EAqUjdsfnbt8T6jBnOkYMa/lxzFc=;
 b=VV5sC/9No78hF0LZeD0N3YL7lqUHz4Db6UI5WRpuJWiL+A4afYsHh4k2qMUAPM2dux
 bbqBO0UPoC8CMMLj0Cdh7r05F80A3Rmqz2w7moXyJxMZa540E6zMj6xmOe6sY6mfFC8p
 7H+TaX3l3aJr4y595PXn7TV5uWd+w0Bmh+SU0KujWIs1kC8I6C4cFJODsqiiMV7lrJPQ
 Ou6WUI3CmhNvf9cD+Jlyx5/PgIZQlKCuhNTFxpOURWhkFpj9xIquNoMP4attGadXgk8D
 sR6ut67LbOl0UStB00GfIc4W1BEfqQFjHakJK6ZzBxFW55xYOPB3UbwIfhkBLcs4ljE/
 +wdw==
X-Gm-Message-State: APjAAAVwn8mfk8taFiQvMnZERouwy2CeRg/MxnO8CB8eupBoQSHfq1gb
 KS+AtZz17VWu0cMK9akIY8ONqQ==
X-Google-Smtp-Source: APXvYqxb8GWt/9RrETi2+yLMb/nDXIK4UMHDkk05wdq/zOJZC8k6Rm4tzODOn7GKBe/vlKCItiPr3w==
X-Received: by 2002:a19:756:: with SMTP id 83mr6609479lfh.173.1574953025427;
 Thu, 28 Nov 2019 06:57:05 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:04 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 01/49] soc: fsl: qe: remove space-before-tab
Date: Thu, 28 Nov 2019 15:55:06 +0100
Message-Id: <20191128145554.1297-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065711_556147_7F1FDA5E 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
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

Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 417df7e19281..2a0e6e642776 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -378,8 +378,8 @@ static int qe_sdma_init(void)
 	}
 
 	out_be32(&sdma->sdebcr, (u32) sdma_buf_offset & QE_SDEBCR_BA_MASK);
- 	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
- 					(0x1 << QE_SDMR_CEN_SHIFT)));
+	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
+		 (0x1 << QE_SDMR_CEN_SHIFT)));
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
