Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5F0FF9FC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VAfk0sgg/xZ52guIE5w88HBCw54sokiPuSe4/i6cwGk=; b=k+QAkZxezMxwkL
	HBDZ+8hz6lshtf1DFN9dKO0qMbv8OxFMn4AWff26ZN0dlVl201ha2rG8VMJJfU1iNbH46evNIG8Bf
	nObSNv8Grg6q0o5TSFxegdUXrc9PuDww0z3Xu5gHBhC+7sZAfblZkuyMaRny8B4NYcT1KsHc4SR+T
	gV3h5KemrTLy+nUIGYn17T7eBkYHEEIRKwNbQzMLd2Q3lgNlRIRTsHgP7nv12LXYT3DfXvFvWQC5h
	HuGflVgq3JPYbqXtV5eDXr0+ISyAlinpAc0/JN3rqzYroLGm2qXaWPVy0yeFKHD1iQZ+4Rx6J7SXm
	qwD8beyF+eDc0zMgduTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWL6A-0000oG-7m; Sun, 17 Nov 2019 14:00:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWL5p-0000mM-H3; Sun, 17 Nov 2019 13:59:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id l7so16351947wrp.6;
 Sun, 17 Nov 2019 05:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=05nE8+MHUGvDlOaHhFyY9hdfqx0IM0OvamCE7zybe74=;
 b=QLF0FvhZwFM+TBA7bz7hdl9LccI8q8cq5MvI1/15MaGDEIUxrPD03tnnFu9KImUmEj
 nSgwq80iTIDuKY+REyNzrYNtVd7Gm0GGeaYElnqlfeSfRB0hkL+p4tnfvyazduMrcTQx
 GFBV8yLqoovy5YzpuW47Yj8vkVQecKQyGvYbxTW8A8hJlW6DXJSPFBQ5Ku6reF8V7BuA
 w7LsBg/EUzcFYu8S3UCVcqDkviYcsJnlvx+/peBk4Szgq6YmXbD9rmqFh9NrsNDZ4uQs
 jYMx43vrlBQtiUECnbsW0PzNnnMdPXWXF+F+k/+XOs/VHHhtowFvWkkxhBfFEChhGmWT
 RTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=05nE8+MHUGvDlOaHhFyY9hdfqx0IM0OvamCE7zybe74=;
 b=tAZHXISHMOGCQhNRkOGwyKIViOiYOa02xwAGveRhHeqjVupQNM3K2YwLs7+yjmVQEL
 SdflmDgv8FuqlT12se/BmlBhcJM5wTaYO+dM1MutKgLxzBATOS4Ok6xlrxOPvYZr1aNq
 B/ZhzcLUL3PCwr5AATw/2hwRs72mN8Z/dQxyJNDw9Tj5s/LNQqM60U5csyc+3dzaXEx6
 +QMhzSGtHQxSe3jFLFtp/4/qu+BZI5f7RHzl13fFVIubdaKVPOuaJx3r1lqlmO2QOSnH
 8AaomsV4v/UBZMMzVKBqm4Qb/YtBehHoqG4q2e2lJcA8MAYPNsyN7hjlNUy3fuo8PDFv
 X/zg==
X-Gm-Message-State: APjAAAWQF1HxcoHx4BrP9CIqpipNwtkuSF0hFMYdQDLzP+s6thbLJhMH
 Vx9Xf3i7goUVANX0J6EA9kU=
X-Google-Smtp-Source: APXvYqwRI04F3xiORLf9hlO37+rwxbGZhusfuTQ8VMbNc7FjWCwkDlN4OVOZrqfhRfK7zqNf8PuzQw==
X-Received: by 2002:adf:ab41:: with SMTP id r1mr27076505wrc.281.1573999195527; 
 Sun, 17 Nov 2019 05:59:55 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id n65sm18004803wmf.28.2019.11.17.05.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 05:59:54 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH v3 0/5] provide the XTAL clock via OF on Meson8/8b/8m2
Date: Sun, 17 Nov 2019 14:59:22 +0100
Message-Id: <20191117135927.135428-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_055957_590339_F4AF80D1 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
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


Changes since v2 at [1]:
- add .fw_name in addition to .name in patch #3 as suggested by Jerome
- dropped the dts patch so this whole series targets clk-meson
- moved patch #5 from another series to this one because once we drop
  .name = "xtal" the clocks need to be aware of the OF node

Changes since v1 at [0]:
- add Rob's Reviewed-by to the dt-bindings patch
- check that "xtal" clock is actually passed via OF instead of checking
  that there's any parent at all (which in the worst case may not be the
  xtal clock) as suggested by Jerome
  

[0] https://patchwork.kernel.org/cover/11155515/
[1] https://patchwork.kernel.org/cover/11214189/


Martin Blumenstingl (5):
  dt-bindings: clock: meson8b: add the clock inputs
  clk: meson: meson8b: use clk_hw_set_parent in the CPU clock notifier
  clk: meson: meson8b: change references to the XTAL clock to use
    [fw_]name
  clk: meson: meson8b: don't register the XTAL clock when provided via
    OF
  clk: meson: meson8b: use of_clk_hw_register to register the clocks

 .../bindings/clock/amlogic,meson8b-clkc.txt   |   5 +
 drivers/clk/meson/meson8b.c                   | 113 ++++++++++--------
 2 files changed, 67 insertions(+), 51 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
