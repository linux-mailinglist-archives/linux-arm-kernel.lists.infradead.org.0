Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D5B17E4AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFzRjueSRpDLeInPvxhdQdxQHOYj+nY4tIp4/HJi5Zw=; b=l2mSnzboCvyX9G
	hFm11o1K9JQADMKIIsp3w8w2QrAgns9kw6KEmMugQP9iuc2SVDYdXWfQeQJZFuVsh/LvvLs16l3CJ
	ZfuhmLWxYvJDmL2F5PUrb8smeHgc4RgiIpz8Ubb3y2WlFjcZz8tzFestV7F7oX4NjS2fuePQZTUkd
	FlTSm484tmbcqvBoEJ0E9HiOpj7jZOIh0+Gn1xLf5pE/aNKADyBBQmufSKZkFwIkDnT9CWXH+Jmcs
	RYNoUdWF66w/9QDn+on019GPQrSgT6qoHv81pUF2uuIfFVr94SmVqF2vARyR0CjXT92EzcV5T9Tw8
	lv5JHF/QLSQgo3Rd2uLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLAi-0004S1-7w; Mon, 09 Mar 2020 16:22:28 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL6R-0000BW-FI
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:18:06 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ca13so50388pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/h8DNnukgi/i/4uI4UrYhVF/plnr6/iBW/VDVCb89d4=;
 b=Wnc8fYr3jeH0yzUL6wuPybRSTLkPM2ILTBT3LIJ1mdu+VXi975OoCJIljkYL2QOZJ9
 8b7paZ8nRHV8cscGIonJsvSD64cjOVKBIHEOY90yVjZKBSgqF1iKz/ub5moQVDO3nDOj
 mSJQE3hZVU0DBr0ghSJ7By6MpIKl+/n0Qx2sltHkv/ft+u8Hsp6H/pNNXE7lfvTbVZmk
 BCMvPVDr/Y6RpJxJQxtKSxCzNsKLqSpS5k7a9fGwZJGLaTWYge+u1U3RgN//V3HuqaG6
 jFvp9UWYQv/WtU/CRI7sQRZABxXs/8n35RMv6SLtRVTge5iNuXMvj+GHNZFYpZMvqg1I
 ZmHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/h8DNnukgi/i/4uI4UrYhVF/plnr6/iBW/VDVCb89d4=;
 b=XrSCcRVF0ANcuvmdbnSehrFmuTQrJNO6pC6Dvz/2LvlUVYGOZ8fa4fwmfvOMeV9kPD
 zjvAdfVA0ul0eD4AP7MobgqwQpbtRyfsnwzxmO4rx3vt0ns/liK7mu6gAbzruVZifPwb
 bvGges6IPjQps2uGPGmcqAAwK+s4MTONYtRrUgrW7BaGlV2TSDSi9CPTyeRomGkHWQJ8
 AsCzFGeccQSLH9Ojyr2QuEEJHOGPmoTE07BQLMi2bQ/XO9CxPG5IgO83dAE1tFFY5eEB
 8ckc4lUCMJb71pOro6N+4jg/oo05JMtmI7ZKvw4qqAhSTIeJb7WEVyT/qsD+WI8zyfxa
 Z0FQ==
X-Gm-Message-State: ANhLgQ2KjMAhgcOrPbOYJNxWvgGHhVCRatJJtUJKBR9BwiY46vVA9gV5
 00RRhjYtpeMzv7aU7bcflEAleg==
X-Google-Smtp-Source: ADFU+vvf+A+UFjrpqzlDMJdlo3HBdRJl2jJu5NsAEArjghaPB2NL+qZHYVZMsmA6y5o9kG/Z4DyScA==
X-Received: by 2002:a17:902:bd94:: with SMTP id
 q20mr5853060pls.305.1583770682227; 
 Mon, 09 Mar 2020 09:18:02 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m11sm38403pjl.18.2020.03.09.09.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:18:01 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/13] Update MAINTAINERS to add reviewer for CoreSight
Date: Mon,  9 Mar 2020 10:17:47 -0600
Message-Id: <20200309161748.31975-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309161748.31975-1-mathieu.poirier@linaro.org>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091803_565679_C8D52A67 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

From: Mike Leach <mike.leach@linaro.org>

Added myself as a designated reviewer for the CoreSight infrastructure
at the request of Mathieu Poirier.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5eae6e180174..07934de50a48 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1676,6 +1676,7 @@ F:	arch/arm/mach-ep93xx/micro9.c
 ARM/CORESIGHT FRAMEWORK AND DRIVERS
 M:	Mathieu Poirier <mathieu.poirier@linaro.org>
 R:	Suzuki K Poulose <suzuki.poulose@arm.com>
+R:	Mike Leach <mike.leach@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
