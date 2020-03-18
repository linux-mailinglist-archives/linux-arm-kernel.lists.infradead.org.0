Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0813A189509
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 05:43:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=chV+Jbv0WhLsM+iS7ERqkUdVc4sh1WqzTvSqLGIMOs0=; b=YEQiFQ35CZ/W5i
	Fdur9nLjxdfsfFuUH5ciS+zuCVRajLUWIyfQ80MNrsoNHGwNHWUZDc/YBM5wczDxSHduzle9tiHCO
	zZco/PlMDxNlwh3ynDNBR4RHgkIo9W9khCX3VwGlfllE/zj5PETy5c1ZoLiRXOXv/k3XcZRmcxocQ
	jNNuvCVqVGw+lUlnVC8DQEK0WkYeqA6m9giwQE9lWiS0xsfPAIJgAFVjEaK3yU7RW2iObTphOkYWM
	SIrRWTKR6r5ce3NMWy2UUuzjtxlJIR0TycresDmjGnBDGn/8cOBd20jJulWv3j2HsiIX6+StnMAzR
	TWpHQXgotjXERRGyD9Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEQY3-0003x1-FC; Wed, 18 Mar 2020 04:43:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEQXs-0003wg-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 04:43:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id z72so3122489pgz.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 21:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=jc7JXIl9pPFBTwgw5WmPaYcz+H7umRKbuhQlfABpCas=;
 b=lQsbM4vRJS5yrZkATzOSv7+mGzM51qrW+S9wJNoGWAvYaTd12fBV9y8jRx67JlMq6n
 Cw3a1sOxOL2bxuWd/2k+JavWr904D95HpMj1oAfaglpgKLswZt6HgOnEyPkJncr9FufZ
 uxBHz/7vCsLTzTMGiGnaUH4m+3R5mksBIbZWPJPsDDmN+bd1c6rXcZQDFObmxXndvXGD
 yyVO716enj+zqm6aRSzs1t3jKhZQPE8VVdSM9lVmOsXhP01Lbw8DANpny/JWNq03wgfm
 OOAgrowEjxzyMkKsDI86swaN+dTRoabkVMw9H95I6vu7IfuZkmBJqD3XlLcw6f7eTu1M
 6ENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=jc7JXIl9pPFBTwgw5WmPaYcz+H7umRKbuhQlfABpCas=;
 b=LDCLuAYe8a+eWlFM6Sx3E5evLT4F0+rD2W+V9XWY8FhR5U/8CcPxWNKbu2Atfuxefi
 HcN2Aq+/khlqOKHskLzjWo2bCLfnOHqcMLafbYwGrhKHYaM36Qm5o5DOVEIbK0fFupoF
 ZJG/eX7jFF4OXKnebcdIeDICA99v66cQu6kQ7foa2CNRlktoE1g5cOPVjOa86j9bBlE/
 jVgNvJPD6XVh1/IVlRhxiVvvckDgMhClV43sFSVmMUxrQ8OqJLsu9Ij2tayeYguIhP+n
 cMETqXayPFXpqpEAiv2E8DxuSL182GNdJwtqHV91vWI0HlWZW9ABasUmCtvrDf4GmYC9
 dlng==
X-Gm-Message-State: ANhLgQ3U82S0HqlqSwiW8Fvj0wDwJK8iF2jGTfPd6HNQ0NmpKNWYJBfk
 Yu7sEG3I0bIY4XmHO3Vpq9QDjQ==
X-Google-Smtp-Source: ADFU+vsGvibNnunYwvv1wAot5gW2OLSg9QJLf1lb6UdxnyEl2+0hkd8U8icpz5luR18odm6LQY/u0w==
X-Received: by 2002:a65:678e:: with SMTP id e14mr2436997pgr.299.1584506588173; 
 Tue, 17 Mar 2020 21:43:08 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id u126sm4563397pfu.182.2020.03.17.21.43.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 21:43:07 -0700 (PDT)
Date: Tue, 17 Mar 2020 21:43:05 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM dts updates for v5.7
Message-ID: <20200318044305.GE470201@yoga>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_214308_802786_EC943340 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jonathan Marek <jonathan@marek.ca>, Arnd Bergmann <arnd@arndb.de>,
 Christian Lamparter <chunkeey@gmail.com>, linux-arm-msm@vger.kernel.org,
 Konrad Dybcio <konradybcio@gmail.com>, Andy Gross <agross@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-dts-for-5.7

for you to fetch changes up to 8b99dc0922618062a1589ebd74df6108b4f9ac22:

  ARM: dts: qcom: add gpio-ranges property (2020-02-24 20:54:29 -0800)

----------------------------------------------------------------
Qualcomm ARM dts updates for v5.7

This adds Bluetooth support on Nexus 5, USB on Xperia Z1 and defines
gpio-ranges throughout the various gpio-controllers.

----------------------------------------------------------------
Christian Lamparter (1):
      ARM: dts: qcom: add gpio-ranges property

Jonathan Marek (2):
      ARM: dts: qcom: msm8974: add blsp2_uart10
      ARM: dts: qcom: msm8974-hammerhead: add support for bluetooth

Konrad Dybcio (1):
      ARM: dts: qcom: msm8974-honami: Add USB node.

 arch/arm/boot/dts/qcom-apq8064.dtsi                |  1 +
 arch/arm/boot/dts/qcom-apq8084.dtsi                |  1 +
 arch/arm/boot/dts/qcom-ipq4019.dtsi                |  1 +
 arch/arm/boot/dts/qcom-ipq8064.dtsi                |  1 +
 arch/arm/boot/dts/qcom-mdm9615.dtsi                |  1 +
 arch/arm/boot/dts/qcom-msm8660.dtsi                |  1 +
 arch/arm/boot/dts/qcom-msm8960.dtsi                |  1 +
 .../dts/qcom-msm8974-lge-nexus5-hammerhead.dts     | 71 ++++++++++++++++++++++
 .../boot/dts/qcom-msm8974-sony-xperia-honami.dts   | 25 ++++++++
 arch/arm/boot/dts/qcom-msm8974.dtsi                | 10 +++
 10 files changed, 113 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
