Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E71A139ADD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 21:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZTi4/a9D4xO/UtVVk2DcoqNCupj3u5AS+icsRVckwDk=; b=SikfVpZ/Eyj5ZW
	h/KvUK6GkjKKhVCdTip8wTjzvNUcEwZr1N5jSjo8McmieAB9yUEa57EpidX9tgZMUs30kmzzXxoV/
	PG3apukys2u903kidM8pGbLEVUqzrQVAlWnnnOenga7bT63pTy1vV/mAqzwl540n4XFMg7VytTiof
	DmlMOMiIcF361o7uBqKcs9LOcb4tJtWeO0mc9Hy8O8xbNbIiz6ypfRgVaWcShsFh8EbckaWW8f8EA
	X8guACM/0054EZCcnCM6Am1bFRh45N2TJfNrdnG/Goyc89hMHc8WvOZcpBJsqpkgJ21+/ZbkbtKpq
	Kl/F7LCv3bPh1C+46xbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6Ws-00054j-0Q; Mon, 13 Jan 2020 20:41:42 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6Wk-00053w-Of
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 20:41:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id x8so5261544pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 12:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ZoacZbem6s+7w0Ec1Mbd+0FDMsmCk3yWa/A6VJ8m1VM=;
 b=ebYSiO+A7HY7O1bji6Oi3Odp6Oe9aZSF3TAQy1X1olR0Zd6zehs0EbeeNskpXcnPXu
 OGwq5ilV9YdPj8+0ZwYBGxmymIDin4EUTkFaFY6dP/tEo4a+1OvPFzBbhZ30kXI6hO3I
 jWcHbuHUSQitE1eT5bvPIzR/mkoerX+rIE+aoYt8H1UYomLRaCOoTqAQ4vbuss+xxkqd
 oqF05Oao5d6gKx9DIjlFKtsgR4zrcxMmjV+EQOX7BKk6cwnEwofksW739T8uLCD7seKL
 2hQzjpXCxFNAJxC2rMGZ2q/gAhHjzrxPTgt8ZxiQQTX99VaKflCsEb+p9T4dJ5re43+G
 77yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ZoacZbem6s+7w0Ec1Mbd+0FDMsmCk3yWa/A6VJ8m1VM=;
 b=g3W0Lb99pTOVw8G3xPL2fq/6iCutHBPLuUv8gaeKkIwXawL5Z08TR5PZUm5J6RwhWb
 hYoCg6cpZBqeWFvhKNfZ8wtt01irZUZ5yymBaSzRi2jpEFr4zJjAAbjTyhaNrT1Lh+Dh
 8THtLpy0H0UBs9OwVJSIBe8L3JGZXGcGeWP7G6U5ls+UcJUmMPx/J3QrO+m5K2b8xhm6
 +U0/37hrmVFRevreot+hEuByL6UAJZIJEDgTCOxPAb/uGDMgEHpYoSJaFrOpKfT3krQ6
 mnMZbFOc7G7XAfLYfa274B2hJFFO9agM5qDeAzu0tTETL4nI4qgcOVCwLX+EMSTUn6Xu
 KCfA==
X-Gm-Message-State: APjAAAVKK9PbEneQIbiyQDBbeT5XMY+8CSnH8rw1G6cCCPxtj93tC3aC
 m6SOmIUDG4KdEnkEA7OYmLvK0Q==
X-Google-Smtp-Source: APXvYqwGRiL4ieCaRTJHFitI1pbBJvnXc/j2S77WAlRK3OoFxxZ2dMFJUnUd25kHMMKHIv/5x2+fyg==
X-Received: by 2002:a62:1889:: with SMTP id 131mr21370497pfy.250.1578948093458; 
 Mon, 13 Jan 2020 12:41:33 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id t187sm15523096pfd.21.2020.01.13.12.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 12:41:32 -0800 (PST)
Date: Mon, 13 Jan 2020 12:41:30 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 defconfig updates for v5.6
Message-ID: <20200113204130.GA3325@yoga>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_124134_806671_431E6A23 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 linux-arm-msm@vger.kernel.org, Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>,
 Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Olof, I attempted to make the two CPUFREQ drivers =m, but the result is
that CPUfreq doesn't come up on QCS404. We will need to investigate this
further and I will follow up with a patch once this is sorted out.

Regards,
Bjorn

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.6

for you to fetch changes up to a7ab9b89af22a8ce68db648759d974a214bc25bd:

  arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM (2020-01-04 23:58:00 -0800)

----------------------------------------------------------------
Qualcomm ARM64 defconfig updates for v5.6

* Enable NVMEM and OSM CPUfreq drivers
* Enable CPR driver
* Enable HFPLL driver
* Enable ATH10k SNOC driver
* Enable PMIC thermal driver
* Enable wakeup controller driver
* Enable watchdog driver
* Enable PRNG driver
* Enable SN65DSI86 DSI to DisplayPort bridge driver
* Enable QCA Bluetooth driver
* Enable Qualcomm SoCinfo driver
* Enable SPI and QSPI drivers
* Enable drivers providing remoteproc dependencies

----------------------------------------------------------------
Amit Kucheria (1):
      arm64: defconfig: Enable QCOM PMIC thermal

Bjorn Andersson (7):
      arm64: defconfig: Enable Qualcomm remoteproc dependencies
      arm64: defconfig: Enable Qualcomm SPI and QSPI controller
      arm64: defconfig: Enable Qualcomm socinfo driver
      arm64: defconfig: Enable Qualcomm CPUfreq HW driver
      arm64: defconfig: Enable Qualcomm pseudo rng
      arm64: defconfig: Enable Qualcomm watchdog driver
      arm64: defconfig: Enable ATH10K_SNOC

Jeffrey Hugo (2):
      arm64: defconfig: Enable QCA Bluetooth over UART
      arm64: defconfig: Enable SN65DSI86 display bridge

Jorge Ramirez-Ortiz (1):
      arm64: defconfig: Enable HFPLL

Lina Iyer (1):
      arm64: defconfig: enable PDC interrupt controller for Qualcomm SDM845

Niklas Cassel (2):
      arm64: defconfig: enable CONFIG_QCOM_CPR
      arm64: defconfig: enable CONFIG_ARM_QCOM_CPUFREQ_NVMEM

 arch/arm64/configs/defconfig | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
