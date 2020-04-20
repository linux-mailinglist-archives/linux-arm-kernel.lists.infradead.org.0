Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F161B0156
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 08:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H7rody0xWmIuZEyNLNLWhGMNrfJ8A0q37sqw+WIMmAQ=; b=BXq7CB7IwB+rRO
	Ngh8HD9mjUeuoocSm7nVPOaltJ+C1rTMxkGvBvyRxKrMqKnVFIOO9nc0BfUkqF/pndEfoyqs1aOwf
	NfQ+Jh+dXOAtflK6RVqsLE1UIb8UhPK+5T3w8DsJK31LTCHM0hSqAUZQUpsBYHgdbFSXS3RbVHgPN
	5Al3JEN+F2pfmMygbpOgdQkR6FXKUjxDG//4O8WZL6OgbgO+010KZy8DLWjyUAsSrwIqrY0MvqKHE
	9JG6imluH+sCGMhjOuqp/VbHfCmQ+60xt+sY8YxfpnmnzI6DSG3gUBvRBV9rudt+gUovwzW8M7vue
	jnpXbcCGyPlR3WM29M2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQPc0-0000py-Sk; Mon, 20 Apr 2020 06:08:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQPbq-0000oj-DW
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 06:08:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id f8so3571935plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 23:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SezQvaqjYLbKiOOQWAcX/3BNfbHbuPlMP92AcIlOvpA=;
 b=mh7u/Nzr3V0kjSRxTO0mKkatpJU809OLSLJJlsFt2qqISf72DiGj5xWDQAEvljElfV
 FeYKApqTjmmOh8eLf4oP5EPyFuKRdTWijq0Bt4MVVh7MOdqoryB1MbCic8WbRgfkq6eg
 E9a9BiB+TFtHM9d/GUjKY4K1Jx3aDv8xSb9Lk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SezQvaqjYLbKiOOQWAcX/3BNfbHbuPlMP92AcIlOvpA=;
 b=UwJqZbuS3pYOKYxStDU59eukYt1ONICioREVraMCuzyVGbbtvI4AA5s3OSJ2LZM1sm
 3ataFSCQwnjO/0QsI0AYznuPkR0nMVOqAymJBC9od//rkJL/dzaonrLGXWNtE029sSK0
 qjPAY2LxWumme0Vzoh61uB7McAyk6vWbHxrXmxPiR048b4gp5htDH3YYXSojT36CWKMR
 +7uSrsIIAeffEQe9PwUhMbYWPEbi4LmFfikPRMqd4MR+rgVCr1lVxPmzMEDPsijfOp59
 QgCguGLW/TKuL/7FT5FhESS5JZKs1rmmQBpcA1VBM/u4qBbDPN2oXybaCk2xlmBEL14a
 2IAA==
X-Gm-Message-State: AGi0PuYinRpeAoYzhGu+/pJ/tn9gQLA90DIvOL/qYy6mvSRdKK+xOA/Q
 votiXR4iEIl9jO7Fd+/K1uwqIg==
X-Google-Smtp-Source: APiQypJ7/kohKua8cbRIlf5c1h2ySfX9UyLVzIyb/i9csqaqSHKdHfXhwGV1/987z+JuCjIkPug5+Q==
X-Received: by 2002:a17:90a:340c:: with SMTP id
 o12mr20794100pjb.22.1587362925217; 
 Sun, 19 Apr 2020 23:08:45 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a274:40bd:f640:b6c6])
 by smtp.gmail.com with ESMTPSA id t188sm21384pfb.102.2020.04.19.23.08.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Apr 2020 23:08:44 -0700 (PDT)
From: Anand K Mistry <amistry@chromium.org>
X-Google-Original-From: Anand K Mistry <amistry@google.com>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH] drm/mediatek: stop iterating dma addresses when sg_dma_len()
 == 0
Date: Mon, 20 Apr 2020 16:08:34 +1000
Message-Id: <20200420060834.44461-1-amistry@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_230846_480105_810FB955 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: matthias.bgg@gmail.com, ck.hu@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Anand K Mistry <amistry@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If dma_map_sg() merges pages when creating the mapping, only the first
entries will have a valid sg_dma_address() and sg_dma_len(), followed by
entries with sg_dma_len() == 0.

Signed-off-by: Anand K Mistry <amistry@google.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_gem.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
index b04a3c2b111e09..f8fd8b98c30e3d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
@@ -224,6 +224,9 @@ struct drm_gem_object *mtk_gem_prime_import_sg_table(struct drm_device *dev,
 
 	expected = sg_dma_address(sg->sgl);
 	for_each_sg(sg->sgl, s, sg->nents, i) {
+		if (!sg_dma_len(s))
+			break;
+
 		if (sg_dma_address(s) != expected) {
 			DRM_ERROR("sg_table is not contiguous");
 			ret = -EINVAL;
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
