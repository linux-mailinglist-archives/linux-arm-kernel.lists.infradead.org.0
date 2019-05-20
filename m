Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B92823F99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Dg9O78EMQuQqIXqGUj6ZPqLSk9ojpXP2INW8ftDY0w=; b=tV5cX1lXQxh8P6
	gr0oMaSgurXjahmnIEysGgKKuEUvUcOqY1/v17MB8i235SM1QEQEEkPJwThEhCjaq2b1F/W5P/HW4
	oaNV4T+VMs3wRaoVXM4fPW0We/ahwh0zdpOPEtD9esoxpFARv4azKhXo5OPSMCGe4rk6TFDS2WFIs
	iTwZLBMYD/k3Xm+jX8L1MNRvBgIkvt5DnHMFj/qeyauEjXvFWmSu5BhP9Co9BebmJA30kDX7V9oi+
	R5q87OV21L3QpwZeqMDBvmH0pwDA7hZaf1ayvzkFYcZ4u+00RCwqO7+3FNs+FI4COu/RA3RgHjhU6
	QN3/0z6Jj7G3fuFnImmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmWZ-00086R-Kk; Mon, 20 May 2019 17:56:35 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmWC-0007kE-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:56:15 +0000
Received: by mail-pg1-x544.google.com with SMTP id n27so4539950pgm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 10:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=52yco9VK5RzDzN0Ze4QU/l0MYwJs+5CquMz8VBL6VQk=;
 b=V4AXEIv08AJKozp2k60l6WH+FbxePpO4LTwIjjxSxtuTTGQq9J6Z94lUGUst3qQJQ0
 gzqVaxKuD9EsnXxGRIJAA19oBZ5ie2qAalS6DvszK5vEF1nkOTgi0UW+OK0Eg3doRcqb
 waYM/YGAhtSg0UmYZ5Z0OQJoZBrMBmKMhqCY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=52yco9VK5RzDzN0Ze4QU/l0MYwJs+5CquMz8VBL6VQk=;
 b=K+MEj0CRk93nApXJFLYS01leaECcR0dvfbxUbfcAMPsu7Cqui+7OVZhS/j0tjYJtUW
 J0aXOiNOILR31rE4OVTNb3U0cVZpf00j73rM64XHjFmiI34sxlo2j8bWI7/g1GlVWNKF
 UtQ/435jqu7RXkcV1G7sqUQd6+vg2HGQtTJxKHD2nACgejaEkmn8d0R/xUacOsMdypvo
 8s+3K1j6xMZqm5jC6fT2KR5oMpmx7qNtpkPa3X7Trq8seNrhs6s0TSs13ZcLh+qHF/xF
 FZQ8Ow7UyjV+Jdv4de0nLQNb5TaMsmBBTrlXdu71FuCxh4Icroxj/+1H0laccq+fPhLp
 dQQA==
X-Gm-Message-State: APjAAAVwKC7H2zf9zkMKH0PLrdfcSLeCm4Q8dXcWioKmdL3zODInVzUa
 IsPY1iMtGz9+92n2vyudQFI9uQ==
X-Google-Smtp-Source: APXvYqzZDvPhaLQndJXX3Bt+sreJ+zs8jKeG3JkAK89Y9xuYz8Uqg1m2gbKwuR3Bid5ZcOye6FcIpw==
X-Received: by 2002:a62:b40a:: with SMTP id h10mr74507778pfn.216.1558374971504; 
 Mon, 20 May 2019 10:56:11 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id o2sm16852723pgq.1.2019.05.20.10.56.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:56:10 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, heiko@sntech.de
Subject: [PATCH v3 0/3] USB: dwc2: Allow wakeup from suspend;
 enable for rk3288-veyron
Date: Mon, 20 May 2019 10:56:02 -0700
Message-Id: <20190520175605.2405-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105612_948451_47403E21 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 amstan@chromium.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, zyw@rock-chips.com,
 linux-usb@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, jwerner@chromium.org,
 William Wu <william.wu@rock-chips.com>, ryandcase@chromium.org,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a re-post of the last 3 patches of a series I posted earlier
at:
  https://lkml.kernel.org/r/20190418001356.124334-1-dianders@chromium.org

The first two patches were applied but the last three weren't because
they didn't apply at the time.  They apply fine now so are ready to
land.

Patch #2 has a slight difference in v3 here to fix build robot
reported error.

Changes in v3:
- Fixed kbuild test robot error.

Changes in v2:
- Rebased to mainline atop rk3288 remote wake quirk series.
- rk3288-veyron dts patch new for v2.

Douglas Anderson (3):
  Documentation: dt-bindings: Add snps,need-phy-for-wake for dwc2 USB
  USB: dwc2: Don't turn off the usbphy in suspend if wakeup is enabled
  ARM: dts: rockchip: Allow wakeup from rk3288-veyron's dwc2 USB ports

 .../devicetree/bindings/usb/dwc2.txt          |  3 +++
 arch/arm/boot/dts/rk3288-veyron.dtsi          |  2 ++
 drivers/usb/dwc2/core.h                       |  8 +++++++
 drivers/usb/dwc2/hcd.c                        | 19 +++++++++++++++
 drivers/usb/dwc2/platform.c                   | 23 ++++++++++++++++---
 5 files changed, 52 insertions(+), 3 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
