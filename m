Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B9312F5E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 10:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1sHCvYvT3Z1eCpkpgMoV4AbKqDL5SXpDgXxAMrCrO9c=; b=CoZw+ySFM0Ri1c
	dZ1QlRj40sNYL48PphQ3wFxIE4PN9x5zBqmpv9BscqnTwxYZ+nkRKMygmcsvMMe99uIsDLpSs3X+S
	2RzC5PYwJDvjK8SqC+2m33OARs6lewSPr/kvVLF3VldPzGQwDj2m/o3bQBlVMSf6rvAsEBGcTBeQm
	otVgPjjN8p8cQXfKjANu/oMYYMsyw9TSQ9BRYI0xMs8SLlqXIRloRIHbRDsAufj16mvA0+AYF1/E/
	xLlVq/H+YglTMSIWAFPRnpGaSaYpOUFq0QWCLxc1MwO98L2hkbqEvxVDMiP8r4F3Mgt7/jUtyAOcW
	zvJMNnh2ZavkZiXl16yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inIp1-0000LX-FP; Fri, 03 Jan 2020 09:00:43 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inIou-0000KA-1Q
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 09:00:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id r14so31503743lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 01:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+bJCZLqGGAfEAm4pWyHBrj/nn/5vuksWt0O0tN8ngok=;
 b=YLgzDTAfGrKOJy7kTl06OexdF/WJipSdmj32S2vZup/GXoPX62/iaHXdQmh2cv3WUU
 wZfiTgkX5vq9QQ8U38lKU5l3CqNhR8/oQdSvd1L7Uf5T/AzAfa8ipCk9wBE/jZ0i4yGx
 p14hyjWijfNc1QD0AHvGO6tDp+fc8fv4ijf07ifPpNVIlRuFrzBdN5yI3I+Y5sYx7UAQ
 Qo+wj1hwSKcBJLdc2ixO1RPwv7QByTEdfR1rnqgc81XXWCuH0WkOFeooLxES6vOXyjLt
 2iI8Gbo+vBlsKYyzHkHYJsSTKNF9X3wOp5O9/3Lm2eiO9Ah+A4XxSKQUMKYqu/MUVrcA
 fGKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+bJCZLqGGAfEAm4pWyHBrj/nn/5vuksWt0O0tN8ngok=;
 b=PklxrHU0UWz5GeNU8drTrNGqgihdkxXkoNHLuBvFABx1JeE8gd7Sq2hHV7M/yIA9P0
 2FEZILBo52UIiT4b10J9QblJWVXsCoK1j5up2fx7aydqOSMpzVwYXTZsF9iCfQqYugvK
 cPMsLNMMhlBDP8OiwKt9m9XIXhmFPA2HNjMUT7kKveAXfQ83qWQ2gyis1nLkBg9+U+mg
 xZg1uEvDyepnFeQCqUP05yXc7bKD1N4H5r1+ERrjlP+dz0y9SRv2wbIenn9hs7/YDrxl
 oocmVO4bsyBwbpO+EpWMymr8dnrJvoaZMt+rZWK4xQ3rQDARaErjymnGIYNLJq4SlOoh
 ucoQ==
X-Gm-Message-State: APjAAAWwo7jt7OL+TCPS9NeKxaVIseoKHbuWA6tdzeR8/xWzpUgswvVB
 L1mE7VZj2GTbMLp6aaaotyuURQ==
X-Google-Smtp-Source: APXvYqxHz6YOYwivJoSxhqlSJg3HugBnTerrXFQsJwx2kcoUtyy25+ZVE9A88tuIdBzfxaI9c9ocxw==
X-Received: by 2002:a19:5201:: with SMTP id m1mr51956951lfb.114.1578042028505; 
 Fri, 03 Jan 2020 01:00:28 -0800 (PST)
Received: from jax (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id k25sm23877975lji.42.2020.01.03.01.00.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Jan 2020 01:00:27 -0800 (PST)
Date: Fri, 3 Jan 2020 10:00:26 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] optee platform driver for v5.6
Message-ID: <20200103090025.GA11243@jax>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_010036_081636_860C4B27 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tee-dev@lists.linaro.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this OP-TEE driver update where the driver is modeled as a
platform driver instead.

Thanks,
Jens

The following changes since commit d1eef1c619749b2a57e514a3fa67d9a516ffa919:

  Linux 5.5-rc2 (2019-12-15 15:16:08 -0800)

are available in the Git repository at:

  git://git.linaro.org:/people/jens.wiklander/linux-tee.git tags/tee-optee-pldrv-for-5.6

for you to fetch changes up to f349710e413ad29132373e170c87dd35f2b62069:

  optee: model OP-TEE as a platform device/driver (2020-01-03 09:26:40 +0100)

----------------------------------------------------------------
Model OP-TEE as a platform device/driver

----------------------------------------------------------------
Ard Biesheuvel (1):
      optee: model OP-TEE as a platform device/driver

 drivers/tee/optee/core.c | 153 ++++++++++++++++++++---------------------------
 1 file changed, 64 insertions(+), 89 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
