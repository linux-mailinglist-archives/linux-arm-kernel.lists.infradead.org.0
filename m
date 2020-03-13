Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D0D184D27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0V/BlPmaEApAFXdEf6eyF/NNZNzP/8Wzy1u24k0EJRc=; b=HQYAxeN4YU0V87
	VrkjFkQqXAc+wRe4AY+SzFDnEZ9cg1gWXfbNdCrZrH2otDasScCAbBf1DoyuNZTMCgDCnq+NFEZn9
	3QvHBQxJH+rguXPV+bhuPcN2w6PHk55yNIfg5JVBYR7/18H+W0ypjLmvRLly759Bc5YK0ZpR9qIT0
	WDsNqO7KPyX665CBPQ0QFE+BxJeiiEVH5lRfKegDceAiSQ3wtsNy6n/czLQrJwjZoLNntZ/EMCr1n
	rSN0fYX7VNIEUkN4AtCdi+YUMjLXWY8TQjpqnQxURjL3Y8UrIc8mvq1XwVYT9mWAw/Xmw7MscDO47
	Tq1AewNqXxj6SY90rqKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCngB-0001Sz-0Q; Fri, 13 Mar 2020 17:00:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneP-0008Od-A2
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id a141so11084548wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h2OQdiDQUyrvmYwsp9KDl5pIL3uySvPG4HSk32vUtc4=;
 b=HL7RvJkiWgayVx4ZO0Odt4ufNPoBeKOpctl3GVTQuv+RkLYFHb303tunXwXsD1cIHF
 +GUk+Ts95jEqxeJafZACe1P/5SDjhcSDlfguyH4NRmuel5S1lHQgjByM7gjcFPY39Ebr
 XTafXc7GduXh9jLEJgdl3yDE1qsEoAfsK1nll8FVTeCKMvDxDVMUTUZb0CpwzJpIx8OP
 kgpluAIWYswh8PgXlaR6pU0cFnlJ01nC3egM3YaDo/Ui5D3tce/MVRk52zaV9bC0dtmU
 QHuMmgtePF3GVrT3AipYCF/0Tmhi6bRuLcqKGDoiu/l7HM4ul1bDWMPn2YOHBXRtkmRJ
 2+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h2OQdiDQUyrvmYwsp9KDl5pIL3uySvPG4HSk32vUtc4=;
 b=Aer/b9I2G9Xl3BVZeZPKnbX/EnpzMT+gbh881tR4SrygljNJtpP61mouXeo2TAWxGd
 Wmhw1i+zlbC7A/zDYhk+pbam2TtZTyc44GpE5eMeT9LhuJTcXTKtnTIyCQezjnYs33LY
 V7zcY2N6dxyIrNG2r81urhXNWCUIKBhiVECxXlhkIpfyDxR6IadwAoV+gkhn8vCBSENM
 fp3cC3HwSPmqGVa1Tz78lrnaNiIps+aYmqsBmnbwWum9CVENTc18N4JKo5c+cSf4VfZw
 pZ6DDNFZ9f47sacmSjkEKPdp988N89Zm3PER/JSinvOpmttooIq6LzMEgAiBVQZOntYe
 KB6g==
X-Gm-Message-State: ANhLgQ0VwLVfQygB/8OIEj5Aq+SWhPEEu/saQizGCpZuRrAYOHQIXM55
 fVGLGVsUFt5G15OW0I49NIE=
X-Google-Smtp-Source: ADFU+vsJq2xWDaC1gBfsaIiL8/spn18owTEhym4zjK0KOfvfRNeueTccAqgGVmLw62Bg4Yk58n9ghw==
X-Received: by 2002:a1c:e442:: with SMTP id b63mr12051308wmh.174.1584118747355; 
 Fri, 13 Mar 2020 09:59:07 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id y143sm3076390wmd.12.2020.03.13.09.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:59:06 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 07/10] ARM: tegra: Default configuration changes for
 v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:45 +0100
Message-Id: <20200313165848.2915133-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095909_419445_0BF32856 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-arm-defconfig

for you to fetch changes up to 224c6632050481885368d5b7f3db56254a34c247:

  ARM: tegra: Enable Tegra cpuidle driver in tegra_defconfig (2020-03-12 11:05:00 +0100)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Default configuration changes for v5.7-rc1

These patches enable the new, unified CPU idle driver for Tegra20,
Tegra30 and Tegra114.

----------------------------------------------------------------
Dmitry Osipenko (2):
      ARM: multi_v7_defconfig: Enable Tegra cpuidle driver
      ARM: tegra: Enable Tegra cpuidle driver in tegra_defconfig

 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm/configs/tegra_defconfig    | 1 +
 2 files changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
