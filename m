Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E201139AE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 21:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3R4qKZXJW1mMTVf1y9k8Uq6ezN+gpxiof7jrFXbK5Gw=; b=I9dHs+Dzcdk0Gv
	u/i6XwozFdpfDoZ64sKgqHcNe+yBBmD0saKNzcITMgohK60mEp1DiZ7U1NZTb5O+n+jHKxQuaWTZZ
	vPaq+01Wsaxn8H/08JYgYWlCP8ejujU4C5dXBrA+OY6ewBkx7TpYLysuSIbsBN+br9fP6kXfeJSkT
	vPROYIx48mfANXmj2EBG891CQTzub6QvKo1zL01rxqbX+cBjGjUk1W9MJ6iWUMY5tf0cz+XWXBiws
	buwUHLhOc9dKQnJJiN9FsTR42clAUUTBVgmnWmAdntLdoMUXrWnSi/A9pNQhGDCdjgyyttWQtwxXH
	LggAc+OUX8umOzw/wR9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6ZT-0005uU-RQ; Mon, 13 Jan 2020 20:44:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6ZF-0005tx-7F
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 20:44:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id s64so5263771pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 12:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=IS3OPRaipGwb6SDedGmvTz6F6ADZoIh+zjI/wxisAKE=;
 b=eTWW69nNpsITRLeUbjhj30qR/Go5gQdI5vug5bH7RaFEpcCxLBdlkcMy9xjfvgl9Md
 WsuPrVhJ8eFnhNESdcvRbbyBppLj5MP+hDi4YDfPIlpedMTf3r2alm2jJ4w/V+cdqk+0
 YOcOEKDPBI5oLJDItd2sV2gXCAjsA+4RmEv9+FYrf0yS1DwBXMW1YS4z0e6CLFGUQ49x
 rJ8R6mzOciG6sLVJ832K9Ek18nH8XyFWWjzsS3WKV6/N7Q9cZuYAvVx3ZJUrqxAu61jO
 /rlkJK1lwhP73pVGH/h67V0xb29G5sgIA4HKw4H4NfX0fve30EzDKb8mPeDahAmovWuk
 1ZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=IS3OPRaipGwb6SDedGmvTz6F6ADZoIh+zjI/wxisAKE=;
 b=pyM7lb5G0e69t7hB0eVVJNLAYvOXyIvd7Tr4WNLteWRKe6Uo2xxbxDCZgFbz+EJwyE
 LoofiLKqZymvhz09UvDvZ9TZfAFv9YI2qnBvcuQ7CJcJ8Ht/uHB6BgHsUZLLmTMtsjut
 sH828q90UlH94tg3L1orx4SeAXuC27nsobwfuyL7N4Tn9u9zuTZLQokm8HThfhRbq+n/
 VYTLbtaMsrTDSQ6srMGEEcSJyV8RagBXWojAD+WNMtiN14D2vYwItbcDw1w2HFrWAx6M
 6/HZj6fs0OKEusa6ceabtYOKHeeHOHH8kdrhimn/kVj6TQuosK0OWtS1sCcwoG3+2Jww
 Chlw==
X-Gm-Message-State: APjAAAUJ5M1yDj+W6oDXgf1sg30eHqZBakFezeTzqy4V0nrYIAMAbNbq
 5wQGMi4LynO/JgJ4ch1jN4ePgw==
X-Google-Smtp-Source: APXvYqzBlSY6COwVN91zi0NmCeOSR/L97Fhol7ZFksfge4T8I0sw2EYjN1OsJ2Uxz2CoN1+9+LmVKw==
X-Received: by 2002:a63:da4d:: with SMTP id l13mr23826999pgj.106.1578948248559; 
 Mon, 13 Jan 2020 12:44:08 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v8sm14875557pff.151.2020.01.13.12.44.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 12:44:08 -0800 (PST)
Date: Mon, 13 Jan 2020 12:44:05 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm driver updates for v5.6
Message-ID: <20200113204405.GD3325@yoga>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_124409_264277_AD1B5525 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Arnd Bergmann <arnd@arndb.de>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Andy Gross <agross@kernel.org>,
 Elliot Berman <eberman@codeaurora.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org,
 Sibi Sankar <sibis@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-drivers-for-5.6

