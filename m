Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83F51BBE41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7O4PsrcNKcu0ORDAEmy2iMaR4v8IvxE9Mf0V6loRXN4=; b=nExUi9gE13FQ5e
	b+oeurLMZYiWc4XH/aaTQAqBXGM82x/wmPhoGQrLY8/VIu3I4h6G6s6M2UUJNyHuLWCEiQqj8Q5SE
	8c0+cZ4ruBcjjMlzt5YZ9ex+VmW+5JTmm2dEyCnHBaK3Dyj5kqMzhN8jxWrYa6YEcwD8BiX2ZkHXg
	9vM7KZGNOm2jwmybxpGnEVtTVeAN0CU47OEW8OFsjuapP6uEUfXlnu7M0fCVYXzGnSggOFJB8SmeM
	1+KFxGLcH9VEOwa5AHrWieXlnMmsXaGWEVgiTk61M2GaBy9sGlIkpWGNybiy6z1HzuvudzTDQezFP
	/W/OdPtnMx+FAjKHpULA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPhv-0004Jo-Vx; Tue, 28 Apr 2020 12:51:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPhF-0003xr-5s
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:50:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so2623254wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 05:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ivk8pUd5yw65/sV/AvpRxYKjBbQZM0SLzoY/9d09xk4=;
 b=Of8nBJdkQzrZsQ93VmweFQ2f0VW0tkBt7Arl73GPj7BJQBd1pGk3DpmZi+VE6ZKCHX
 mlvXb5C9ntOqyF7vCz8Kc9H+FPam1W15Q+oJeHHfeWouz6oG5S6UayP8QY2GQdPUI0My
 hCPus1kjcwzWMS6LHSUO8Wog5xotwmZfF1Rk01Vh41vN9/i9ZUSamwG/DgN4RGiguFnJ
 CL8/TmhN+X02+qkqcOoIiXhiT7DosmretDlc6iCO+pUDDyq8V7kpnzS97PK51gjcfusD
 ErWaiqPmUu5q3PfIhGwF/jg7w8G5VKmMGWvjKaRiugDR4+f7SzGsiWgqBo6832Lb49Tz
 cGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ivk8pUd5yw65/sV/AvpRxYKjBbQZM0SLzoY/9d09xk4=;
 b=iaDQszfRSKzHsD0i3b78G24YEAj4XOZzTf2Zp5kKeH2sYfcYfG8OHR2udHxISaATgT
 53DOoWiOM8s/cmeUO0eNF2BGflG/LWsDqhYSmJpR4JZVzhQsmSzjbAjUZpb+QWEwqI4L
 EfHd7acZSHd5rrKPPcrm74cdMKurHwnX5mqBVBjCZJctI6zbkUG3VgZYpSD6Yr2+zTui
 wURzcKer3EzfyayIod11dLwN2LF94kNhf5syhi35/46JzqIeehPYkCOYtgMo3EnCrXH6
 /0ZI0ThxOyxSQNME0+8Ndne6byvGEwCmSP4tA9Xcz15eVzu+NLg2CM/OQiw14WMeIuq1
 zYSw==
X-Gm-Message-State: AGi0PubvRUvaACga1QGurOtUEUrSLugXRV9GiC6CClu+J7fpR7gTNyr+
 ZiiKiK6HFJkQCSSGXzHrJsLwGw==
X-Google-Smtp-Source: APiQypJD/8l1OOW0+VgnggdRlxU6EJlqkaxBVKVmSTJRZwFIqdX2QpB1vmlCqT7Ad90mXIEuv/apuA==
X-Received: by 2002:a1c:99d3:: with SMTP id b202mr4652138wme.126.1588078243182; 
 Tue, 28 Apr 2020 05:50:43 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 q184sm3246115wma.25.2020.04.28.05.50.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 05:50:42 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linux-media@vger.kernel.org,
	hverkuil-cisco@xs4all.nl
Subject: [PATCH 0/3] meson: vdec: vp9 & MAINTAINERS fixes
Date: Tue, 28 Apr 2020 14:50:33 +0200
Message-Id: <20200428125036.9401-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_055045_293031_33D7050F 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This serie fixes VP9 decoding :
- enables the motion compensation reference cache controller
- fixes buffer shortage on VP9 decoding

And update the MAINTAINERS entry to add myself ad co-maintainer and
add the missing yaml DT bindings.

Maxime Jourdan (2):
  media: meson: vdec: enable mcrcc for VP9
  media: meson: vdec: fix another case of VP9 buffer shortage

Neil Armstrong (1):
  MAINTAINERS: update the Amlogic VDEC driver maintainer entry

 MAINTAINERS                                  |  2 +
 drivers/staging/media/meson/vdec/codec_vp9.c | 72 ++++++++++++++++----
 drivers/staging/media/meson/vdec/esparser.c  | 24 +++----
 3 files changed, 71 insertions(+), 27 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
