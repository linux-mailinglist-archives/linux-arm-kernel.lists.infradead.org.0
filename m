Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A83CE2F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ynv9dhZnWnsGtZvFCrRBh6QKlY2RMprk7AHZfP2bk3g=; b=JU25NK75WbBurp
	jaJhE66GqWJQWnf2pfzln7NZNONjFgO865jhEZJRCIkQhw4om6G71Abj0lJ2f0FSFr/pFRduORG+u
	LwWpvMujuzxJ97jtQdDLVApFUvlCwYLu/GZGDpamHamI+BWNKSbSzU1RbDNi2ESsKeByJV77uypzY
	6hGz/BUbHCLPy98eX3qxIYvZSszCOmGMB4MzdOXxEPW9niVhOLVtYfrcz4e6CCPor4f3Zbq3RUwJg
	29ZGFpdlwYM1xDPFZ2I5BI0z/7ZpLLo4EstVt2kKbwManZ9MybAGgOaexVGnwWEP54sdSD3G8Yrso
	fq818v5iU7bxE0GoolQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSst-00019S-Cq; Mon, 07 Oct 2019 13:17:07 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSsl-00018n-Jx; Mon, 07 Oct 2019 13:17:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id a2so8638585pfo.10;
 Mon, 07 Oct 2019 06:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PwiaLPNEero/RDkqXHKNpda6jyXODSLqhlH8GfScxo4=;
 b=U93WlJGywOW4GYdmFpjLSbINCeD5e5GpJ2UlnKRkpeLbKA45F/xZjIQjq0CqmxWaRc
 rYF0hBu+qMVKCBEvYbVAEykbc/A21OMZHembtBRw3nR29KuAVu8WLk1p3euuN3vDw0H9
 h9tzVebTCZgobqlu8/sjCsg9Pq9stdW/1AYzLxTmNBLHnRJ6srFQrpw44A3TgwUHnbwt
 W7YQJpxSa4WvSTanPX6pG+mVVKLdr9OdP5PqhKoVXp8VbPAg2FRoSFb5qRayfQisyMf7
 iEnYEWz46FCUjnTIM1/pUI9OHquzBjIVoNtejSSZckTud93bBGD7/TqoMDuFTzu3QbWI
 ThEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PwiaLPNEero/RDkqXHKNpda6jyXODSLqhlH8GfScxo4=;
 b=dt7J6khXCFI7D4ULlV0BbrBLf0sRZVgWTp5jp9js2ivSk5mBUYIbPNVxpB+wYdFqHE
 57S7KMLxZJZs/ZHo7QsIXdYOyAqyDxbPF5pcMh4OYupM88RCMXIwDT8HG823OUNbh7/W
 7P+ND6DQurjJ6wq0jO6GX9zSln00Oe/McH+DKHNo4PFvoJMwPSToA+xh/iqUjBGp5bte
 DL1r5CbLmhklIFYPsUWhiyIKBr+6mPY+dGF1M1iempVe3/DAGjiNBleDe69Nr6jkjjrz
 BlnQhQebjghwK9BPoyqzE6CmI8WnPB32S78R6Kih+jqd8ns2zMJKtXXHmkTa38Dw8cqS
 MVLw==
X-Gm-Message-State: APjAAAUrg9hZz+Ns73/oVX7IK6p8+YjycNf9LxJ3e5tP/gE51R9b8idr
 2pVibVUfgEbVsz2WBksnW6k=
X-Google-Smtp-Source: APXvYqyvHEaEyr+JjSbY/h5Ukr9XMbNo6ALxq6sKOkJD/pII8Vb1ifPUfHXL2MqvRnu0ESu3/zKdCA==
X-Received: by 2002:a62:82c8:: with SMTP id w191mr31574553pfd.99.1570454218199; 
 Mon, 07 Oct 2019 06:16:58 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.138])
 by smtp.gmail.com with ESMTPSA id r186sm16938650pfr.40.2019.10.07.06.16.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 06:16:57 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [RFCv1 0/5] Odroid N2 failes to boot using upstream kernel & u-boot
Date: Mon,  7 Oct 2019 13:16:44 +0000
Message-Id: <20191007131649.1768-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_061659_652857_6B588446 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We am trying to build the upstream u-boot and upstream kernel,
but it fails to pass the initialization of PWM_MESON driver.
So these patches help boot the kernel on microSD card.

Patchs based on Linux 5.4-rc2

Boot log failed are shown below.
[0] https://pastebin.com/cEtWq2iX

[    1.569240] meson-gx-mmc ffe05000.sd: Got CD GPIO
[    1.599227] pwm-regulator regulator-vddcpu-a: Failed to get PWM: -517
[    1.600605] pwm-regulator regulator-vddcpu-b: Failed to get PWM: -517
[    1.607166] pwm-regulator regulator-vddcpu-a: Failed to get PWM: -517
[    1.613273] pwm-regulator regulator-vddcpu-b: Failed to get PWM: -517
[    1.619931] hctosys: unable to open rtc device (rtc0)

My guess their is not much issue with eMMC module, if their is
other approach to resolve this issue, I will give this a try.

Best Regards
-Anand

Anand Moon (5):
  arm64: dts: meson: Add missing 5V_EN gpio signal for VCC5V regulator
  arm64: dts: meson: Add missing pwm control gpio signal for
    pwm-regulator
  arm64: dts: meson: Add missing regulator linked to VDDAO_3V3 regulator
    to FLASH_VDD
  arm64: dts: meson: Add missing regulator linked to VCCV5 regulator to
    VDDIO_C/TF_IO
  arm64/ARM: configs: Change CONFIG_PWM_MESON from m to y

 .../arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 13 +++++++++++++
 arch/arm64/configs/defconfig                        |  2 +-
 2 files changed, 14 insertions(+), 1 deletion(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
