Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DECDF3971
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:19:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4clwTdDExy5Ts4fTiY+rpt0HqR/QQCLALNvGfnOuniQ=; b=nlfHZc3wIPGWz8
	wlSc2JxTYBWnwVS7/pQ5Ra5S59jiIrQ62U36od4aoygpl7V8wSLIKTKhnxHXG3HYBD/CMfr/5XV82
	k9ejNIizAXS2JM6aANh/QgOnI3SVUniHtFOWO2JgqsflKlUxKcUZbnDFlnI91q2jrWOSC7eXsGGh4
	/BlXOzTvskeYgHQ7DLQl4WeZBIyZReTuwTeTDI6arEe10GjsxLkZAxA07hFRU3YOVXwPJ51f878/y
	KsruZRc3lpNpJEmpqS96vwMFaP2kXT/Tw1EfG5fOdIfUHRjy7RhMXUSdKqYmifgXhIdfJ1WR2wRlD
	ZJNxA62eM9BzfA7w7U5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoFT-00087w-I6; Thu, 07 Nov 2019 20:19:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDU-0006Eo-4a
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id f3so3899759wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T+zsluzS/T4QlV+amlXXzj5zuhGksPk6IuGM8tASFHM=;
 b=J69UedwDH6qm/d/QY5IaFKnLBYOqIVP0y9qtbza0hVQLaDDn7dW1HHq4iXHHLyTBzl
 JzG4DDQFjUi576WuidaONs8q5hxghV9y8rlC42ZmP9n2OsIwUVPwixWPTssgCO9YMvNy
 AoesUy4qA7O2zzgNtS25nLDcg1ZDEzqVmwEcYnC2AkDw90FIdravTeMVzm1qhn9Zy+0D
 y26p6Cw4cEHXgX+8uwo6/w9xkh8XeGuJ89KNrHujCwCo6q0GNXGbht7l32zcYBNKClYn
 LAVreQ2L6G19/YDVCyUnvStjOXvozavkSHR25B5mQYDeV6Cpt/k5Jlbte9FkaUBo8n5O
 QoIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T+zsluzS/T4QlV+amlXXzj5zuhGksPk6IuGM8tASFHM=;
 b=ZadmVBq/Qi4cWTUz9IFCgR5wf/JHCShGY/n9YGtLDjIcF/X+Dx5JIBUj+jJt+0hYZQ
 9WcTByr81wfauEiiVYQvGdpSsIQchFpW1Jh+K4KoTxsvNpK6nR2hsxziF6uCgFqdtkpd
 sSLe0rTds+u/VehokNdrKinK06HKCaKPTHIeT9fC8JHF7NCHaLgm4qBCbGQUTKT6b4Y3
 O/VPsbqGYRdYz3ibfdmIHH4sAFj1/fjp4LneVgiyVTUNONCDCmCtgrBZ5+XER6qB0oSs
 EX8xjd266DQMq8sFJaOSPjT8fzgoxVYD1Bav9zov93ywP3wbhe+dEjQl+Uhg+wrBQbK1
 206g==
X-Gm-Message-State: APjAAAWDQhhYSgozZ1tyNMY7wqbcus0S++MVf29ZxANNdD2caUB14SSe
 2erOCkpk12tGgYv9jg5PEmnFog==
X-Google-Smtp-Source: APXvYqyK+1+T6i/yZeGbXEMqaSWkBh7UUTFmvC0ZviyeqEbr6Z+uJWb/xiiKwTmnU2t6XRADAYsdzw==
X-Received: by 2002:a1c:2155:: with SMTP id h82mr4601632wmh.94.1573157834195; 
 Thu, 07 Nov 2019 12:17:14 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:13 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 09/10] ARM: davinci: da8xx: specify dma_coherent_mask for lcdc
Date: Thu,  7 Nov 2019 20:17:01 +0000
Message-Id: <20191107201702.27023-9-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121716_186206_90879CAF 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

