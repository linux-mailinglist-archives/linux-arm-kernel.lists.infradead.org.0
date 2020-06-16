Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C244B1FAC77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MNk9PykNVXkE8puTLaRkIGLrqgWFW1+jFXiame7g+Fc=; b=txG
	t4YjBUsA97aDsx/ituTLuKV1WEfY2u8z+BYvnm3GzlCP33CWkq/0gH+q6Db4qvZrw8TDfpyVljrkM
	GYVwe8o7+gBR/SyrLXFdUSl0QT3t1rUFd56qJ+GmXqVC9AqNXvfAK/KCcVUkOg1EDM0DnkJ57B1nI
	g4jV5kiEB6Scifx1nsKzSYH2fDRDkLsCRGZvy67hwPsZ+Kmh8gcM9QrIePUXrKhzcwrVNpWQmHQRN
	gk/1LToIBEN2xmOfEx8R9ibfah8+ntIqtyIODp0FVHylD7S4z2tv8VvVfRG3yZvX0psHDCHW0WSgL
	4yg8nfPf75MEM7/4r28nfKgx3YXPhMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7yY-0005gv-2L; Tue, 16 Jun 2020 09:33:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7yN-0005fT-Cg
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:33:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id u26so1838706wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 02:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=V3ItL99zeJ4+dSDGZoa+YIY60rLryQIbuqJoBSzhmcw=;
 b=AJmNMdIxyNlpz8ryliR4GE/cil3bmEd66hIxWSSKQi8Dox30PVtaarAJvlIPjefUxK
 9h2BY1EFQNE0MZ4n0P2SgkyQAUhb/LbJ/Xa9IPLvgsDFw70jtlwF7Z3P+C5U2CInOlmU
 YV5NuBSN3NvEfJEp0g66dUxrkiJzOIsGrvFVEw294Kqp5LGDqeyy4rP8oF23+hSgcC4z
 z1TFCMdENYljG0Sf2Moh6sAVNn85GBaCkHN9ab9qcHjFagFm+AkSXzKv7ilE0FAebdIs
 Mu87xXorEyrxL5q1D6jRQvZUrBdXFgW2dMo5f685rlxEjMWcUl/ujT7Mdd2hUmU83rRU
 PPug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=V3ItL99zeJ4+dSDGZoa+YIY60rLryQIbuqJoBSzhmcw=;
 b=XpRbcXyhTKyavgs20drRJj2jvjlusXdVVH7NxQ0SRogmuhoqEljK3mJ7Z+aSApGFU1
 z6jOv4Vm0xjCPH0khJyQbKpDaFiyyNq4HF06TvcRxcH+3cCLv5RgcWWdE6wttGJHjaSK
 3QW3f+sqB92B6ueDJlbT4vxKbnepLT+RaRydaFIY60zPja/kD1Wa7+evmY9BOsCDT677
 R17ZQcyqz8ADZsiwSRF/lINhnewZinwULyRB4020lS/HsY8Inpn2limpeXx+H3IpT+MQ
 CVdggLRHM5dSaj3qUFO2f1kG7/GToxklXbUylfGlSpa7ERRXj0JqgVOZTeZZyvkWy+V1
 FeEA==
X-Gm-Message-State: AOAM532nnIpwuyFa/TZHLpcOiDCFDUzCKohQXtjVFl3kNsQ4hTgEf46V
 m8iUgvqqQVfXzFhpjGe6ijMrPWYPlw0=
X-Google-Smtp-Source: ABdhPJz8XA9ljCsSo4tdxEE1dlUXMUsYGUvfKszaOPYkAZBmkQcUHcQCOPNkwAco53j1ySlWEX/+/g==
X-Received: by 2002:a1c:6446:: with SMTP id y67mr2408984wmb.156.1592300016312; 
 Tue, 16 Jun 2020 02:33:36 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6801:1801:c5c1:794c:e67f:3280])
 by smtp.gmail.com with ESMTPSA id s72sm3166391wme.35.2020.06.16.02.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 02:33:35 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 mathieu.poirier@linaro.org
Subject: [PATCH 0/3] coresight: minor fixes for CoreSight and ETMv4
Date: Tue, 16 Jun 2020 10:33:30 +0100
Message-Id: <20200616093333.31283-1-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023341_289749_7BAEC6BA 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mike Leach <mike.leach@linaro.org>, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Set consists of minor fixes discovered during other development work.
Fixes are stand-alone and not directly part of new work.

Mike Leach (3):
  coresight: Fix comment in main header file.
  coresight: etmv4: Counter values not saved on disable.
  coresight: etmv4: Fix resource selector constant.

 drivers/hwtracing/coresight/coresight-etm4x.c | 6 ++++++
 drivers/hwtracing/coresight/coresight-etm4x.h | 4 ++--
 include/linux/coresight.h                     | 3 ++-
 3 files changed, 10 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
