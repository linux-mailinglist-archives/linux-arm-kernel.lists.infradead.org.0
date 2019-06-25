Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A54A54E94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcsBfellmo8eu9fxstpdC2X1tCi1kFe7GE1vJgk5qfI=; b=QDI16YyU8oEapn
	1Vc5PQySrP/Gxfw0a3CBvNzsJLSD4wg5jyII1N8ad8ht05euZzNwLmUQ0F5ijMdlU/Pb9WCiZ9T3y
	Iq0Hz+TDcJaCXST92Cw696uAS8A0+u2LsQkZM6z7faySSyWySY2HaPw2FVz0otCamDM4cLdcGGbYN
	dJENZn40eCnvDAoz6EO+fZfWidoN7TYLMRrfOYkHpMc84QDy0TIuG8gED9/Bie/YFLnJnGYrQ9jnz
	QFteiKd/THHynvxa1yVXPsFYB1tHLV7frRgbbElNUwdnC3vOKciljYqdgg0ThLYj//4RufIbxyPxn
	Z5UQRGSgonI2ul2fuFUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkM2-0002sL-Kl; Tue, 25 Jun 2019 12:15:18 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkCS-0001iZ-Em
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:26 +0000
Received: by mail-lj1-x241.google.com with SMTP id 16so15964093ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/wG74kq8l48//pZPKR3vigMD/C3ZTOZ54vgjbv74a88=;
 b=VdtdisNwtSGhvBz/wqJeJ+36vnwMC+AzXb6pH/3VpoKgWPaznxke41MSb8kFc/NB+C
 3YUiBKoFCT1oLFd4ndLfBYpdDHYPerDERtdi9s+5XaOO9IjNrVcS6IvBpKHxKYDICBDz
 0MLyfchq/9iBDaNbqvOB52dpPGsxiW5W16B/dg1+DxHAtBI7RjGqWK15/0vT8Oeb5u/G
 UWHQ8eErFp49ey0/3naA0/6IoN1L0t+ApGV/cLUTMdc29atR3iL2/TNQfZhubmr79F3g
 NfPFxCLy+I044pfiMjprIGkO/AQWyCiNi6yEZBvKhHcZ4NWAoyiASeLBcIPMbMUkawE5
 jyRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/wG74kq8l48//pZPKR3vigMD/C3ZTOZ54vgjbv74a88=;
 b=odefotMiqKLv1rwNDgtb6ZnvRG2Pi9yyAOzzE22i1LTLWBxyaZAcnpQZQiJBPJ1m76
 UNOPgulXuz9BjfHxcEORPmM6v38B4be7pWYy6vlOboUJYXdjtNNlTu70xk6hCLhhXSvE
 V3mHhGiyAoHGhibtYNHRwPsJOLGCrcJ3VLr/2LgheYbA98xWz+GS0ALuB6JhTKc69mv3
 umNVKiD9T1B9LRVxx8dzV92Q7aXfH41ZObPlRYOtMEfsflRcfz2pzkWQrHO762h8nw4r
 +hNMbwCfnsreN7uO9V6DODs6jW3ytaju2RYRBFp1gEBOqX2BulvuXEqTtGEDxGdgsZdl
 yn+w==
X-Gm-Message-State: APjAAAVuGbgQdXTq8IM6sKYh33DutGHv3GIUdf5IysUAHA9F6QtnGAbM
 IlZCRbBNoQD63w+28fSVLp3YOg==
X-Google-Smtp-Source: APXvYqynKbjnaCNOCLJFi8Nf87zJ0qkri+DY8z3awr8KtV3bD7oPl3khtIFmUlQKM06yC3Vu++LlcA==
X-Received: by 2002:a2e:86c1:: with SMTP id n1mr11274065ljj.162.1561464322939; 
 Tue, 25 Jun 2019 05:05:22 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n10sm1935506lfe.24.2019.06.25.05.05.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:05:21 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:53:09 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL 6/7] i.MX arm64 DT changes for 5.3
Message-ID: <20190625115309.6q5qhi4c2yxycb7r@localhost>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-6-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625075305.29082-6-shawnguo@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050524_637778_719DD251 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

On Tue, Jun 25, 2019 at 03:53:04PM +0800, Shawn Guo wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt64-5.3
> 
> for you to fetch changes up to 01407158e4c7a6ac646901b7b034b5a7d605b480:
> 
>   arm64: dts: librem5: enable the SNVS power key (2019-06-24 10:07:00 +0800)
> 
> ----------------------------------------------------------------
> i.MX arm64 device tree changes for 5.3:
>  - Add i.MX8MQ based Librem5 devkit support.
>  - Add SNVS power key support for i.MX8MQ and i.MX8MM.
>  - Add GPIO alias for imx8mq and i.MX8QXP.
>  - A series from Daniel Baluta to add SAI devices and enable audio
>    support for imx8mm-evk board.
>  - Add DDR performance monitor unit support for i.MX8QXP.
>  - Add irqsteer interrupt controller device for i.MX8MQ SoC.
>  - Add CPU speed grading and all OPPs for i.MX8MM and i.MX8MQ.
>  - Add OCOTP device node for i.MX8QXP.
>  - Various device addition for LS1028A: SATA, qDMA, USB, Mali DP500 and
>    temperature sensor.
>  - Random minor coding style improvements.


Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
