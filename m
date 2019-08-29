Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBBCA249E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 20:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/UmFaKHIWUwuEExirj2d+ppWN7cPofo25fHvNC5eNKc=; b=Bbw0WYd2pOJovE
	0Attn1axW5YJIn7YMCmZ+0nk7g1vkSvo9Wr8SwaFYc7AulWOGvDAfQYOgkZmNKLg7ueRULBptGDkA
	yMgXe8dpBWvXU7o7WCkO1E5Kczfbt1Y9Yu8Qon7fcYNukgTyK9rZZ4Zje6tdYffVrz4bIwAZ+mDUB
	4AhYcYuGvresoyF0frS0/7yuOdtCWg1E8LWdOLwlXdCcIWW22wuYS5nBMMNAKsWLE7Jm6gKxPyuUi
	W3Cr4m9YaRYtr5Cwx3Ele/RonQnGVoKa4TqlYKjCfUvdiGkRG0D/dyn5X7vwCyBN/NhZuBPBCK4cJ
	eDzUGWs6fdjwgWEzVRPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3P5z-0001cJ-VP; Thu, 29 Aug 2019 18:24:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3P5m-0001Zn-DS
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 18:24:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id 205so157777pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 11:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=3bN3FPWBt2izzoZn0SZCuMH2VnMH2JOADS69Z7uFE2c=;
 b=U+5sPgIwNWq5IpbFEkHy5kbwd4Z3D50wyWm8x5v5hnk4DqrL6IbjNbLVeHT4OPbwlq
 YiFSp2eHyFQzGd3Po/UNWBDT8HREJnwUKGGa7pAjZAPc+UAjCdVZJrjgGggw7xls3s6Y
 RsCkgVlxY0sIMm2iSF3mfCErreiA+lfUULBphSYj40wg3uCh6r5SjOcmjidh15i38jsJ
 y2N9S/Zy6md4Ab8TKPlf9mIs3g1bJGYh3zXjZtrtinc2KkGLv1hthvHovT/GThr+WOY/
 mtqVAL1Cu2YKWyq8fINF0ij9NXZK+mkHsonsqTuamEux2xtyWkFXu2g2jnW8uiZuj2WY
 6Q6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=3bN3FPWBt2izzoZn0SZCuMH2VnMH2JOADS69Z7uFE2c=;
 b=iQLOOrR+Gux9HZ16WRdaROoQHH27iBavqCrKpMk101lQ3DZl08PwlUT06fEqLK3oLJ
 lFW/q2VlKEZm4aPId+wkWB49clSEiSBGvDHdDnCSVrnr7YfdSz+7oStzng6Os+HuauKb
 +kwHlqS2JsTU5KA3EzFTB2G+UN//61+t4DzpQt/VRf1aJfnS3yw1q8gk12PQwQtaHgic
 zlMVuIm09lhSipTrpJYsemn5+jC9ZtrF9V5BFhT0dzrZYuVrCn3ZCGd8D18w8fI8raHg
 XqrCimY2tx7klm25TlTmWetRKpNcJsSl7FbfkYVKx88J8M1LB6rh8caV5CpxWRi2TAKy
 1HjQ==
X-Gm-Message-State: APjAAAW2DjQQ0cvw4l2sPd+X5c/pNyigPPxvzN23tu3X/bQxN/mlNLju
 RQXG8yMDfjshHcvMXA7SnlkX+g==
X-Google-Smtp-Source: APXvYqwH+UIQhuRbxOMBnd8qQApV9VOs77sGU34ir4MxAx2J7e6YOZb4a3pxMmPml6VsnvGFjh73SA==
X-Received: by 2002:a63:f118:: with SMTP id f24mr9841753pgi.322.1567103057410; 
 Thu, 29 Aug 2019 11:24:17 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 15sm3859625pfh.188.2019.08.29.11.24.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 11:24:16 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] soc: amlogic: updates for v5.4 (round 2)
Date: Thu, 29 Aug 2019 11:24:16 -0700
Message-ID: <7ho907rfsf.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_112418_457608_7003CD0E 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 49ed86f503be80aac158a567c4cfd31cf1cd181e:

  soc: amlogic: meson-gx-socinfo: Add of_node_put() before return (2019-08-20 14:53:33 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-drivers-2

for you to fetch changes up to eef3c2ba0a42a6aa709828e968b64bd11f4aeb19:

  soc: amlogic: Add support for Everything-Else power domains controller (2019-08-28 14:29:37 -0700)

----------------------------------------------------------------
soc: amlogic: updates for v5.4 (round 2)
- add power domain controller

----------------------------------------------------------------
Neil Armstrong (1):
      soc: amlogic: Add support for Everything-Else power domains controller

 drivers/soc/amlogic/Kconfig         |  11 +++
 drivers/soc/amlogic/Makefile        |   1 +
 drivers/soc/amlogic/meson-ee-pwrc.c | 492 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 504 insertions(+)
 create mode 100644 drivers/soc/amlogic/meson-ee-pwrc.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
