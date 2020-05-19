Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AE51D8F31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 07:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9z8vltxuWeVsCRUYsPx3e+ES27+cRpbbWwHLrs8ACIY=; b=VxmEyguTfUDkal
	+RPUjjEwHzR5bK74gdWCC20zo2Cil9wfRKBKJeTRGOHUfpnik25VGsJODQO78gStz8aB7j5/3OLCl
	y7O7pebdfcmUvIgj9omSogoyFuYGoeUsXKna4Exv8BAEiddv54xSrU8ddbGIHWDpVFLqek5puS5oo
	DDZ7z0XmnabUtssf/ZfPsjwx+RmH6icDUHPPttvUqDQsVeadjy4eDzaZZp6VBIQhuTkXjvqD9eLVI
	x0LPhdE6jkX1lFBE1sNNbW15dZCz2NJaLoWtF2vagD8WDftHSoteAt6ynS4DBTYtXAbm0MHvB1lKw
	++RLhby+lVmSCN93EOLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaumd-0005sM-FV; Tue, 19 May 2020 05:27:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaumH-0005gZ-7s
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 05:26:59 +0000
Received: by mail-pl1-x643.google.com with SMTP id t16so5151879plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 22:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6eAh0MZrhKEHVvxG4fmUgYQWHWJzvYUt4HqT+AfIqVs=;
 b=D6YnJdEJp8F9inv82USlVRtngZkf7VaGE5C01pYHqfqUBXuU2LTuo47c6I0chxmbB8
 pKp36b2LD8ykEAdyfMbo9qFxqTjUEzKYHTbXd2WH0BNMKIuI+ifTIdzMel4j+OCyCGld
 R9Czo6ysxE/Me10Zom+GUusNuSDLmpIy6JH+WRq+++uliIAAHcxCYUw2Tdvq/+e0meTy
 FRWBsmM19qBWSZDAm/D+Nxz+5EM6uMv7mKZswlfkGGw/1Pa4RPBVALJc3WZBGhpV36KE
 Q/aFFknbiDXSHK513YHH0BlFFyicy2Mfsv8l+2cj9lqSv/Df6HeEgkKZBD0VE9tE8wNx
 M0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6eAh0MZrhKEHVvxG4fmUgYQWHWJzvYUt4HqT+AfIqVs=;
 b=oJyJYQZiDAKDgwW6Z2iM799RtSgfA2hfF6p94HDc45ceudUojQ7f/xiRkYvWXM++x0
 yUK+MHCbTl5RGYBOhFM3qjNgh2tHQBSdHXDr1O/r+hf9wKaaODaskmBiOhYe9fnUwraQ
 MF4uH4ZC0izowQEyIB+20Vkl8s4IHPDI+nBRircmyaA2pvfs/S8zKAUZunwaBxsLFB6r
 7WtheTweompBsnb1j2x57yf2ULHVj43hquZghANkBSYAkW5qu5VALMpU7qDU3n1WMbuW
 LLRkXnFqSJ9+TswFo6AXbijFe8DsfAgYSt6l3F7Ii6OKm31T8tgztv1jz7i//k5WvgiO
 LYeQ==
X-Gm-Message-State: AOAM533odrTbsC4S56mNX7S0IX0trxYlyKqEjTKg7OjVWQh+0k0H4w/B
 DTYuvFwSCecO9uFV8COik9mUTg==
X-Google-Smtp-Source: ABdhPJyv2c7g+7HoLW7GykwxyUGKo1gpeCC14aYJWuOGDGVRerqm7TeMRxE6aO/HkRbhemC/+hugyA==
X-Received: by 2002:a17:90a:8509:: with SMTP id
 l9mr3091267pjn.113.1589866015849; 
 Mon, 18 May 2020 22:26:55 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s199sm10256743pfs.124.2020.05.18.22.26.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 22:26:55 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] Qualcomm driver updates for v5.8
Date: Mon, 18 May 2020 22:25:33 -0700
Message-Id: <20200519052533.1250024-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_222657_351292_AADC324A 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maulik Shah <mkshah@codeaurora.org>,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Arnd Bergmann <arnd@arndb.de>,
 Jason Yan <yanaijie@huawei.com>, Vincent Knecht <vincent.knecht@mailoo.org>,
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>,
 Markus Elfring <elfring@users.sourceforge.net>, Andy Gross <agross@kernel.org>,
 John Stultz <john.stultz@linaro.org>, Sibi Sankar <sibis@codeaurora.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-drivers-for-5.8

for you to fetch changes up to 1f7a3eb785e4a4e196729cd3d5ec97bd5f9f2940:

  Revert "soc: qcom: rpmh: Allow RPMH driver to be loaded as a module" (2020-05-17 23:13:00 -0700)

----------------------------------------------------------------
Qualcomm driver updates for v5.8

This contains a large set of cleanups, bug fixes, general improvements
and documentation fixes for the RPMH driver. It adds a debugfs mechanism
for inspecting Command DB. Socinfo got the "soc_id" attribute defines
and definitions for a various variants of MSM8939.

RPMH, RPMPD and RPMHPD where made possible to build as modules, but RPMH
had to be reverted due to a compilation issue when tracing is enabled.

RPMHPD gained power-domains for the SM8250 voltage corners.

The SCM driver gained fixes for two build warnings and the SMP2P had an
unnecessary error print removed.

