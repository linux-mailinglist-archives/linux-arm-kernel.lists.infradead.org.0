Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C3910044D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6fRCR2oDyedAt9328zoDlTP3pMZJn/Ej3smQGnD6Q0=; b=K6avdGq/jub70G
	VGBxH7XULTwnNI/ZupFBKwKcu6Lf3Z+xE8jpIZiHRg4YNHmvQumYvlwNDr5UWh+VgUoSvlf7tkrz5
	Swy14DBS76avN96VUAp5o1KqkkPM3bK9XYZ15c2DRRRFfsoLyMFXHs9sUX/9d/uotdThKaIE7r4Wa
	f8HjTcrBiRI8UgFfiXObS3Qr2YiNr/7kaYVw7V2EILD51vkTn/5goMq7/XJh++CScnJC4jt7TYxSX
	oWEuZ3tGqolYD6em1vxGwGE31XjwX9wghZPcXYucCZSbaIMm7jVj0Qd0jmtb9c0eq+7fso9/NNEms
	ipPz0vuwRcMN9h4AzU8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfKE-0006BP-QC; Mon, 18 Nov 2019 11:36:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8o-0001Z5-NK
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id r10so18999251wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kmzEwbR7z9MB2kX6E+hxPBjMMxkrgbCI0SqbDjInDjs=;
 b=iW0UQYAzkmH8Ll/M9PRrq939jlpUbSW0NRlVO9QY+D4clTNrJOZfMDBDFUbjyL4Cs7
 AafHw+ZYUyVMiRkn9UVwi3pQGytY4uNU4TxcdyErLNYAINbJRSnVaWhXPyXoBkVDZ0AE
 l3Fg7abGNnEPO4rdJFSDHZaKL7SSwwOkiiOlg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kmzEwbR7z9MB2kX6E+hxPBjMMxkrgbCI0SqbDjInDjs=;
 b=K85oV7wv1FxkwqLOWBXCEG2OFcESvJkcVS/AzHxWKPdXoIp5vU8cmdUXk7ymxV6kMe
 8zEfbZDtosRgGseixfebqr/8qWm/0GJTr0BFJ2f28jFtkyGVByNDIh2a+Y8wuSupGgFd
 TxhXrdHjGerT/MToUCniA2aSX6i4M10SkhABJ3iWlP7rP+NVRqKXbr82dIhOR27Tpubx
 pl2UsWU0NLcI+nQJzgBK/+B5U0DraM8+8/39F2GfgY5sIneSdYQiXCieFM/JDdfvqC3B
 jmQNngPOgkAl8T4Y8pHFZvInXiDs6A/Ny2GSEZ7DgtvE7NLIaSz7GIcGkTcQ21Hv62bG
 8JMQ==
X-Gm-Message-State: APjAAAV8/yzGTr0L3Y7x2NIK164hdt9IXQpy6BeSq6YeV86HKbA6DUMu
 +GYfIdwKiejHPWl+G2mJu8hHnTZSff/izg==
X-Google-Smtp-Source: APXvYqx95kajCqCxz/PSbS8ItEnY/XM8/CDgL5w+eRk/tL2D6xJCZl9iTwQDhJviE4PdC/OwznLwrA==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr29937876wrv.247.1574076260319; 
 Mon, 18 Nov 2019 03:24:20 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:19 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 37/48] soc: fsl: qe: make cpm_muram_free() ignore a
 negative offset
Date: Mon, 18 Nov 2019 12:23:13 +0100
Message-Id: <20191118112324.22725-38-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032422_792918_F209D059 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows one to simplify callers since they can store a negative
value as a sentinel to indicate "this was never allocated" (or store
the -ENOMEM from an allocation failure) and then call cpm_muram_free()
unconditionally.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index 962835488f66..48c77bb92846 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -176,6 +176,9 @@ void cpm_muram_free(s32 offset)
 	int size;
 	struct muram_block *tmp;
 
+	if (offset < 0)
+		return;
+
 	size = 0;
 	spin_lock_irqsave(&cpm_muram_lock, flags);
 	list_for_each_entry(tmp, &muram_block_list, head) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
