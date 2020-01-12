Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14081138447
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 01:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+6/LlGZm23lj5kYoQaIxF8hqg+x6K29AW6Y8xQUMPgg=; b=OwotNkn8xzMUGi
	qgHGXChNnqG5sSpa0r0rrDQeZxrDAPVHBbUNMajYP/5MTA6+O57oRoP5dgohF8uKMe9SKp3pKzlfQ
	hVZb6VRxsgjjwcTx3rL9I0ks7fzdmftqGL9SpMmhTNm/mgXLXAUkGlc0tY8qBnAWqwQ5b6GTu8a35
	kFHwYN+u+AbsGjvD8Tilo6kPU0ET1isvhiiAD09IMszBRhvSHxfVOpafU5VMydR88tTOqiGLI2A+U
	6xmdvXfy8Ww5aJKZKPXbyG4YEqpzwD3rQ+pavw0m0IM/6HBPf3AfkDMm9P3nnuuJJXhmGvrPSo6k9
	85tOAiqJGi3HEUobc0TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqR4d-0000rA-O3; Sun, 12 Jan 2020 00:25:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqR4E-0000c7-0J; Sun, 12 Jan 2020 00:25:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so5181654wre.10;
 Sat, 11 Jan 2020 16:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wAWyALOSBn7tzzbJwWZbezVclSVN3Btt3DEixhDkQII=;
 b=ArkxWsHLmXqGxa1xxpcAewKDkopPwoqRQ7Sjvi4wr/dZmFyo6BGIZf+NkgvpfZsGpJ
 lwYzzi3Vq4uSIXp06HKX/2z+nzbEz/sVLzH99QYWZc0F7m83wAW+0SHvXQCrUevzYGIj
 Io8kio+2MSj/PkepGFUnLmhr91JIfkVLJ8+OiQIMPibdBRag7Rshnw06wBn1ZNvGawfT
 GIQLE6QHORS7QOl4/6HL6zGsWWH+QytT9ZZJ7zdoTM+y+gNcTxZjtlBF//Ld8TaVMdas
 K28Y5imMrNB2RQhUIGEBV+cxZCY2xhwL6bkKBMUEpgBQx0YOPrKsO/xWLCfgxA6LmFkJ
 ZyzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wAWyALOSBn7tzzbJwWZbezVclSVN3Btt3DEixhDkQII=;
 b=Q4NrAXqW9X9L+slCe1Z3cJyBy+K0n/t+jNkzQcsmpi4zy/mSDYiBmlqISfo/1H9vDY
 yhCbLF+R1hzYBj0bI14dgk/JKk6JAxxk9H22L2Iry0a2ATuCCMt3Zmznu0SrmMu3TUy7
 aDBfgQrMNBVy3BnhyFJXWXJ8k1LEVG+ZhL93kp2x1605vvhxxZy0/oU5wT4yTyf5Z00h
 d7NZ0wgGCOucDuhdQhPcHfIfEtPfAU5Tex7+SHHn2TN7YsU1Zuj3hfPQti/Kuq221S0t
 ymF2VbrlQ6x/wo2QbIdAacVuiFtUAYuY4dgRb8CZMgFTJknxNUgEkjMizcYeCfPDwQtV
 Yamw==
X-Gm-Message-State: APjAAAXxmTRe5dz93wmFjdGA+WKrZZeqoJz5vrQzyAXhEwOegoGlRH8w
 UD8ZtqNGKUdjsN7UbXzBB1CLDgYO
X-Google-Smtp-Source: APXvYqyqzfmZato1T8Am2AwdE0KKjdA9VaLATr7JDYJTE28SkegxKFwsYTzvgGymCNZnpbtnOunttw==
X-Received: by 2002:a5d:5091:: with SMTP id a17mr10663002wrt.362.1578788719231; 
 Sat, 11 Jan 2020 16:25:19 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id t5sm8407389wrr.35.2020.01.11.16.25.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 16:25:18 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, ulf.hansson@linaro.org, robh+dt@kernel.org
