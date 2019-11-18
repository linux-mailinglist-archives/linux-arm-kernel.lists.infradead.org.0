Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2FF10045C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:38:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=81UwloymLW7uenfNLo3Ix+XzW2xhp5URfilUXm/xlVo=; b=Fp43A2i+n61S8M
	8+tCsStQTY2QQ6j1ZLzGQyFb8JqApLq8L5T9EPj1ktdJxU3K0hYsi4vkYnQOwXQlM/fpfa5+IDVAl
	wf082SdfgjvAvnMO6VUZnJZYYMJSUQZ6FX3d3DvWzx94O4UPbneizvLoUr2mJAddqZZAFoF7bwTf8
	5oqydPSJweHYWQV9I+VwDD1QeRlo8HpHy7Dwwl0YK6UzIqJXIDNNsj8IKGs/WAC5/Y+oTOuCmRY4Q
	owknAdB4MNDZQ9vErh6D+qDi0Wa8wt7jzaMtbdf85G4cyTyAhCqrR4HX9xl4T8eflML+YeJdhxtGh
	N1elUygTBXCdk6/L57Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfMN-0008Ix-QV; Mon, 18 Nov 2019 11:38:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8z-0001h6-Lo
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id n1so18957104wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2QjvBFt/Ahp0rywmkIDhfkZ7dAuBAKpWua4zqIA54R0=;
 b=LDBp0mtVCFiTs61O5YXJ16LuAAFhH8wtaXvLbhwE4NXoRfaqYEp6FKGVT2vaF949Ky
 RkF8f68GGwII+OoL/pSznEKhBF6DiPtuZO54muk8b2IyFJErJznWjlXSECWho7drDhE7
 vQt3/hSjdU81hFkXQ6y+8FT4sHHg6s+d213/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2QjvBFt/Ahp0rywmkIDhfkZ7dAuBAKpWua4zqIA54R0=;
 b=TRrYlkgedfVSCRoKmKwkDhSSZG/R68+8vQ4NwwoAFo9YtWyocWVUt+yfLjr/QqNphG
 p4w/PRanQcFBB1ijZ47QL9LS6lqp70m0/A+UhIAunz36Z39TDnb6UxzKPwzIJ5Tdk07n
 +EQ4PNqH2wV1jonXNRqu0KBq4CciH9ZenwJALv1H6hWytrgk7eItP/VLYOkjX9dAEP7P
 TdP4AzMzCR5X8GFHW0mnCH9iOsspJ6WCkUdrKEnHBp97jHKBKtNEBe9a5YOXxxEHU+3D
 qEfNKd/wYyWYFb1cfn6pRg6sDNNbhwlaf+gF4c8UTMNGruvtdaSdaTpoPT0jP0eauKQ0
 L7BQ==
X-Gm-Message-State: APjAAAVwK/gClLZonxLaRxfoQK51ZD9mxSgiOIHfPXX57XpdgY94hSXY
 kfrMGugVZXdiJw7tgjbZD62SxXY2PCt90g==
X-Google-Smtp-Source: APXvYqxZTtkYTYCWP+uZMSlkmiNhl2EyyuM0sCeafVOHfcCFMl5DEdLbaJ//DePb88UnZySftdivKQ==
X-Received: by 2002:adf:e5c5:: with SMTP id a5mr14810311wrn.103.1574076272138; 
 Mon, 18 Nov 2019 03:24:32 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:31 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 46/48] net/wan/fsl_ucc_hdlc: reject muram offsets above 64K
Date: Mon, 18 Nov 2019 12:23:22 +0100
Message-Id: <20191118112324.22725-47-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032433_793749_46D21F15 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
