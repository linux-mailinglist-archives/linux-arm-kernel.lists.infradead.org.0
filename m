Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2DA2B01F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EmX3LP9tvGPGF2DFHgv6o81f/83YjmqczqLtaUfbAI=; b=u+AsRSA11wZmz7
	mmA5PhNTrrqRP775JxfNO0e3+VOJgN+Fj3cdxp0V4VXgmP6V/aH7rO7Owsf91LLZVkAkxEJvvgslQ
	8tQ92VJFTsZ867Q6ZfXBKN3YCaueRNRzyptPsaVtKBzQWyzAvtubfEPNa5MWnwZ11mL0MpwImQqzL
	KcPZe85q+OAh+OBpAo3BUP/BJwXsoeXpb9FieUoyOTnTRsDwG3m3Yyf0wVCINK9KnQ//T/8ysYhzQ
	APnWTv/zTllgYDTfLRlflQwPfb9UM9+armmtLRMr+k5jBNJa2qUaG5NtEF0fIBIbHR4X3qtWOvBW8
	4inSQ9hQrxxgCET+wqcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAvV-00025X-RQ; Mon, 27 May 2019 08:24:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAuU-0000vf-R5
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:23:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so781884wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 01:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1P0YZo/wN9Hi4i3wVVtvZOC+PYc4GxlayMQxrDs2oJw=;
 b=0r29VISI/sleJKF6HyZxAFrh2kh/YfBUsyXfqB+Uq7gencb0DLdj6ynAmT6lnnhfVI
 u6b7Hdtwm11DUvMNlrTyiwVtmth2RmBJFfPktxKMqE1Ya8OFbJhTxzCzwAePG714BE6G
 L8Er0ZafhWTDV+ungMYqXp40+4C7//Ipfn7Yorcz4A8bSwgJKW/u3yOPpvVsPD/05cyd
 PXn/nY7SdkDO6B75GJFJUXr5iGEfv5muqWOXlz8BiztUeqCTDZ1lMJyMsuBx71jDnpi4
 fRTAiFKEXtmJL267zY7ArQNWxUBTrqnjTgrmuHCeGY6x5SqsGsj9so5k7Roqwt8vfT6U
 vCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1P0YZo/wN9Hi4i3wVVtvZOC+PYc4GxlayMQxrDs2oJw=;
 b=KtkYoisgH8iFqZIZt1g4hs95yB5ITkpiXb4UjyK4owK/SkW7CFpp3Op2g6Hh4pyxCb
 s2twCYSzaqhfhkrleucbRXzSKF/1BLsa4M6EekVlKNkOS9s4SRoB+1leY7ZPhiIKP6DK
 TirBlzGzx5XDTFmf5jazVKj0pzK/QLvqoRuAwpgCjDGRvpVmBK1FxKnP3FCy4nVkjEFX
 IGGr44ZNsDnRYQQnbqn2I0N5yNoQPRkudif+mrw2vpEnZEKUZUCUBK5qeaHVKIwLZdea
 G2zHOxx/XBSCyL+kfVc4HheW1l635VE+qZiZuPaOokzTc5HjlwUxUh91lA1hBewj2cH1
 n43Q==
X-Gm-Message-State: APjAAAVAcbaUsh4p5KGv8P13jECF9re9B01ZBpYvfByeO0RGCsBqdxA8
 I658Xy9tHmvBGB+9UKotNXtPCQ==
X-Google-Smtp-Source: APXvYqyNwI/ePsL+r12MfFxLaq+cmuaSjCI/uIy3GarP8rEJKG3oAJbqaBtNW6Dt2CCfrWekKVz07g==
X-Received: by 2002:adf:ea90:: with SMTP id s16mr7059760wrm.221.1558945389541; 
 Mon, 27 May 2019 01:23:09 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:23:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Lechner <david@lechnology.com>, Adam Ford <aford173@gmail.com>
Subject: [RESEND PATCH v5 5/5] ARM: davinci_all_defconfig: Enable CPUFREQ_DT
Date: Mon, 27 May 2019 10:22:59 +0200
Message-Id: <20190527082259.29237-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527082259.29237-1-brgl@bgdev.pl>
References: <20190527082259.29237-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_012311_106408_3ACA80D0 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: David Lechner <david@lechnology.com>

This sets CONFIG_CPUFREQ_DT=m in davinci_all_defconfig. This is used for
frequency scaling on device tree boards.

Signed-off-by: David Lechner <david@lechnology.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/configs/davinci_all_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
index 4a8cad4d3707..9a32a8c0f873 100644
--- a/arch/arm/configs/davinci_all_defconfig
+++ b/arch/arm/configs/davinci_all_defconfig
@@ -45,6 +45,7 @@ CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE=y
 CONFIG_CPU_FREQ_GOV_PERFORMANCE=m
 CONFIG_CPU_FREQ_GOV_POWERSAVE=m
 CONFIG_CPU_FREQ_GOV_ONDEMAND=m
+CONFIG_CPUFREQ_DT=m
 CONFIG_CPU_IDLE=y
 CONFIG_NET=y
 CONFIG_PACKET=y
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
