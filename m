Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C161D184D21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PytbFHPwm2F/6KyavFuegJEIgdIQk71p+iCCRI4x5KQ=; b=qaKGa3RwQkfgiB
	wTUXGfZJEu1HceryegE4XznAO5Ypzd1yi/O+HF7DfATNY9AjIHj2FM3GZra+pDAgrDY+HJuLnmmvX
	E+Dq2XFe0TF3dbJvBe6DbGJs+hH0m16GuSbQGCnPEBLw8RhNiIMoqys22FXQuozndtgw1t1eXGJlc
	Wt6GM13Kv7SYyv6phRswcIxUi13pgfFAPeZzPMbOUGDrR8AFHHwB3p1alVS6m+CSyDQHBL3McRsAr
	X0PumY5WHyk1aiAPr8Z/GnYuj8UrSezjCeP3QgM8Up2nsFW4GQrGuXpkOQikRiog/luPOymZ3UzVA
	myKnNGKuxyPGt8Ue3ZWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnf6-0000Tu-SO; Fri, 13 Mar 2020 16:59:52 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneH-0008Hi-6u
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id b2so6776944wrj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u2Z5UcmV8/VofLHm97f5YbQrhljIP7Kqx9/wdHClbo8=;
 b=shqhanNgu6CUiTgvC+fvofwKds2aVa+PN19WE7YVRO19OdXXPLw11iLUCyIKLn7itd
 PiimYJXj2aD8ItxRT9DOHBprZeBQdfSBW6s8Plb2vddcEiKrRCHfXusAKyBQKaz4S72P
 8TRl+vcBCuejzM+joA5ukgGmRL4aIvGEdyMlRbw5PAhnyKD/b2NzBG4n+r8xpxcuP/7g
 a8R++LDuJjMF3+qqeh/433eu5RZfTvv0OrZDxgGRXsiaabzgNgoreU/VTkaRGOB/TFOF
 RW9G8rOj63kLO1HmNcYCJj2OI88jsNdhyPcHTvzAmi/oGbZdkyykrurwnFRWxknIcujE
 bcDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u2Z5UcmV8/VofLHm97f5YbQrhljIP7Kqx9/wdHClbo8=;
 b=gvAL8l9Mdb33hjYeRg6LDVgLun5VaI41sEKPqO6mrybmAJjMAnwZNv6bg+cuy3oImu
 9g9tzYsDfzRvqBXA5Jv7cuU5aGLuBHwSPivX1j1EPuZUEtSjz3BBib8bwaPJuiYgmmQY
 O9z0lYVoGkjRjcREF17sHjuM/R+/hjvG7nxYwxqHDx3VLaADzygUpC1S+kbBx5EIqqNL
 vc5fKrNa7VEtUaKdbIeZAkH6IqDmD7Z4roKllKchHIumms+zmY3TZxQDGe0PugSnJtpa
 hyPJ5tW2GLPPILH8uvoxROxyw/30hjCfY1+m4xQxX8du5LR0gy5LDFR+ftta6LFsNLMx
 vmpA==
X-Gm-Message-State: ANhLgQ1MuPNMCX3smms+HBZW1F/mZKoOHKFwfLFYS01BPCTqFzXJKqbm
 RUF/4B7bAsvkyfXr56Wutaou4dAK
X-Google-Smtp-Source: ADFU+vuH7CkP7rWK/tMMl7um+/dktR/3uTHUtNvgvBKom1Y+98hD6NSEKua1SljTWsm5xTR7l2vPog==
X-Received: by 2002:adf:a555:: with SMTP id j21mr19040106wrb.409.1584118739503; 
 Fri, 13 Mar 2020 09:58:59 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id s28sm4995825wrb.42.2020.03.13.09.58.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:58:58 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 03/10] soc/tegra: Changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:41 +0100
Message-Id: <20200313165848.2915133-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095902_658362_3BA27EC3 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-soc

for you to fetch changes up to 4825f5354ef2e3f6bce61d0ed652a23daf379f8e:

  soc/tegra: pmc: Cleanup whitespace usage (2020-03-13 10:53:10 +0100)

Thanks,
Thierry

----------------------------------------------------------------
soc/tegra: Changes for v5.7-rc1

These changes implement various clocks that are controlled by the PMC
and add support for configuring the voltage level of some pins (needed
for example to support high-speed modes on the SD/MMC interfaces).

----------------------------------------------------------------
JC Kuo (1):
      dt-bindings: phy: tegra: Add Tegra194 support

Nagarjuna Kristam (2):
      dt-bindings: phy: tegra-xusb: Add usb-role-switch
      dt-bindings: usb: Add NVIDIA Tegra XUSB device mode controller binding

Sowjanya Komatineni (6):
      dt-bindings: clock: tegra: Add IDs for OSC clocks
      dt-bindings: tegra: Convert Tegra PMC bindings to YAML
      dt-bindings: soc: tegra-pmc: Add Tegra PMC clock bindings
      dt-bindings: soc: tegra-pmc: Add ID for Tegra PMC 32 kHz blink clock
      soc/tegra: Add Tegra PMC clocks registration into PMC driver
      soc/tegra: Add support for 32 kHz blink clock

Thierry Reding (2):
      Merge branch 'for-5.7/dt-bindings' into for-5.7/soc
      soc/tegra: pmc: Cleanup whitespace usage

Venkat Reddy Talla (1):
      soc/tegra: pmc: Add pins for Tegra194

 .../bindings/arm/tegra/nvidia,tegra20-pmc.txt      | 300 ---------
 .../bindings/arm/tegra/nvidia,tegra20-pmc.yaml     | 354 +++++++++++
 .../bindings/phy/nvidia,tegra124-xusb-padctl.txt   |  24 +
 .../devicetree/bindings/usb/nvidia,tegra-xudc.yaml | 190 ++++++
 drivers/soc/tegra/pmc.c                            | 688 ++++++++++++++++-----
 include/dt-bindings/clock/tegra114-car.h           |   4 +-
 include/dt-bindings/clock/tegra124-car-common.h    |   4 +-
 include/dt-bindings/clock/tegra210-car.h           |   4 +-
 include/dt-bindings/clock/tegra30-car.h            |   4 +-
 include/dt-bindings/soc/tegra-pmc.h                |  16 +
 include/soc/tegra/pmc.h                            |   3 +-
 11 files changed, 1125 insertions(+), 466 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
 create mode 100644 include/dt-bindings/soc/tegra-pmc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
