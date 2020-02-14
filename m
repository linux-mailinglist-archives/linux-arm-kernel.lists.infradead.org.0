Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E24115D214
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 07:27:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fUbY9UK9G/4HPGzatNJwJFs8TbLAJDB7bxblOWwSh1Y=; b=A1UkxY9LcQx0e3
	WonUZJO//M4VEFwjPSKuUqhAby6LPStH2xwN2RzUFMKIagtaDkvOtXTgeNUEa9cE/O67eEaosByxd
	75lIIamLh7R+/DEWw1+9NNPUKYqJEZ8HoIoiL4vij97zIqEdo5mtcNresWyFM5KTaGczemlyQv4fi
	wjUBlBqNzBsX9ehIXhY0qyl4ceLezC0wHYztBsnr3ubLDppCP2aecjq2psF8DKt3dgmgzpCOX+YBG
	23WY0oJPwIBENaxxalWTNN7aBs3vICZh18yP18ybWk6Zhs9fdHR1KreRY5jE7OXT9Jjle5QTYrSxS
	qqFq0RfdkulNZSzFKp5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2URG-0002iF-KP; Fri, 14 Feb 2020 06:26:58 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2UR8-0002hU-Hp
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 06:26:52 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q39so3507459pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 22:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eCrhZ74+BntL1ASmsZknwx81NOpQkF74lLsvD9sBub0=;
 b=f3T6NdVHZxNDFtYQX+iekyEp0Bj2gxg4PzjB4yrO524wQr2gUIHTtFAGcvT0x+wfxY
 xgHw8Oc7tgN48emrBRNtwlfgTheC5sPIifAvxhb1VHFp42qc5buBVrLVuqMTscO3BeVg
 gMN5M9wfjGBaooPpixSwRakGOYGWDa2gtcbaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eCrhZ74+BntL1ASmsZknwx81NOpQkF74lLsvD9sBub0=;
 b=cGa7lOiQ2gJ/i9Dmt4PFnL7R4jRnX/CxlkrYjo9Gevbha4BwGaAmSNd8bUSwB6PGRn
 ZQ4ch1pO/re0pv24IWEv1YRxgKYT7UeIpXitueinzR29entJ1sq/Giz6kM+nspc9u18g
 xvWDELiAC4npm7ZW50CqsKwq0uTZyrpH56jO3kvw9L1M+3jjxF1sDqEFHKKBCG76Hgwq
 22NMyp159y8Lu4yrV8tfgmMaEMxn6n8+R4lRxIm7t/hOB3nSoKT5hDiV+1q7vny016w6
 YNygk8RxBZBV1gha9O+SjdAdZgArcCo1LtY+7yGe3hIBegYKk7pKQB6fe85FXm2Rky5Z
 wxpA==
X-Gm-Message-State: APjAAAUDY2pBq3j2tt6EJXVmftyGlSMl9Se5/ZOAbdeBO739ZQR5viRH
 d/Yn2sGl8fKtTCBjo2RvQzGRfA==
X-Google-Smtp-Source: APXvYqyn5ehjzmo5Eos0aPWzc2ZSt6d7nE5vtqIbR/GyaAShL8VPgieCBvCjTwVgiNarWUm9OnDtxg==
X-Received: by 2002:a17:90a:9dc3:: with SMTP id
 x3mr1620345pjv.45.1581661609563; 
 Thu, 13 Feb 2020 22:26:49 -0800 (PST)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id o73sm4636778pje.7.2020.02.13.22.26.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 22:26:48 -0800 (PST)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] Add a watchdog driver that uses ARM Secure Monitor Calls.
Date: Fri, 14 Feb 2020 17:26:35 +1100
Message-Id: <20200214062637.216209-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_222650_615658_5000DDC9 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Evan Benn <evanbenn@chromium.org>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
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


Evan Benn (1):
  dt-bindings: watchdog: Add arm,smc-wdt watchdog arm,smc-wdt compatible

Julius Werner (1):
  watchdog: Add new arm_smc_wdt watchdog driver

 .../bindings/watchdog/arm,smc-wdt.yaml        |  30 +++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/watchdog/Kconfig                      |  12 ++
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/arm_smc_wdt.c                | 191 ++++++++++++++++++
 6 files changed, 242 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/arm,smc-wdt.yaml
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

-- 
2.25.0.265.gbab2e86ba0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