for you to fetch changes up to 9a434cee773ae15309ac225f27551b5492618e4a:

  firmware: qcom_scm: Dynamically support SMCCC and legacy conventions (2020-01-07 22:14:43 -0800)

----------------------------------------------------------------
Qualcomm driver updates for v5.6

* SCM major refactoring and cleanup
* Properly flag active only power domains as active only
* Add SC7180 and SM8150 RPMH power domains
* Return EPROBE_DEFER from QMI if packet family is not yet available

----------------------------------------------------------------
Douglas Anderson (1):
      soc: qcom: rpmhpd: Set 'active_only' for active only power domains

Elliot Berman (17):
      firmware: qcom_scm: Rename macros and structures
      firmware: qcom_scm: Apply consistent naming scheme to command IDs
      firmware: qcom_scm: Remove unused qcom_scm_get_version
      firmware: qcom_scm-64: Make SMC macros less magical
      firmware: qcom_scm-64: Move svc/cmd/owner into qcom_scm_desc
      firmware: qcom_scm-64: Add SCM results struct
      firmware: qcom_scm-64: Move SMC register filling to qcom_scm_call_smccc
      firmware: qcom_scm-64: Improve SMC convention detection
      firmware: qcom_scm-32: Use SMC arch wrappers
      firmware: qcom_scm-32: Add funcnum IDs
      firmware: qcom_scm-32: Use qcom_scm_desc in non-atomic calls
      firmware: qcom_scm-32: Move SMCCC register filling to qcom_scm_call
      firmware: qcom_scm-32: Create common legacy atomic call
      firmware: qcom_scm-32: Add device argument to atomic calls
      firmware: qcom_scm: Order functions, definitions by service/command
      firmware: qcom_scm: Remove thin wrappers
      firmware: qcom_scm: Dynamically support SMCCC and legacy conventions

Jeffrey Hugo (1):
      soc: qcom: qmi: Return EPROBE_DEFER if no address family

Krzysztof Kozlowski (2):
      soc: qcom: Fix Kconfig indentation
      firmware: scm: Add stubs for OCMEM and restore_sec_cfg_available

Sai Prakash Ranjan (1):
      dt-bindings: msm: Rename cache-controller to system-cache-controller

Sibi Sankar (5):
      dt-bindings: power: Add rpmh power-domain bindings for SM8150
      soc: qcom: rpmhpd: Add SM8150 RPMH power-domains
      dt-bindings: power: Add rpmh power-domain bindings for sc7180
      soc: qcom: rpmhpd: Add SC7180 RPMH power-domains
      dt-bindings: power: rpmpd: Convert rpmpd bindings to yaml

 .../devicetree/bindings/arm/msm/qcom,llcc.yaml     |   2 +-
 .../devicetree/bindings/power/qcom,rpmpd.txt       | 148 ----
 .../devicetree/bindings/power/qcom,rpmpd.yaml      | 170 ++++
 drivers/firmware/Kconfig                           |   8 -
 drivers/firmware/Makefile                          |   5 +-
 drivers/firmware/qcom_scm-32.c                     | 671 ----------------
 drivers/firmware/qcom_scm-64.c                     | 579 --------------
 drivers/firmware/qcom_scm-legacy.c                 | 242 ++++++
 drivers/firmware/qcom_scm-smc.c                    | 151 ++++
 drivers/firmware/qcom_scm.c                        | 854 ++++++++++++++++-----
 drivers/firmware/qcom_scm.h                        | 178 +++--
 drivers/soc/qcom/Kconfig                           |  30 +-
 drivers/soc/qcom/qmi_interface.c                   |   8 +-
 drivers/soc/qcom/rpmhpd.c                          |  56 ++
 include/dt-bindings/power/qcom-rpmpd.h             |  24 +
 include/linux/qcom_scm.h                           | 119 +--
 16 files changed, 1504 insertions(+), 1741 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/qcom,rpmpd.txt
 create mode 100644 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
 delete mode 100644 drivers/firmware/qcom_scm-32.c
 delete mode 100644 drivers/firmware/qcom_scm-64.c
 create mode 100644 drivers/firmware/qcom_scm-legacy.c
 create mode 100644 drivers/firmware/qcom_scm-smc.c


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