----------------------------------------------------------------
Bjorn Andersson (3):
      soc: qcom: rpmhpd: Add SM8250 power domains
      soc: qcom: aoss: Add SM8250 compatible
      Revert "soc: qcom: rpmh: Allow RPMH driver to be loaded as a module"

Christoph Hellwig (1):
      firmware: qcom_scm: fix bogous abuse of dma-direct internals

Douglas Anderson (18):
      soc: qcom: rpmh-rsc: Clean code reading/writing TCS regs/cmds
      soc: qcom: rpmh-rsc: Document the register layout better
      soc: qcom: rpmh-rsc: Fold tcs_ctrl_write() into its single caller
      soc: qcom: rpmh-rsc: Remove get_tcs_of_type() abstraction
      soc: qcom: rpmh-rsc: Kill cmd_cache and find_match() with fire
      soc: qcom: rpmh-rsc: A lot of comments
      soc: qcom: rpmh-rsc: tcs_is_free() can just check tcs_in_use
      soc: qcom: rpmh-rsc: Don't double-check rpmh payload
      soc: qcom: rpmh-rsc: Caller handles tcs_invalidate() exclusivity
      soc: qcom: rpmh-rsc: read_tcs_reg()/write_tcs_reg() are not for IRQ
      soc: qcom: rpmh: Dirt can only make you dirtier, not cleaner
      soc: qcom: rpmh-rsc: Factor "tcs_reg_addr" and "tcs_cmd_addr" calculation
      soc: qcom: rpmh-rsc: Timeout after 1 second in write_tcs_reg_sync()
      soc: qcom: rpmh-rsc: Correctly ignore CPU_CLUSTER_PM notifications
      soc: qcom: rpmh-rsc: We aren't notified of our own failure w/ NOTIFY_BAD
      kernel/cpu_pm: Fix uninitted local in cpu_pm
      soc: qcom: rpmh-rsc: Simplify locking by eliminating the per-TCS lock
      soc: qcom: rpmh-rsc: Remove the pm_lock

Gustavo A. R. Silva (1):
      firmware: qcom_scm-legacy: Replace zero-length array with flexible-array

Jason Yan (1):
      firmware: qcom_scm: Remove unneeded conversion to bool

John Stultz (3):
      soc: qcom: rpmh: Allow RPMH driver to be loaded as a module
      soc: qcom: rpmhpd: Allow RPMHPD driver to be loaded as a module
      soc: qcom: rpmpd: Allow RPMPD driver to be loaded as a module

Markus Elfring (1):
      soc: qcom: smp2p: Delete an error message in qcom_smp2p_probe()

Maulik Shah (4):
      soc: qcom: rpmh: Update dirty flag only when data changes
      soc: qcom: rpmh: Invalidate SLEEP and WAKE TCSes before flushing new data
      soc: qcom: rpmh: Invoke rpmh_flush() for dirty caches
      soc: qcom: rpmh-rsc: Allow using free WAKE TCS for active request

Raju P.L.S.S.S.N (1):
      soc: qcom: rpmh-rsc: Clear active mode configuration for wake TCS

Sibi Sankar (2):
      soc: qcom: cmd-db: Fix compilation error when CMD_DB is disabled
      soc: qcom: pdr: Remove impossible error condition

Srinivas Kandagatla (1):
      soc: qcom: socinfo: add missing soc_id sysfs entry

Stephan Gerhold (1):
      dt-bindings: soc: qcom: apr: Use generic node names for APR services

Stephen Boyd (4):
      soc: qcom: cmd-db: Add debugfs dumping file
      soc: qcom: cmd-db: Cast sizeof() to int to silence field width warning
      soc: qcom: cmd-db: Use 5 digits for printing address
      soc: qcom: cmd-db: Properly endian swap the slv_id for debugfs

Vincent Knecht (1):
      soc: qcom: socinfo: add msm8936/39 and apq8036/39 soc ids

 .../devicetree/bindings/power/qcom,rpmpd.yaml      |   1 +
 .../devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt |   1 +
 .../devicetree/bindings/soc/qcom/qcom,apr.txt      |  20 +-
 drivers/firmware/qcom_scm-legacy.c                 |   2 +-
 drivers/firmware/qcom_scm.c                        |  11 +-
 drivers/soc/qcom/Kconfig                           |   6 +-
 drivers/soc/qcom/cmd-db.c                          |  78 ++-
 drivers/soc/qcom/pdr_interface.c                   |   4 -
 drivers/soc/qcom/qcom_aoss.c                       |   1 +
 drivers/soc/qcom/rpmh-internal.h                   |  59 +-
 drivers/soc/qcom/rpmh-rsc.c                        | 746 +++++++++++++++------
 drivers/soc/qcom/rpmh.c                            |  97 ++-
 drivers/soc/qcom/rpmhpd.c                          |  24 +
 drivers/soc/qcom/rpmpd.c                           |   5 +
 drivers/soc/qcom/smp2p.c                           |   4 +-
 drivers/soc/qcom/socinfo.c                         |   6 +
 include/dt-bindings/power/qcom-rpmpd.h             |  12 +
 include/soc/qcom/cmd-db.h                          |   1 +
 kernel/cpu_pm.c                                    |   4 +-
 19 files changed, 775 insertions(+), 307 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
