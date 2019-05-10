Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803F619CCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzFoEhBWb9Z1Ee7nWcWSdJ5WsWf5vFzIL3af8SUUhLs=; b=ON/E4v5/zoClgr
	b47aLLD/pBU2fSdFTGfvkB7OUh+6mkvD/r1bt3dOiuOYcFPskg+cTpQcJmOW8qo+uWFM9ypvVAqo5
	uSQSbe2PkjZjK0wdBoaiX1UyJnb1W7OxVlUGCKGILWmu093AKwOT8nxOu2UPQ0q5ZUuvXbwwH/X5I
	4Z4MBq7fugrboCrKTDh2KEze4SII1x3OrM9Fxf2H736rjX0URLiAuNv3U7WwHZuMO4Ns5RylAIPzv
	30A8Kz1LmijXLyj3eVb3pFk/pzYqtaaz/25kMnoS611PRnJcLiIQQ6mhxTSPwZaIVtEaT6KXIrVRc
	nj4LZDjovo4oV5YLLLnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3ow-0005an-Kz; Fri, 10 May 2019 11:36:10 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3oe-0005OR-7V
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:35:53 +0000
Received: by mail-wr1-x432.google.com with SMTP id d12so7465450wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 04:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=//iVBOOHc9TqM1L3co+mOMGbYMsc6+9X4iK1zTDPBHc=;
 b=kbnyW3OeD2h2N5VTb+twEh/EtyCC5kEin8Rr5H8WKQ+jb7u4SZA3JE0D1L/FYgicw8
 9jMKdz6iZ6z70XVduliH722/B/SusXP2TK11kgJ+XeiPYgv12OZkPmVHFNw3bsVCusVD
 ZUftcLl6I74XCtUH0MwmkEljTTpnARFTVaxJt81qoT6lyHLbx3HIiYvJtO/YGHka4zKs
 v2NXecYHP280i5nX9BpmWbBmj48Y1GZEGaOoOvcqr8LA6iLf40bOz8YFZHrEU0/0r1n8
 cChmetZP4qwt4x78aPELgCPUvpnnH/rH0THObRMjhD8NOnQ2jqKMODPPNcc50hIqmz7X
 KPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=//iVBOOHc9TqM1L3co+mOMGbYMsc6+9X4iK1zTDPBHc=;
 b=g+MCE5Ka0gKg1OgYUoALXO/3wvxwxfDvw9XBWACimWV1KzYsi5CEKYZ1wxULqliWb+
 Jip9EnobXOcUAUY6f/W+RLpxYYqnEOHq8hU59V3e1rby23Qy1dHiGO2Z4p6pGT6nkACn
 gCBMfQ52YEflKwh5ZBkJyfSWzTPOvBPSpKdHH3HP40nzYjzlMTJ4sl7tMzDkeYF0jDut
 8NidZAs5ctjxJTXj780jK+8RmBidXOF/WbWz5g5xwM2nmKSk5la0YwjBb9DT6U0HJkDh
 ykozJhXXHVUz3GmzCWBOEPHjOFxUzLf1YAGF4EeCC6eP8VIpY/KSNu8udJ7HJX2pvRcU
 FRew==
X-Gm-Message-State: APjAAAXH+QoPt2eB9N1eigZo5qmRFq9vSYIbsl2RD+/VCwDYo7ipxlAc
 rYJ5L+MNkdLVJKB5fIXiW0o=
X-Google-Smtp-Source: APXvYqzqR3dalAxAD4FQFC9rRf4MAqkKoi4x7exNR7vV1/72Son/ThfafFYEEMdEXnWpGTbFeAT/ZA==
X-Received: by 2002:adf:e44b:: with SMTP id t11mr7552779wrm.151.1557488150525; 
 Fri, 10 May 2019 04:35:50 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id b8sm4407759wrr.64.2019.05.10.04.35.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 04:35:50 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 2/3] arm64: tegra: Core fixes for v5.2-rc1
Date: Fri, 10 May 2019 13:35:45 +0200
Message-Id: <20190510113546.15698-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190510113546.15698-1-thierry.reding@gmail.com>
References: <20190510113546.15698-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_043552_265902_C00B5E67 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-arm64-soc-fixes

for you to fetch changes up to 2e988a83874b689f9e095cf60b40f1a8aff6731a:

  arm64: tegra: Select ARM_GIC_PM (2019-05-08 14:41:25 +0200)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Core fixes for v5.2-rc1

This enables the ARM_GIC_PM driver by default for Tegra in order to
increase build coverage.

----------------------------------------------------------------
Sameer Pujar (1):
      arm64: tegra: Select ARM_GIC_PM

 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
