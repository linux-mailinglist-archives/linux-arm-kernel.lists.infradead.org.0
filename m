Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE3814656E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DJ/kDJ68k1x0VVufzxUCUet8yPWPJzo6uYWDBiwCCZ4=; b=DCv9hni2G4L3Vw
	mSGXbyl0NUjb9A3wCknnPpoGb2yTg322xXQ0h/+CldyQU8GWaMyc7R4KT/Qvi6/9+4rqfggm1MEOL
	6/npIeiLQFQjK0oiDjBZVR+kOiX96THw1OzvXYmkUPsSCujXg9C5aRZCUrapWQNDil3GOoQ9HnjqI
	4tiG2sen5tUQKsGNeZVsfd+Xq+iGhvV7rLh3+25Lv1tCSKBBbiH/NCzkxeWB/Ph+sTyrQBqIpK1b4
	4Kjj8DeaKNM3u7oFC9rDhv5/48P16/4TeoX1OsUVDh+GkqGLIgKpWLjFWZGITRmbLGmCv4UJiUUNN
	nx15xmywpl8L+lplbDXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZUL-000290-Ps; Thu, 23 Jan 2020 10:13:25 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZUB-00027N-Tz
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:13:17 +0000
Received: by mail-lf1-x141.google.com with SMTP id b15so1872450lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 02:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=4wQ9deVteYqlHZm83bOhSrDXjF79dKTeR9wrXt2k3ek=;
 b=sGzMcBOzhTqNZ9cLyh+uNoAhFnEU0E/MgamCqEyHhkoT3AMNv3EnunHUwqOeBubxiV
 /eCySRaeCUHfiQ2p5Ejff1gUmv4glnNaPxqsxorzVcCKxUkuMEvZ8bFVBLoKXfJQ8gQ0
 p3PmBG/VRN98rxJuxDmS+QAHJSXVousgyu+mtLjoYinBgsHu9a4DqR+3N2nP2cziGfEI
 QLg5QTgbldf7Qbcvf3OOkSvOvs9XnuTu3+y8uemLnYixDAAaHXVnYfX5do41YS9k7rCx
 zMXEiYPxpAS05OlEFO7UY20z7BOp2/gvy3mlqZP5vHdZiig19ZYBrzAEvvppTg6Wh+X/
 UH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=4wQ9deVteYqlHZm83bOhSrDXjF79dKTeR9wrXt2k3ek=;
 b=fxLMOgKJ0j1X/0Xk3KiVHakLdhyU6/Q8aCjGEQu7+P7LF3hVQeY416LrqATVRMmV6c
 wWGmrvMHu9Pw7IzbLNo7mneEEqMsymiyTe9ldY43qu4HI0pK5oY4/eO7PRm/kiO9Ecj3
 mPLyjSlflDPwRrgzevqXElxHM++zR4QvEXaivruVVSog5lLL7CUZSAkhbf4+wSGLpz3E
 JqdunwSxFoP/IGwUWFqNbFD5Bga/mms/AaIj4JueCX0vB+BPAWRZ2gi9FAfD7Kv/y4xx
 vnOmJj0vQvxlpP2WayzZ2eBqehEmusksvNddU81rq4rLzXHqOp1t448eYJ1yZIRQ9Szq
 qdIA==
X-Gm-Message-State: APjAAAWDrHnYOkwNpTP0OPwAaqRIwBIELwNnwk+BvcCY7DooHvILy0ST
 +u1scxOrSMCWvgY/QDvwojsxDQ==
X-Google-Smtp-Source: APXvYqz+AonGwRFNf1MyGq1jaClp+4wgw/P8hISb6+lfs3B3LpXl+eHn4A5+oxtVpKsqEwPOZxGEXw==
X-Received: by 2002:a19:4a:: with SMTP id 71mr4356482lfa.50.1579774393698;
 Thu, 23 Jan 2020 02:13:13 -0800 (PST)
Received: from jax (h-249-223.A175.priv.bahnhof.se. [98.128.249.223])
 by smtp.gmail.com with ESMTPSA id t13sm898056ljk.78.2020.01.23.02.13.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jan 2020 02:13:12 -0800 (PST)
Date: Thu, 23 Jan 2020 11:13:11 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] optee driver another fix for v5.5
Message-ID: <20200123101310.GA10320@jax>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_021316_003802_AEACAD31 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: tee-dev@lists.linaro.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello arm-soc maintainers,

Please pull this OP-TEE driver fix with an added dependency to MMU in order
to avoid compile errors on nommu configurations.

Thanks,
Jens

The following changes since commit d1eef1c619749b2a57e514a3fa67d9a516ffa919:

  Linux 5.5-rc2 (2019-12-15 15:16:08 -0800)

are available in the Git repository at:

  https://git.linaro.org:/people/jens.wiklander/linux-tee.git tags/tee-optee-fix2-for-5.5

for you to fetch changes up to 9e0caab8e0f96f0af7d1dd388e62f44184a75372:

  tee: optee: Fix compilation issue with nommu (2020-01-23 10:55:20 +0100)

----------------------------------------------------------------
Fix OP-TEE compile error with nommu

----------------------------------------------------------------
Vincenzo Frascino (1):
      tee: optee: Fix compilation issue with nommu

 drivers/tee/optee/Kconfig | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
