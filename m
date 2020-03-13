Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C21184D22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzU6LDcSNh2NxTovqgoMJVEEwuSegmekMnE1sDscDTc=; b=JcDvnM4A7L9PD8
	2flVAHpefdW5314/mUx6zZpetPeTWhHEEGuvEliD8iDRXQl0N0p/vfRH2v4l68BfKPVlfWEJuV4v9
	ZX6SSpAPic5SQ/AkZmVRN5ZW21smQVdeXEukDYxBDlXE/Ijk4bAzFyeDsGX3lNkn5cgNwvK2cODdZ
	hcqnuDKMItF7ApUd2dL/3gcEwNF2emzxDJlQ+jrTiDnB0krx1Z5eF1rhs2rnU5CqHmCD/gygx344w
	Vfai8zNcRMLowkOQMahXhB8d5FD4zmXI3SjfJZ40MO9X8XrGiBlmz20UUwgGGsFv3CA+BJmYwQ2CH
	X4H17PiybA0aOqUM8rnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnfQ-0000lm-PK; Fri, 13 Mar 2020 17:00:12 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneJ-0008J2-EC
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so10776024wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HxGHGn3tB3D32yQFzRW5y1d93PxBfuWUMuBxygRtPfk=;
 b=DZgIf698xz8f0XnKqu6AcP8/cziZ1JZP9pk2104IYEMLfMwy6VYOP6TTa3X8HCJ8y2
 +SU6wxMpF4y0n29PUO2qrdsamzcyF0xwTl4OVziSnekDyADApTHjDxGLBDo2LY91P1TJ
 mCkjk4adkWs7LVOGHo7+CRSnRj22WGsOfiGJ9Zr5N5ic/o/IxvmMnLZZlfDO9SsJ8sHq
 xmHds67eHQwgOFUlOXHq4m8sRq+TkXTSkeZ+ivZsYcakpT0ykGz7v7nYSgNbBLywvWRL
 9TU4Ag1Ib6PhK5yWS0wP/knRoMS8sCY1LS2xMA+rCOzny6wI0iQI9J5vehSo0kDEOQ0C
 8NIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HxGHGn3tB3D32yQFzRW5y1d93PxBfuWUMuBxygRtPfk=;
 b=FnqgRrsiYBL/T9qyxVR2R7h+BRqh1mtS+kyoTMnweHbuGBZr0kuXutGZ4oNfOFedRD
 h2BSovUZBGiaNzPnVc95JeZ1KdP2JBU38EeNT2+VEsFQLuC7VUIyxeDAwEaew6Jq+Kn/
 CTLPTdMYnAKBDnTqypL4Lk6SmecK45BbM5/G+LvF3mg+vUzwMw8h9T1nM+tOkd/FXH0N
 LycQBLNzzyMkFKwlGUp8nMHjBWZ4JPrFWBexOw9qKCu4WySeqFGbXMurE1ewzhYgMmvE
 TrumzyNtUQCWiRZZvC+eRfUd7iGNz4ojXPERjuOhupygNTUqYUKXx4B64zwzetKBsf6R
 Pjjg==
X-Gm-Message-State: ANhLgQ3CC55mTKdL2OMM9xgmnevcns2/DuNhRba9pef+/6hxwYYrwRbT
 3ZVCuL7U7vh+wxV6Iz6uRYY=
X-Google-Smtp-Source: ADFU+vv/jM3n8wXmOoGLCXeZk5i1ZbIXfRterX7TTOiOMv26DvmAtXr2nFT+UjIUAho1xA9ot0YeJA==
X-Received: by 2002:a1c:e442:: with SMTP id b63mr12050983wmh.174.1584118741447; 
 Fri, 13 Mar 2020 09:59:01 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id l7sm9001198wrw.33.2020.03.13.09.59.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:59:00 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 04/10] memory: tegra: Changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:42 +0100
Message-Id: <20200313165848.2915133-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095903_570211_FA8A72D0 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-memory

for you to fetch changes up to 141267bffd1dc19a76e4d50e3e4829f85a806875:

  memory: tegra: Correct debugfs clk rate-range on Tegra124 (2020-03-11 15:24:16 +0100)

Thanks,
Thierry

----------------------------------------------------------------
memory: tegra: Changes for v5.7-rc1

These patches contain fixes for EMC scaling debugfs support on Tegra20,
Tegra30 and Tegra124.

----------------------------------------------------------------
Dmitry Osipenko (3):
      memory: tegra: Correct debugfs clk rate-range on Tegra20
      memory: tegra: Correct debugfs clk rate-range on Tegra30
      memory: tegra: Correct debugfs clk rate-range on Tegra124

 drivers/memory/tegra/tegra124-emc.c | 5 +++++
 drivers/memory/tegra/tegra20-emc.c  | 5 +++++
 drivers/memory/tegra/tegra30-emc.c  | 5 +++++
 3 files changed, 15 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
