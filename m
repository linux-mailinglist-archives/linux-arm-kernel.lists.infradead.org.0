Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A66139AEC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 21:45:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uMqgm0QBSat9iu6qvbAZ1BfLBl2ikmXEY3otThxL+do=; b=KX1kLk1M6m0fOc
	mXhKIZsOvH9B97UPpOXGwVkHXYONqpif9PIBqC6mWkmw7bLUK//4Zw078EKSzwQtL7/WLvCdVvFd7
	oXlU39UidqDVwklTRDvKiWkW+DxqpXMj2+faZ+4l0AzmcKUfKEHVNJR0mDQeQQ8wiI3UqkL5YzDdy
	R/ZKd0lf1uWX7fi6HPciOj4PlihJFDb9VY2YHdL/G31qsa1Uw1keg2uJk/0dCoboEugrYbO6iK8Ng
	SxfQqZhMrY31FP/6YXu/L42CbNb1hHibfeALSYjWarKAUf6H+euAhlsvP6RemiS/egRUZCcw1U9Qm
	rqk5RSUnvrJq4V/GFQ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6aG-0006G7-Qq; Mon, 13 Jan 2020 20:45:12 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6Zv-0006Fm-K3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 20:44:53 +0000
Received: by mail-pg1-x542.google.com with SMTP id k3so5276573pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 12:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=a00SxwkHfm6ZVifQ6iKU+RaUHfIU7yzSAqjw2eCdeog=;
 b=HNZlpwIF7dI1PLL4JVeBl4LpcTopWQh/MvmUrbhzD4++L+w0bvDhdej2qRmk01BcPL
 TSm/TzMHtS+ZjK+rZ1Hc9WbjZOwGFmcA06xrLhFfaSbbDJOrXTbx3YcQ0MXj2FjTjW3V
 NhQt3V2epkwAdVIkw+OTtZ7uuBYe2icwruf8z6Tw4J5NvYcWrxxDPLmXFWX8VKf5ByME
 R2+5al9R3XlT53QiM/0/zZ5UBl9yhM8GHo8InPkCXDb67PUgMtTZOPIPNsbCSpi0CXTn
 2mkk2qc1IMEaKr/lEIeeSRFn0uGaJzDFVeRBx8RGyZUe9hfHsluoVybYvf82A9ayFBND
 psWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=a00SxwkHfm6ZVifQ6iKU+RaUHfIU7yzSAqjw2eCdeog=;
 b=ZnGa5yZ/OkFwgT/zncnJpiBFAUR8p9rpTXL7MLoCnRxw0ZS8dAZFVeXzylno2HmNHB
 Pp0g+LXHK0PYThpO+3OxMtYoBQTyqAeBxZ6mvPhvtVmLG2nJkLIIhBKOGD5aiojO4eu/
 gsqGaurfYZje7V/RsSISb5WYgITA6NoWhDGeixiZ8AONHRtKlTv8FRBNzyo6OOjAVgJE
 qJMLWlQkYnBMTVbYHUitD2iTxG1KAuYGmjjME1fcfNtb24DmwKTpFLS+OdRD9QAbgaEH
 lxvSTLq3YoRd2imz8gSfZUZ9yNZniCr1iGGzmVXlO5EaGPN7SVBJgCa/xWF7krwZuiX8
 5fLQ==
X-Gm-Message-State: APjAAAVvu1w+IBSIJ7kyfDBbGOwSRZaKpm7lY939ab5Tt0SbC+bj3Krh
 +n5v1/jMfZxR5dIk3OKDNaKsbA==
X-Google-Smtp-Source: APXvYqy5UAb/06wqSnu1lMkxpHEOFQlm0XR3fn8suaQuLUYIG18xk4SSMjFUOiB/nLtOMdFfCe6fjQ==
X-Received: by 2002:aa7:9115:: with SMTP id 21mr21540453pfh.224.1578948291197; 
 Mon, 13 Jan 2020 12:44:51 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id b128sm14228781pga.43.2020.01.13.12.44.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 12:44:50 -0800 (PST)
Date: Mon, 13 Jan 2020 12:44:48 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM dts updates for v5.6
Message-ID: <20200113204448.GE3325@yoga>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_124451_663754_1698C910 
X-CRM114-Status: GOOD (  10.15  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Luca Weiss <luca@z3ntu.xyz>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@sonymobile.com>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 Damir Franusic <damir.franusic@sartura.hr>,
 Victhor Foster <victhor.foster@ufpe.br>, linux-arm-kernel@lists.infradead.org,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-dts-for-5.6

for you to fetch changes up to 5e4548922009870a38bcf1d887317676d4e08f54:

  ARM: dts: qcom: Add nodes for SMP boot in IPQ40xx (2019-12-28 22:21:24 -0800)

----------------------------------------------------------------
Qualcomm ARM dts updates for v5.6

* Add SAW L2 nodes to boot secondary cpus on IPQ40xx
* Fix remaining IRQ_TYPE_NONE on APQ8084
* Update tsens node to new style
* Add modem remoteproc node to MSM8974
* Move ADSP SMD edge into ADSP remoteproc node for MSM8974
* Add and enable wireless communication subsystem on MSM8974 and Fairphone 2
* Add MSM8974 interconnect provider nodes
* Add MSM8974 OCMEM node

----------------------------------------------------------------
Bjorn Andersson (3):
      ARM: dts: msm8974: Introduce the wcnss remoteproc node
      ARM: dts: msm8974: Add modem remoteproc node
      ARM: dts: msm8974: Move ADSP smd edge to ADSP PIL

Brian Masney (2):
      ARM: dts: qcom: msm8974: add ocmem node
      ARM: dts: qcom: msm8974: add interconnect nodes

Damir Franusic (1):
      ARM: dts: qcom: Add nodes for SMP boot in IPQ40xx

Luca Weiss (1):
      ARM: dts: msm8974-FP2: Introduce the wcnss remoteproc node

Victhor Foster (2):
      ARM: dts: qcom: apq8084: Change tsens definition to new style
      ARM: dts: qcom: apq8084: Remove all instances of IRQ_TYPE_NONE

 arch/arm/boot/dts/qcom-apq8084.dtsi              |  44 ++---
 arch/arm/boot/dts/qcom-ipq4019.dtsi              |   7 +
 arch/arm/boot/dts/qcom-msm8974-fairphone-fp2.dts |  45 +++++
 arch/arm/boot/dts/qcom-msm8974.dtsi              | 222 +++++++++++++++++++++--
 4 files changed, 280 insertions(+), 38 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
