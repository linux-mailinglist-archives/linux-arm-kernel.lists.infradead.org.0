Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BEB166F40
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 06:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VzzWdWbwclfE43wDN3VcOUXAQnHF12dJk6TtTyGper8=; b=epQ96RAQlOU/qa
	aYk9Ft91dwHUgvB+qp3KL5ZByTkSL5cIZC795fJWpOHiLLnp4QxomiccQ/zrq9j+MPjNj3eYwtG73
	taNLAWNWn4ZCEpBrBjl7WTcsNaJzKmt6MzE/DONR5T4GZcWksXW3o9iifZV4ecThq19DFmLJJMInV
	J8kbpOqT2AYQffIXL3/fNPUeTlVOMlLwWlp8m/J+BXnyzVAfzrmgCEYsj33N6YjB1tvFiOY7i8tL1
	R+fSvDmT7qz0j/o/3UoIw922BwGbCP6LP/tzm0Fk+9sSmF6/mTTvd9Zt2bdGn5XiCfEBRmWGU4dOM
	pbU9MXeb/rsU8VvsyXkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j511E-0000Az-J3; Fri, 21 Feb 2020 05:38:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5112-00009I-9h
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 05:38:21 +0000
Received: by mail-pg1-x543.google.com with SMTP id j4so428627pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 21:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xR1GRxFdUV2TwDvxuNR/pK3VYzRWJYZmKivDEUcKc5w=;
 b=QVp/FC2NiAc3rBycqqqlyoa0rlWBGhP8nW8nvvVd1pRXp9Io6ugF1YFhOrlCramk4m
 maGakRF1l77Fn3JdI/QLF3uqnkV56NYnLn0ct7McCl8jjFS/RuIzCVK4rKwS0eMsanTp
 JJZ6xUxzRnD685IHKwcVyvWnx6ogkbaou6bhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xR1GRxFdUV2TwDvxuNR/pK3VYzRWJYZmKivDEUcKc5w=;
 b=IwB3UDt2XibzwVBlfVXVnwrLemsUOd9N/GHlzooMVw+lprNOg7H6AqyO06rTV8nS2T
 tQLklPVjxETWfcEMKxyT1ZzBVxfF+QyXHByOz+3PkGnvYXSBmmC8h2P+JHVg6dDxYWY1
 COOWl4112VgAD4SNqNbBzzGPSpxokxac/bNdJX4NCQr+G/52IbrO88Nlss3dOS6NAmAq
 X/93qoMIEbPA8EMkPjK/KC1V2q4Q8l1dhswgp4PGk9eBdr7wioUAmI9Zqu+93Wp0fhvI
 euOTYybMxEnny2nC4w2nbKOTZYTB9sStufq5f0oYf2uGlw0PuXR//vsddVHE4mDHfJO9
 UlYw==
X-Gm-Message-State: APjAAAVoXSZs73FN5wi3xsOZJWn8O7A1EabpswRfNQiG1C1waJ392FBo
 TOZJjwBTZNRr0frwcRCexQitXw==
X-Google-Smtp-Source: APXvYqwNbEeASGO4ArQ+KQ49tlopvldlo5/I0QneTu45MVpD2X1Vvxvy9falEjB7Hs8GL48/Mzv+xA==
X-Received: by 2002:a62:486:: with SMTP id 128mr36207829pfe.236.1582263499298; 
 Thu, 20 Feb 2020 21:38:19 -0800 (PST)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id b25sm1329060pfo.38.2020.02.20.21.38.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 21:38:18 -0800 (PST)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
Date: Fri, 21 Feb 2020 16:38:00 +1100
Message-Id: <20200221053802.70716-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_213820_341054_FCF1BBF2 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Olof Johansson <olof@lixom.net>,
 jwerner@chromium.org, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is currently supported in firmware deployed on oak, hana and elm mt8173
chromebook devices. The kernel driver is written to be a generic SMC
watchdog driver.

Arm Trusted Firmware upstreaming review:
    https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405

Patch to add oak, hana, elm device tree:
    https://lore.kernel.org/linux-arm-kernel/20200110073730.213789-1-hsinyi@chromium.org/
I would like to add the device tree support after the above patch is
accepted.

Changes in v2:
- Change name arm > mt8173
- use watchdog_stop_on_reboot
- use watchdog_stop_on_unregister
- use devm_watchdog_register_device
- remove smcwd_shutdown, smcwd_remove
- change error codes

Evan Benn (1):
  dt-bindings: watchdog: Add mt8173,smc-wdt watchdog

Julius Werner (1):
  watchdog: Add new mt8173_smc_wdt watchdog driver

 .../bindings/watchdog/mt8173,smc-wdt.yaml     |  30 ++++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/watchdog/Kconfig                      |  13 ++
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/mt8173_smc_wdt.c             | 160 ++++++++++++++++++
 6 files changed, 212 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/mt8173,smc-wdt.yaml
 create mode 100644 drivers/watchdog/mt8173_smc_wdt.c

-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
