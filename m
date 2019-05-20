Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DF823A5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1U1sW2Xiel0akgbm9z/zI09cghsH4EemxD0T0GDHcbs=; b=FXg60ZfSomlP6h
	605pJdjGcqQABplA97A2b1/+SWBCwEHLpraqfnF6Z6ioUVkg+uOE6aYay0mObHU6CTwIL5yVAaqQU
	Lz9DqhqeD4E5YDI7WpC4m+stvEnT33cfVDNKWDO47fmugshk8YzGHOvdDp3SwcLrtWgK81I95pPzw
	VD9CcMgXH3OZC2uscDSer7xyZsMq4groF9eshaET4BOxO4m9sRjCHyqGb0PA6Ojd/pva8TLdX2iK8
	O4TnRErpYZsPVTtDFt2Xzkp/T9Wkke+uc5wnPXLRLeAiV4NX8pGP78sm89Z8KLV6ArsRtdrGRm0y5
	XX5HHYBAdoAFut5D9rQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjR9-0006oi-Oc; Mon, 20 May 2019 14:38:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjQd-0006JG-SB
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:38:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id y3so13593575wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qPErLrIi2TqGTXmqPusukwp+5dK1tRC/mOkp9SybAko=;
 b=LKmA84tLspOC3dfQvPmPXP4G3MGwvU9fFL1Qw8krD5TnvhXLlsPrBYz4SDv+771req
 tZ28MfmFpF8aV+qH22r9G89LNY7z/5BM8vRbLyxq0unrjvsEZSNLjaZJIcamsElvr9Wi
 7v0Atn04/0XH5KhhL1WTm9fJ8NhpFRiL6x55i0VHCM+zaEt24js9GiijnKCIhGhD7Kmx
 aR3ZcZpV071XAM8c1vPLxbF2H2l+AJ2Qg9CYRJMJYdh3QPOEV2ld6DDP6+314na/6TzE
 Bt2ZjVKD0nV80O3y29GEi2CpaajMEAFCw3U/suvT1vDxiYh0Z8oVdOuKvyre+1Cu6zz1
 r2Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qPErLrIi2TqGTXmqPusukwp+5dK1tRC/mOkp9SybAko=;
 b=TrQVDjEFRPzyCSnrxnmvQ/A2h3I0MQ5z6lT/yC3jSewiKjRjKXluvn32ofbEyuFXxY
 XhHMW3XejOYQj1kQqjynE8x96tmAqyQa6dnNRcwFWNYAheddMQMZXk0UaazQz/X5nryN
 f4+MGi0ci2V0F8xHD9MlhxiFGElxQGkvIjudXQfd8V+75iViVZX7UlHzUNEXLtmIy4VT
 P9cqyHMRfYzB7Zr5LVjkqN8FTaYRlfmrc1FCWOMdn2IKewvnqHMzeIdI/GAbK/U6JEkz
 /eZeC3AlHDKNivQ4uJeZV1kkb5Ubq/vdNd3Lcfu+VTG72tdfoF60C0rHE9o7OXC8H7Zb
 rwTA==
X-Gm-Message-State: APjAAAXAdXBeGwG7bc0pXsoBnaf2HHtRDkApWDcqSTcQoJRWZn8Y9VgV
 z9bbsXotLDBIHwiOsgQsXwasig==
X-Google-Smtp-Source: APXvYqzqGlMUt7XMKaF9kFn8qoRcnhBeXJcmp0cRColc1Kpm2osu1wfI5WPOgJXKJ0djYeIX+7dboQ==
X-Received: by 2002:a1c:ed16:: with SMTP id l22mr5582854wmh.96.1558363094267; 
 Mon, 20 May 2019 07:38:14 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y4sm12505976wmj.20.2019.05.20.07.38.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:38:13 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 00/10] ARM: meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:38:02 +0200
Message-Id: <20190520143812.2801-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073816_695474_705141B5 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the SPDX Licence identifier for the Amlogic DT and mach-meson
files.

Neil Armstrong (10):
  ARM: dts: meson: update with SPDX Licence identifier
  ARM: dts: meson6-atv1200: update with SPDX Licence identifier
  ARM: dts: meson6: update with SPDX Licence identifier
  ARM: dts: meson8-minix-neo-x8: update with SPDX Licence identifier
  ARM: dts: meson8: update with SPDX Licence identifier
  ARM: dts: meson8b-mxq: update with SPDX Licence identifier
  ARM: dts: meson8b-odroidc1: update with SPDX Licence identifier
  ARM: dts: meson8b: update with SPDX Licence identifier
  ARM: debug: meson.S: update with SPDX Licence identifier
  ARM: mach-meson: update with SPDX Licence identifier

 arch/arm/boot/dts/meson.dtsi              | 44 +----------------------
 arch/arm/boot/dts/meson6-atv1200.dts      | 44 +----------------------
 arch/arm/boot/dts/meson6.dtsi             | 44 +----------------------
 arch/arm/boot/dts/meson8-minix-neo-x8.dts | 39 +-------------------
 arch/arm/boot/dts/meson8.dtsi             | 42 +---------------------
 arch/arm/boot/dts/meson8b-mxq.dts         | 42 +---------------------
 arch/arm/boot/dts/meson8b-odroidc1.dts    | 42 +---------------------
 arch/arm/boot/dts/meson8b.dtsi            | 42 +---------------------
 arch/arm/include/debug/meson.S            |  5 +--
 arch/arm/mach-meson/meson.c               | 12 +------
 10 files changed, 10 insertions(+), 346 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
