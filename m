Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436F416EC0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BrQ/c91rzKef4hSDVt2B8vvE8rUb3og0FSdBvT/Kbc=; b=EyohCUsoJXdheH
	huZDqN4HXDEpbthiE9g9JD55WMeX7PrzMjLV29/Owoc9NHXOfGAxiiGMKpKUuZCGX+vc7xxNOHiQb
	cdK66SkkzgQEqyHE9IfxMWeZp9yAtdXDe0t3aVqYPZsfNDCbGwjkQStsoimc4/SuOv5GWhn2DzAzS
	ZkiYaXFey7bu5aE3W7vQrc57CvmMrXkCd56hTkAg4Re1X8pp49k+mJsSeXwa+mW0a2ZCPMxiuFHdT
	VFlyiqjX2UCIhmb6TvOHLEMgbmsL59AUTrYkZepbqiW9mCMdsasoLxgBT6Lbxi+esUL4bbIySvmAp
	QgHuXduLQ0ZgZOBynFTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ddk-0002vE-FF; Tue, 25 Feb 2020 17:05:00 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ddb-0002uO-B2
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:04:52 +0000
Received: by mail-oi1-x244.google.com with SMTP id q84so23730oic.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WjrTxbp7cfkXnl5gk6Cc4pAXSZXJy9oWfNOp+gTX8Ew=;
 b=EvBMb+m9G4AB44IDAn8Xq3yDLNLFIDcWjdApNcpebk/Qj1GzSvjWdjjUZ69zgTPzG4
 vn9LTWU0LFrllNf3WPGS0qI/EJwkrnj4Fl4QgbjuGIHUcjyybuECljolYYfgFouBejoI
 7IWrw+tiUYEmpXnNQfXMW3cYkV5Qsp4TTbhqnbV4NaaBD+0l1OEHfBK1aiFr67OuGDev
 v/uFCVXuxqCp2cp0DLAHMnFBFZ7LWcWVukoR2fXMNgXxHErbenXhtsYQXbLMXNZyoVC0
 t8UPXZ1GQgbwdtskG5ct9Yk/V2G/BgM31qgViBA4aMCu3Y7Lr5F/7Nre279ckyvqEG4n
 ErAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WjrTxbp7cfkXnl5gk6Cc4pAXSZXJy9oWfNOp+gTX8Ew=;
 b=lVjG0vJOIDo0+N2VV/m17lfi+EQVMPYGDy8ezhq2GW3CAmeCUeOHIA12vQWYVhUuje
 X2fZrtLd0QAtXM5jYK5NdVFwIMqSOfioQ+gLYa6x96eq4q2wZRn5Fe4b9GHTKTbi5lSx
 fMbI2umawPisAslfy5n8LUlBKb3p49kX8qqhw1WNaD9hsoaVANP10qj4Bg6mm4xGjsTc
 xhtnodnusK5WdobBpBCrtj2LctGf3va9toSpdw4gI7Zn6/AcT74mRptWGBfE66yH8Ea7
 P/Uob4z8bTrZum05BGmrXejOMmLwUycsVp9v0vcOCKqfxXh6nHysed21oBxuA+4ySRpn
 P1PA==
X-Gm-Message-State: APjAAAXCu47I9pxQjqjSS0OZA5oUK9yiqMkFzvCg+A2uOPVf2klqwE5v
 L+mFcnbpzYSud2cRbqShwZ8wrSNtu4OvkL3ARPKQbg==
X-Google-Smtp-Source: APXvYqwP2lsJuVJL9sCenqj+7DKdNKMWIBlaLvFMMj2uvSmZ3tjHdsiq+iK0WoNuyY0Ba5yvcc4jmoyT5zj6Drk1nAM=
X-Received: by 2002:aca:df88:: with SMTP id w130mr3260170oig.172.1582650289657; 
 Tue, 25 Feb 2020 09:04:49 -0800 (PST)
MIME-Version: 1.0
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
 <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
 <CAJ+vNU3XVNkdHXbq-KJaRecSxpPxboVW5Cx7zVEv64Gm1dt+Vg@mail.gmail.com>
 <da8f38078ef8805200b102a1d24da4ae@kernel.org>
 <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
 <8f2efa884c7cb642a9b9fa66c7949607@kernel.org>
In-Reply-To: <8f2efa884c7cb642a9b9fa66c7949607@kernel.org>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 25 Feb 2020 09:04:38 -0800
Message-ID: <CAJ+vNU0d5_LsnzFq0_5=6-i5G5y5AjvWZhO5x_TVBLjor--TtQ@mail.gmail.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_090451_380610_A3B6B517 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 9:00 AM Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-02-25 16:35, Robert Richter wrote:
> > Marc,
> >
> > On 25.02.20 16:27:41, Marc Zyngier wrote:
> >> On 2020-02-25 16:13, Tim Harvey wrote:
> >
> >> > That does enable the erratum, disable KPTI and boot properly but I
> >> > misread the erratum and it shouldn't be needed for T81 pass 1.2... the
> >> > erratum is documented only needed for pass 1.0.
> >>
> >> Can you then remove the patch *and* disable KPTI?
> >>
> >> TX1 is broken beyond recognition and KPTI is known to explode on this
> >> HW
> >> (which is why we disable KPTI on it). We always attributed it to this
> >> erratum,
> >> but in the absence of any help from Cavium to identify the problem, we
> >> just
> >> keyed it on that.
> >>
> >> *IF* this HW is indeed unaffected by it, then it is probably the mix
> >> of
> >> KPTI and SWPAN that triggers the issue. If my suspicion is correct,
> >> you'll
> >> need to have a chat with Cavium/Marvell to understand what is
> >> happening
> >> there.
> >
> > I checked the docs and Tim is right, this should be only visible on
> > pass 1.0. Thus, the rev range to enable the workaround as implemented
> > upstream should be ok. I have asked hw folks regarding this.
>
> Then it could well be that our disabling of KPTI on TX1 is keyed on the
> wrong
> erratum. In the absence of a clear explanation of what is going on, we
> made
> an educated guess. If oyu're going to find out about what breaks this
> CPU,
> it'd be good to understand whether this is the same problem that affects
> all
> the other revisions.
>

Marc,

What's the right way to disable KPTI for ARM64? It seems 'nopti' and
'pti=off' are not honored for arm64?

Thanks,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
