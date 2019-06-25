Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 970CA54E8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/82yjVh6Gy03s8JwEpYp21HyJoLjFyD2K10ijOm05us=; b=AA5La8Z4udu7jA
	swijO7ByeSUT611nFkvBYbvCy8NquFckTjgQjSLQKM2+5InsiEkpDszzZIeb8NrtCMHK8p6JJpLn0
	Ii+k5UpvIB5X0vXUdkv4UkSZBqNk6//swIFRn07qg1avpw8Lt12xam1UIGpkW05krCMMTLmrQ7mIk
	7ejoatvat8YKyuIayFinDzpAeM+BliynRlMJdgTyBmYdYl6eMAsNaEq5UBwcL2ZWxe4Mf8kHqcC3i
	MRlentnjGtSstU9WHhC1L0xDTkGPfcAtuiXtgLYYSPnsEQhR5vl/4+bsWE985awpiIpCX2rpvsdsP
	YNJGXEf8/h6jYtYQCOTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkLL-0000pv-S0; Tue, 25 Jun 2019 12:14:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCL-0001Tz-EH
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:18 +0000
Received: by mail-lf1-x141.google.com with SMTP id p24so12429847lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5sY7f4sSZEQEZ1E+amwAAxFLBkS9LsML27vJQ5tK4vA=;
 b=RQgGeKmAMRhO7XWSc1fC1u4SCgjH+WpBKENbj/2SIuBauOow7VdJbHW8Nz3VaoHK0n
 b6OPgH91pPflKGGM1SQgljUEz8xUMExSQB1D16TWACajfCK6WptRezOhHXSc2TtLpgWV
 LHSm1KP3pjnkiFOhORTOBxuZYuiEXHARxIyKmpC8mVX+WjJqYCIV6nmszui5pMaT6HU8
 2s056t+i6Urj7A1WBtuL38VmgGa2zkwuX7xXhRp37K2ufFymhBc1ctIWW7xdg3FVFf4/
 F+Sz4ewMEDs8Dt4NJBKSp4kFuAmdiWTC9rApIBVd2Rn2QdUpd1+N03hE+wv42QFFPzLJ
 shVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5sY7f4sSZEQEZ1E+amwAAxFLBkS9LsML27vJQ5tK4vA=;
 b=jzlr9xjZQSUs41NS7jsVS4rIEbMRhfWSER8XKhs9QEvw+OZGL+nGA18xxQ6r3eH1Ka
 d3cj5LXkj1dV9/C1NK4XGxjIVkXLGC/ViPZGy7+qPFAGEn0GNiMMjxzmdfEl3ppe6Nx1
 bbezxvdt16bbs5jNDy0LDG2r1oqcmm9uzivJMbey/+kYgfvGfNcaFPXXXkUkLUQD1S9+
 k7hfcr2k45qn+CQ6wRSgjpyDebaUn8cK6E50qz9/4Gytx8GOihUZ2hPyurshmznA3/kM
 9ndbnrjeoW01X8wYLiF8jggPo4CDnF3auyPJzlvehDwqwglgaVtG1Fmw+GR5BA9k3vlF
 V+oA==
X-Gm-Message-State: APjAAAUtt4YLs3O2wS2rALUu32AMsVj2upJz1XssoXqSLFzMlQ6aumyJ
 9ySwF+dFFOW3rkZa8qwmAZ7U2A==
X-Google-Smtp-Source: APXvYqwammsYzDPf8HQ1JqHVoFYy4JYXViH9g+cEDIB+n2jVepc5UELOjpaJgxmSziF7+u38TAuIZQ==
X-Received: by 2002:a05:6512:dc:: with SMTP id
 c28mr78587039lfp.105.1561464315283; 
 Tue, 25 Jun 2019 05:05:15 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f1sm2222022ljf.53.2019.06.25.05.05.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:13 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:51:31 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 3/7] i.MX DT bindings update for 5.3
Message-ID: <20190625115131.lzno3sjl3gkoi63t@localhost>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-3-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625075305.29082-3-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050517_567417_65BFE55C 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:53:01PM +0800, Shawn Guo wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-bindings-5.3
> 
> for you to fetch changes up to a10ecf624b7b7c1ec6c263d4562bd6631d380d2f:
> 
>   dt-bindings: arm: fsl: Add missing schemas for i.MX1/31/35 (2019-06-18 21:39:22 +0800)
> 
> ----------------------------------------------------------------
> i.MX DT bindings for 5.3:
>  - Add vendor prefix for Purism SPC.
>  - Add bindings for i.MX8MQ EVK Board, Purism Librem5 devkit and i.MX7
>    Meerkat96 Board.
>  - Add LS1028A specific compatible into qDMA bindings doc.
>  - Move Emtrion i.MX6 board bindings to schema.
>  - Add missing schemas for i.MX7ULP and i.MX1/31/35 bindings.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
