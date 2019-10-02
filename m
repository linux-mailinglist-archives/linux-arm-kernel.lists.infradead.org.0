Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1788C479C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 08:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IKryc/0ZGdUCUKt0fsdyMoNjD3rr4mb5rJ3xhiEWNVQ=; b=txvZS3/96ZntDN
	RjiknP0VsLbn9/C8etphvFKXZnaXw4888fveKYsh7q5JSEs1WXls1Dk2Bh9bwRG0x6Mji4pZ0zCW7
	Z2Rz4L6gw9080w6VRI5jTRaEFjrKbD2Gz+crNETtujihZSM/ezjtHqvEvx7TP+Y++anJ7nAxWEWw9
	/ZereXCk4yBtPsFpALWPpfNr8GtsgZ02RwgLabzq53JJV6lsLCUdC4GHUa5AQYno+u2JSzxTk8KC3
	c4xKfvyCY4RyJi4/BaKjady052Z3CBPyTL6rAyXb1wUmE3o10OP7G47IpwsOoXRTp+pyhnrgjc5BS
	cvHaH27GY3GYc4faMJ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXwS-0001xK-0Y; Wed, 02 Oct 2019 06:16:52 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXwI-0001wv-BP
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 06:16:43 +0000
Received: by mail-pg1-x52c.google.com with SMTP id q7so11273682pgi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 23:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=bXhUcsHWmFqWw6cgxYeO7Dw1J1Faou5guglKJMguGaY=;
 b=P2cmnVG2UXGJAz2/S+aKnDxE5FXZajq1dQQQlVjQge9QyrvCgqz2ueIGHanExkRKLt
 DanUq777waraHE+c6KhFCms3qBOZQ8bUFVEi/Q1t9TGA+6pHcP8uc04ma74SOEM83gXC
 W8gIkKTeSdxiff8aa7z/HcyKHkYFAdO+NJ9eN6G5iyDKuJPcHv/3RUaCwHIB31bGWSCN
 cNfwbf/5Q/NyNGV3SSQ4wppjxSFo2P4VqeVNJcEWi/FVRjlPOQjM8gVInM3JcpJN4d1u
 2HPJjyv247p2lA3/tbjFWeo429v4gp9J77MtBz+Jq8CGgjA+gn1u7B5lHKFxwoSejwEh
 uOVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=bXhUcsHWmFqWw6cgxYeO7Dw1J1Faou5guglKJMguGaY=;
 b=RF1q4pAmo1h2dCAc5s4paEk4n6ZAV0Js6DZETLRnm5EX996WA0Jotz7YFxZBDYFQy2
 +kRs9n4rGgd9Hd8o2m0oQkLlFzTEQRXCPhwHLG2J2yzrVRa64nJIiy3Tu0P4O0w/RmfA
 +GEI5mPot7IH1LT3XrVJwIQvb1uLBxUdz/QuoSGneIaNsryH/dk5zU7Z1Bt3I7cCwn3g
 JGztVcgpdPRPsPeiRDtDpyStsBMPBjTH31/VBKR1t1ayXZLSkvRarxDSbSy5W3cWQNqq
 60gyg8+sfzM8xllTvvDqEQzGrZYsT9GZ3C4NkXmbXjmBBtGOcu1tUeREKzr3kukZxDKG
 U5Og==
X-Gm-Message-State: APjAAAXOvCJx1cZRqyIG20Zqjv6xwyjf/dGd7FLmxU6nnwqpZcIx5Izx
 IhPR/DepE7s3/fnJRp91WLA=
X-Google-Smtp-Source: APXvYqwAbbWPXUJHa/ZTseF17NSmssTELswAB4MkCuk0Htvp5O7ssMMs7qSpOYNXGc+gq18/MkklAQ==
X-Received: by 2002:aa7:9307:: with SMTP id 7mr2758508pfj.224.1569997000796;
 Tue, 01 Oct 2019 23:16:40 -0700 (PDT)
Received: from localhost ([106.51.242.60])
 by smtp.gmail.com with ESMTPSA id q42sm4799721pja.16.2019.10.01.23.16.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 01 Oct 2019 23:16:39 -0700 (PDT)
Date: Wed, 2 Oct 2019 11:46:37 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@armlinux.org.uk>
Subject: Regression: Cortex-M w/ XIP not booting
Message-ID: <20191002061637.GA7743@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_231642_414290_939BB27F 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir,

After,

72cd4064fcca "NOMMU: Toggle only bits in EXC_RETURN we are really care of",

the no-MMU Vybrid Cortex-M4 is not booting, relevant logs at the end.

Looks like any Cortex-M with XIP enabled Kernel would have this issue,
i.e. all STM32 Cortex-M baords (STM32 maintainers CC'ed) as well as.

In the above commit, lr value is saved in data section in __v7m_setup,
but the data section is setup only later in __mmap_switched on an XIP
kernel, where it will overwrite the saved value of lr. This causes
reserved EXC_RETURN value resulting in the below.

Reverting the above change fixes the issue.

Regards
afzal

[    0.801928] Run /init as init process
[    0.829364]
[    0.829364] Unhandled exception: IPSR = 00000006 LR = fffffff1
[    0.836750] CPU: 0 PID: 1 Comm: init Not tainted 5.2.0-00002-gb5fa138a4b0d-dirty #41
[    0.844523] Hardware name: Freescale Vybrid VF5xx/VF6xx (Device Tree)
[    0.851001] PC is at 0x0
[    0.853559] LR is at 0x0
[    0.856127] pc : [<00000000>]    lr : [<00000000>]    psr: 4000000b
[    0.862434] sp : 8e82dff8  ip : 8e82dfe0  fp : 00000000
[    0.867697] r10: 8eb4ae40  r9 : 00000000  r8 : 00000000
[    0.872958] r7 : 00000000  r6 : 00000000  r5 : 00000000  r4 : 00000000
[    0.879523] r3 : 00000000  r2 : 00000000  r1 : 00000000  r0 : 00000000
[    0.886076] xPSR: 4000000b
[    0.888836] CPU: 0 PID: 1 Comm: init Not tainted 5.2.0-00002-gb5fa138a4b0d-dirty #41
[    0.896612] Hardware name: Freescale Vybrid VF5xx/VF6xx (Device Tree)
[    0.903177] [<0f0042d5>] (unwind_backtrace) from [<0f00354f>] (show_stack+0xb/0xc)
[    0.910851] [<0f00354f>] (show_stack) from [<0f003d0f>] (__invalid_entry+0x4b/0x4c)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
