Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D494814A709
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 16:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Q48Hw98MEQ6PpW0r8Nn8othZwYLhY37mmyZkIQ2KH4=; b=GEfIm0L1lBbj0r
	ZVHsHMH0Ho5i6okyGdfTRoCiW0apnWYwwW27phMISV6fbBc1mbxBT/Z+jce/I4xVsF5fKUjFMbQ3v
	3apWGMvHE5CZyaWm6VQuoV36VBrycALSvr1piq5K1iaGfiQwqtr/3ytpp2OObSM6TGeUphysyHx7e
	uBFbWbix4VShyM/j669s6ExB844Ld6xHVFZ97MRQ94/N9RxJswJKYC3AufYjEgprJn2awtbdgDz1E
	O756egzarR2xQnNKrvstHuI2pXOcbFtJsPdGf2Jt+yjm6KXGPzuMjUnzDKziC5UdmkpIj1Gr6/kWf
	kWS5IEMBCN81cjwiIJwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6BU-00066N-14; Mon, 27 Jan 2020 15:20:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6BI-0005Hc-AP
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 15:20:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so7185645wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 07:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=En0JbNAeh+yumfKq8CWnMC3jR47TxQKPk/LGIgV7R10=;
 b=aDOAbtc9h0S7iEJDuTx0Gg6OSiL6dZ/j+20HDGy+6zpvRgnGp/orQDlLvZlYPl4EM3
 gro5xii7lOJxQMc/GaxZModUzELMyTn6onXaqfpE0ybt+kNgXOqoqYvTEnzSAeFE2Fd4
 uH/ZgBbHvIQE2WuV/JjgBnzgC5ZpGevJJAVTwE17xB9Vb5q1kUOE4X5M3VUgcWHB+fwG
 SxW+jCXrshXWjFdGRN3yV5voBnP84okChqSdovF4uRUBOmUMzJdyhqfzhHs9WJb/E3P5
 2sFONZddu5RvLIzfU+h6P+W/ONk3x/fkMue5BGtH/ZLL4U+FOi243DvNFfmNSUdaTyEU
 KHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=En0JbNAeh+yumfKq8CWnMC3jR47TxQKPk/LGIgV7R10=;
 b=g2WV23k6a0iwMV7URdzZk1e2FKecsPmb2A6GA8xfCodB7LYE6MPu3BkQH5fd+Z05ED
 EX8rqGAtAkjGbgpz0ysq37UG2wKc+Bjvk+EWZAMH1e4NQHdlUQgLuon6MCM+ltiRW9ex
 oBUk3WdA0QPRecZ1QNBSH7k2rJkSpsvj+BGf9u30qqLXj4X+Ivi2Wbr1XuYyVx7JUbX/
 ZsGo+Ba1X2u3xALKxdGY3jUfmkqLCWy5ZbQVZyHCT0zU/A++Qr73/SqogIOaA/6mGtLw
 L2YjpBvmszIoGGjNDUveFVwrGtgmwoXG2VcpXEQ4NmDAIP3ZJm5y+ajP3hy8v3YbNPXJ
 X9jg==
X-Gm-Message-State: APjAAAWOQbUYeChhYbccwdVXuvhkFBK2zT8UJPpYpb3yjd3Unfs0Gav4
 d1yqQ1hGlJLZtVM45Qj+95G0Yw==
X-Google-Smtp-Source: APXvYqzpKOfTyFLY6VOq5KtGC62kLroh1Nc6zA17Lq0ZUvWCNZIVoSKCi6v+KZMY/0AYGVDAa4tGCQ==
X-Received: by 2002:a7b:c190:: with SMTP id y16mr14547744wmi.107.1580138402052; 
 Mon, 27 Jan 2020 07:20:02 -0800 (PST)
Received: from localhost.localdomain (195-132-149-87.rev.numericable.fr.
 [195.132.149.87])
 by smtp.gmail.com with ESMTPSA id d12sm21013531wrp.62.2020.01.27.07.20.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 07:20:01 -0800 (PST)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH] media: meson: vdec: fix OUTPUT buffer size configuration
Date: Mon, 27 Jan 2020 16:19:53 +0100
Message-Id: <20200127151953.10592-1-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_072004_391891_76ABAEC8 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's a bug currently where we always override the OUTPUT buffer size
in try_fmt to the default value (1M), preventing userspace from setting
a higher or lower size.

Now, only update the size in try_fmt if userspace passed 0.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
---

Note: this patch depends on Neil's series:
media: meson: vdec: Add compliant H264 support
https://patchwork.kernel.org/cover/11336953/

 drivers/staging/media/meson/vdec/vdec.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 1be67b122546..2f30945ce916 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -519,7 +519,8 @@ vdec_try_fmt_common(struct amvdec_session *sess, u32 size,
 	output_size = get_output_size(pixmp->width, pixmp->height);
 
 	if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
-		pfmt[0].sizeimage = sess->src_buffer_size;
+		if (!pfmt[0].sizeimage)
+			pfmt[0].sizeimage = sess->src_buffer_size;
 		pfmt[0].bytesperline = 0;
 		pixmp->num_planes = 1;
 	} else if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
