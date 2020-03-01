Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEC9174B0B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 05:18:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0jcddFD3lX/bbaC+tjU5Nw6fzfa97Oc4bLMN/i4dYBg=; b=tYU
	XsNo8cOvEafPo/DpdM1ujtxcMlQRWmyTi6+aIUKX69xOMODWcHjGOEnNZTL1paSuFaUvaKCcMwYRx
	Vcp1B3tLFfrW0toMPfA7OAKOjlXV6DRIg5HIt2tf4l79LdRehDcVH8RH4NL/xduGozvhGgJ7+dQgN
	UjTBstl0TIp1zC1SzqZ4wL9zlyob54lzXruglg6LX90aP97uqx4yfst0GUue8uN5sz4Hg7vlor7r1
	vbnTfmsakJK0N43kvX3F2UXY6fq/nR9mxvfnikaOegbbmpGnyLMu/ecLtQ0IGZYz/jQOaCUNYoWMi
	YrioNtSI/8DEw8Ox1ge4dPdpgJ3/5zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8G3c-0000V7-S7; Sun, 01 Mar 2020 04:18:24 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8G3S-0000Ue-Fz; Sun, 01 Mar 2020 04:18:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id v6so5205730lfo.13;
 Sat, 29 Feb 2020 20:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RUckZGjTIfpOeMQYZ0QQ1YNFNYKeeYg+2ZgjfO7J8WA=;
 b=Wo2YvjZSHisbFe2JskaKTucoxClitLTs2mFciQ7tceYhTWwuIvAfeQpXw1M8F380vP
 /6+GV+49Q58KTj6dDULr1Rv+KSk1AtbyOoz2r1XUEFTEJFxzBcZHPOw6Mw2/JTXZUG8O
 6ypo2d1u8iKyfS9DzOJ2mkA2ygGgmgIFih232NmlL18oZSphEpCRW266hgSI5XljSTKv
 OeseASn8oZs55NZpmG+muBjm15Nf21lsRaY4otyVvUDjmk0T0U3plw1pbt/vPpCkt0+b
 zV1pNG5QimJQGB4gbRMrtDclMOuXraLH643LCAG7Fj6O0bsg9JRv3ETNJVm0uiy7rGlD
 VCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RUckZGjTIfpOeMQYZ0QQ1YNFNYKeeYg+2ZgjfO7J8WA=;
 b=M7MIHKghXIh2BmFiJf0fLiwBgO/SxSHLVLnJEHUuEqDrDiojelS9yNIn3Ss+SyHR8S
 clb15MnozBGv86KC5y9d7IjcgeldXW2VzvlCOPXcFQ24KAK0rxZqwZf/ehJ+az9GmEYF
 Z6R+mb89rhTQTuj2H941XX+xTjvLYLxTJmRfWXNnM6Ndn2jXFY8cDTWKzX3+ysyYFIN5
 J3Z5JvsKJMn4uD+inb1Nv2KPN+p9dtVx4bPJxLoCcxwS1RAlu/5lhgjk5plB+Keo0B56
 /gntyBLg1Fxjah07rV2uNTTDhPh/W5zml1BW5bR6DItLByZT6TgkAwyvTn91oDuYOVVe
 rKhw==
X-Gm-Message-State: ANhLgQ1QQVJWOIXy8tJC/AI1L+w5uSb8iosHhnGmoR+ybv+e/dnEuHvV
 eCORgjfXF6oECEcSXIZQzU4=
X-Google-Smtp-Source: ADFU+vv/6spC24e91c1Z/PwBe/1cen7rK7mnuPZDtPBlg5rpJDSCrnvthLsCMcQCIb4DUEUa/tFABw==
X-Received: by 2002:a19:840d:: with SMTP id g13mr6885360lfd.162.1583036292835; 
 Sat, 29 Feb 2020 20:18:12 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id y24sm9568864lfg.63.2020.02.29.20.18.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 20:18:12 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/3] arm64: dts: meson: add dts/bindings for SmartLabs
 SML-5442TW
Date: Sun,  1 Mar 2020 08:17:18 +0400
Message-Id: <1583036241-88937-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_201814_534688_85935227 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Jer=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds new bindings and a device-tree file for the Smartlabs
SML-5442TW set-top box. The previous v3 attempt [1] was 15-months ago
but nothing has really changed apart from a change to yaml bindings. I
have checked and the hci_qca driver does not provide QCA9377 bindings
so there is no alernative to the gpio-hog for enabling BT support.

v6 - removed audio nodes again

v5 - typo in card name

v4 - typos/corrections from Andreas
   - convert to yaml bindings
   - add sound node back
   - confirmed gpio-hog is necessary

v3 - change to Smartlabs LLC
   - removed sound node

v2 - removed audio nodes
   - changes soundcard name to "meson-gx-audio"
   - added missing uart-has-rtscts;

[1] https://patchwork.kernel.org/cover/10674939/

Christian Hewitt (3):
  dt-bindings: add vendor prefix for SmartLabs LLC
  dt-bindings: arm: amlogic: add support for the SmartLabs SML-5442TW
  arm64: dts: meson: add support for the SmartLabs SML-5442TW

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts | 292 +++++++++++++++++++++
 4 files changed, 296 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
