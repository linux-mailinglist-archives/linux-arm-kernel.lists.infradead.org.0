Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1771CB818
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 21:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQ6+0xGGo8HLFd9R5EPlPURsevW6VnXslgmQGRVKiKk=; b=HdWUa++Qc4EsIk
	qZMH6f918nKm/W7YXI2psYSaLCg8gao7f4YBcFn0JaAG9E+Hw+QDvr3BeMfBTPl9JG+G4kq8so5Jb
	mKBb0MiprB47yAJqrEH0Cs3e+UNLJI/nRdHbwbgKoIcKEF+lKTp8ZEQMGQi6g1CPcDq3Yhfm50dt4
	Pi6e926PITmP7oQSK3eUx+cAFJu9swpSKheFHZmK13yBrDGxDfmym2RIvAvKenWsK3y8i7+GqSZLv
	RLZbNWHDBauLozhESFKrqsNTBu8XQjxL0Db5ebhou9oiaXjhy6ZrkBkOF4GjXC8nZYtreqUlJibh5
	toV1EZRHy5fRupV7JaEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX8Y2-00086X-Ue; Fri, 08 May 2020 19:20:38 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX8Xt-00083u-OM
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 19:20:31 +0000
Received: by mail-ot1-x341.google.com with SMTP id t3so2381886otp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 12:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dy14bCmAe7BVzWvoumFEZwlusDC/g1jSzHL5AYdiSpQ=;
 b=cDQeSsZI7jUp/t2wo5cjLtPTAlmmdrVlTSnSdLsYsI7s9jgUnACsI9sj5ES/ddQVvW
 wUykj0H9WH5cbPcljRy/LLCnwcrMqR0MS43jZfw+i4kWEFy7yt8ennBi8q6kE+FslofE
 cF8LyO4sYPyUZNNLuKDlz4UOxxVYDuSInSs3WBNRaN3aNhG7g9bBhsz8l0q/7tP+kB3E
 dU+gOmo6EJ5gY/aXGFShcBS56FlPrrSlEFm7S9+4dKOVG/zl8OVW9D4YYTVJD4sDeHQo
 K4mTI7TcAvACP3gbVPyzvegbAaS9Q+kvg2WrP9u2QCdyCF34KRSXCcTsAVh59YWWhAop
 yKLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dy14bCmAe7BVzWvoumFEZwlusDC/g1jSzHL5AYdiSpQ=;
 b=K9se3SjfjEX86Kfv4RIm15vpIVcqZpX1d7B/dKF4W5Vt9j4IW96TUrasp/w3YBve0+
 JGCmBc8Z4+eHJPEj5M8g0PlUCd8wperqrfXUQ0EeGeFoROne5kMnx5fLMbLO9Gf0OXoB
 hPtkHbCGyPN2z6PgzNBNSofqhyedIJFDGTKSUrzN/wXbkzxmNv6waBfvHq7OQk+0bLx8
 2zcyi1QsJZ3gbPfVmIZP40DVcckFyMtg4ZrV4kgZ+Lyb9MDGsVfEjSWNj8tptNdI7yYU
 Wv4XUckdqFpHDcanl+No/At4479wOM+JvDuJxfE3dtRfXIjtefkurY9HygRqNtzaWhd+
 ATEA==
X-Gm-Message-State: AGi0PuYWBY7cFb7rMMlPYQGim6aGBJ5qhC37ZfVgw/PqL3V7MORznay4
 w5kRQjfWr5JLJUVcMbUhg2GqPzbzvPhWbPsxzRpL9w==
