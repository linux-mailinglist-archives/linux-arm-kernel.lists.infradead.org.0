Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8CD9241C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eZYXm80IJTsuJNvvgEh9TkT96zv/i4k+guvkU1KpMIY=; b=llvzChFAYD4RrxFxLNzbDjX+MW
	3O+GH5VG+uwgIpflO6yhipylN+F47SJorQAo5Q0u94UXsI7hOXdT/VfKxykHGS4JTxDzXWTLX9+ba
	NraErN4aovbYtwB+VxkpXdstx+xWgiFZYtttrVAjELqHrvm+mZtu95D77j9ZUFfKk+Oq9PGAVQQDd
	uD2fjc/+fo/wJEEB+TxG26Jctl7c/1rCwrbdQWKPB+jasN1w7uhKI9a1F+0YF+Ywgh+VJtU1Un+r5
	bXN+zF2UGuH+PBNCqnpW26U35qYvrK5XLTObiIea2+1izWpBkl2RaBaAwO7sqQgWa2iOKC+9SKqhq
	qm7sqYVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhIu-0001GJ-TY; Mon, 19 Aug 2019 13:02:32 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhIU-0000wQ-GV
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:02:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id z3so949039pln.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
 b=dySa7ATxoTasTk05EATgNFRHNdWVLW6HZbVnRpJiMJgFbp1vdwTgL8L915UDlkqLUL
 RJx55z77meqhw4zi2L6edCi5tvTlDU/1T37Pma4SawsNezG5zR4aH0jCw8QO0h/1Gyb9
 AZHdkiYXBxRxul1+lONCQw8sYFvcb+e8eq6uUVdCb0msdXlx+biD8xMQ/5R7n8vwHtDg
 rB2yI0MM3m17q/uhCjS5dVl8O5ZZh98AhElapo4Cu0+QfLx7hWyFZZW9exoMrAuTeRhF
 s+r7uH0cvYdxdwtcYgsX1+WneDulTI4mDOWCJ5QiK+zTubLeaiB7AHun6Ogpbk0DYW53
 +xTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
 b=Huave44oPgoWis5jOhZN+9CHO4mQrYuqcmNGLXuRNIXCRcpvqk+9qTzCY7nOE4Otor
 JFVPk7bcsTiriOtASaA4jvMt6l367wbVgdjiEojDBw/mFQ25ZhXMfVkhItT+izcdn5E0
 roQwqXR57ciBbAwVdBZRcrPYPcSTZNfoey1zj86YBwG21GcDn0YJEvykFBdXYkdEew19
 eJab3dNb0oO556zJaeKE92DJzGnpdF2skSiO/R4wYLRKDfDRIPRl0oHN573Z/JaUFYsa
 DiWcEjaTSzoE9vEflL0iBF/Jc80ZEhGjC4s8dKe0/6g/r7UGRgDhaZNYpBZSyUC+humn
 zTAg==
X-Gm-Message-State: APjAAAU6LU2KnGEm1lshoTbKseJUK/Ud9Wr76nnwC5pTwx7y0z+IMpAv
 PY/DKsKwbaUUohwIY2GYP1gt
X-Google-Smtp-Source: APXvYqwfeUSVY+I+BE91ywKdosPDIWZNOPP+2KWQYwaDjVu4qL2UF2abRKSgkBQ77/hFHxq1DzSvDg==
X-Received: by 2002:a17:902:860b:: with SMTP id
 f11mr2458432plo.48.1566219726008; 
 Mon, 19 Aug 2019 06:02:06 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
 by smtp.googlemail.com with ESMTPSA id l123sm20626464pfl.9.2019.08.19.06.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 06:02:05 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v3 2/8] clk: Warn if clk_init_data is not zero initialized
Date: Mon, 19 Aug 2019 18:31:37 +0530
Message-Id: <20190819130143.18778-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
References: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_060206_618165_7973209A 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new implementation for determining parent map uses multiple ways
to pass parent info. The order in which it gets processed depends on
the first available member. Hence, it is necessary to zero init the
clk_init_data struct so that the expected member gets processed correctly.
So, add a warning if multiple clk_init_data members are available during
clk registration.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c0990703ce54..7d6d6984c979 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3497,6 +3497,14 @@ static int clk_core_populate_parent_map(struct clk_core *core)
 	if (!num_parents)
 		return 0;
 
+	/*
+	 * Check for non-zero initialized clk_init_data struct. This is
+	 * required because, we only require one of the (parent_names/
+	 * parent_data/parent_hws) to be set at a time. Otherwise, the
+	 * current code would use first available member.
+	 */
+	WARN_ON((parent_names && parent_data) || (parent_names && parent_hws));
+
 	/*
 	 * Avoid unnecessary string look-ups of clk_core's possible parents by
 	 * having a cache of names/clk_hw pointers to clk_core pointers.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
