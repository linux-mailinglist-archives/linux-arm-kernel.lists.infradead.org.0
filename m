Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4028913606E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 19:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fN0ynwAT/osciM3alCraMYhgQCaWKmXOsXOQXq0NfRY=; b=OF3rhjQKIAUFVc
	oPYbLBDhYrFBibJ+Huk1whKhuMAAtYfCGR0IFgaiNIM22lcvgRw5X3b2XL84DIBiGX4QCbVDJ3Vtz
	xQPHibCzHwMJlFDFYUe8dI3zTb89B7StjnGvcBFgagdw0lC8wnCJoxAcevJ4/vEz4/q14vDyE6naz
	DR6t+KCl3PQ1jO1EhFWNP3s4G6I4D9wvSwK8txernNdOfNGJoAiR4OTVUAdI46RxCYnyS/DCWDvto
	1Pyut3kPL5p39eM9rMsT/EF/m7w186S2DoR8NDaZBIAG7JqxrADlV3qZgGBgwMpMbOvrPLvwIQ/Gw
	2931OeLa66UIHF+l33Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcqz-0002rd-BI; Thu, 09 Jan 2020 18:48:21 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcqq-0002pM-Cp
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 18:48:14 +0000
Received: by mail-pj1-x1043.google.com with SMTP id r67so1509560pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 10:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=AFKnbyhyZNGBZVJ66dibHIBX9df0tTokbpfAzp91zxg=;
 b=Lw0ZM7JFUdMV6yT7I4F1Pt8oFDH5ds/xjWqTbeQ7fK+MBVghCa05WNYVhrkbuHr4gR
 D4j5nsO8obxCSS38jHZuDKA45B+GWCEXgGuodhfD5lE65AqFnhGbjSre9LUb3qnBJEiV
 2GX/FWBRHFKbsbe/7EkEHo8XCHNJwOFXLkgefMaz9MIGShm3jEG+XKWwzKU3f67Lu9HT
 wOksY0ywwDM5xfnR1a5E8+hoDGaob6BVWGgj7onPQWmv77UFq8MTxNJWNJK/VoRsYqsT
 grF9LC1MMoLOZqzyJ03Xt+0q/t4l6s/0bbF3eT2PMOAu+g1qZqJpuoL1H9us+/VpfTw2
 Dv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=AFKnbyhyZNGBZVJ66dibHIBX9df0tTokbpfAzp91zxg=;
 b=YMgrz2E3jN9hDPE3el2ruUS59/z2g5CWc8RZ2p5MZb7VzNdYEJ4mbrUD+4v/vZjemA
 UfIKzLTHYbWcAaKjJHKdLLASvewPByD0ZdIMfI7MMeDidFqC0hKMj0DHnPdoLSZpkfzV
 uesGTu6Ug3iIwMV7jxv70EuG3K+kdsyA2UHiCDNt9ZXqLm5dnUL7XYPUncJkfwfgsK5f
 WM9AjwV3VcRAeyFoG0HW4lMIoFw9WQBECm0ufA4sAMglhJhAJcL92QH4Jpx1Qgwxv//p
 Rvs21LM2+ORxO5Bv/VZe+IvbhcP/5JJmxw7j0t8cpR2ueSpYDy1+khCpf6U9jsEI/nAm
 1RJA==
X-Gm-Message-State: APjAAAV8D4+EVan6/r3qernlfQtok4V6//o0Ryq2V500uOmRwokLDTdv
 Pm678vwTcIlcJf2qWWxsJqvbmQ==
X-Google-Smtp-Source: APXvYqzhhNhM4fKvpU+h5B8fuFhKma4joGE9R3gZUuxyb6oVyxScqS3M3fq9QoasYjHGpUGZXDF0KQ==
X-Received: by 2002:a17:902:b691:: with SMTP id
 c17mr13417643pls.254.1578595691527; 
 Thu, 09 Jan 2020 10:48:11 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id e16sm8248150pgk.77.2020.01.09.10.48.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 10:48:11 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: soc@kernel.org
Subject: [GIT PULL] arm64: defconfig updates for v5.6
Date: Thu, 09 Jan 2020 10:48:10 -0800
Message-ID: <7hftgoeaad.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104812_432514_7C71F653 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-defconfig

for you to fetch changes up to f8683c2abdf5129ec75d35d438aeff50df4f7208:

  arm64: defconfig: enable FUSB302 as module (2019-12-16 11:34:29 -0800)

----------------------------------------------------------------
arm64: defconfig updates for v5.6
- enable FUSB302 as module

----------------------------------------------------------------
Jerome Brunet (1):
      arm64: defconfig: enable FUSB302 as module

 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
