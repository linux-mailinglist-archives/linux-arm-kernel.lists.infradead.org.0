Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 891E61288B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veblMP6KqAt1nfk4TdLa5ZIjYm0l5PjrHZhkBOsgn+E=; b=K/YmnPILCfoVxq
	E3LQ+0iV7YyrVYzrkJ7fTZC2CVHIsFnTNGCAL2tGhFFJEE2ERktJDh9nAkbB7LglFGBoauBEbAthR
	sz1xBfew6dvp6vcaVDdcWAAR3Pep6qrmq1YIR3tv8LVNmJyfvRgInoT00eyWhrNOBM8KGitP/09HL
	0hLdLp/YOzVTflMtqn5zsuKqN0/YIVQGZRYHEr88V7sLjg2CT8orP1EekXCmo47kOU8U0Jaxqjvtc
	VAqsyRJnu83pY7yM7QrOYe5cBgxyE+aajgWa8SfkHu18wN+w+NqVXcSVw0R1qq7tZFI23IGVzmUQi
	Mi/T8xv12/seN/PVgtYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSQj-0002AV-Nx; Fri, 03 May 2019 07:16:25 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMSQc-0002A8-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:16:20 +0000
Received: by mail-lf1-x143.google.com with SMTP id d12so3696621lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 00:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rtSbGYmKklFW+DrwkU0C+VxMVLVuu2pUhj66Een1PGY=;
 b=B9RPr9e5dWYYhfvLP6A/hH+KrXtO/Yez0gb/5L0LdyKb8z8MZhdeHeOt+yi2UNKxXX
 kqhFr7Ga99BGfpc+a7PON1hZXY4Ke+EL0MrvbB7dteYDQWAsBcmhEJ18AHotXv2HHwvf
 komU/gZlAC7p1nBwxEhrNanbFdWzVS7fMkxqZYXV4NNNER5XUhDvqqrg89GlUsrbC9/D
 4CA9xMlkTkFFYb1aVaVqqM/PSMm01raoSSns+BYDEleFwFzhtuVKCTIBCc/I5EIMtaw6
 O/utJQ8G1FP22BHM9I2VTN84Si0h+UUECdvX4JD7wVp96wfqesqzdaujEMuf6dNutDQo
 5AjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rtSbGYmKklFW+DrwkU0C+VxMVLVuu2pUhj66Een1PGY=;
 b=MSeank/toYdj5zSQ0cr6lKBD/+nom/7EEl/FXKM34qYfPU7i5vpUsZbGR7NRwZI53x
 YXvcXfyVaYbUZO9tmgenjG0dExZanwdg+5wsvDebZTMASx+dYfyrLejc6BgVmSb8bOV5
 yyx6BsumDsY47dGFONV2Ei3o6qNFcR9WWgD35HFxtS7yuLOGP19e48RiaJyiAN0oM8Zy
 H3hxZcNC0nYbz+FQ538qeTYwh7RITpRPCs/VsBmmytVpoz1jd+/TriWXTG9ip+O8v/nE
 S50mafqGZbUv+dAECsGsluAMsvtJv/R1KH/WfvBLW+oMJMtmstU+ZQ8rroAkMdIBUY7T
 bBdg==
X-Gm-Message-State: APjAAAVJv5AkCc64mnTN2SxVYjt/8OhFd0o3PrUZXdpn7f0qMCfgOAxg
 GWGWh7pRiAvALAaRx8oYJBpUY7komOcHflhV3NDXpA==
X-Google-Smtp-Source: APXvYqzJk0GUKle7WEk7r+TX6j6b6Koid9bqgPMCDj802pdYnmzrB/eWrxxyZQDNpWxQCQ3SCkyms1KNQoSQ8MdZwSE=
X-Received: by 2002:a19:f001:: with SMTP id p1mr4474778lfc.27.1556867777010;
 Fri, 03 May 2019 00:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190415202501.941196-1-arnd@arndb.de>
 <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
In-Reply-To: <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 3 May 2019 08:16:05 +0100
Message-ID: <CACRpkdaJ+2bub_nDp9=5b4kyKjWDnOGKscWg3KsEVixDpk8rzA@mail.gmail.com>
Subject: Re: [PATCH 1/6] ARM: ks8695: watchdog: stop using mach/*.h
To: Greg Ungerer <gerg@uclinux.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_001619_033655_48F890AC 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
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
Cc: LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 8:02 AM Greg Ungerer <gerg@uclinux.org> wrote:

> I dug out some old ks8695 based hardware to try this out.
> I had a lot of trouble getting anything modern working on it.
> In the end I still don't have a reliable test bed to test this properly.

What is usually used by old ARMv4 systems is OpenWrt or
OpenEmbedded. Those is the only build systems that reliably
produce a userspace for these things now, and it is also the
appropriate size for this kind of systems.

> Ultimately though I am left wondering if the ks8695 support in the
> kernel is useful to anyone the way it is at the moment. With a minimal
> kernel configuration I can boot up to a shell - but the system is
> really unreliable if you try to interactively use it. I don't think
> it is the hardware - it seems to run reliably with the old code
> it has running from flash on it. I am only testing the new kernel,
> running with the existing user space root filesystem on it (which
> dates from 2004 :-)

Personally I think it is a bad sign that this subarch and boards do
not have active OpenWrt support, they are routers after all (right?)
and any active use of networking equipment should use a recent
userspace as well, given all the security bugs that popped up over
the years.

With IXP4xx, Gemini and EP93xx we have found active users and
companies selling the chips and reference designs and even
recommending it for new products (!) at times.  If this is not the
case with KS8695 and no hobbyists are willing to submit it
to OpenWrt and modernize it to use device tree I think it should be
deleted from the kernel.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
