Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EEEBFA1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LuIyUKUllK8VOfVQmCHTcVHHjXmJsnZOL/KKbeKZfcM=; b=u+kHQdgntTR64i
	OWLssEPaus4jLpxyzKk5FbXi16quslsRb+wUhTGvlA1nzfdP5dpL24JnM6lZ8mQ/zF4yx3x5eg2S5
	XqjTPE46B31qQSUWvx/NxiKJWwvYjBW6xoRnUgWVVKsfAoJGMwA44VRUpfKh7Wmu/jS8X/px02M4q
	rlDNahvQjTFwVW4/4a6ZG+tDEiEc3QeJZzOhoDNu1qbSDwrhXzClY0gGdJ/7f9jbWtD6FQFFohh+e
	H4eIYiTzUEAzfK55xDl52W3LXL+HacHzk7sKB1YMQWWZmTn8jDPIDbPrUvTmXRUOwCyAbHUf41O24
	XWqtaeZHHdNbpn3/4/FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZUm-0003Xe-2b; Thu, 26 Sep 2019 19:32:08 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZTX-00022n-1E
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:30:56 +0000
Received: by mail-lf1-x142.google.com with SMTP id q11so50443lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IVMRim0CvrP2OAMSRSPszsNYlyw6bDIFE8ceCAvsXOM=;
 b=g+mMnejqlJOWehTkajvt8uHYKxP0LWJmITU82kmzO/kahLSqR/DOv3G9njRlD9GEpP
 Z62a+jaK2cyM0RtceSx56eTGo6qgBkgeZyuK4gyLgHtwrKOYSKnIVkMpKZB84xKlfhYK
 G6MYJcME093luWLhV64Px5KNQZvrsS1u9LLESrUVz9+QcEkcxgeqbmTTkOxXrqTVnbeh
 K6XHhQDuhyE+kRNO4UueNFRXBUhYnN3WckFiZ514VLIgeL+bmKGrFD4c4rGxllsXXDvO
 2GCNAg1PGKjJd0DyVP6KmGiA9zkGkGLUNRwT/sH6MMUIqAJSkSh/zDN4GhCzA8FhrYHO
 ztMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IVMRim0CvrP2OAMSRSPszsNYlyw6bDIFE8ceCAvsXOM=;
 b=IqdaX2Lg9awmzPGV5xuxNEngToT1/TGSo63yukR1aXuWCvG/soqN+r30mbWLx2pPMi
 9V10+alKtTs1M/Wv1vlJang1Lv/b+avoxX8t+hkcwOV1mqynD2xEOMHVeuutQ52VojF4
 OJZXbPVRegwx2s7JDYc13vAqLx5N4GtU9PqcQY5IVmrAnFn/BYW/xRsKE3ExJuvO0wZy
 yAvFnjzEzT3BWUuGFstiokpdTIX2dYhPrYXvhC/6TROFe/+9Nw7ylj1brFLva3yrI/K/
 cyg0nyDO8tJfYWHJyAcbmffwsZZ7rbzDhw/KPoqQqAE0gyLO2IOeRUz72pBki0joS+Ej
 TNjg==
X-Gm-Message-State: APjAAAWIP+9CzAjy51p0Ro89WCO4HegT135m9v3qzVA6TBqrgExC3vA2
 He8VOJD/AeMEoPsNq3pupK9slw==
X-Google-Smtp-Source: APXvYqzTvB6xs1qyLeiw4unz6QoktLWw49txRFhr3JHzYrAOZpWqpjn9a3HmiAAYQbwY7g/UItgfnQ==
X-Received: by 2002:a05:6512:251:: with SMTP id
 b17mr128940lfo.35.1569526246405; 
 Thu, 26 Sep 2019 12:30:46 -0700 (PDT)
Received: from localhost (c-413e70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id s1sm31389lfd.14.2019.09.26.12.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 12:30:45 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 0/3] arm64: defconfig: set/unset for allmodconfig
Date: Thu, 26 Sep 2019 21:30:26 +0200
Message-Id: <20190926193030.5843-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_123051_679033_0C07025C 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I'm trying to get an allmodconfig kernel to boot. The way I configure
the kernel is:
'make allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig'
allmodconfig will use the KCONFIG_ALLCONFIG file as the base and then
turn the rest into modules.

The idea behind using the defconfig as base and then configure the rest
as modules is to get a bootbable kernel that have as many features
turned on as possible. That will make it possible to run as wide a
range of testsuites as possible on a single kernel.

These patches makes it possible to boot a LE kernel.

Cheers,
Anders

Anders Roxell (3):
  arm64: configs: defconfig: enable DEBUG_PREEMPT and FTRACE
  arm64: configs: unset CMDLINE_FORCE
  arm64: configs: unset CPU_BIG_ENDIAN

 arch/arm64/configs/defconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