Subject: [PATCH v4 0/3] Amlogic 32-bit Meson SoC SDHC MMC controller driver
Date: Sun, 12 Jan 2020 01:24:56 +0100
Message-Id: <20200112002459.2124850-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_162522_075947_61F8D5AB 
X-CRM114-Status: GOOD (  17.14  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

this is the patchset for a driver for the Amlogic "SDHC" MMC controller
found on Meson6, Meson8, Meson8b and Meson8m2 SoCs.

The public S805 (Meson8b) datasheet has some documentation starting on
page 74: [0]

It's performance is still not as good as the driver from Amlogic's 3.10
kernel, but it does not corrupt data anymore (as RFC v1 did).

Special thanks to the people who supported me off-list - you are
amazing and deserve to be mentioned here:
- Xin Yin who helped me fix two more write corruption problems. I am
  hoping that he will reply with Reviewed-by, Tested-by and Bug-fixed-by
- Jianxin Pan for sharing some of the internal workings of this MMC
  controller with me
- Wei Wang for spotting the initial write corruption problem and helping
  test this driver on his board. I have his permission to add his
  Tested-by (off-list, he's Cc'ed so if there's any problem he can speak
  up)


Changes since v3 at [3]:
- split the clock bits into a separate clock controller driver because
  of two reasons: 1) it keeps the MMC controller driver mostly clean of
  the clock bits 2) the pure clock controller can use
  devm_clk_hw_register() (instead of devm_clk_register(), which is
  deprecated) and the MMC controller can act as a pure clock consumer.
  This also affects the dt-bindings which is why I dropped Rob's
  Reviewed-by. Thanks to Ulf for the suggestions

Changes since v2 at [2]:
- rebased on top of v5.5-rc1
- added Rob's and Xin Yin's Reviewed-by and Tested-by (thank you!)
- (note: Kevin had v2 of this series in -next for a few days so the
   build test robots could play with it. I haven't received any negative
   feedback in that time)

Changes since RFC v1 at [1]:
- don't set MESON_SDHC_MISC_MANUAL_STOP to fix one of three write
  corruption problems. the out-of-tree 3.10 "reference" driver doesn't
  set it either
- check against data->flags instead of cmd->flags when testing for
  MMC_DATA_WRITE as spotted by Xin Yin (many thanks!). This fixes
  another write corruption problem
- clear the FIFOs after successfully transferring data as suggested by
  Xin Yin (many thanks!). This is what the 3.10 driver did and fixes yet
  another write corruption problem
- integrate the clock suggestions from Jianxin Pan so the driver is now
  able to set up the clocks correctly for all known cases. documentation
  is also added to the patch description. Thank you Jianxin for the
  help!
- set the correct max_busy_timeout as suggested by Jianxin Pan (thanks!)
- convert the dt-bindings to .yaml (which is why I didn't add Rob's
  Reviewed-by)
- switch to struct clk_parent_data as part of newer common clock
  framework APIs to simplify the clock setup
- dropped CMD23 support because it seems to hurt read and write
  performance by 10-20% in my tests. it's not clear why, but for now we
  can live without this.
- use devm_platform_ioremap_resource instead of open-coding it


[0] https://dn.odroid.com/S805/Datasheet/S805_Datasheet%20V0.8%2020150126.pdf
[1] https://patchwork.kernel.org/cover/11035505/
[2] http://lists.infradead.org/pipermail/linux-amlogic/2019-November/014576.html
[3] https://patchwork.kernel.org/cover/11283179/


Martin Blumenstingl (3):
  dt-bindings: mmc: Document the Amlogic Meson SDHC MMC host controller
  clk: meson: add a driver for the Meson8/8b/8m2 SDHC clock controller
  mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host

 .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   |   83 ++
 drivers/clk/meson/Kconfig                     |    9 +
 drivers/clk/meson/Makefile                    |    1 +
 drivers/clk/meson/meson-mx-sdhc.c             |  212 ++++
 drivers/mmc/host/Kconfig                      |   14 +
 drivers/mmc/host/Makefile                     |    1 +
 drivers/mmc/host/meson-mx-sdhc.c              | 1064 +++++++++++++++++
 .../dt-bindings/clock/meson-mx-sdhc-clkc.h    |    8 +
 8 files changed, 1392 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
 create mode 100644 drivers/clk/meson/meson-mx-sdhc.c
 create mode 100644 drivers/mmc/host/meson-mx-sdhc.c
 create mode 100644 include/dt-bindings/clock/meson-mx-sdhc-clkc.h

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
