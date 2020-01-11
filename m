Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B418137AB0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyGox2eef1yWWJOR8Lfz2AtPETN3sJNQbX4/V5F6BmE=; b=PDdHoKL7SWwUY3
	tUY8+YXGqOGHhc4WdpPz8bcHliVjU18BpleRmlebWLWkC4yJ58ZbCex/X70bYav/N0OWxfLHsn55C
	HKbEvgaIh7D7fk9HX16eQSMd8sVMLk4jJeTsjQT9tfsH1JVa5PUeKVpdXqheQth2zT9g/lP1yzNYV
	G0AA8QLvwnn5SFH/TuSMxcR1qRAVfJkFGyX/2NVZm4vyhTRwmc+tC8OVCcZGd8CDx9/FfTQACnNB7
	zQqIbgviJw9/oTYzXJxRSWnGSBIZ/N1U2u5KN2LcyEGKjAdyAgZmmhNgKKDH1K3dKgwR/ZFf3R1RL
	32yBmjyytQGvqfPPUDzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4mb-0008LB-PK; Sat, 11 Jan 2020 00:37:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4l6-0006dX-59
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:36:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so3841106wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WETybkijExRZ9cXHgAEpL/eOLOzuJWTx923TC6RLzm8=;
 b=sUPp3LJ0WPvTTqt06OBr20FilZQyjipZ4wSiwxUbN6wmpjVPm/60aoyXN5hbzTRpr4
 /r0379qup+75x2m5bzzaHwcDibCcjqoxHwoEXElcUUEb5I6pdzRRXEpSypnlOk2EPCei
 4iA7bfgj8Akxkyg+nOWLjDCwCiPaY0Ubq29kC8zdCV9l6MQ6YSarlUC4kHLZErk7YKUP
 0H0jP4szdj7gZSA9WZoAfwiZxxJFtjrqErtt9dx2kRNqGn9kpTwVaXhud3wcBi3zb3et
 TNelVlVyCTCEqjsA0v6eNqKX5QI9lbkW+Yrb/rs18lmhSFUj41Mz8+OnyxiYuvlEjwUZ
 oocQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WETybkijExRZ9cXHgAEpL/eOLOzuJWTx923TC6RLzm8=;
 b=Y68VvbWmLbNjaiLxeCwTNa1qJUmhTpXe7D5yTU1DjQSCjD5DaejpuzXB9kfUgjmRXy
 z+89+YMUp2RHuO3AkYpPHJL9qVAKNFDQdbtns/3x0s6GNPob786iY+fyhiq/JUomQvKc
 hzW4Ng8kLDWe2VE7Yxpn3shJDHELXHABEJwAyHLcc/Vy2FgGW5TC0VvN/Mdraoyppnbu
 xTMPGWVF+QxwAU889k7ZB4khiSvxvvAVrYR067iCHOWQEJX56/KiDOX75s9r2rhOmIpd
 FvXlvs0SFdwLVUHfcSa7unz19px8jIN1Y6ggzmyRKoM1/QS0lbQt5dIu9FcYlsff9rlX
 nsXQ==
X-Gm-Message-State: APjAAAUIt/HgGP2fIv5VerkmHxV3Et1+Pvhxqe6OAwevXZWazGm3mujr
 HkS+2pzVXW18iZy+LPQXduI=
X-Google-Smtp-Source: APXvYqyGXPfvL6mqqW2Y/5chjVHeZAZLm3I0XGdY8VpnAe+o7a3qy6z5uPpDG5zvoFN6E/apQBMa1Q==
X-Received: by 2002:a1c:7d93:: with SMTP id y141mr7145622wmc.111.1578702966905; 
 Fri, 10 Jan 2020 16:36:06 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id p18sm4143041wmg.4.2020.01.10.16.36.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:36:05 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 6/8] ARM: tegra: Device tree changes for v5.6-rc1
Date: Sat, 11 Jan 2020 01:35:51 +0100
Message-Id: <20200111003553.2411874-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111003553.2411874-1-thierry.reding@gmail.com>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163608_374692_29579A8E 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.6-arm-dt

for you to fetch changes up to 834f1d6cf3647e804e7a80569e42ee7fbee50eb1:

  ARM: dts: tegra20: paz00: Add memory timings (2020-01-10 15:41:54 +0100)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Device tree changes for v5.6-rc1

This adds memory timings for the PAZ100 and does some minor cleanup for
the external memory controller device tree node on Tegra124.

----------------------------------------------------------------
Dmitry Osipenko (1):
      ARM: dts: tegra20: paz00: Add memory timings

Thierry Reding (2):
      ARM: tegra: Let the EMC hardware use the EMC clock
      ARM: tegra: Rename EMC on Tegra124

 arch/arm/boot/dts/tegra124-apalis-emc.dtsi     |  2 +-
 arch/arm/boot/dts/tegra124-jetson-tk1-emc.dtsi |  2 +-
 arch/arm/boot/dts/tegra124-nyan-big-emc.dtsi   |  2 +-
 arch/arm/boot/dts/tegra124-nyan-blaze-emc.dtsi |  2 +-
 arch/arm/boot/dts/tegra124.dtsi                |  4 ++-
 arch/arm/boot/dts/tegra20-paz00.dts            | 46 ++++++++++++++++++++++++++
 6 files changed, 53 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
