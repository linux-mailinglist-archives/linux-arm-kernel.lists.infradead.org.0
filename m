Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F96FA00D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 02:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltZ664fg+s/ElkPo9dz6Ve9XzBuhNYiysGIJgS8eDOY=; b=Fw4ljlUkcW4gYE
	aKo8plYGNAaDqpdTAw0Ii3hHLrDPCULy8rV9uNNljvsUNebZ4Lz44EKYfJHOTsTOHmOrNqApHmFmJ
	Flkn46Nd+ibWaA9HVHEgyQmuM2VEMPWoxHSU7+2au3xV+QkRuRClTI4445hTET4zsIV4NRU/J5m0V
	/8OzDHwFXXQb/MOdymUDkuWbU06ew3fuzfy+J8T33I/gcXdQd25/oauNNkgXazNHTTa/eNeYDXQzK
	IDtX4gO5wGpnLl+95Q9e31nfE302Zzkpp0OEC9h209rFb/b26qjFQ8yzpkuKIDRxgzZHvQ5k2REM2
	V6C9Z2SkfmUMROxK38eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUhPL-0001LF-CI; Wed, 13 Nov 2019 01:25:19 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUhPA-0000iQ-EU
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 01:25:09 +0000
Received: by mail-il1-x143.google.com with SMTP id o18so186060ils.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 17:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kv0bDYpcMFJAlS+ruPwaKvrDUfJwNNLe3oX1YHYasiw=;
 b=xqPjsBmmdT7fyxcvbYoimn3Bc9jav+Nt6AoRLPNwcZlpdJmSO+f99qz/DznnoTrfn6
 0l7CdXXGHLTiJsDITQE/zqA0YveEyusy0rsMe9YJsOCbV0BHKdyNOfn5IZ8os3aKI3j5
 g5nQ/foPXhc3GKaLzCn07b5REAr2hDKrWr1OU6SFdUnxV3tu2o+wixoqPU61wuLgDj9u
 niCwTxKFyG83OTqoobUtCZr8X7A8J9wxmeXR7qsSey2Mnbvrbje1hxNjbwRsSrGIFjwF
 QyWEF0j4dL0Gu34DdiMBe0xTIY9xYBmojNMEPV6ULi7JI8H0mE7IYPFUAxO59QypyeWA
 R+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kv0bDYpcMFJAlS+ruPwaKvrDUfJwNNLe3oX1YHYasiw=;
 b=t7pruYshYjTXqBJvcON5ihwsKylts6N15U25ghqXoBPwR/I6p5rx0c6sGCc2mIqsNp
 0fXwJ51/xn+XrsK99gH3OEJgfsA+PsCd5r9eH1o3d5SR4c5YaOq0SuN/6Uy7cc4jHq1N
 sYCoUCBJncQxERpSPeEgyiMqXccBg2Nygo84svl8xr22ZkQX/VxYk1wqKo5WMsnZSBRx
 nJlZvU7q6aYkJ//3Ujv6n5WM/aKrCCDjvNm4e7Mce1Lpt4ZXp4JcaWO88n6BKtMap2j8
 seOfr+z2djHU98iGoDEFk4acWoNSot/Zvh+DeXINk6RnjhWKzmzqgDBbVVvxf7RaPvGn
 zuNA==
X-Gm-Message-State: APjAAAXMpsk2rfz3Ju53bRE86gGdjnGYd8lkeTUL6dhqwLLe+80DbdLz
 8s+AFfL8daRCXEdG8SyreEBrN2pEeaR+w0QDaT5tV8dB+D8=
X-Google-Smtp-Source: APXvYqw9TNzdlqYTyJgNfx5tGze7W4c3t1m0b2beuwXGQWfe+hkWaUbMevbCRiZS4YooA/gZmNw0GF4o9wOiuBPHWsc=
X-Received: by 2002:a92:1b1c:: with SMTP id b28mr899298ilb.278.1573608306650; 
 Tue, 12 Nov 2019 17:25:06 -0800 (PST)
MIME-Version: 1.0
References: <CACPK8Xe8XiJ+oEp3_AXO5Mox-mXWVrOJKQLJMKJxg1WdYCTzMw@mail.gmail.com>
 <20191108183124.r2wdql4rmdbzx2up@localhost>
 <CACPK8XfVOGyr+ntuAhK7dOA=02PBKJYTSkv4HvoJWdppMeJNWg@mail.gmail.com>
In-Reply-To: <CACPK8XfVOGyr+ntuAhK7dOA=02PBKJYTSkv4HvoJWdppMeJNWg@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 12 Nov 2019 17:24:54 -0800
Message-ID: <CAOesGMitX4U61n6Tc9YtARPo8TsXJUoZoitr8e6iTjs_JWJT=w@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: aspeed: devicetree changes for 5.5
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_172508_538556_9C125E51 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, SoC Team <soc@kernel.org>,
 arm <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 4:40 PM Joel Stanley <joel@jms.id.au> wrote:
>
> Hey Olof,
>
> On Fri, 8 Nov 2019 at 18:32, Olof Johansson <olof@lixom.net> wrote:
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
> > >     tags/aspeed-5.5-devicetree
> >
> > This is a weird format. Mind changing your script to not put the '\' at EOL?
> > It's messing up the parsing scripts, and git doesn't use it.
>
> I think I added that at your request. I'm happy to do whatever works for you.

Hah, quite possible -- we used to cut and paste to a terminal so it
was useful then. Anyway, I revised my regex here.

> > > ----------------------------------------------------------------
> >
> > ... also, there's no shortlog and no diffstat on the pull request. We usually
> > want to see those.
>
> In the past git request-pull created those. It seems to have stopped,
> as I got similar feedback on other pull requests.
>
> I guess we need to add that manually now.

Yeah, I just saw one more pull request that looked like this. Surprising.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
