Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F722A6A5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=35VAygmnqwPjYm2W1un5ZWlU7kimGxAkhJv3egvxy2U=; b=GWdP6KuxiOqcNKm6FsETOD+Plg
	j/ZnaFscFKd4JwE34JGMGyYwlP5fngSDjdz5Qoby4Mz8aRHDTMRLS4/fM78yKe+mj8N64sROhK2ia
	gVlSNzciw4w9RD+cl33NjRel2cr5YWdv1GhP8HjAtzPs6lP36nzNjMiPJoKclX9BnM7VDM+ZnPdgT
	V62CfX6VFADVtY0l11ejAitGCdnylrHbVQex1Or6Edq54p9R/tgv6kBQ7/4rf+udLnLe9Fp2cACJC
	o1FpM7Bsdd5r/SlVekPQ1/Xs6I8UAsgC2YFt6UzybwUTH2kK3LEtPqwYc6ve973f7fguFF0thf6GM
	Vm302IkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUblr-0005lM-QO; Sat, 25 May 2019 18:51:55 +0000
Received: from mail-it1-x12d.google.com ([2607:f8b0:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUblk-0005kl-SU
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:51:50 +0000
Received: by mail-it1-x12d.google.com with SMTP id 9so18597811itf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=lP3FpbfMIvuOQG07MVFCG4V/h3ywZ1BD5hmNfMR3J6E=;
 b=Gp3G/q69VktgJze77MTankb1LTSDnjZ2d51y/gCJd8y56hym+gHh1iKOTxaxI4VM/s
 f/cGlT2W+VhhMmbnMwo/Q/ivp/I1zuCj5w7qkNYD61dFERRvb26ZA6uq2kpPl8WDssnt
 ISgU7Vg5Npw9Cu8jKyjfft/xYixyMkNQ7oDXi0kM11AZHKobspRs0IAFQknwlwi1S0kk
 swMqg7WKqfLj1GP6YTNHfDuagrjMRTrSYQLjbE9bo0qzI/b1Ceyt4eX+Lq+UWQubQ3pk
 CVGK27DPIfFil6xfP7iMyfO9yUJz1lkM/qhDpDhsMefFOraSVRqB5QQK6oERvkP4GG4U
 RnIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=lP3FpbfMIvuOQG07MVFCG4V/h3ywZ1BD5hmNfMR3J6E=;
 b=A+PazBqa1h+YLd3FlGrxDjEJCNYtf4VLLtZ4/quUA2FKOGUpvoFbem+TmxX2AR9rEP
 C/BI7thkE8IApfAMEXPoECELFdPAvCro70VVXRtMQxq3XWNxd8/l9Zd8TbUzHbh0D4qt
 /6ty3KUIrVw067IZFvMjqKkxtm4OHaZR7DaE+z0OZEtVmfh72pPluKejyeAYgGbIv7e+
 FlAOnjk2giigo7BMGUM+RcehmplgTW/KjmlOGT+HVV2+bhMzHMEcXqaOkZFUKYT5BBcl
 Xx7YEr89YNkSm636Srztu4a8yhDg1HKn2T4nD09tUMWY7EIPI5Ue4SuQ4Mmg7PuUQm2y
 WDNg==
X-Gm-Message-State: APjAAAXyosf6CNzWjOUAteBteJzXwkYN7nvq29CjpKgOUBfvinYJs0x1
 V+Xc2IUq5lIafoHSOCR4bNOEw6qxnOhmLm70KQg=
X-Google-Smtp-Source: APXvYqxDjHQ42yVP5kkUknPqUTdsPJqa8BjfguCPfpya8aOsIX6AQUF/JCUyPhWCfpTT3QHEbBKyxEpxTU8GUV8lVeg=
X-Received: by 2002:a24:6987:: with SMTP id
 e129mr22099229itc.105.1558810307628; 
 Sat, 25 May 2019 11:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512221612.ubmknvim4utnqpl4@core.my.home>
 <CAEExFWv5A5mhpV7afQT=AaYx2ko5QnfbM6HvfuTgT1Na=ssOcw@mail.gmail.com>
 <20190516182936.h6xdzp3gtg4ikave@core.my.home>
 <CAEExFWvDO3wJd6wp1hFudf3EGF0NixgKAwAd5-b1=VLF+7-jCw@mail.gmail.com>
 <20190519142239.eolisexp5mrdyafz@core.my.home>
 <CAEExFWsc_YB8NORW4ULfuoicL=xr_oAdtHSaxz4ELv53qvCAsQ@mail.gmail.com>
In-Reply-To: <CAEExFWsc_YB8NORW4ULfuoicL=xr_oAdtHSaxz4ELv53qvCAsQ@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Sun, 26 May 2019 02:51:35 +0800
Message-ID: <CAEExFWuaEW9iKnpUdmkHMzjSMS1ichYQGhtWqGibOe3FD5Mt3g@mail.gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
To: Frank Lee <tiny.windzz@gmail.com>, rui.zhang@intel.com, 
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, robh+dt@kernel.org, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, catalin.marinas@arm.com, will.deacon@arm.com, 
 David Miller <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan.Cameron@huawei.com, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, paulmck@linux.ibm.com, 
 Andy Gross <andy.gross@linaro.org>, olof@lixom.net, bjorn.andersson@linaro.org,
 Jagan Teki <jagan@amarulasolutions.com>, marc.w.gonzalez@free.fr, 
 stefan.wahren@i2se.com, enric.balletbo@collabora.com, 
 devicetree@vger.kernel.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_115148_941350_5101B35A 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI,

Following the discussion above, I made some changes.
I think it's time to consider V3 and see what else needs to be modified.

Thx,
Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
