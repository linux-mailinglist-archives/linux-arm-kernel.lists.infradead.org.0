Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9D914A11F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=penvS2TvQky2q5wc2ax2x7vjyxwarDHdtei03+BKskw=; b=J+ahvXYhO79BY9
	4TW+EMNWEsP42rF2qrJKQiMbeusNwkpA61bRm41VlXRUbNSNWwUcVks74bhwxAVCYXGe4gEJqTyof
	itrJf3lrIHhC/UOiPmGk37RwTsW6grsTTGx6xueOUW4NGM9w4l9moTR1i0hc38V7kjT83KOaT7egk
	ztDmiyJLkjPhfPqkwQZhhf5yNQM/FYZ6xUdIVPSvsHXBDTH/RpCKwCx/HACfbtB/ffDOcNCe+L2Zj
	C5XSN1B3SbRTYLXcUhUcIalcqRIVhDNPC8CUdxaatusHl7+7YicpcW0hVWwfOLeEdjUroM5m6A6NU
	cUHPnpt0S3aK5qlx764g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0yq-0001Xh-I9; Mon, 27 Jan 2020 09:46:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0ye-0001Ut-8K
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:46:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id y5so1591525pfb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 01:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3Cm7Q5qzKRSI5iiYtrFdNoM+jC44DmDk+4BVP7MJ9Zg=;
 b=TpYJh/exjltRCH5MaUqukcoU35cpYu4IuEiuVHoJprcgTTXo9U/FcLTjUK/nXQ3fDz
 6559/RJgNO0g3sLmU+rHSiUR2HGYTwLDvjiGdRTnxdtyP2X3wc5drkyP6dwwcCk40WaZ
 6Aey153QXTKHD/rXHU/kUZAkaWOsT8oaXxg71fAYko/Fo+knlW8ZewVpbEKF8HYuSmTO
 zDK/nhC3bVFz8H2ttpc7x42Qvp9pPqv/Zy9+PGPN0tEpCWa1bZEUpjUxKt3SmW7UF6B1
 PPl9+f2dfb/Z18xZgVEsR0SG74VwlPqgLnTECYbn949Aa84mw037tsNGH+QpGwX6UX+a
 /TSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Cm7Q5qzKRSI5iiYtrFdNoM+jC44DmDk+4BVP7MJ9Zg=;
 b=WTCdcLrLM6nmbTu7jmS8QxundeMclF3GGSlV3FMWeFrW7eynmpF3XOxDKk5/WEUPBE
 cJgYC+X4xh2UnO6kNN8b6PMojwK35Mo2mZZjwoKReYXZUKLF7UZKe+MsXcT+aEqi9Wo0
 7Mu8f6gGNbruGBKnzu//ueg6XLogwn1zRzXF5jdQF+8a0wModxnkDaJg6g1DNyfZh1Rn
 14NSynSHvmTpBYTSxW4UJqKLzUaCmGArR3HhVAjZd1XSkqQRbDVfwA69WSOulCXs0sa0
 uuC5YsQSidNAfowjv55YUIZqrnfrYFtAFNZIs+zIb++M97/ydLI3Zuxk4UqAGNpG87at
 r/NA==
X-Gm-Message-State: APjAAAWsmQPN/ahhv74LBP0y7F7zmUSfS49EjPk62Pkr9sfTJMxAQ1BP
 U/whhB7lCzJ+QbyFMhwFivVf9gB5yPXRyNZx2UsQvw==
X-Google-Smtp-Source: APXvYqzxAmZHmgdppWLSwzJ8z6LS1RNMsDSWdXzZNhIxbL6muJXHr3snth4+9kFim+A0KHQR+fGA6ETjYsUICdwc1Rg=
X-Received: by 2002:a63:480f:: with SMTP id v15mr18178906pga.201.1580118396834; 
 Mon, 27 Jan 2020 01:46:36 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-8-brendanhiggins@google.com>
 <CACPK8XctCb9Q2RaFVHEDuWxKDXpCWMWs-+vnKZ=SeTa3xRnT_g@mail.gmail.com>
 <CAFd5g45MFYMK-eZWPC5fhm2OkynUXKfArUVhbanYVH+qKRUwPg@mail.gmail.com>
In-Reply-To: <CAFd5g45MFYMK-eZWPC5fhm2OkynUXKfArUVhbanYVH+qKRUwPg@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Mon, 27 Jan 2020 01:46:25 -0800
Message-ID: <CAFd5g454tX9zxRAq5T_pDGzcWt7u5r119wjo-BCGVq+=Ej4bGQ@mail.gmail.com>
Subject: Re: [PATCH v1 7/7] fsi: aspeed: add unspecified HAS_IOMEM dependency
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014640_295211_9A398999 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, Eddie James <eajames@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Jeremy Kerr <jk@ozlabs.org>,
 David Gow <davidgow@google.com>, Alistar Popple <alistair@popple.id.au>,
 linux-fsi@lists.ozlabs.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 4:30 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> On Wed, Dec 11, 2019 at 4:12 PM Joel Stanley <joel@jms.id.au> wrote:
> >
> > On Wed, 11 Dec 2019 at 19:28, Brendan Higgins <brendanhiggins@google.com> wrote:
> > >
> > > Currently CONFIG_FSI_MASTER_ASPEED=y implicitly depends on
> > > CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> > > the following build error:
> > >
> > > ld: drivers/fsi/fsi-master-aspeed.o: in function `fsi_master_aspeed_probe':
> > > drivers/fsi/fsi-master-aspeed.c:436: undefined reference to `devm_ioremap_resource'
> > >
> > > Fix the build error by adding the unspecified dependency.
> > >
> > > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> >
> > Nice. I hit this when attempting to force on CONFIG_COMPILE_TEST in
> > order to build some ARM drivers under UM. Do you have plans to fix
> > that too?
>
> The only broken configs I found for UML are all listed on the cover
> letter of this patch. I think fixing COMPILE_TEST on UM could be
> worthwhile. Did you see any brokenness other than what I mentioned on
> the cover letter?
>
> > Do you want to get this in a fix for 5.5?
>
> Preferably, yes.
>
> > Acked-by: Joel Stanley <joel@jms.id.au>

Hey, I know I owe you a reply about debugging your kunitconfig (I'll
try to get to that this week); nevertheless, it looks like this patch
didn't make it into 5.5. Can you make sure it gets into 5.6? It
shouldn't depend on anything else.

Cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
