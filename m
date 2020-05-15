Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031A31D52AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7GUwsdufgxmtxbStXjZWgNQkPWOiDHcF6XBYeZ++MY=; b=n9zsV0iW770Fuf
	U0jOgXm0qWXLgkLB/Ulvns1eL4A9cw70/fMtwMxO/bRmfIdjzem1gKV7HXLf0OFQByIjNYLw058pA
	UeyXkt4NqUFxAZeKcrh4wQSfMybkfeCKTh9oM9XnAtArmJDXg7q4Qp1oYgUz1hRp/gTRooP0GKYk8
	45JtYQjhCqw6SI73kw8k0YIqRu5qLbwKoiZg1QlvOirtvKQGFx7UMIZpDwlSO+F3yPQAZ4kaV+60h
	b0X1XHbWT/rU0LHtWILW9bHpkJp3AUuYCJXCMRo+IosELwRvPsjN2dLT3E0CZM2eQxuBA2tDt7wIN
	ncqp6LCEKxhnT+wGU9xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZble-00065e-UB; Fri, 15 May 2020 14:56:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiT-00015E-2s
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id h17so3868707wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hFErko6oApY1WR8Z0RQQ5LiGOdx/Qs4fdvpGN2oBVzw=;
 b=QIaa2m61eOA6xnHbRyTBYzdPm5ZlvyRxokIYG7BW+jKehRaevn/wzmjbE6BEwnOBNd
 Gcq9R+iSLYX/7cuszr0R0Xlxe1cdro1T6llf+ZFJnjS7fdhw8Wg4lssPFDGKYKzgPxbC
 oDAVOsCs816dklIwmsX91J27IKvYn+t7WF5TylhJHYYG9ZUSyN/zd5v9X76tv/7wC+cb
 5xvpBB+yrL17nFgaa2cId0fudZKGEsULfGKx9Y8fTZY8lhirn3tVNBm0dff0lKYpnSET
 crU3rMEqBO5D5KNmWiNQbqgABUgLkHerjLjaBlhmgt2y4UFxsXp1HvkvHqYYbNHmQ/NZ
 iHlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hFErko6oApY1WR8Z0RQQ5LiGOdx/Qs4fdvpGN2oBVzw=;
 b=jQLKHeoUCFDIbGwmDGOH3I818VBvkd7Sk3ajWFsUfbknj0rHenTKdgetwIfZVWdpop
 9n1iZJFcFLFjGfuriJ+YCGUH8r3ax0dQ3pCkmEMZZRthwwl+ilztx9cR+at1ppD7GKOY
 mWeeh6wh5KOMpk5CfxpcAqKxukHiWGOA5P1NFBNitWJu9F3vKvi7xIIBDYXtnxeeGtWM
 MDVmyTZqP8LZmhMw54AhdUWgkQBEhdsJyqQhHBd21QXJC5TQyPoCUjlSKhBXqCwVbebZ
 B7QwB+wjOTdC3sZX7xOHkFqDbiIAonf405gVh+bj9KrwA63gHJqt3miABH70+q0S4wek
 H4uA==
X-Gm-Message-State: AOAM532+kFS11hlDJBuZUDoLOP4xve0rczP8l5wohnn41xTMD+RHXKtj
 HbYpslSCPxsLpAun4JAbv00=
X-Google-Smtp-Source: ABdhPJxmgPS+JsABywd/aVmVSDGV8AuyQdMt9JGh6zCwSrs13XcQcuXcJRNs3tn8jSXAwTDatsqw7w==
X-Received: by 2002:adf:f48b:: with SMTP id l11mr4587640wro.312.1589554414734; 
 Fri, 15 May 2020 07:53:34 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id x24sm4269257wrd.51.2020.05.15.07.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:33 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 10/11] ARM: tegra: Device tree changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:10 +0200
Message-Id: <20200515145311.1580134-11-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075337_136354_EFAC82A5 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-arm-dt

for you to fetch changes up to 94ea9681a9f5c7a72ae63c015e44a02530927b61:

  ARM: dts: tegra30: beaver: Add CPU Operating Performance Points (2020-05-06 19:02:40 +0200)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Device tree changes for v5.8-rc1

This contains a bit of cleanup and CPU frequency scaling support for the
Tegra30 Beaver board.

----------------------------------------------------------------
Dmitry Osipenko (2):
      ARM: dts: tegra30: beaver: Set up voltage regulators for DVFS
      ARM: dts: tegra30: beaver: Add CPU Operating Performance Points

Rob Herring (1):
      ARM: tegra: Kill off "simple-panel" compatibles

 arch/arm/boot/dts/tegra114-dalmore.dts         |  3 +-
 arch/arm/boot/dts/tegra124-venice2.dts         |  2 +-
 arch/arm/boot/dts/tegra20-colibri-eval-v3.dts  |  2 +-
 arch/arm/boot/dts/tegra20-colibri-iris.dts     |  2 +-
 arch/arm/boot/dts/tegra20-harmony.dts          |  2 +-
 arch/arm/boot/dts/tegra20-medcom-wide.dts      |  2 +-
 arch/arm/boot/dts/tegra20-paz00.dts            |  2 +-
 arch/arm/boot/dts/tegra20-seaboard.dts         |  2 +-
 arch/arm/boot/dts/tegra20-ventana.dts          |  2 +-
 arch/arm/boot/dts/tegra30-apalis-eval.dts      |  2 +-
 arch/arm/boot/dts/tegra30-apalis-v1.1-eval.dts |  2 +-
 arch/arm/boot/dts/tegra30-beaver.dts           | 40 ++++++++++++++++++++++++--
 arch/arm/boot/dts/tegra30-cardhu.dtsi          |  2 +-
 arch/arm/boot/dts/tegra30-colibri-eval-v3.dts  |  2 +-
 14 files changed, 50 insertions(+), 17 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
