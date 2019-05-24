Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8D529381
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmYQ14YVwqzsmubQAA9ehrRwuJxnYgBUMmifv3ZRal4=; b=UDJM2ESyUaK2w5
	lZaIVntawjZGPni3FVmnwfIdcQnOTuHlXxUQOYuk2sUP1OtFk/9A0K4YaoGVjSoCkZJsSzy5Ahn3r
	SmQdmj1tXsQWPZA9pMTOy9qYHCN1eekCdzFhPECo1P7HvbGXAaKeMA96wmGCtr2ZEJmc3XziymteB
	yX/utQtAoQc5EYJ65fFxnu29EG3iZC6D2LG04HSM3EHrFh7GZWr8jmg9NAur/MP4sUI8GFSXYI9jH
	BVGeX6tHCGbcr0doPas8UfeCHDXqqVJD1/sFciBxKnzKdRjzPlO5B58a/3uUshoj5+HTuPSVL5l8R
	ImPJvUJ7GKNggcrFOEFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5xx-0000uE-LV; Fri, 24 May 2019 08:54:17 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5xq-0000sx-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:54:11 +0000
Received: by mail-ed1-x544.google.com with SMTP id w37so13334496edw.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 01:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yy90SY5/chDu3adwLkHoQhEeL0uOM1NOJmociVMUU4s=;
 b=cr4/gjFrfCNevqAiAU9XqP6SgaiJysx3vBZGTSUBi4Tj3eINXfE6JbxBD90g/EpTwJ
 4JQVeLiyNj3LzpQgPFL5r1fEe1QbInyfZNSa+ug0Hhv2ZX76nidAtG293D6DcIILXwb9
 ub+6k0ddJsOAmQfUOdPQyaUFYod34VrM/+dBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yy90SY5/chDu3adwLkHoQhEeL0uOM1NOJmociVMUU4s=;
 b=XEMNSyWqGUIiO7/i/EsJxpybTnrli+BjWfGot5ipJbBzps9O+s6+otOJeNz1huHH/d
 R+Jza3cb1Gkpu1g5hOWxM8YoiUkfgblmK42R120SKI8LBeuVQT+Ubem2zLDRcoP1I3JD
 /EG15ERS5AEbrCbyjUo4V3VMQW6JyBu2VOMsO4HsKEHvwDScYVHcJyxSa3FgCBGw2Icq
 kuhzLxpyN22FmPQAFCxK5XHFj4U8KBbdEZa+Tbb6C57HCfrx+40gyW+7qRujRs+RVziQ
 D3fEquVfXvbfycC/4XOX+a0+yIPFbWJ9xxJcV0w5ArMT0NkPq4MTz0onEbRyOW1wiNwt
 Toyw==
X-Gm-Message-State: APjAAAUlzqKU6jT1sU/vcqB6mxpensFxY/Nfxf54QrIqtpzuuGECzpu9
 bswoht6i0uc7/dLhxSxBS+SVyQ==
X-Google-Smtp-Source: APXvYqz15CcdTjoLDAvdkpWywDjCZ1ETBfsWrIz7EZVLfyKyYHnY14mFy7VmZfhdjvd4e/aLWEyXzA==
X-Received: by 2002:a50:b19a:: with SMTP id
 m26mr103783554edd.243.1558688048165; 
 Fri, 24 May 2019 01:54:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:07 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH 06/33] fbdev/cyber2000: Remove struct display
Date: Fri, 24 May 2019 10:53:27 +0200
Message-Id: <20190524085354.27411-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_015410_266856_6AADFD5A 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Russell King <linux@armlinux.org.uk>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Entirely unused.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/video/fbdev/cyber2000fb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/fbdev/cyber2000fb.c b/drivers/video/fbdev/cyber2000fb.c
index 9a5751cb4e16..452ef07b3a06 100644
--- a/drivers/video/fbdev/cyber2000fb.c
+++ b/drivers/video/fbdev/cyber2000fb.c
@@ -61,7 +61,6 @@
 struct cfb_info {
 	struct fb_info		fb;
 	struct display_switch	*dispsw;
-	struct display		*display;
 	unsigned char		__iomem *region;
 	unsigned char		__iomem *regs;
 	u_int			id;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
