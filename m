Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58D6166107
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 16:34:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lG7oQDMVhD3biZWfdc2gZ7hw448VuTugynzVa4lj+y4=; b=J+1
	t/5L82CkZE4ejgLKkHMgv1I5sPThphhd5aX8YB04PyFe2ymClDr2Tk57d25a1Hs1mp0D5x0I6OwKm
	Ws1GUm8AtG8lYHiJVCCi4kUEK7/xWXFd1Pac79W0nr9QbSYXXgbFglkWi3w97IV+E9j+bop8dTvNJ
	liWpeyuN1JrzCTVAnABR1MXjyrvv3wD79uEBVkmCdXNG2KNr4F6z7teNkgAzDRu6a3ZzUiQxGPA+P
	6ItZ8Og9+eXDl+ZT7MXWATNhTTKd8yGsROe/zHrRLgsS9Yvddoh2GiiR9zJ9CJx0JAIzrF8utKRFK
	C8TIv0nsOaAeR9Udc+dpcbEhRjGEMSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nqA-0007n8-KG; Thu, 20 Feb 2020 15:34:14 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4npy-0007mY-CS; Thu, 20 Feb 2020 15:34:03 +0000
Received: by mail-lj1-x22d.google.com with SMTP id h23so4673696ljc.8;
 Thu, 20 Feb 2020 07:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5019G7yq0avtfjWMAOLceayBMfSqRFTAMAXEQqHSZug=;
 b=PsI+M80qxN2gYjTcQsbtfNJtVJnILU6F6Pv0qT2SjfyhK7SbCDRjMkVsmi0o58N92h
 jo1mk5IJLbW1Sk6MFhu5ArFVWD8JLaSvfqyMXdkjA4LpSPjO3bML7zdrgMZSzLXpCZRp
 8iycMu+EvI+4tGPi/zOrMKWYEQV6JJ52eBc36UdfycUYYNtzG4qAYMCLxmgNHL+J2dzQ
 nIMCbMTBfJL4irXeigijEE8IoCits1/LDSTG3cC8hRebJB11KN/PN9LKSCySNQX9hxAq
 txCc9nafhCKlncTgwzei8TsKc1XsE1RrwlCyMERKM8EtDl/N/oaV9svC/1PI0UvfO0v7
 G49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5019G7yq0avtfjWMAOLceayBMfSqRFTAMAXEQqHSZug=;
 b=YHCjmQMYKuKb6bUywI1g+Nm0CZtqF2Rl907WWXhFFXs3YMkgjSz3qUGmHIuNsch+xP
 qWYCqrEbUWBGs/oV8LWw83eCk4zevB3ctvFgMlkDDrDGY49TPlHclrbefHiynH6z1d2/
 eHEv1cTbNtzI7bTlwIZE7evymqizDrLKQvSkmhjwryo2avWwgR1fyDAt0PTq1zS2X7jy
 L4WlYHeP+7CUJzJZYnvxm8WF1iLeFl6qt1Yj2mq/5XL5Oa/abarevMR+T826wB/UMXQT
 TdTqz9LbFAEf8Q4cbjN9kkpZ3MBamGwb+lz+qAa79VGhi+gQcaPZXJnD7yMUdxKTt9gH
 xp1w==
X-Gm-Message-State: APjAAAXU2PZW8IMn5aslNLWPoJHBhaVw/DwjamWPKYzAh9NjLHRTtPyp
 jkWY71o1VbC/X7CopCwD++J/JGTmweQ=
X-Google-Smtp-Source: APXvYqxaGUst+wKhSuMt86KQ7TYw1ssovVjk09fGgxif+X+Hf39ciAP//EaX7mfFGKuhhUseY3kzUg==
X-Received: by 2002:a2e:8698:: with SMTP id l24mr19404158lji.94.1582212840413; 
 Thu, 20 Feb 2020 07:34:00 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id u13sm2162285lfq.19.2020.02.20.07.33.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Feb 2020 07:33:59 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: fix gxm-khadas-vim2 wifi
Date: Thu, 20 Feb 2020 19:33:10 +0400
Message-Id: <1582212790-11402-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_073402_448166_E2D5521C 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Art Nikpal <email2tema@gmail.com>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes: adc52bf7ef16 ("arm64: dts: meson: fix mmc v2 chips max frequencies")

before

[6.418252] brcmfmac: F1 signature read @0x18000000=0x17224356
[6.435663] brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac4356-sdio for chip BCM4356/2
[6.551259] brcmfmac: brcmf_sdiod_ramrw: membytes transfer failed
[6.551275] brcmfmac: brcmf_sdio_verifymemory: error -84 on reading 2048 membytes at 0x00184000
[6.551352] brcmfmac: brcmf_sdio_download_firmware: dongle image file download failed

after

[6.657165] brcmfmac: F1 signature read @0x18000000=0x17224356
[6.660807] brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac4356-sdio for chip BCM4356/2
[6.918643] brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac4356-sdio for chip BCM4356/2
[6.918734] brcmfmac: brcmf_c_process_clm_blob: no clm_blob available (err=-2), device may have limited channels available
[6.922724] brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4356/2 wl0: Jun 16 2015 14:25:06 version 7.35.184.r1 (TOB) (r559293) FWID 01-b22ae69c

Suggested-by: Art Nikpal <email2tema@gmail.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index f82f25c..d5dc128 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -327,7 +327,7 @@
 	#size-cells = <0>;
 
 	bus-width = <4>;
-	max-frequency = <50000000>;
+	max-frequency = <60000000>;
 
 	non-removable;
 	disable-wp;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
