Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C146E63FF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 17:18:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g9MawjwSBAIYnPadne4scocks9INjQKNRhz92YuFcNM=; b=gkMD2tms5mXO4+
	bBp3+iSWNJcKn967R0fGtER3I6EhHXJmxCAp5wUHF09KsjZ7mejPQAqy1SQsx/cX71sYNP+yzJrVs
	O+pxWHMV/4KZt6Srd6O3z2v6g2SqRBVgtVOi3eij+htYzX8WZEd9JZ6Uf+jZ5IYAUlly1LLSRFUs/
	MMZfK2Wl1sa1d5pMO9sjjE9+hISsXuQwtzLPzQ7X1vcFQa6OLfCjBPjV10TFvAcZervmiPj7Z1KrO
	jzIoW+GhXNHZblO9mtcPHS55Zy/RGgfPU/tIEknljhmMgcPhjHWne0OwuKyQvhfxcEMY8Q2V7q/aO
	P90jGm5DeLRygKegmaiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlFS-0006D7-Qe; Sun, 27 Oct 2019 16:18:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlF8-0006Bk-Sz; Sun, 27 Oct 2019 16:18:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id r141so6674196wme.4;
 Sun, 27 Oct 2019 09:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fzxJHdWe3FCszZKpIfTnAoSqGWjqpiAHUUSq7m5VVx4=;
 b=J1puDYWlQm8AmK/pphEqz3Tmiwv+jP4W/murkGnYs+HHoegmq7/3IEgAn2E5ZO93Sx
 BQuNtFthdu93/m09qB/qiUX+2Nk71lhUnadCGqIuTzBjKUppvjxBxIQtnzAWPdaGC+jL
 swavw60rQxN5LvewsVpVK+aRqeGIVOdOpwCieY3foNi2HbxPbzzbIcbozdYTiPx3zwwI
 guqi2UEL5D31jdF4In8QohisZQaYjgXrUbW81Vb0hHf8JK1eNbVo/zeON0TlviWjIo+y
 54IzN9HCFevVnM1CPiuXgvvAkobz7LSCiuPFAqibsLfubC1XegW0Vd+ziy/XfXp8DT8z
 qGNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fzxJHdWe3FCszZKpIfTnAoSqGWjqpiAHUUSq7m5VVx4=;
 b=NTwWsYNuGjy50EkRpUiHHGKN2/WKMOr+hsmwkfA/pNVNc2x8XwznuO+0sKxgzTUYK3
 yOqw+IvBJEdEbNPQZ0qKuUlpBVcHSsHT+dEoUveQvC131KZMY8i5LgtH6R5cIO7fssQs
 8xXunYOepB52pNc8sACA9335K5y7v8V0uJUWAQBo5s/ePw3ZhwuCVLG0KnfjEGEHcMWS
 H0LOsIctiFQKWA+GHtPg7lPStfjS+X7+pkP1J2+GB5j14MHWFV3nT91BnzPsDRBc/Mu/
 3wqlu1xLOgEvsBAlCuhZcEPw4k+hnMZ2nG3KraTMkgFOQ7yGojaFxyuf1hKsypYcyzzw
 6N1Q==
X-Gm-Message-State: APjAAAXPFHy1fMHPYGa9Phpu2EMLYgffCC5Qowv+xIBAmFJ+UiRQ+dmv
 +NSMaMEPksQmL+y7M1Xv6H0=
X-Google-Smtp-Source: APXvYqxArGQ2A5p0zyY9Lwm4fMAnRlV3pFBQpHzOz3hdCU27iLZp3shZOqLi87k185MCm7c/ed5U3w==
X-Received: by 2002:a7b:c011:: with SMTP id c17mr12464869wmb.95.1572193092324; 
 Sun, 27 Oct 2019 09:18:12 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F133D01300428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33d0:1300:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id j14sm9585014wrj.35.2019.10.27.09.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 09:18:10 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: [PATCH v2 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
Date: Sun, 27 Oct 2019 17:18:00 +0100
Message-Id: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_091814_966487_71B9A165 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far the HHI clock controller has been providing the XTAL clock on
Amlogic Meson8/Meson8b/Meson8m2 SoCs.
This is not correct because the XTAL is actually a crystal on the
boards and the SoC has a dedicated input for it.

This updates the dt-bindings of the HHI clock controller and defines
a fixed-clock in meson.dtsi (along with switching everything over to
use this clock).
The clock driver needs three updates to use this:
- patch #2 uses clk_hw_set_parent in the CPU clock notifier. This drops
  the explicit reference to CLKID_XTAL while at the same time making
  the code much easier (thanks to Neil for providing this new method
  as part of the G12A CPU clock bringup!)
- patch #3 ensures that the clock driver doesn't rely on it's internal
  XTAL clock while not losing support for older .dtbs that don't have
  the XTAL clock input yet
- with patch #4 the clock controller's own XTAL clock is not registered
  anymore when a clock input is provided via OF

This series is a functional no-op. It's main goal is to better represent
how the actual hardware looks like.


Changes since v1 at [0]:
- add Rob's Reviewed-by to the dt-bindings patch
- check that "xtal" clock is actually passed via OF instead of checking
  that there's any parent at all (which in the worst case may not be the
  xtal clock) as suggested by Jerome
  

[0] https://patchwork.kernel.org/cover/11155515/


Martin Blumenstingl (5):
  dt-bindings: clock: meson8b: add the clock inputs
  clk: meson: meson8b: use clk_hw_set_parent in the CPU clock notifier
  clk: meson: meson8b: change references to the XTAL clock to use the
    name
  clk: meson: meson8b: don't register the XTAL clock when provided via
    OF
  ARM: dts: meson: provide the XTAL clock using a fixed-clock

 .../bindings/clock/amlogic,meson8b-clkc.txt   |   5 +
 arch/arm/boot/dts/meson.dtsi                  |   7 ++
 arch/arm/boot/dts/meson6.dtsi                 |   7 --
 arch/arm/boot/dts/meson8.dtsi                 |  15 +--
 arch/arm/boot/dts/meson8b-ec100.dts           |   2 +-
 arch/arm/boot/dts/meson8b-mxq.dts             |   2 +-
 arch/arm/boot/dts/meson8b-odroidc1.dts        |   2 +-
 arch/arm/boot/dts/meson8b.dtsi                |  15 +--
 drivers/clk/meson/meson8b.c                   | 106 +++++++++---------
 9 files changed, 87 insertions(+), 74 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
