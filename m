Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E5B1CBB79
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 01:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1MwZqACHzP41x6IdI7G2kKQbSQL0d6dvwTHanr2bzi8=; b=kYBugO+y8+XS4V
	ijJ9Qa8GMJcVXv6y2cwzipQbjnlUmTLujeHQuVEW2mQmBjmjAUePvJvQ1rOeTiy67h2p8WsfYWNLe
	WP5xvNx+p/AyVF19Oorl7D8qTl18yZgbF6amqe8krKaVdX009An+dweuVKckGOGkNN4vYW8pvQV8f
	pahqIK2lvix+5YzDzWgp6XdRLv0m7rG24KdUEmptstfx1AbZ6dSWV6MrmJvknsqpS943lJI9CaeYG
	mcoyBFg+F64TwiPmUbiNJ6mJ7M3plmzPjv9lHYE7A2DanBPcH7NOizBB3OMDNmBj3I+RgZvx0QK9I
	jLgY8/5cCDCiygGdM08Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXCpq-0003Gl-Aj; Fri, 08 May 2020 23:55:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXCpV-0002yZ-MG
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 23:54:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so3857498wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 16:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=7+YJ1e/s90OvSebaN4oYS3xTfMxgM+q1tJtN3rTeY2w=;
 b=LIY/QcikFhOdvzB/OvbTftDJip6gmVSjn0/zcXlRxWv79zWkrRv2K6RvhfLgsCn574
 0Rn94KvDoXznCnQi+SjIrO3zgWo82u/oRJ3fYeKa98d8FJm0Eg39CFQ5NfJeIomArZf6
 SGmOKIjfaedHRo5Zqjw8PLAjo9hyxn59YzI+daEVgpkxHjE9ZllNKLbxwzXHnieORFzI
 PslELnSe3fR5XTf5sis4Mg68r1POMwuNRsByX9gkqWzb275UnfXL2h3pQ3x7cAbNyQfz
 90fo5Ni7iimkpw6FcAsP2PJbhEuBwZdPmS7NuJgw3qyPCCl3pn+kbcZqW/+Yr2ChIzsc
 dmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=7+YJ1e/s90OvSebaN4oYS3xTfMxgM+q1tJtN3rTeY2w=;
 b=eSe27Jil+7RzGwTdVzfaJ16Tb9YQerEcLlpZsZgPpyEOkEN83D5Z4MkXIMj49NmfB6
 tBssVvP43QcV2On8X+JQ5T9ZEPioF6cJahcK5+s6j9vFSS9CKB0a/n8vkJJ3Vgm8+JI1
 ASpqvfun5rytnyeHF5JD4wqqCxe5Ed0iCF5edgDuzKQns8BX44yMGeVvr6Q+DWsbstsT
 Roa/qpOnwvrozOk3U88JKy3aHshtATMhwUGpEXebGAnxG+LaK001dkjAT1dqyVJmrO8W
 qr7XYhakJoDXheEPlsWK8M/WxiCuGMV9SHND4Cgm6MXlQ21F4URvUra5lrrKq6DJz49b
 XWkQ==
X-Gm-Message-State: AGi0PuYudHMWj3PV6FfszzV///Hi+iBLGxxurYIdmuMf8dA24dUBRp9q
 lqRH8GS3bquGQkLNkbOBWBcqJA==
X-Google-Smtp-Source: APiQypL9w7A6vIoq30vO/PvpjPKR2UaHaUE59F4QWU3licJ2MzAfeLbnwFbvvNdKOwDWX3uf8HuRZw==
X-Received: by 2002:adf:e985:: with SMTP id h5mr5493385wrm.336.1588982094727; 
 Fri, 08 May 2020 16:54:54 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id g10sm5119823wrx.4.2020.05.08.16.54.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 08 May 2020 16:54:54 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] Amlogic fixes for v5.7-rc
Date: Fri, 08 May 2020 16:54:50 -0700
Message-ID: <7hmu6iyoc5.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_165457_775172_7FA6E01B 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-fixes

for you to fetch changes up to adf27a87eb4e85bb2136572121e06ad83e5f1407:

  arm64: dts: meson-g12: remove spurious blank line (2020-04-29 12:12:11 -0700)

----------------------------------------------------------------
arm64: dts: fixes for v5.7-rc

Misc arm64 DT-only fixes

----------------------------------------------------------------
Neil Armstrong (4):
      arm64: dts: meson-g12b-ugoos-am6: fix usb vbus-supply
      arm64: dts: meson-g12-common: fix dwc2 clock names
      arm64: dts: meson-g12b-khadas-vim3: add missing frddr_a status property
      arm64: dts: meson-g12: remove spurious blank line

 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi       | 2 +-
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi              | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts    | 2 +-
 4 files changed, 6 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
