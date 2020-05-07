Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C18A1C9801
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzNDp1Dwjf7GZi1TvijjSRJAGdZkr95OnwjiDzg9zfM=; b=OgBwiCdWpKHxPI
	KoE2xkTdpbFfueacLrh14yfEtK7tJtjY77j5cxIgffPsvkpoSMRvjsg+daHpwtVanM5hwEPAA+3ez
	L7CeC8vPPHFtxjkORQ87Uk6aLxg+R3ky0avJEM5xcAlvWJ5jcMoFk1fJwowsf2jxLmz6/Xxoy7hSp
	rBnl+8LWs55C2feEomhR4VQ1kdltz3pB1ib/m16a6X1AKFb0tQqEt/dO8aCmv5SX4eDqALEm0PrLm
	lTeLU6PP3zdiy1nq0NH9RavqGiKvhAKee1vlRRk5FKxJzP2CQxzgzg3C+NahaBakOdGM3SPybRF/D
	D/aEXI0nss93M2XLkGFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkV5-0001F7-9z; Thu, 07 May 2020 17:39:59 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkUx-0001Dk-1w
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:39:52 +0000
Received: by mail-ot1-x342.google.com with SMTP id i27so5207529ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 10:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CMXS0zowmPsDrFjf5xEbGu8dVE3MBsjSQ7VzpeJkFvE=;
 b=tUBOedchqhQ1q5kJdeL987rzzCxTsDkLdwaY7Bm0Qquz5SnAptQ+5/yZk6qw+g4NQB
 KAWj+ovhOVbnCcQvEnmuv+ZZ6z4oVd2QrRC7HZ8NT16A+tLtMu4+vYX7wWxkrputm4Na
 jSWTQakQRSFlmQ+z8qwiX/F0QHAImw9E/VTSihzLVziFTcW5LU/DNskJGgiq4tHYae31
 jiylNYUXG7a/4uMeMYGYQTJOxjHSBBOnyEOlx1Gdl0TWYLwqLRtlIoOHeQi6gzWt6AdJ
 eKXw4PB4FG7WkLWbcr7/esGTg1EfJnXS5xImaSFcDJ4A0oGEbyRiAjOUGitj6zzKtW5P
 ShPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CMXS0zowmPsDrFjf5xEbGu8dVE3MBsjSQ7VzpeJkFvE=;
 b=I7qsFAcpDG5WcvzjPW9SYHlLznpoeI5WnuZ+jbocJAX36mcV3xDBNP6OqXQovGZZKS
 hmQf7LlZ46agTRIoyKbXUNFvQ1qkV4XRymgv797qKQatXW175z86DInnHPGlkbyOsM9i
 zkc904ZHzPxBUDZtrpnyfaymDeKAkGwDZpUWCX++DmjKOf7sz4VUK9UXDf+j/PBSn9PK
 eKEDDD8ZhH2gdOT0IA4nSpGVmjSPYOe18Yxo0FGUzr/kSM7KqaO8J5BZZ6I0A2Dv0fLP
 dGH7uyOJCwavu6bdgE18zPzUs+dEMgpckH70/wQUVJlUPdVEWDwx2NaDcwa1CNBfgRFx
 sYKA==
X-Gm-Message-State: AGi0Pubv25clula6SlFc39M4hBc+QP0AZbB6Nfp1yaJLsrlFkWz6LAy3
 2iTQQDrYJ2zHf6gq2MAiOduyg8sQjns4qEWNCfdChg==
X-Google-Smtp-Source: APiQypJYvf68JDO6Z5qq9e2nwL5w1x6Zsxj8B52/q4eWHeQ6p3w9jtK2miJrkqpbVHn9JGELhYQGI2sbb0+y75LEJjc=
X-Received: by 2002:a9d:2622:: with SMTP id a31mr12128246otb.231.1588873185921; 
 Thu, 07 May 2020 10:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
 <CAGETcx8Cn-b6L2y10LKb91S3n06b6+Be2z_A0402EyNy-8yECg@mail.gmail.com>
 <CAPDyKFrt01tDrCgdf7hjLDTqzOYWJ=m7fNMo-2PB-uHEOzZkmw@mail.gmail.com>
 <CAGETcx-kC18pwF7uDYE4XwVOWBJN8Lx48LD74LECgDts+VB0gA@mail.gmail.com>
 <c9a2dccd-50c0-5e9a-5ca7-69ec063e3630@samsung.com>
In-Reply-To: <c9a2dccd-50c0-5e9a-5ca7-69ec063e3630@samsung.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 7 May 2020 10:39:10 -0700
Message-ID: <CAGETcx-CmDMYj2=2LRo37MX5C=9UipiburyiPisnaSULLQCBzw@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_103951_122782_225CC211 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Rob Herring <robh@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 7, 2020 at 4:44 AM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Hi Saravana,
>
> On 04.05.2020 21:28, Saravana Kannan wrote:
> > On Mon, May 4, 2020 at 12:11 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >> In principle we should then be able to rely on the regular defered
> >> probe mechanism, just that it's the dummy device that is being defered
> >> probed (if we fail to read PID/CID).
> >>> Any reason to not do something like that? I'd think that should clean
> >>> up a whole lot of this code. Also, if we are primarily dealing with
> >>> AMBA devices created from DT, then we might even be able to massage
> >>> the fw_devlink feature to optimize this even more when fw_devlink=on.
> >>>
> >>> Just my 2 cents.
> >> Someone should try to implement this to see if it fits well.
> > I don't mind taking a stab at this if people are actually okay with
> > this approach and will test and merge it if it works. I have no
> > platform to test this. I'll wait to hear what others think before I
> > jump on this.
>
> The time I've prepared my patch I've also considered something like
> that, but I gave up because timer or notifier based approach was much
> simpler.

Maybe I'll reach the same conclusion. We'll see.

> If you have some time to implement your idea I would be happy
> to test it.

Thanks. I'll take a stab at it then. Btw, does this need to support
the non-DT/machine file way of populating device/getting resources
too? Are or all supported configurations DT based?

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