X-Google-Smtp-Source: APiQypKUfg5XnRWPl9u8/xZ92W+BChS+FVqbYlkoqnPcN7KydWTtimtjkSLbOagW7JcAEkW0Y6QXwhV/ofZLf44mTw4=
X-Received: by 2002:a9d:1caa:: with SMTP id l42mr3625835ota.139.1588965625706; 
 Fri, 08 May 2020 12:20:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
 <CAGETcx8Cn-b6L2y10LKb91S3n06b6+Be2z_A0402EyNy-8yECg@mail.gmail.com>
 <CAPDyKFrt01tDrCgdf7hjLDTqzOYWJ=m7fNMo-2PB-uHEOzZkmw@mail.gmail.com>
 <CAGETcx-kC18pwF7uDYE4XwVOWBJN8Lx48LD74LECgDts+VB0gA@mail.gmail.com>
 <c9a2dccd-50c0-5e9a-5ca7-69ec063e3630@samsung.com>
 <CAGETcx-CmDMYj2=2LRo37MX5C=9UipiburyiPisnaSULLQCBzw@mail.gmail.com>
 <CAL_Jsq+0DL260-h-2buV0YKxgYrJOxfk=kocBjm1aKdLhovpMg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+0DL260-h-2buV0YKxgYrJOxfk=kocBjm1aKdLhovpMg@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 8 May 2020 12:19:49 -0700
Message-ID: <CAGETcx-vG75FPmXA8VaTZ9h5hiCeHa4WkOn-+2i80HsX-=WNQA@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_122029_817298_4CBC3FBD 
X-CRM114-Status: GOOD (  28.06  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 8, 2020 at 6:41 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, May 7, 2020 at 12:39 PM Saravana Kannan <saravanak@google.com> wrote:
> >
> > On Thu, May 7, 2020 at 4:44 AM Marek Szyprowski
> > <m.szyprowski@samsung.com> wrote:
> > >
> > > Hi Saravana,
> > >
> > > On 04.05.2020 21:28, Saravana Kannan wrote:
> > > > On Mon, May 4, 2020 at 12:11 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > >> In principle we should then be able to rely on the regular defered
> > > >> probe mechanism, just that it's the dummy device that is being defered
> > > >> probed (if we fail to read PID/CID).
> > > >>> Any reason to not do something like that? I'd think that should clean
> > > >>> up a whole lot of this code. Also, if we are primarily dealing with
> > > >>> AMBA devices created from DT, then we might even be able to massage
> > > >>> the fw_devlink feature to optimize this even more when fw_devlink=on.
> > > >>>
> > > >>> Just my 2 cents.
> > > >> Someone should try to implement this to see if it fits well.
> > > > I don't mind taking a stab at this if people are actually okay with
> > > > this approach and will test and merge it if it works. I have no
> > > > platform to test this. I'll wait to hear what others think before I
> > > > jump on this.
> > >
> > > The time I've prepared my patch I've also considered something like
> > > that, but I gave up because timer or notifier based approach was much
> > > simpler.
> >
> > Maybe I'll reach the same conclusion. We'll see.
> >
> > > If you have some time to implement your idea I would be happy
> > > to test it.
> >
> > Thanks. I'll take a stab at it then. Btw, does this need to support
> > the non-DT/machine file way of populating device/getting resources
> > too? Are or all supported configurations DT based?
>
> Not sure. There may still be a few cases of non-DT. If everything is
> DT, we could probably just get rid of AMBA bus and make everything
> platform drivers. We have the compatible strings to match on already
> (we only use 'arm,primecell' currently).

Ok

> I'm not really a fan of creating a dummy platform device.

I'm not saying it's awesome, but I think it would make amba code a bit
cleaner and more importantly easier to maintain? It'll get all future
deferred probe fixes automatically instead of having to replicate it
here? Don't have a strong opinion, just thinking out aloud.

> There's
> other cases of needing to power on or enable devices before probe.
> SDIO devices are one case. That's how we ended up with the mmc-pwrseq
> binding.

But how many of them have this weird userspace dependency where you
can't tell userspace about the device (too soon) but also can't probe
without userspace? At least the mmc-pwrseq doesn't seem to have those
issues.

> I really think we need some bus/driver hook between device
> add and probe. Or maybe more precisely it is just between add and the
> add uevent.

That feels kinda odd to me though "Hey, add this device, but don't
tell userspace". Might be better to keep the "complexity" away in the
places that have odd requirements?

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
