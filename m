Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8CA137AAB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Nc8ge5m+o5aNSAigYbAiw1cnKOPT2XxsB2lugjE7PM=; b=nRgtv680A09uY2
	M6xTMebLGTDx8T+Ubzj15jtNhLcovhcBxnN+fPkKYKfAC1jsQ5hKOkBovNHulrpbOWft9lFNu+UPB
	0n3nzan4zrZTeKGTCHatp+AhmcLHhssI551LlKdmY8N4anlQ9Rvr2cYvC5I2dldWacoj4WbHftF6z
	6y6vh8hWCuGijyztOADDXAsA/y/2CtRLHEDnrAwyiDtYfauuF5KKFbpLqYdbx0dgF8cnV4kR0/var
	12xZSSLQTb0Vrt3J3AKpbVRIrJ/dqWtvuO+f3/DG6/8T2q7dJcuB4S4zUGW3AbeSVdcvh2PRek0zJ
	Wzug1wD2vUpbCPdVk6jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4lG-0006aR-3J; Sat, 11 Jan 2020 00:36:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4kz-0006Z9-9g
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:36:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id w5so5473580wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=upPg1VmV9Btab+DMy1GA5Ke0vGa3h3LTB+SNHHceH3U=;
 b=n3H3cEqp5zg3m/V+EhIx/4SCvJ4yV3nCl4cXoBxUYkxgcH2laseQzd0Xw72Ube1pIv
 IIDyXhz2vRSFhSOyGlsN2xyVdiVL6PtXWwDl+oa9M0550SXdNCChm6tSUsqrkBv73O4J
 3dwuUT1weou+LteoBTJvxyf+9Mi4ykuJB0f/RSIEFYiqLTtnwGP/IPMDMDwRQQmLgggN
 FE926vEqSX9y4nyzcNX/HKF4ZSeoeG0Ulo6ov6WMIM1qEBpyeH5zXImwBzAjHd8wQ+Eu
 D0McL/Rh+jucddqlpmGm4LZ8kKD3CV7sSjw7r1lJTQshuJA9QdodDam8SYH4azmPwjIt
 RkQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=upPg1VmV9Btab+DMy1GA5Ke0vGa3h3LTB+SNHHceH3U=;
 b=AP4u7fidk261nZlbdGXzS7xsk0ZVJIUZBiI7sJfmfFEPBr8SjNPBx+V5oYdUaEqCmu
 GX1mq5ty8CquM/VjMtZVmydM5zSJFT/VOw3Vy2bimub64JLhRhPdRhI7Yr2VOAYPEMO9
 4nvQ5F/V46/rmfCFoaPbQwZh1nzYEdAe2vxJIdj8ke13jctwY8+dTV9W5fkKyq3Axc97
 p24PYFh6JxJzTpe5p0rc6UxLi6PwjoAZzDPYcrG/e6acRFa5YsWxQFXHSee8/RET29ZZ
 PIvVIgUCAiyz8GcEeYGuR5HxAl+MzubNvthDUPSZ/lgtsCzSE4v5liR7oUKSZ2S9O9zt
 TIIg==
X-Gm-Message-State: APjAAAXjJfl9eiMcz+qu1Ge9FPQRX3UVfx2aT8on9uVP7WiX/DfnfoAJ
 iI7zzveVhDei/NJMpqt9Mq0=
X-Google-Smtp-Source: APXvYqwkIjqCN49vn+eV3kVECprsvX9UkysvqnA2xGcX8uUwiUx3fUsyce6AV3TkoFdmSeMAcxy9mg==
X-Received: by 2002:a1c:23d7:: with SMTP id j206mr6687362wmj.39.1578702958673; 
 Fri, 10 Jan 2020 16:35:58 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id v17sm4053740wrt.91.2020.01.10.16.35.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:35:57 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 1/8] dt-bindings: Changes for v5.6-rc1
Date: Sat, 11 Jan 2020 01:35:46 +0100
Message-Id: <20200111003553.2411874-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163601_338219_389D009A 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.6-dt-bindings

for you to fetch changes up to 720ad00eade9d08aabaf7b130fed1817252badf5:

  dt-bindings: memory: Add Tegra186 memory subsystem (2020-01-09 19:11:26 +0100)

Thanks,
Thierry

----------------------------------------------------------------
dt-bindings: Changes for v5.6-rc1

This contains a conversion of the Tegra124 EMC bindings to json-schema
as well as the addition of the bindings for the memory subsystem found
on Tegra186 and Tegra194.

----------------------------------------------------------------
Thierry Reding (4):
      dt-bindings: memory-controller: Convert Tegra124 EMC to json-schema
      dt-bindings: memory: Add Tegra186 memory client IDs
      dt-bindings: memory: Add Tegra194 memory controller header
      dt-bindings: memory: Add Tegra186 memory subsystem

 .../memory-controllers/nvidia,tegra124-emc.txt     | 374 ---------------
 .../memory-controllers/nvidia,tegra124-emc.yaml    | 528 +++++++++++++++++++++
 .../memory-controllers/nvidia,tegra186-mc.yaml     | 130 +++++
 include/dt-bindings/memory/tegra186-mc.h           | 139 ++++++
 include/dt-bindings/memory/tegra194-mc.h           | 410 ++++++++++++++++
 5 files changed, 1207 insertions(+), 374 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
 create mode 100644 include/dt-bindings/memory/tegra194-mc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
