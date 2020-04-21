Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481C71B248F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 13:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lbXQbN/KQmTJ0jF+gZMfAc9g9fR47iY6JKvxwSUNga4=; b=DsSxOn4N7wMngs
	DYPDNdS0oOp+QgXIYe6VQ1DPlrd2Fl7FNL/PGHdAoxt0n+GAtNQPQey6xGcYp/Ttk3EuTIy9sGN8E
	6qHF0ArvMRXz8K3AqzK2ujOBw171ZcX0k5I5a91fhX0x1J9K1fofh0HF3hgZD93ZcqrWa2k98Fa/Z
	quNer/LKAjPe6+UO9WpTrDMW+EaLk2k8J+HuEVJ5CItMc2BbGw5PHpmOob6giOEYJkg6PGfelIB8+
	9Lo2lYsMtqv82qzJvQmZLXDoAqPTf2DUM1/CkMRD71ZgLVdl7atndHIGPUwdRd982cEeQkgeKzxbS
	2bo1/tZpHJtbpx5lizCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQqip-0001aN-88; Tue, 21 Apr 2020 11:05:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqig-0001Wx-6w
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 11:05:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id x3so6444383pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 04:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WvF21qmP3gF9P7JZJ1ONcszxypmYyGE19tvUhWUTsVs=;
 b=h+1WGBmhpgBtdaANZUwwMqTOtqCaHeP8LEw5UWv2vHgLHr/sm2q1g/zutfJc3XCFY5
 2a426+CkciRwHnsNtSmp2IC36uhc193CxU8uvnyojGagWNbqLGXkCrqZycjGRJass4yv
 v08www/I7ltHOkci3lA0Ub2nYKge1VZpCKO3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WvF21qmP3gF9P7JZJ1ONcszxypmYyGE19tvUhWUTsVs=;
 b=AcMua2sLLuMspIbrieodinD/5VbvX6jOv7NyQhA+zdsVfL3R0UxEJzDxyZf2xbGlT3
 BSpBu1MGn4mUX/RCqCoKXROVBIp6KC65B2RWNoMoyjUwuS3um9QvfPIZ5ZkENjxA2S88
 2Ymwg3qiofyPFFWc20YuiSuXauy9OTaArZDt+uqfdbzIBGx/gOlw1Ihvyn0j07r+517S
 LFferAOxOk3MER+MZDjkHxrDkAp/KuE9aJobM28tqYC0/qhZYH/Tn/l4t/+DnsARPOtH
 OwKce7vrkBUels7lOY4aZT/ixJVMGwlucJVrZRZBoWQzZxtGLzIt6LNSdo8bL6IaYosj
 utuQ==
X-Gm-Message-State: AGi0PuaEKtr6eTf2I85rzgO4SdJ2OGyQjJQUdCUhXdDQxFS2IS6rUCgU
 mQGFTGeddhysvvittHsXFUDfbg==
X-Google-Smtp-Source: APiQypL4PFUwg5GwPRrSlb0y3fSgyECAShAITRonjEWPiB9jvTC9CBnU3LdyUl5Ks5ZaHOn5MmV5AA==
X-Received: by 2002:a63:1d52:: with SMTP id d18mr20242532pgm.443.1587467136316; 
 Tue, 21 Apr 2020 04:05:36 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id j10sm2217695pfa.57.2020.04.21.04.05.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 04:05:35 -0700 (PDT)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
Date: Tue, 21 Apr 2020 21:05:18 +1000
Message-Id: <20200421110520.197930-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_040538_283441_A7BC6E8C 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 xingyu.chen@amlogic.com, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, jwerner@chromium.org,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
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

Changes in v4:
- Add arm,smc-id property
- Get smc-id from of property
- Return a1 instead of a0 in timeleft

Changes in v3:
- Change name back to arm
- Add optional get_timeleft op
- change name to arm_smc_wdt

Changes in v2:
- Change name arm > mt8173
- use watchdog_stop_on_reboot
- use watchdog_stop_on_unregister
- use devm_watchdog_register_device
- remove smcwd_shutdown, smcwd_remove
- change error codes

Evan Benn (1):
  dt-bindings: watchdog: Add ARM smc wdt for mt8173 watchdog

Julius Werner (1):
  watchdog: Add new arm_smc_wdt watchdog driver

 .../bindings/watchdog/arm-smc-wdt.yaml        |  36 ++++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/watchdog/Kconfig                      |  13 ++
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/arm_smc_wdt.c                | 194 ++++++++++++++++++
 6 files changed, 252 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
