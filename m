Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836D9137AB6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 01:38:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXvWGXPI1aNeeu2chXBTu9pMaRCgncHdyys0Y0MyySo=; b=pAafAzhCTZDzK/
	VgzdBnuyfuj4Eh/7/p8j5wLlIe2YJkNDTimpd33yDp1bSB9nLLFO8WvPNfr9lkUxUa10wfGIVh2qI
	KuKuOGDckQYrAaPHfpr4t4DfGLrM8LEkmjuxtKvASFmOpoGpVMhx7O+DjiwCmoDcZny3myA5q6vzV
	r/JmNEk4VObCWM6u/UrZa3x7lIFuU+cI563XfXRS3u2cnbcWynyklUuYnMM4bkCzc0ZBWvEWgBoOM
	jiQfZXZNOn4i/9gLIr/Lhf2RsCNy5prtkEBuAPeAdviJJiuJHAPCsWHbSb9j5dQvK/lkUTqa0Amat
	saT4v15czzKUpVSEE+TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq4n2-0000Lf-T8; Sat, 11 Jan 2020 00:38:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq4lA-0006hn-3l
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 00:36:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so3846661wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 16:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QJ/kMGVDSllyNMBMZ6FICn2DJm9xwwWpuLKmv3girkw=;
 b=nqn0/JTQ4Pral6SaL5i2zIuv4kOqmhZZTUTtHAukh9VoFN92dnDCpM2EavqOH/4itj
 4NGxEOvrvs+XiHFOGDkZq2DeHiSlxAX14ipeLZ/amiNcEvHypiNOinr2SARzsOvqy3kC
 fOa/aO+a4exiY/LZCrISoo0t/h/CLUOiBU+im8pzR+w1h3hWxyOIS1fy7nAKz9aZ5fAm
 4h6a8fGIAtbuRUf79EB680hEgJa9FTSM8eoqiUl6nchqV/ZaKTXutkRUHvwYLKjs+4GM
 P6dGo0VPbAzz5dNMz7+blP9UVA1hTaKGBnLHh7LyDjd5Kgvi9VRULv/3ens2O6cKIny9
 jd2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QJ/kMGVDSllyNMBMZ6FICn2DJm9xwwWpuLKmv3girkw=;
 b=tgd538GG+QmIZOXIYpd+mE55eIszW8j7lG/bBEodNKeQQ0WO4Z3iz9n/Zvf2AQYJZh
 M9qDVr3UBY2IukDHiz971n3/klj5PTLPlr4oCeqcA6OB/7bezmfzs0kei0Cd25DlpJ2X
 4Mg+Dg/LGRcqK2QIeNDrI6ko/5BMhw7LfQvRxwlNx/H64iqfMItEQV9plqltLpOX//zS
 mgfsSBzuhIfHu4hPXTFHV1W5kuJpVd/4/98BB3Hx0qohNM3vMSapdu9vDL/jiZNbaNEy
 rHTSghlgmq6ZHsdeTe2wxzUc2CwaQKxl6dr6oauFlz7Cm6IIuS4Qe8Ee19eo/sa8d56v
 Cv8A==
X-Gm-Message-State: APjAAAW0+hjUtw3+UoHm0KlZvrpLrJ2YGwe2C1GbMxSrLZUnHjwtv7NC
 Kqa4zLsFOfbFrnAgKlflfP8=
X-Google-Smtp-Source: APXvYqzQhxYn4MDQYfkvzlfpMW3Ab0vNF7NvhJB8OLTdqYx34ccECCEeKPoI7OHwXsvu4WocIGXg2Q==
X-Received: by 2002:a1c:4c5:: with SMTP id 188mr6935237wme.82.1578702970469;
 Fri, 10 Jan 2020 16:36:10 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id i5sm4181787wrv.34.2020.01.10.16.36.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 16:36:09 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 8/8] dt-bindings: Changes for v5.6-rc1
Date: Sat, 11 Jan 2020 01:35:53 +0100
Message-Id: <20200111003553.2411874-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111003553.2411874-1-thierry.reding@gmail.com>
References: <20200111003553.2411874-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_163612_175272_34A8B2B9 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.6-arm64-defconfig

for you to fetch changes up to ddb8840d2777bfca7c9ebc8c24ea20f9a37145ba:

  arm64: defconfig: Enable tegra XUDC support (2020-01-10 18:34:14 +0100)

Thanks,
Thierry

----------------------------------------------------------------
dt-bindings: Changes for v5.6-rc1

This contains a conversion of the Tegra124 EMC bindings to json-schema
as well as the addition of the bindings for the memory subsystem found
on Tegra186 and Tegra194.

----------------------------------------------------------------
Nagarjuna Kristam (1):
      arm64: defconfig: Enable tegra XUDC support

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
