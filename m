Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDECE15A884
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OfbCVLmrnwTJG3okKFbI2DkKamuQ6O3WASl5qfAyBk4=; b=hiXEltb1xGopiG
	2W9DxIOPKHyAJxVOuSi4vWxQhWTSjmITaHaN64/gejHWSL/9LXo/EOhSp3KOJG6DOdFfgkA9mLS52
	lzNruEeNdHM3mVewL6a1heW9og/bIgdMleGDDmzU/qd64jQYrnazPwpSi8mVOXm9Ue1FL9W8Eo9I+
	fgF6mTnw8P1THL//z/z826i1iVNbYh5+ScZEwEDFSb00VhZe5HXlGQRMIX5vbP8dLvBo+WFENhnTC
	P9xU3gMWs1zYpcuaw6+MaNxKuGlHw0VczLqNGbZ7J/T4066WpJ7kkAWR06GVms+YNvNbcKx7mvVGs
	cX5g4vzIr0Lc+r4hz/QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qjH-0008Or-W4; Wed, 12 Feb 2020 12:02:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qj9-0008OQ-M3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:02:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id 185so1150037pfv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 04:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xw8F0MAhPNgiUaS09840sx7LbckyTA6PLEiym6zDUiM=;
 b=aj694rFuab2x87PC7uIkm0Vi5hbAPJu/MyS3gdm3S1KSApSLXBigQNZ3dfjSWCIdqm
 +FRDNLKadS/8jrPUdb8pO8bIX+Kfd/AoZFehzmw+ACRZBYQFku4f0XU5u6L3OA8Jv+HT
 quNBAhLqeshXbSNY4uRf/Qn8Wlvp/7TQR8vg5MzU5MKvMkuzidATCLAaEcdZ/RZAQYLZ
 dHYraqkUFl+7PZosNbZgnTdwjxH4lStisowuZd3zylIjpquuZKS0PgvMiXUv/oaG+RVa
 2m/rYWDqcNDYglWXahBYV/T2UuNwukw6TSz4DwS5JThPQ9v2aiDpuLlYGgJOhr7B46A2
 fosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xw8F0MAhPNgiUaS09840sx7LbckyTA6PLEiym6zDUiM=;
 b=MDLAyJAzCb5Xajfdx060f8aOZjhL2QDNBD/uzJbl0x6A6g5ksEwQB0IEwBtrCXrYpt
 IszEHHXuDy0GymqAgKQ83PuPrnBT35FqgyUBKs1N70Hs6b7jyJtT4GKtMZ/3RL7dsbOF
 +lL3AvDh6qqpoVqoaW4MtDw6dOmA2ZFx3hkmruk0698JV/1+j2UhuisODBKSTekrfQqU
 ibBJcWIsubUzvnxMG5YQAMlYOH2+gF/lB52SFnaG6ysAKHvT/IfzwLzYJZugrch4iLqM
 M3i+oEwQ1h1rEAqJejUHggLJgXa/l+wcqVD35YSDOR4SaxKNFKPnG+hMww+2VwCRjnxP
 xwyQ==
X-Gm-Message-State: APjAAAXj4rWRculMZWzvp0YJhY+plts24vMV9Q+f4Cf4Z0HLU1IkTCFB
 um6NU4dkUcLbs850/aaZqMM=
X-Google-Smtp-Source: APXvYqxU7IDMf52DUiq2vDOOz2xZ03U/hrRAqWXLxJtcTfAc8f8ik69Va9s1lkd1Y4mKxnI6Sd/Xbg==
X-Received: by 2002:a65:5242:: with SMTP id q2mr11764466pgp.74.1581508966796; 
 Wed, 12 Feb 2020 04:02:46 -0800 (PST)
Received: from localhost.localdomain ([45.114.62.33])
 by smtp.gmail.com with ESMTPSA id b24sm682448pfo.84.2020.02.12.04.02.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 04:02:46 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv1 0/2] Add FSYS2 power domain for MMC driver
Date: Wed, 12 Feb 2020 12:02:35 +0000
Message-Id: <20200212120237.1332-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040247_743483_D609058A 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patches add the power domain for MMC driver,
but somehow the suspend/resume feature is broken
so any input on how to fix this.

Also on similar lines I tried to add power domain
FSYS for usb3 and usb2 nodes but this time
it failed to load the kernel, so how can I reslove
this issue.

-Anand

Anand Moon (2):
  ARM: dts: exynos: Add FSYS2 power domain to Exynos542x
  clk: samsung: exynos542x: Move FSYS2 subsystem clocks to its sub-CMU

 arch/arm/boot/dts/exynos5420.dtsi    | 10 ++++++++++
 drivers/clk/samsung/clk-exynos5420.c | 24 +++++++++++++++++++++---
 2 files changed, 31 insertions(+), 3 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
