Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E0010CB54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fw0rmc3UDtguCNfvuyyDmKo+kMBGGRqK7AkGTlEgsKE=; b=rorycQ6EyxC+ux
	ZFtn4qI2IKsCpq6MOVWVMzBwKS0TnXmsYeTXvA746XSuzMtvKrSgXBmCCut89AtepwaW3wO6Xtyip
	h7KajohCrvcG4nnKjyGFZ1GNZU+cDFpdbhSG4UnyZSoe1w8HKxbsqWIu/DXAPitJiS050tOT3L7Fv
	DlWs1bL6diyLvVX5svRaRgx8YgiTtxvKcsWhTMJYhfbiDZrJdZEj95mfxdePIiku5c9RXXEytZhsJ
	v8UtAK6BdqjUQHHkb3cH9Nwsk52jQ74nB/yM/KAPiTd0SsLzPXenB65CSSXXZu7RAsLNZCt0TWJ6q
	R6bmWlFV2WD/Wb03cRCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLOm-000295-0E; Thu, 28 Nov 2019 15:08:04 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLF8-00018N-CL
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:15 +0000
Received: by mail-lf1-x143.google.com with SMTP id a17so20229235lfi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:58:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A61btIRCfGl2K49FU+YApUFpLzedg3OmEOwCORD6qFU=;
 b=Hf/PPnAbgXenT8bkLjfb4K/u1LbHRKbg0TAYF79JBnqjid3M76xfsO2Iqr0VVwnFyD
 rZNl4JtYAtUQD8Zu1LwxcvmtRvoRs1HGQ6aR9a88XKhA2wHLwBiX2tp7T944IhB1pgwY
 FAIkJLiijQAUm9eh3TF6qwqwuxYQZ78WxFPpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A61btIRCfGl2K49FU+YApUFpLzedg3OmEOwCORD6qFU=;
 b=o89fsESZb6kg1VRd7kWISZDg/AfGh5jyuC2I1VtCuyIBtUwxNVxHzqOMa3NJhTk2r9
 d54bL4GSt76CC+Bezjos5zBsCXy0lD7OEUbYXF6k+ce+Mcqbb0S1Rr1LjFGQxVdJEE5Q
 AAGQ5lhIIyIIlkN6tsOFh1rC4n3oOt8KKkSnflMA36YgJjxHsUm7JeXyROjHpX8j076x
 2Fd+Df93zFqkGe0w1Nf0vauCmcDDgytMLo1DdgJGs4A+rRdm3IlcTK2o4r6o+iFOInZ1
 +Vc0AlH4wouBujjjPL/S+3ClLEvKQOmg1A95gmYTnAcQljMqXvDeX0G0QeMBEqhHq51o
 miVQ==
X-Gm-Message-State: APjAAAX9RJ+xsog3/JUpr1OJOfiwysLKS+h2jwaTFD/6gXQ5FYEbhKRZ
 v0VdD0PcZYpe8lwdh9FyOpVwpw==
X-Google-Smtp-Source: APXvYqxhBAd4opJgrPy7P/4weZdPIJVgERAZIrjiD0AKu9eR6iQ1KzTsifkMtoeeLjTOMUJ9elo8CA==
X-Received: by 2002:a19:cc08:: with SMTP id c8mr32134885lfg.124.1574953084507; 
 Thu, 28 Nov 2019 06:58:04 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.58.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:58:04 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 46/49] net/wan/fsl_ucc_hdlc: reject muram offsets above 64K
Date: Thu, 28 Nov 2019 15:55:51 +0100
Message-Id: <20191128145554.1297-47-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065806_581335_F732C53B 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Timur Tabi <timur@kernel.org>, netdev@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Qiang Zhao points out that these offsets get written to 16-bit
registers, and there are some QE platforms with more than 64K
muram. So it is possible that qe_muram_alloc() gives us an allocation
that can't actually be used by the hardware, so detect and reject
that.

Reported-by: Qiang Zhao <qiang.zhao@nxp.com>
Reviewed-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/net/wan/fsl_ucc_hdlc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
index 8d13586bb774..f029eaa7cfc0 100644
--- a/drivers/net/wan/fsl_ucc_hdlc.c
+++ b/drivers/net/wan/fsl_ucc_hdlc.c
@@ -245,6 +245,11 @@ static int uhdlc_init(struct ucc_hdlc_private *priv)
 		ret = -ENOMEM;
 		goto free_riptr;
 	}
+	if (riptr != (u16)riptr || tiptr != (u16)tiptr) {
+		dev_err(priv->dev, "MURAM allocation out of addressable range\n");
+		ret = -ENOMEM;
+		goto free_tiptr;
+	}
 
 	/* Set RIPTR, TIPTR */
 	iowrite16be(riptr, &priv->ucc_pram->riptr);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
