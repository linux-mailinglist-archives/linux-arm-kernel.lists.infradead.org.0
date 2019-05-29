Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEEA2D869
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JZwFebYOpw4hzYfgSQC4KuOhtQCnOETaS/iMmTwvHuQ=; b=WGhQQPwnMvmFd0
	BZlIj3C3i0IViSCik4NOMqOebPZ1svVB/5+8gJYKBoDA1un287ctYL0zt5imRrGb0usUrFWVWKFaE
	txgQ7J1OmHzh1ctUEL9XDUbONAHZ87RVO4Ob/vicAjnu12XVEqiSwwdHD52tWBJqKdpVKaXCHltZH
	sgJG64+PmO4n9f+jWfE2XRKLAq4dHpVFQwJUdXjT7z5rWaTA6RvM+BBdRacm6SGAlkcAZ8Sj01Ktx
	zlMbzeJzW1xYy9SJKfzBb9ycdEyIR09KieEU8eRa0QxrXfBdCtfz3sBpscuNfkV67OIrzlrgdLixt
	FY8SP3PY3iMXjxSZNjhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuSZ-0000nX-5n; Wed, 29 May 2019 09:01:23 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuSR-0000jA-HA
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:01:17 +0000
Received: by mail-lj1-x244.google.com with SMTP id h11so1665419ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 02:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=PljzixQYWThIkErgKnGvpssrXpbhz5VwVYiBTNb71JY=;
 b=mQgn1RVBE9pDz/5bwjrD2+9dzQ+xheYjUjAncjKkTw9HpzEIaonTht52eVu7PFZjWH
 KsBd6+xkWKWS1y9NRTBsPcLE9K+r7QQDfpyPjHyqsdPFcyERtaXvGuK7dm/nbMtwFJ7M
 mhc7BQZvSXWDE4/P69VC14XKyE4gGMtQNwjJnIVYkoH6gcDkUvFKIhDvVhyHyC4Mlfad
 n8fwHUE25EyaVmDnELr8ChE8Yc4TwSMd+xeQgTysiqZX+9vZ7nEymx+ZKjl+U2lZvtw1
 YPbNUdSwMo/DG8ifT6YPm7PFbTv6oc9ASFsEZDHSGfN4bpv8fUvlvG7IDSnretV/gZZr
 sApw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=PljzixQYWThIkErgKnGvpssrXpbhz5VwVYiBTNb71JY=;
 b=lHz8C9LRjThRfZfAiodvUECoTjufA1LrW2DVvbfhzNdqy+yNITUv8EHT1Ykli0UV3D
 aoKMnx8gxk8sw5FIN2nZE2sDludtqED3cFQ1tLosoMk7OraDCbn9SSdL503YO5Spvf6p
 cubMlROK5iYwomSd/ZOw6SqPbQpnWZSNH8bDm6QM2yKrlCE3j5KPUGWcfrgGe6/5i65x
 gz4v4PoxYnlJohm8VpqDGfVGIg9EpwxsnCTOn4LU2pwzR/xH5e2hkcqoa9B+UBzsxodR
 yPNDH1ghPgy2kl9+0Rm7e2sOuL95IpudSw3/fpxYOKl2UBIq6etcugHx1wW3St7RKBE+
 AqVQ==
X-Gm-Message-State: APjAAAUVik7SfydV8QPdBRYkJFw5gkWdpVOu9WPsxwUhrGWoEssuo9uj
 hBMvheUSMMxXa7jcqgzFJweF/e+tHq04HJGdO87YUEL3o18=
X-Google-Smtp-Source: APXvYqw9GstQef6RzDSHrhc0umspPuz+oKmdvUIj8ZAPVO+9c5OB9vIAgEYIe/YU7mf7wRtCZtyw8CRULk6BvyppdmI=
X-Received: by 2002:a2e:4c7:: with SMTP id a68mr48945947ljf.165.1559120472288; 
 Wed, 29 May 2019 02:01:12 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2019 11:00:59 +0200
Message-ID: <CACRpkdbFS_Kp1KrV5iO1Qt4idBjmKUWOxBDxvS6cCwSf2Aso1w@mail.gmail.com>
Subject: [GIT PULL] Versatile platform updates for v5.3
To: arm-soc <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_020115_716949_8EC53E7C 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC folks,

here are some nice Versatile platform updates for the v5.3
kernel cycle.

Please pull it into ARM SoC!

Yours,
Linus Walleij

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
tags/versatile-v5.3-armsoc

for you to fetch changes up to 153969fd952d81ab8f57574f9be1a90b0a0fa791:

  ARM: versatile: Drop CLCD platform data (2019-05-28 13:23:46 +0200)

----------------------------------------------------------------
Versatile platform updates for the v5.3 kernel cycle:
- Drop a slew of unused CLCD platform data
- Fix OF reference counts

----------------------------------------------------------------
Linus Walleij (1):
      ARM: versatile: Drop CLCD platform data

Wen Yang (1):
      ARM: versatile: fix a leaked reference by addingmissing of_node_put

 arch/arm/mach-versatile/versatile_dt.c             | 164 +--------------------
 include/linux/platform_data/video-clcd-versatile.h |  28 ----
 2 files changed, 5 insertions(+), 187 deletions(-)
 delete mode 100644 include/linux/platform_data/video-clcd-versatile.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
