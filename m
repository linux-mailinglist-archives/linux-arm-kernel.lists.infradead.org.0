Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE978699FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 19:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADosC1L5i/0tTnnnoCfHaSARq3yAFlBX64CrFBGQUX8=; b=Y81Ohpbt5kG3us
	1C/vsWWGib0mO75uLGrfar3OSxDSgqQwn4f7Hk0wa+SsrSLhiL1tHGp9+75IfilqdjeNbH8zP3SAe
	nLg9uWVlSvHic2eZSzW95udCWfIsOTo2yDCcPyiIWaPO12G1461P5wM6bl33mvJtq+dWSgFvoEG0m
	812bWCSH9uSFUhu7zR+1tuf+rHdfsyvYTR4L3njEjPYhmIr1+aU3g48A83uigCoWaGtwWZDAs/7TT
	bUYSW1vFmD5sKxwyBy1ZHqmLUw2bl6Di6saou5JPbPtOYL0RdYaRgsM2VM13S7UCK0emhL3R8emRA
	xyAgU/Y8gobQMt7efZ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4rj-0004PU-Sb; Mon, 15 Jul 2019 17:34:19 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4nX-0008MX-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 17:30:00 +0000
Received: by mail-lf1-x141.google.com with SMTP id r15so6695717lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 10:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9sbsaF7E0TrDeiv6pReKgq+pMBX4p8SmM9uYJr655g4=;
 b=cfsQfLg6uXhCsDhKrfTKfo6Sq0gES7tIIKRYeUMeQPc11O2FFfbXTX6aotF8r2KSpj
 bQGuzhwGyMU7Klx8gsdATDAqcdQjnAAhfH0hkhBOwHt75sD9G+l41xQkUfmBLkrH2o9V
 7n+UNcnfa82X9rlHaRJTdDOZvrNPMv0ov6LNFSCRcqWNyYuYq+sDQ35md1Ra551cVtld
 yNGxmdoZTQFGxBEfRFvXBBN+Egl1SIDZJ1Jub+HSvJ/qRyHcpU8uWAltA2ZvO/k6ZpFV
 QgVWeT2LsIMU3PRFU1KXgIVrQOI3bnbuZDYTtEl0Km55ppFLwKHsHN+Nv6H/GTFGdxRv
 jmkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9sbsaF7E0TrDeiv6pReKgq+pMBX4p8SmM9uYJr655g4=;
 b=h9xXni7pM8sqXYa7264ZlH7R0jEDNabMVEZ6APuj8XS9xqsxWxP2EDzWNNBp+4M2DX
 QP/oYOvxscW3DF27CR5308hENjqvLH4ab3k0jSODsK7cRhYzuvwtl9L1XtYdR1TPfWuc
 SMn81lDpk1FhUPns7yfreXNbzkx2oGeOKdLSFquE6mbv1UqGGM7uBeJRGUys9R5hY9Kg
 9lkxWtZ/FxngFED++dnlj5tbWY4L8hV74TWtDZo1yMSgFRg+HSOCHy/mld8yI7OhBXYb
 8hiqnP6iqdTyCUXPfr0k2LUWSnocts/wnp8mLYfTCZfhccljalXx2FWsJ0z4TP0uCh/y
 +/Fw==
X-Gm-Message-State: APjAAAWA0l4ItFW6iM9jHIIgDpz80cbIYvDcNQiAn+/sKCqsNJGbZMtr
 BpNqBoQWHHaEj/XbJN3+2D4=
X-Google-Smtp-Source: APXvYqzh4mCzsVutjVh3P6kwpNAC6f14uhzoqQsZ8erj79ZbfueASsY+KQ7A1LZug29vsoABB/S3DA==
X-Received: by 2002:a19:8c08:: with SMTP id o8mr11940682lfd.57.1563211797598; 
 Mon, 15 Jul 2019 10:29:57 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.gmail.com with ESMTPSA id b17sm3248765ljf.34.2019.07.15.10.29.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 10:29:57 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v3 13/13] ARM: tegra: Enable Tegra cpuidle driver in
 tegra_defconfig
Date: Mon, 15 Jul 2019 20:26:29 +0300
Message-Id: <20190715172629.4437-14-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715172629.4437-1-digetx@gmail.com>
References: <20190715172629.4437-1-digetx@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_102959_252232_0B466B40 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Tegra CPU Idle driver was moved out into driver/cpuidle/ directory and
it is now a proper platform driver.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/configs/tegra_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/tegra_defconfig b/arch/arm/configs/tegra_defconfig
index 8f5c6a5b444c..9a2f11a780a8 100644
--- a/arch/arm/configs/tegra_defconfig
+++ b/arch/arm/configs/tegra_defconfig
@@ -25,6 +25,7 @@ CONFIG_CPU_FREQ=y
 CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
 CONFIG_CPUFREQ_DT=y
 CONFIG_CPU_IDLE=y
+CONFIG_ARM_TEGRA_CPUIDLE=y
 CONFIG_VFP=y
 CONFIG_NEON=y
 CONFIG_TRUSTED_FOUNDATIONS=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
