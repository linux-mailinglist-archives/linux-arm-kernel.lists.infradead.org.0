Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C529189507
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 05:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n5NB2y5wiYE8hIcSbreW4gkoeSvWUfF8NbAf7qM7zSA=; b=eT2VfIAddEvW1z
	BPntiVqtHAXCClgPFza+z+c7jMzjyTI7+CVODLqQbmWgyqlJV1hjJnGoopIanKqPWwNO29apLZH16
	yq6zyjO3hwGOubueKW1WkiJ0BHK1JJ8KVIYk6PZ3juoEW4E4/876+EjdUKp0N//aK4PIwldO8oC2W
	TBL/JJEmPeOVacfWvFc9sX8gNdDa7yny5VnvNrUVFopCjv1ST45Y6yYpod6dyra7pkm4VEaRCT0w0
	HNNPAKcQe5RFAcwFltOoh/88wLhZP24gzf8eWEHXo//wVuj3B+YEnAhLFnjE5+fgG2/RDpHTmw0kR
	zplMoe0EhzZ/ZakY1dyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEQXa-0003i6-Cs; Wed, 18 Mar 2020 04:42:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEQXR-0003hf-32
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 04:42:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id 3so5348776pff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 21:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=p0mJlnl5J+ny/iKBrU8/DQJ2OQII6+Fockv2SGC0ZWA=;
 b=JYS0q8l1On09iQ/mmF+qOJEctqa63bsgE8cwSuUhvwYaFe/k2v1F7m+kc0fh7PgB3E
 Mr4KF9otwVd4fBf2HUIAQjPraw0Dac53aXi8ksr3pDfjEIpPhQ6rI4SQzHSl8FF8KV+y
 35M5462tJ4ZyJ5wX6QxPasvNg6R643eJIoIQsRspyD/PxbXE2RvWttEBRothpcSwELlu
 au9wDatCbfzQKh6rRzk9RiE+DH2xk+fLg3lQ4kpon0uPjLg1qsPj5HkYsBMcnjx7U2x8
 SNZz+x/ZlqKvoOU8222VSsrW1wDv0QfaJoC1P54MvvBNUByRodagBob3H0rbu8ChN9lt
 OViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=p0mJlnl5J+ny/iKBrU8/DQJ2OQII6+Fockv2SGC0ZWA=;
 b=tUNENmOvwEwxjIzCU0nHhTaIDtWB900XSvp58l34+AYlPTJV6qoebCgOAxbWxKjYDa
 WGwJH1B1FNbJWLdl8BNylnWdEqFFezJyA7x5lHFbLtihb2pobs6dD0ecYn0OSnKJ9SyI
 npefQVOrBenS5u8HPHKt3wYULReLyrCY5UBIi+h42FeylhrxF15aMDEh5DWQTnxBpCWe
 QSbjB9cbOg0W+tHjPunYESlKT8LWCSLE53UHW/ZMOEP54v4NKzMyDjCd2KtiP0oEQ+Pg
 0aXKB9gez1n+JAH8gbb0RugtesKnGUKJNIQAasAqUHdQ7pdOj3UeBlfJXFZrJ3oHdym4
 vjBQ==
X-Gm-Message-State: ANhLgQ1WK+gl56noKHGX3FEWhW5oeCpyrW4P7YbLkty9UZFRTVF+j7Jr
 XmIUzVPXZIg+0qmgIK55JJqRjw==
X-Google-Smtp-Source: ADFU+vuMLYYaSGwUQTOEPDDlpL/7FDPxqkrpSAndeSuSePwBSn0dmZjI5fmWmCzDdgpNL75O2p9IFA==
X-Received: by 2002:a62:ce48:: with SMTP id y69mr2372975pfg.178.1584506560129; 
 Tue, 17 Mar 2020 21:42:40 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w205sm4793864pfc.75.2020.03.17.21.42.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 21:42:39 -0700 (PDT)
Date: Tue, 17 Mar 2020 21:42:36 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm driver updates for v5.7
Message-ID: <20200318044236.GD470201@yoga>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_214241_139101_D10EE7B3 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Maulik Shah <mkshah@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 Arun Kumar Neelakantam <aneela@codeaurora.org>,
 Sibi Sankar <sibis@codeaurora.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>, Nathan Chancellor <natechancellor@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ansuel Smith <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-drivers-for-5.7

for you to fetch changes up to de722e410661b9c9173a82af4329d337d341f777:

  soc: qcom: Fix QCOM_APR dependencies (2020-03-16 15:07:19 -0700)

----------------------------------------------------------------
Qualcomm driver updates for v5.7

This adds a new library for subscribing to notifications about
protection domains being stated and stopped and the integration of this
with the APR driver. It also contains fixes and cleanups for AOSS
driver, socinfo and rpmh.

----------------------------------------------------------------
Ansuel Smith (1):
      devicetree: bindings: firmware: add ipq806x to qcom_scm

Arun Kumar Neelakantam (2):
      soc: qcom: aoss: Use wake_up_all() instead of wake_up_interruptible_all()
      soc: qcom: aoss: Read back before triggering the IRQ

Bjorn Andersson (1):
      soc: qcom: Fix QCOM_APR dependencies

Manivannan Sadhasivam (1):
      soc: qcom: Do not depend on ARCH_QCOM for QMI helpers

Maulik Shah (2):
      drivers: qcom: rpmh: fix macro to accept NULL argument
      drivers: qcom: rpmh: remove rpmh_flush export

Nathan Chancellor (1):
      soc: qcom: pdr: Avoid uninitialized use of found in pdr_indication_cb

Sibi Sankar (3):
      soc: qcom: Introduce Protection Domain Restart helpers
      dt-bindings: soc: qcom: apr: Add protection domain bindings
      soc: qcom: apr: Add avs/audio tracking functionality

Stephen Boyd (2):
      drivers: qcom: rpmh-rsc: Use rcuidle tracepoints for rpmh
      soc: qcom: socinfo: Use seq_putc() if possible

 .../devicetree/bindings/firmware/qcom,scm.txt      |   1 +
 .../devicetree/bindings/soc/qcom/qcom,apr.txt      |  50 ++
 drivers/soc/qcom/Kconfig                           |   7 +-
 drivers/soc/qcom/Makefile                          |   1 +
 drivers/soc/qcom/apr.c                             | 123 +++-
 drivers/soc/qcom/pdr_interface.c                   | 757 +++++++++++++++++++++
 drivers/soc/qcom/pdr_internal.h                    | 379 +++++++++++
 drivers/soc/qcom/qcom_aoss.c                       |   6 +-
 drivers/soc/qcom/rpmh-internal.h                   |   1 +
 drivers/soc/qcom/rpmh-rsc.c                        |   2 +-
 drivers/soc/qcom/rpmh.c                            |  22 +-
 drivers/soc/qcom/socinfo.c                         |   2 +-
 include/linux/soc/qcom/apr.h                       |   1 +
 include/linux/soc/qcom/pdr.h                       |  29 +
 include/linux/soc/qcom/qmi.h                       |   1 +
 include/soc/qcom/rpmh.h                            |   5 -
 16 files changed, 1357 insertions(+), 30 deletions(-)
 create mode 100644 drivers/soc/qcom/pdr_interface.c
 create mode 100644 drivers/soc/qcom/pdr_internal.h
 create mode 100644 include/linux/soc/qcom/pdr.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
