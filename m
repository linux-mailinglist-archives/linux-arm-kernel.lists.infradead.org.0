Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9984EB7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkNoJny3xbXEkaSm9u+ZBimOXhCeY0TpNSykYmYi0fg=; b=hsIOxina9jyn6R
	igkpTdcY71lqqq6EoERXUdAicqFlNzzfHgJOL2TTk7rcfEGYW+3AgIBGu3c/Tvbpb4JAR9669/KPf
	rWVCp9UH+CNmVT6ZmvU6ColoJmEI2i0Xqh6vnI3DxBmTQAYqT0Mo3ly0hgeVGLds7+i+Qv6fjtmA+
	3II9WqzrhCY9a85p/gps/DF6uAyV7wJ/1/7UEbMmT7Nik+m5gBIGFHbTo3oQJSonev0YIVVT2bpOz
	YUPwa+tgGmZnT1oHois2jrRdTWf3pwXzbPIu7oIEKCBeI0ubkB+Gr6CFbMOoy+7uX228uMyHiyOCP
	D08CFSGFzveIckW08BfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heL4h-0005RA-LB; Fri, 21 Jun 2019 15:03:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heL3Q-0004XZ-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:02:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id x15so6607092wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z3UeGamx7c3i5DciUxpfKXFQToGYb6ITzbTJ2tjH9HM=;
 b=rQoopX6LnMVcryE1dU5rVYgemXNJgmzk3+sClBd7FcWOeIScFvWP6EM20KquW2iLc3
 e+fXk+Yvp5SwnT8iihBznhZ6bMHZ3DZCX7rJsKdgX6HhwoZp9M4JFPIoRXryiYyuw1tQ
 OsZp7xyNRcn5xFpW7aHglr2h2Zw+WfR7ZIwPqog6ITNOGJl/I6/nGuRBi79RvgU6w9sV
 l7vA55ycc33DEAB836icliZj3LJf6lhyqVOdv+9ils1vRHqhgvC5qZgLM3CgHEbs3F/w
 TrFAZpUnkNe3snB01fKHUPU7R6jA6fJ9kixHw/Cku8LAvJg8jPnHjstfF4Hl/7Z0uv69
 CW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z3UeGamx7c3i5DciUxpfKXFQToGYb6ITzbTJ2tjH9HM=;
 b=HS+cfXeG/aC3KYruZxyfphEg4XexAAE87Q+2funK1SEFUpZwhTqNaJFDnSs6Fyk6LV
 I8Eq6lkyY6JLVbgjJMjm5xY4/U4Pvr6XES/qJXAASaEAabz4Fx8C+wgweOl1Z2sC8buY
 tEo2DG/XOJOe0Qx33XMYFYKbTHp9mRLIEahr4ZvIOxnQMrM+D495AkzZ6O0Oa6fvxAaL
 dNd4SUV6IEZPD1/xC/Vd1GaEPKPjSgKrg+sKMtC3JWz65ryjCNf2o49DLrTVKwqhXy0A
 vtk8j80DoTLd2U2A8/g8oAhkwfddE9dfnEZrz2E6XmiCesJDUxbXT1JEPVIr6Il0zb14
 qwEw==
X-Gm-Message-State: APjAAAVaBUEs0Y+fIjB+PUUM/EZCND/d1CHcLUKUdvHck6ZrzbtVN8D+
 Zyu56H6C15AcnfQTFmy4aME=
X-Google-Smtp-Source: APXvYqx3VCD+nt0wDF4LLAqtpSJToQRhAceziOok3sr5oX+Y1epf+0oK6xiMhICzMDnXNvoJXiGrBw==
X-Received: by 2002:a1c:e0c4:: with SMTP id x187mr4270395wmg.177.1561129334499; 
 Fri, 21 Jun 2019 08:02:14 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id r5sm5717363wrg.10.2019.06.21.08.02.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 08:02:14 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 5/5] arm64: tegra: Default configuration changes for
 v5.3-rc1
Date: Fri, 21 Jun 2019 17:02:06 +0200
Message-Id: <20190621150206.19037-5-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621150206.19037-1-thierry.reding@gmail.com>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_080216_467658_FAB01C0B 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-arm64-defconfig

for you to fetch changes up to 01d6fb565b4a7858af1699727f25da2279d75deb:

  arm64: defconfig: Add Tegra194 PCIe driver (2019-06-20 13:02:27 +0200)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Default configuration changes for v5.3-rc1

This enables the INA3221 power monitoring driver that is used on many of
the Jetson boards as well as Tegra194 PCIe support.

----------------------------------------------------------------
Nicolin Chen (1):
      arm64: defconfig: Add HWMON INA3221 support

Vidya Sagar (1):
      arm64: defconfig: Add Tegra194 PCIe driver

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
