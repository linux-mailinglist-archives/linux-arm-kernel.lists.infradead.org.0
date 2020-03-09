Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5DA17E4B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNzJPFqH3kWdcxkz1TvbHIyNR007EpDijYVXklYj5rM=; b=swQi20L9Hc3Sii
	BxDyuw7TpE6fWNGbNfV3J27UQIpvUdFlrSP272Iqyhpw/ROn/E2x2IanK1qQOAPmSoKZt+sky9M2Q
	6jl9a6/gI9Acrp1iAGOgY4H8ZqYFB9I+6AVe/8jpBWFP++4WML2h0yOB47DMFmyaYhBs0kSJfFxhW
	pq7qcCyzR3jyh3ecUedZSl5DHk/D29vDZmOo33bY/guw56Y+aq0L0fPM0acVF7e8i2TbPYKa1mQFT
	UkCQiRNuD3YyxMJgt4IpjEPB37Zq3Qp/EKyFe8ThiZHb/rEMTL2/5DtEi1JDktXSzDH33K4jCTTA2
	w2fUkjOBMMquYvPdXQ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLB9-0004tm-TC; Mon, 09 Mar 2020 16:22:55 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL6R-0000CA-UI
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:18:06 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ca13so50427pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7xeSTI2PbxEvahk22xqv3ZE8AVSlO4Qu6bmPMYJwd5c=;
 b=PEkhro1u1yGzYmZTU8Bne+MaDe5ejs2U5Hcuozmig8TyI58+GiwGJVRN8bvIWnbEhY
 XQ2tPcGOLhR7RaQ4v51SV8JCyKWxIRs5l210IkWxqQVVWpAgw4rcT87XdJjGoHtB3tvN
 4I87zcESvjYABtg5IHAXmJZIxSQg/wUa+XFQYJ4p1rqoMlxL5C5IIasbSBafTE23ROjI
 DnMoTaHDykmdVlyqOgAsYbgXppGyRGTmOqUo4KnlxlWACLDYcc4GpY1Cddo8t7Xm7z53
 xSscZ5Y3x2sGpd+vA7GrjXgJVwLJl2vnkW59GN+/+l9D5MKIJRBLwVCRY2zIezOte3aH
 PixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7xeSTI2PbxEvahk22xqv3ZE8AVSlO4Qu6bmPMYJwd5c=;
 b=MDJgFNRGs835nGg1Yf/isufbG4E6S07277+UmSEFZg9x3xenP/wxZimIJFkabS22JU
 PaC9MKTVQVTp7CcpabnhlR5/8dP+jbo5QE2FvK/u/j8RBHw69Cu8byitT7b20pxAaLxP
 Djss8qJVNYTHvL84LhK3GOXBswPJ/Vz2O4V+AVdNL/+J/h+GaS6JEINsAmcVumneeh+g
 D0bylAB8iCmctXRe8AT6/1GIjoL8VyT4E4d/EFe/XNL5FsAWFrCS/ftlsbgT+3iGGRgs
 HwqfIuOzs6xonJliMwseK7MiBM4XO4K33b8O6e/be2tVUw4+1PtFRexiHMNGsfA+GR7b
 iX1A==
X-Gm-Message-State: ANhLgQ0yrmsJFO+hxs3eeizeOHW1wbRZUgpnP+E/SBRAm6vG/4akqikr
 +B2YJ4oX0/ubae29YdItxGlVgRtipuI=
X-Google-Smtp-Source: ADFU+vtAGFavg5y+woyAvDRLrRF5zVCt/vK71+0RG5tHtfC4A5+BoGo4jFTkg1HQiWCbxhaqGppDOg==
X-Received: by 2002:a17:902:8498:: with SMTP id
 c24mr11968583plo.233.1583770683209; 
 Mon, 09 Mar 2020 09:18:03 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m11sm38403pjl.18.2020.03.09.09.18.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:18:02 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/13] coresight: cti: Remove unnecessary NULL check in
 cti_sig_type_name
Date: Mon,  9 Mar 2020 10:17:48 -0600
Message-Id: <20200309161748.31975-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309161748.31975-1-mathieu.poirier@linaro.org>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091804_027460_64B13F8C 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nathan Chancellor <natechancellor@gmail.com>

Clang warns:

drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
address of array 'grp->sig_types' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (grp->sig_types) {
        ~~  ~~~~~^~~~~~~~~
1 warning generated.

sig_types is at the end of a struct so it cannot be NULL.

Fixes: 85b6684eab65 ("coresight: cti: Add connection information to sysfs")
Link: https://github.com/ClangBuiltLinux/linux/issues/914
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: kbuild test robot <lkp@intel.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-cti-sysfs.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index abb7f492c2cb..214d6552b494 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -945,10 +945,8 @@ cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
 	int idx = 0;
 	struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
 
-	if (grp->sig_types) {
-		if (used_count < grp->nr_sigs)
-			idx = grp->sig_types[used_count];
-	}
+	if (used_count < grp->nr_sigs)
+		idx = grp->sig_types[used_count];
 	return sig_type_names[idx];
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
