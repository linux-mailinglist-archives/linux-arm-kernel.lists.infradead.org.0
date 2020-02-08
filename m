Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28481563F7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 12:21:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jTvislq+/lrgiHb6WfEyRz5zVIFuhRjU2zJVkRelYVU=; b=foOhyv5lwoYAds
	VcrQGUst+EJbgSVDmbX2I1gSe+nVSrdaEqCvOHtntcJhdaZothyod3UGd2Kkm3f/TepPJssFpGJ0J
	tzLpEZy2d319v8z+uwwBRrzrMe9qX0aU7Mn+4PHHwQMZHcWkYcTUago6YYbJokrkJUlRZCVzf78FQ
	nEHUPn4YIHOKO1dWayT4/ipoBaTzAQnxCYbdTf1F8znKdo9nMLrKyX/zzd1dY7863hKwW6QCaZOYI
	Y2NW2TDlvN3vN/slo54I7rfkXJaM+2BLSOA12fSn4dsoeTU1NK6bqq1VPAyS9+lopR9FRBj3Xbb1i
	gIG88uf9hmkuHkIZfNmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0OAE-0001Ia-IA; Sat, 08 Feb 2020 11:20:42 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0OA6-0001HH-GO
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 11:20:35 +0000
Received: by mail-pj1-x1031.google.com with SMTP id fa20so2061231pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 03:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ljpS3PkVVMGrf7RsA17UJi8czPEMPANgJ4hzQfBJIBE=;
 b=fXEJwVBl+Nx6n9uFdw+2qXi8608Wt3D+SrzgUmRPMlyQ5bQzhdLV50s3sJCRTbUpnF
 xYIZ2OqdnMpf5WxmZUFRcvp8SMW1fJelmJuhUDRJqILH2p1662AopsEZBd9FxFDUI3a2
 SHzx1D3BRRVilg4Gyqcv4EJvq1wfFF6HqGtBU8CleysRIphvWhm+5StZTdyRfS3Y/4CW
 totiPq6gd0ioRgmqLbv1gi7jpL6zBkAng8NH2O3hP4cFnFoHa7NcE7itqjRuLu41iEJ7
 WKHYXJXKRVfX7jK9+QStXJSUyxm+RZWVBFlsldKXl1WF+qfk+bIWfJp+RPzcGPoQ5l5f
 DrCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ljpS3PkVVMGrf7RsA17UJi8czPEMPANgJ4hzQfBJIBE=;
 b=noAygEyLXjr1kAbNyAUQPoP7WJNYergfNa3/mX3iLZb34cnboCj+A6upSEEFcWOqvh
 fUvDYNqLTUU2doD5BYjTDBHjG11uwx9hLu/Wm3m9ZzLREmo7f4bDV8wvl1d3UjXjl33P
 uWrbEm9NKVxOWCSsZHwJAFQ18PusM+jIKFRgRl/EQ5TNjuO0AOTsJvDiN3HAp5aY1imO
 A38kWigqvLReecgIKN561Fy//7Ng70lKl+qVcHrbY9qLmqcwygJQZjj9iK+spCvPblR6
 MyFhwHc3g9oRsh53uKB9lxrS5NyXFV1X+WUGQgLeqnEgrp/jkfSWuJBnOLW+o5h5lpMn
 jZYQ==
X-Gm-Message-State: APjAAAUh/QimQop8/qj9CjJI1hf7062IYykVzC3RhwU9hciZxW3CgvtT
 SoU7pCZxNjDGqoNaCGFsUpTgnw==
X-Google-Smtp-Source: APXvYqxE0q3H6VeLXgKS1duTDycKaHyBh+oH1G+2Z9b/aQTAqmKLooI8ohPfdOU8o7fSlNccjGudlQ==
X-Received: by 2002:a17:902:467:: with SMTP id
 94mr3536884ple.267.1581160831876; 
 Sat, 08 Feb 2020 03:20:31 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a19sm5707281pju.11.2020.02.08.03.20.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 03:20:30 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 0/5] ARM: Changes for 5.6 merge window
Date: Sat,  8 Feb 2020 03:20:13 -0800
Message-Id: <20200208112018.29819-1-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_032034_614878_CBB62271 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: soc@kernel.org, arm@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Here are our pull requests for this merge window. While I've generally
been bad at getting these in during the early merge window, this cycle
is unusually late due to travel and bad planning on my behalf.

Good news (and part of the reason why I didn't stress getting them in)
is that it's a relatively quiet cycle w.r.t. conflicts and overlapping
changes, only one driver had minor conflicts (described in 3/5 pull
request).

Most of the new machines/SoC added this cycle are described in the
Devicetree pull request (2/5). Some of the highlights are Amazon Echo
(gen1), Google Coral Edge TPU and SolidRun HoneyComb/ClearFog 16-core
ITX systems.


Please merge. Thanks!


-Olof




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