[ Upstream commit 68f2515bb31a664ba3e2bc1eb78dd9f529b10067 ]

The lcdc device is missing the dma_coherent_mask definition causing the
following warning on da850-evm:

da8xx_lcdc da8xx_lcdc.0: found Sharp_LK043T1DG01 panel
------------[ cut here ]------------
WARNING: CPU: 0 PID: 1 at kernel/dma/mapping.c:247 dma_alloc_attrs+0xc8/0x110
Modules linked in:
CPU: 0 PID: 1 Comm: swapper Not tainted 5.2.0-rc3-00077-g16d72dd4891f #18
Hardware name: DaVinci DA850/OMAP-L138/AM18x EVM
[<c000fce8>] (unwind_backtrace) from [<c000d900>] (show_stack+0x10/0x14)
[<c000d900>] (show_stack) from [<c001a4f8>] (__warn+0xec/0x114)
[<c001a4f8>] (__warn) from [<c001a634>] (warn_slowpath_null+0x3c/0x48)
[<c001a634>] (warn_slowpath_null) from [<c0065860>] (dma_alloc_attrs+0xc8/0x110)
[<c0065860>] (dma_alloc_attrs) from [<c02820f8>] (fb_probe+0x228/0x5a8)
[<c02820f8>] (fb_probe) from [<c02d3e9c>] (platform_drv_probe+0x48/0x9c)
[<c02d3e9c>] (platform_drv_probe) from [<c02d221c>] (really_probe+0x1d8/0x2d4)
[<c02d221c>] (really_probe) from [<c02d2474>] (driver_probe_device+0x5c/0x168)
[<c02d2474>] (driver_probe_device) from [<c02d2728>] (device_driver_attach+0x58/0x60)
[<c02d2728>] (device_driver_attach) from [<c02d27b0>] (__driver_attach+0x80/0xbc)
[<c02d27b0>] (__driver_attach) from [<c02d047c>] (bus_for_each_dev+0x64/0xb4)
[<c02d047c>] (bus_for_each_dev) from [<c02d1590>] (bus_add_driver+0xe4/0x1d8)
[<c02d1590>] (bus_add_driver) from [<c02d301c>] (driver_register+0x78/0x10c)
[<c02d301c>] (driver_register) from [<c000a5c0>] (do_one_initcall+0x48/0x1bc)
[<c000a5c0>] (do_one_initcall) from [<c05cae6c>] (kernel_init_freeable+0x10c/0x1d8)
[<c05cae6c>] (kernel_init_freeable) from [<c048a000>] (kernel_init+0x8/0xf4)
[<c048a000>] (kernel_init) from [<c00090e0>] (ret_from_fork+0x14/0x34)
Exception stack(0xc6837fb0 to 0xc6837ff8)
7fa0:                                     00000000 00000000 00000000 00000000
7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
---[ end trace 8a8073511be81dd2 ]---

Add a 32-bit mask to the platform device's definition.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Signed-off-by: Sekhar Nori <nsekhar@ti.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: I835e72dbeb9ded2ffc7be0561f8f3544c3cc29ed
---
 arch/arm/mach-davinci/devices-da8xx.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-davinci/devices-da8xx.c b/arch/arm/mach-davinci/devices-da8xx.c
index e83874ba6e6d..49716ba0bbb1 100644
--- a/arch/arm/mach-davinci/devices-da8xx.c
+++ b/arch/arm/mach-davinci/devices-da8xx.c
@@ -626,6 +626,9 @@ static struct platform_device da8xx_lcdc_device = {
 	.id		= 0,
 	.num_resources	= ARRAY_SIZE(da8xx_lcdc_resources),
 	.resource	= da8xx_lcdc_resources,
+	.dev		= {
+		.coherent_dma_mask	= DMA_BIT_MASK(32),
+	}
 };
 
 int __init da8xx_register_lcdc(struct da8xx_lcdc_platform_data *pdata)
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
