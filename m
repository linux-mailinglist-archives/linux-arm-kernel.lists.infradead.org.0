Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B261ABEB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biIqazkJleJdm4PqiZISZEwytGqck0oNvOdbv+VOKlc=; b=PFkEE1xhPeBAak
	dkpXhoU9L7lC4ml6LiFNgkzp4oR77EROH3O3sKEJcPm68aFrwoW5TaVr2AgLD/rsRflqrBnZ96ki/
	spJa/rbHH94Ozxgl3irfbenrjIC0y/19QK9KKSpMD8u58DwD03Mp/uE4tX6itY1rcpH67OPsjN3wz
	eKYGoZiCrD5U2LRPhrix++zmhUvxuXMZBjUm2Omc4IuMYQDMebHs4+IzR3mjn+iB0hQf0L1KfFZG2
	q5PTVddxbw6MWAJdDcoI//WEEQ/Ru7QE5E1IBFBorqZrTsJ3qF2OUKxj9NiBru7wlx7s8cz2QeWb3
	bytiZN/aPMERluwWwChQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2JM-0002u8-97; Thu, 16 Apr 2020 11:04:00 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2JE-0002tp-7j
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:03:53 +0000
Received: by mail-lf1-x142.google.com with SMTP id h6so5294354lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2tz4CvpPoDqO3IvfDZ2MpbJJnupAGJIktrhNanSs2sY=;
 b=b767gb/CLjVtCwtVmi6rdlR7rb4gtUgr0CyAR+Npvs210xpNlZ48VDZaX/XRcJxSM0
 4u4/akBEJghU/bO/TOZwIfaHJw8RKJbfR12/wVPoCQAbKDcAV9gLvd1tMNZe13A6UoN7
 JkAi90VHGub7o+ScSUk1lkYJu91R1Fi8Vzldvxc4G8DnjFZ08SU4cKjsu2iNFI/QuOZL
 mLkxv+oR7OFGRL4nz060NUU4PrmwI3Alq90LZKxVcno1swa+zB6tWRclNtUTpefoulUg
 u8ikbiSeyGO7JA6r65x4b6BBPNNr48ptjotzn2sTIVOmy5YruD8tMbDsZ8t5WvzI9jCT
 gO6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2tz4CvpPoDqO3IvfDZ2MpbJJnupAGJIktrhNanSs2sY=;
 b=TvIWb5aRav/845x0z7Mrn7gyf524yru0nmrYbJGEnFiTFPpBbiAaRUZpn4JILo382B
 YI+hwbvJuESlX92EHVJTPb38h/cJCcrJW8znguHE9gk2ysbnX7+WSdCNeHzgestGSDqJ
 0RbiTin187fTNxidXtztEUd1Pcu2iWAyM+qY5jp1AQMlSxD5Kasd/iKcwpwyEi+MAXUT
 3V+zC6cB3DCiwOY6Ila7apW2ARkXXMxi+yc+RO6FsIDnKVaJSp0dka0Sg635wXmLDK+p
 qGFEXeWvmFOYT/4G0RpZU/w2ac50xB7C9VxtMyijuJQn2CA3NxyQ/lx1o/WW4Co8/kit
 es0w==
X-Gm-Message-State: AGi0PuahUvPWOHwQKPrrljRSn+6tZrCpEGGV2obKOG4pSh1aR1O2BqC7
 ZwzV3CFWuNEOgGrrI1rRPjzmH/qHw0XqYNURNN0kLw==
X-Google-Smtp-Source: APiQypLKB9+s8b36LuFijXGBA2HRSRZBSrL+mZ+5ZkPIIuTWrFKqtZVdf1t8tWYGeUk6ANuSgvAU0SwEReFkKMm8OiE=
X-Received: by 2002:ac2:5c4e:: with SMTP id s14mr5811615lfp.77.1587035029763; 
 Thu, 16 Apr 2020 04:03:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200409221952.31287-1-robh@kernel.org>
In-Reply-To: <20200409221952.31287-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 13:03:38 +0200
Message-ID: <CACRpkdb=Y8HN-nvXicYQt4n=GSn89uFTt5kXS7ddfn8bC4iizQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: versatile: Remove dead sched_clock code
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_040352_287339_1A4E3FF9 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 12:19 AM Rob Herring <robh@kernel.org> wrote:

> Now that there's a DT based sched_clock driver in
> drivers/clocksource/timer-versatile.c and all the Arm reference
> platforms are DT only, the non-DT versatile sched_clock code can be
> removed.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Awesome, good catch. Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
