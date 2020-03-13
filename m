Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC84184357
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:11:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RAmANIfax4nbpyEVT+SQsng6XrvAJMLLEvqdr0OK7YE=; b=CbUgyVAcfWS/qm
	08VG7fIrfedy3L57EVCfArSDcshYoAcLnP4mi+Fo7YCcOwYJtbbKDMyZgvF9BK/V91oEERMHfhCxl
	ZvYhMeVyYyUtQREgfDRV3Iq/+DnQYtZjUYc0j88aniS6IOXHYXjmX0wRYsfYFosup6UQ3eQ8Tdcym
	VFLFwy/jsqypOXa6Z6ZleoZMj/c2T6ztW8oJW1rYI4OLQ06jS/p4aE9baBCpRikK7ug6rLwqJkn0u
	W4SCOU8AnrI/j7V2ssZCqe8UK5J2ZjrIbZk/naDd18O4gjlo2MNo0I+ivOFiYqqRwvslkha0KFRll
	062uqN2rcEAZwlOVcYvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgLR-0000KB-R1; Fri, 13 Mar 2020 09:11:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgHm-0003mh-Ik
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:07:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id t13so3029578wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LlEyFNmy3pyjX2oMkuEavu1zZSuwiAYfnsK65mC/QUA=;
 b=l/cF4iKboaIDC+xHYs6TLSZsMvtHRD1IIKQ729YNj13fHpwpPNa0+wMID3dj4pqXmb
 21tD0UyWk4i0ZyBi0VuvgEwhdCKrXCC70dQoP7Bz+C9m+WrNf+d99KhDTP2H3q3t1I3H
 PwSK9zud1xqzhCczxkFW+h4K9gnTXCTbXTSNvrC/JSU1PvOyDOe0ENzFof+AbAmj6wMW
 tdcOEXLr19NKh5IVqY0M+Yrd+eATVGFKj9JiVq5IDY0l6b4ABwc/CT9cW+pdYgOp5TGO
 iMnZqOOe5ICsfyFmk5dXppdBEBHEaKcYizsJRK+yIrDIj1OWMKoE+4Vhhy3HvsDUXoUK
 knsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LlEyFNmy3pyjX2oMkuEavu1zZSuwiAYfnsK65mC/QUA=;
 b=Y3SpmL9dW5mRKvzx8TFKik/XqfO4dBvvmJ1SC7rTS2uuGZ/a8FBNoBIESiWZOt8aY2
 eq/EvyhW3LBpPn5yAuGSJpjztZrVW6Ino92mEXYWJdImbxNrHv0I6TbdRJOeE0kzm4sD
 GsdH7s3lrHXecf11CX6SUmJKhAM0YSgGoZn/nlUMu9Y5SEIHv64Xcgiym3IBvxqFlfQl
 qUWOA0qXS++JY2xmXKCkqkVPeVXqmPftVcHT7MbyjzzHWU5nt31Ujqz69F1aHsj8zcrf
 fJx3czHaA4fTRxWYhqg+HZoFI6JQCr1QIQrZx4iWahHlVxVqurTCSiaBydb+jKRO1sez
 l+nA==
X-Gm-Message-State: ANhLgQ3dFbBk/xD+ltc7ga/AireqiK27xI+qJ4T9mNROiMcli4WpeeqD
 n841hGC/f4Nr1CVItqI/YG1I3A==
X-Google-Smtp-Source: ADFU+vuPJ8NUok4GeCmE2Jw9WemW5z531KbYxpFMIJ7XQl5ih5AVGvfMpDL/gUM2fHnQl5cuBoUNSw==
X-Received: by 2002:a1c:1f0c:: with SMTP id f12mr9713747wmf.179.1584090436600; 
 Fri, 13 Mar 2020 02:07:16 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id i1sm61872399wrs.18.2020.03.13.02.07.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 02:07:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/4] arm64: meson-g12: enable support for SPIFC
Date: Fri, 13 Mar 2020 10:07:09 +0100
Message-Id: <20200313090713.15147-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020718_636518_F0BBEA2E 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On the Amlogic G12A and compatible SoCs, the SPI NOR pins are shared with the
eMMC data 4 to 7 pins, thus the DT needs some tweaking to allow setting
on the data 0 to 3 pins for the eMMC controller to enable the eMMC in the
same time as the SPIFC controller.

Since this lowers the performance of the eMMC, the SPIFC is left disabled
and intructions to enable the SPIFC controller as added like done for
the Khadas VIM2 SPIFC support.

This adds SPI NOR support for Khadas VIM3 boards (S922X, A311A and S905D3)
and Odroid-N2 using the same scheme.

Neil Armstrong (4):
  arm64: dts: meson-g12: split emmc pins to select 4 or 8 bus width
  arm64: dts: meson-g12: add the SPIFC nodes
  arm64: dts: khadas-vim3: add SPIFC controller node
  arm64: dts: meson-g12b-odroid-n2: add SPIFC controller node

 .../boot/dts/amlogic/meson-g12-common.dtsi    | 60 +++++++++++++++----
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  2 +-
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  2 +-
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  2 +-
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 23 ++++++-
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts |  2 +-
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 22 ++++++-
 .../boot/dts/amlogic/meson-sm1-sei610.dts     |  2 +-
 8 files changed, 98 insertions(+), 17 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
