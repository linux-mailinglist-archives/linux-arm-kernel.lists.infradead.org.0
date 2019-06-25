Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC4754E90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEFvGO45nwU0JczOZ+mXDEHykk0Id0Q8/hviTWrlvCY=; b=NXc9kOo9rCXxyb
	kAMlmcFeDz2VCWp+TT9X69Yvbl0tcPr+rWOJ4exuVX/uuYITMovrehS6PzaPKRW6xI6zX8jK4NNE0
	WBuPmXQi2eQW1x4dsZwqoV0evJaVFu2tJi/nJGDK6Pf4UFpCdBqkYtgp5cqtZFHVm7P1mDBV/c9Nl
	9tvh/EDDCf5xf591iHiQuCJW8r3aLYONxARZI4C4pGZKQ0j8SV1WDjBxpCCCCk/5RGUPnNJmUoiY4
	3fZiyjC5Qy6ET7g+6gAGNBpNedqdO3DQRuzWyYL9kkUE+Oqe0TyxrXTOIQ6H/3VUIxDf2+ZJ+EjBQ
	O+A9HSSouEh77CcQ466w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkLY-00019l-Km; Tue, 25 Jun 2019 12:14:48 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCN-0001e0-7F
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:20 +0000
Received: by mail-lf1-x144.google.com with SMTP id u10so12399657lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oE/JKWXBgDSERSdCIOTs+mchlKOPMTD3Ggpn57SKOJI=;
 b=gZPHEO0xEUuGU9V8n6AAS+eRJa4nMOHh68rzhUMipPUnTAxbysthDveJk11uuVqydC
 WgY4Hi4+Mse/N1/gVghDed7xr19JUb62fd/qCosucExcO912JRZZeQlwh83kUtjBdwIq
 thnf1PLZSDbbmSwIeWeMqGn7fQ84AAKw5tk0viS+TALaK+ro3t/378dm6DiuMiRSaiak
 XdepbeSN2t6tEE3PZOmqCqjM6Y3/nPQDUVj+xpihfBthZCrgw1mDtJt7iPenty/n2YQI
 JpE83soGgLG5uwdG3zkukX1b56ZDqaC/Kqhl3DGD1TmUBe9ZERJbr73xPRpWizquEWWi
 skCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oE/JKWXBgDSERSdCIOTs+mchlKOPMTD3Ggpn57SKOJI=;
 b=Sk1ynUC/IawhgIz5pLkEJP/CrtnTVT1htPA3+rc8Jd+WUMb4jEORAhW8ad+ix/iCCc
 TQrn8GE344EvoKKs7uQAkYo+ozU98u9DJZh6UyLK+nigSogID4EQoNuddIM1JEkbgvrv
 qwzOFLPL4zSmes5RBcj+g/VhXdQbNdw54xVHgHRWfWmFDwanao/Hv0rv470VdLKE+0kT
 KaoGKGvsEMComRKk407lZWEO4rNBcKvtR5yVVSVPJl33OZh91+GdGOYSdzdbnhdgBOjg
 gQEkpQM5BP4gQWG+Modns9cLmeZsyaLOVZQDSMEdOoX7tY+sQU+/chZ0PCApT8f2Vmq9
 zscA==
X-Gm-Message-State: APjAAAWz6vdgoTmRCZ5T6FBK9NtfCQxtgTRaNlRfLVwI/wpZadch+aQv
 CoHzpPWMbvKzzD4DwQFBxawZbg==
X-Google-Smtp-Source: APXvYqz8jm1RlEX9s+rT9ArGMTI7BjicDXai25Z7NEBnxyVkpcWnTJHu+U8BH8rUxKi/UFg82NhuLA==
X-Received: by 2002:ac2:597c:: with SMTP id h28mr40124483lfp.90.1561464317704; 
 Tue, 25 Jun 2019 05:05:17 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n131sm1924259lfd.70.2019.06.25.05.05.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:16 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:52:05 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 4/7] i.MX DT changes with new clock for 5.3
Message-ID: <20190625115205.ccz73rc7ymimcdy2@localhost>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-4-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625075305.29082-4-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050519_274184_CE4ABA0F 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, arm@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:53:02PM +0800, Shawn Guo wrote:
> Hi,
> 
> This is a set of device tree changes having dependency on clock tree.
> The top commit 53c6a2ec018b ("clk: imx8m: Add GIC clock") of the
> dependencies have been pulled in here, which should be stable.  Please
> pull, thanks!
> 
> Shawn
> 
> 
> The following changes since commit 53c6a2ec018bb07aeb1e2b1d7db8521f1e56d221:
> 
>   clk: imx8m: Add GIC clock (2019-05-23 21:14:41 +0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt-clkdep-5.3
> 
> for you to fetch changes up to 881b54c7e9d97e36b08fa40d46377b3b983e4095:
> 
>   arm64: dts: imx8mq: add clock for SNVS RTC node (2019-05-31 15:22:06 +0800)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
