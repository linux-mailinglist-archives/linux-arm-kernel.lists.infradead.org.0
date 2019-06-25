Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932FD55537
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JbaCD99X+YhRbDPY2CrVRAp0Tv3AiQJ6E6r/tjtQIYU=; b=Z2UBOedhALww9X
	U+eZ8GtEw+B0XHVvMcrxKZRf+IDPsEamTaHNNBxLliLzoKh/x3yUyvVRgcB62wo5PklD8/c6bjbnX
	2re4CyBH1dV2gMkc/zNv1T+jk4gun+xEMmDEhm9PF6Qiwu5HtGrfj+1mddUSscFgGjiaT5qgNpQsE
	98Y/7mYN3bWmFbb2SKbC1lFwtZdykL9uLYR2SF2XL3yVJWDrC6vLL/Lej25yDcILypF0wxsnIE158
	3iugk+fmZJAYiDeuYV1sbrtdARrHXI9lmjb0WnpG6H5+S3hkUVu9ueT6I7C1Fg/CajcKmhi9AECpK
	zi+OX/U6L5kZAJcrp+hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfohm-0008At-L0; Tue, 25 Jun 2019 16:54:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfodH-0003ok-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:49:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id c66so3577029wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MFyZxw/PmmATYVOt4ZawM+qBj1/OEyzSJ/6Kyab2jWE=;
 b=N1Z3E600oJOwtEVH3C1Eo5uAwAxEnzzAlWIlPjtyUPZP6XvGIql/osbEXGEgp1Nx4k
 5sx/CxtAV7ql0CA8vLWy1cCSBLB0GDejFOFTdwI6VHwsJ+ebvt/OChHqNr2vng16MV8+
 P1XT7VOaDKQGk8PWEYAm9PcxBv7ZLAYS8LOTLPNkARiMaS6BYl5+32TquD7KccbgzNoh
 6Xv/7LN91jpzEiUMDcjdRlBZk/4p2NS4520oZDiZUshAYBXorKE3nHq2KrFM18Blv4fK
 jWdW2JO/QmrB81rMoagEqGrcJy1a9lJM/6JTAfsj2CG9JaaQ0lvl1uym9UNBF9zWzJn6
 nIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MFyZxw/PmmATYVOt4ZawM+qBj1/OEyzSJ/6Kyab2jWE=;
 b=KETqpDpyBKyVHnyv3hv0OYvg0yTSxtEMZzRRfjiTZJ7Nour25kOXs5Fxr6XJN79nty
 3lgTBJNKu9V1+enyev1/LOYPWD18HZxAoJL0h2zNdIzqIwOalI1ua0e7HRKLPYhVkJAr
 2TGw/wJvL40E4yx16fpNQKK+BQ/VoP7t3UOBAjCXtpbNUWTGG8Wq7ByTEBcZ67EP7Ipl
 LtBYk2Kck3fVDM3Ssuywc8JF9AmdVQFqOajiZp4KLjfPZP1sBXuIAGgfQibtVD7iQwzQ
 HlZLaYHtodsQWsyoUixahQyOgbe+1EN7ojr93PTmW4kkjYdKfVEUMm9PQ86tkTQ1/tjd
 PI7w==
X-Gm-Message-State: APjAAAV3IdEbeepIqPlo7CaLwTMDQET86WWQDQE/Tk+3j8GySAuPomqz
 oQqwGvK4JfSGq8pXBccxYAhyw3qROTc=
X-Google-Smtp-Source: APXvYqysaCd7pSOBC7N6A5J56tC0N0gGA43Mb7o4V/1MzqrHjgghtqMRBQ2q8szPaZ6cVG0tv4Dq8A==
X-Received: by 2002:a7b:c7d7:: with SMTP id z23mr21157208wmk.46.1561481362319; 
 Tue, 25 Jun 2019 09:49:22 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id h14sm3078652wro.30.2019.06.25.09.49.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:49:21 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 1/2] ARM: davinci: da830-evm: add missing regulator
 constraints for OHCI
Date: Tue, 25 Jun 2019 18:49:14 +0200
Message-Id: <20190625164915.30242-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094923_952517_30DF4A3D 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We need to enable status changes for the fixed power supply for the USB
controller.

Fixes: 274e4c336192 ("ARM: davinci: da830-evm: add a fixed regulator for ohci-da8xx")
Cc: stable@vger.kernel.org
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/mach-davinci/board-da830-evm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-davinci/board-da830-evm.c b/arch/arm/mach-davinci/board-da830-evm.c
index aba10a2bc6b9..a273ab25c668 100644
--- a/arch/arm/mach-davinci/board-da830-evm.c
+++ b/arch/arm/mach-davinci/board-da830-evm.c
@@ -61,6 +61,9 @@ static struct regulator_consumer_supply da830_evm_usb_supplies[] = {
 static struct regulator_init_data da830_evm_usb_vbus_data = {
 	.consumer_supplies	= da830_evm_usb_supplies,
 	.num_consumer_supplies	= ARRAY_SIZE(da830_evm_usb_supplies),
+	.constraints    = {
+		.valid_ops_mask = REGULATOR_CHANGE_STATUS,
+	},
 };
 
 static struct fixed_voltage_config da830_evm_usb_vbus = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
