Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A581E5867
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QM49HvjozNS/hCHwQB5SsjF2arKIyqOgYqoU+eKNEiI=; b=gzSBO1i/RnZrFX
	XZpc+OC2HXBEciObDHqmXFBCGTv7AAKwoYsZh6TYDlpitqXmKOWShr71f8+9G4X01qTNadp+HOCI9
	G32VTXwfPPxIRUxBVFAorPaiTMWoh92YH1mGocWlbg4wDQGEiPYUd2GDHZRwVLjzTqRk0cFvkVHMJ
	Dq10B3txQ1mTa4NoaSy5z/0lO++zzQ9hSnzuqT27Lcn4IQMMJpWv1bAH+zgiT0oj/jRE2ALVlXv6t
	O90Q2+EOsDhy0xNHzsOs+QbEG6p5Dsol8PDHKq2zBLfDqy9JKoOrvwel0nwh13tXzQtiDqKtH/SN0
	xch5PvbM3bdAnnzlYxuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCrs-0006xU-WB; Thu, 28 May 2020 07:22:21 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCrh-0006ww-Sw
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:22:11 +0000
Received: by mail-ed1-x542.google.com with SMTP id c35so6025622edf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 00:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n4tBqrHHH015OrQnVw44NXP8wN1moQE/VCGYfLYhYdM=;
 b=nDJk+/ilcTY5g3WooqU4ASS72DOIy/+CsGkeFXI6o5HqLogDfJueIM6ZQKHkg3Ojcl
 gnPnvgdOMCm9ixt3t4fHxUqqBNZo8GuaHbybuNVbJOh1huL0IKFtoVPt0NGFheVnskTM
 9K1gjCVQ5K9hg6BAy6DRt5824wcrgyrdWUeGA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n4tBqrHHH015OrQnVw44NXP8wN1moQE/VCGYfLYhYdM=;
 b=LRfiJ1L2S9WfkMaooupZEY+cCWkmynTm+s3oPWimKIbULYGwqSlzCY7gYZCQojqYXh
 o2VzCZAKRb1MnDpvXK2BrM2DzgsFGPz0IaaVc2q2MoHk7MqlAoHJUdOHXohWSPac6SxA
 izNo71M3ciQD2ht1gRZGheRz06DwnyVMTeLS2Gr4UEjq0JeZ96jVbzQNvIcskrSu6NdV
 2K+xRXxmISHocctksa7SVnaddhX2P6q0FIapsHHAtCxYQyxzE8QKy8GPF2iNlgrMZovO
 tARivpzPten6cDNP42JuOhrW7ZHKF47GL975UW+Ddn0bkut/ZnrAGBbEVaY/dyG74qUN
 +Tag==
X-Gm-Message-State: AOAM533jmykb/ewI5CMk6GWM268A5TOlTjgGEetaCcOSZwgFxjs35KCZ
 rFvcV7W9HHjuhL0ATqPmoeXfgUT2IKAF2Qw1Euo=
X-Google-Smtp-Source: ABdhPJwEwZAhHDft77mB5JK0NRgMsjUb79eJIRkORoZxijEz0fO5+COmADUM8RxYzt2rFE0Wm4P5ghj3W/q76Zrw9qU=
X-Received: by 2002:a50:e444:: with SMTP id e4mr1608372edm.191.1590650528266; 
 Thu, 28 May 2020 00:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200507091008.1bd38185@canb.auug.org.au>
 <CACPK8XfOJqj=E4JwQsZWvAsp7cv=bjqj2twZk0=MR+ZJQP1nqQ@mail.gmail.com>
 <CACPK8XcUydETZvJEkWPvLnLXatAg3D-MfA1yeDzE0epc-hisJQ@mail.gmail.com>
 <CAL_JsqJWXH4JMZgRQa9r_aPLW6Muz6BRtf_NmeqJv21Aefji1A@mail.gmail.com>
 <CACPK8Xd4651vtBTbBoGk0G7daunmF2CCOsDZ-ceto7Yu6A5z5g@mail.gmail.com>
 <20200522101638.052bd0a2@canb.auug.org.au>
 <CAK8P3a323rPCDDws+us4UYo7ZO6XvkZ13hBChZ40_DwCxBZj_g@mail.gmail.com>
 <CACPK8Xdm91DwuKcm_d9xh_+8gPzxWpWWAzJzq8pAFVc79x-q1A@mail.gmail.com>
In-Reply-To: <CACPK8Xdm91DwuKcm_d9xh_+8gPzxWpWWAzJzq8pAFVc79x-q1A@mail.gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 28 May 2020 07:21:56 +0000
Message-ID: <CACPK8Xf=cH4JY6Jd0ep4-KKQLDuV30Z_NbvuO=op8xJ5NHHJkQ@mail.gmail.com>
Subject: Re: linux-next: build warning after merge of the aspeed tree
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_002210_223964_8F642018 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vijay Khemka <vkhemka@fb.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, ARM <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>,
 Manikandan Elumalai <manikandan.hcl.ers.epl@gmail.com>,
 Devicetree Compiler <devicetree-compiler@vger.kernel.org>,
 David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 at 06:09, Joel Stanley <joel@jms.id.au> wrote:
>
> On Fri, 22 May 2020 at 08:16, Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Fri, May 22, 2020 at 2:16 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > > On Wed, 20 May 2020 07:56:36 +0000 Joel Stanley <joel@jms.id.au> wrote:
> > > > I've sent the patch so it applies to the dtc tree. It would be good to
> > > > see that change propagate over to -next as others have reported this
> > > > warning.
> > >
> > > These warnings now appear in the arm-soc tree.
> >
> > Right, I also saw them earlier.
> >
> > Joel, have you sent your patch to David Gibson for integration into
> > upstream dtc?
> > I don't know who sent the other patch, but as long as one of them
> > gets merged, I'd hope we can pull that into kernel as well.
>
> David asked for some extra features (and a typo fix) before he would
> merge it. I'll take a look at that now.

Here we go:

https://lore.kernel.org/lkml/20200528072037.1402346-1-joel@jms.id.au/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
