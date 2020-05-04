Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8BE1C44DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R6Yw9FnZIgQ+O+X+WM3fzxNNk7ZsoZ6rcm3w+UHtNBM=; b=MqMwPlgOdDsa42
	NP3QEIHimFqWdXqPaPY20UmBTbw6JhdHjNKNnPzCOUYkS0JpDSrRdH8G0t3tE4ctkj4GwRICymRcS
	nHR4oRrMLQ0sbYj1Fff/RvPvSrR5LNGLFd7eQiG8R2Cfa+rF+9xryoh+wOOxigMLwUsWqZMnAbGmy
	5jsms4mUPm52naX6DjPv3/FcoZV/8Ri1V3ew8uuerupd/tCxOknTbixC0ZRSJBIb5WXDUAu42dBHK
	Exu2tatHxR3leDIIMrNhPWyMJLY1zqzavseMrw4RG/2x5ouEwkt0xbWl2pFH7r5OBbM8GhjfFo0Kk
	oVpnOQHlelZjbGGilEng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfYS-0004QX-W4; Mon, 04 May 2020 18:11:00 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfYL-0004PP-Tw
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:10:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id f11so10703581ljp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 11:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=jH+RQvZfWBPL/mnizZmaNYP9xWO1o6rOJMbxjkZZp1Y=;
 b=SBeK7PzPMOpDCOs2i7PNkBs8r0xKcDyF4T0FljvZO3+rcPXW+xALMNyHnpbMGR2Mp+
 BOGAUC0BngtM1Sc3+8gB2CGzVbqWYnZj7Je3GQbgFY47HhQG5W5TwfcwoAuO4UjxldVW
 XOukAtZCowxX1uxJSYCR+fT04fEtjlK6OTuO5kfJFz366tMUTXykOho+1I4C3hQaxKZV
 4hRPebyWpqxjDgctSOfny5fyasF+UDceKh/3tQkkkNXwuJ+rkZf9vvhAJMJT/rOQqQgR
 dr8yOKpVrkiNpedov7iLfJyrcNPxcAxhOeP1H+/3frWIlRXQS+QYlC2gsXrQn2zWCPiU
 RgOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=jH+RQvZfWBPL/mnizZmaNYP9xWO1o6rOJMbxjkZZp1Y=;
 b=NeEiW2KAiRGfIuijxiztacF+Mkbmie71z6Lgffhgs68tVQaOUsfQ7NlHa2fLwNDF2J
 bnF3Z7NMipoEqBksPAMoZh3pjHucnoEEyeBL8M9NU3jtJqCfBXsfLKcSDrmlhSoUaQH1
 xSDTFSj5Ksg1KtDE6hdClpimw5D3740vnn58TI2JWG2Z5ORYXDPounztdgVcCBx7QzqQ
 qW/XYD77PU/V1IOS82PPX3CU26AF89RuaJqGPUsYd+1gYOorccly3ORxc+mP95lNKBFY
 c1xeuPYy2DRVMM43is4UqzMDTgGB/JO3N3V2cQo6GJlGqj1kRg5G+d3L6hRain0CLhj8
 TgTA==
X-Gm-Message-State: AGi0PuZg0NT9gX1FuvtqnqOBaKZX3rlZe+NzK98M+A09QpDWD65Gehhz
 MgvRQEi8dgSOGbit03wudZUzxA==
X-Google-Smtp-Source: APiQypL9nfuj0aaNVAUWhXrgQd1rcEGy36iBc3lcKQE8pRbx02DEqi3yEWxDJIwhUg02VG3TXcj55A==
X-Received: by 2002:a2e:5847:: with SMTP id x7mr10967982ljd.61.1588615851911; 
 Mon, 04 May 2020 11:10:51 -0700 (PDT)
Received: from jade (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id a13sm8775284ljm.25.2020.05.04.11.10.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 11:10:51 -0700 (PDT)
Date: Mon, 4 May 2020 20:10:49 +0200
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] tee subsystem work for v5.8
Message-ID: <20200504181049.GA10860@jade>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_111053_994392_1376374E 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tee-dev@lists.linaro.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull these small tee subsystem patches.

Thanks,
Jens

The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  git://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-subsys-for-5.8

for you to fetch changes up to 104edb94cc4b3101bab33161cd861de13e85610b:

  tee: add private login method for kernel clients (2020-04-20 16:18:14 +0200)

----------------------------------------------------------------
TEE subsystem work
- Reserve GlobalPlatform implementation defined logon method range
- Add support to register kernel memory with TEE to allow TEE bus drivers
  to register memory references.

----------------------------------------------------------------
Sumit Garg (2):
      tee: enable support to register kernel memory
      tee: add private login method for kernel clients

 drivers/tee/tee_core.c   |  7 +++++++
 drivers/tee/tee_shm.c    | 28 +++++++++++++++++++++++++---
 include/linux/tee_drv.h  |  1 +
 include/uapi/linux/tee.h |  9 +++++++++
 4 files changed, 42 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
