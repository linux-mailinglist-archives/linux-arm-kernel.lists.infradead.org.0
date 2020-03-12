Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802B6182BD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zW1VueMjOBV7ArOJS2rjh5hbV5hI6+kNo1cxor5WSDw=; b=qHk4Ln/n74Icfy
	hNpsgsYZSYCkFAcRhtAxeFs3CS1GyOSglw6p+l1+GAsM2uFJ9S7+/0N2Pnddu3XuG3BumO8Lf8KyY
	1tPRTqywveWLt9j+lMrWSzJCzJszCe/jFF9wuvbNdVN/e2BtSXxz+qu40VnvViUoWx7a80TT3CR4L
	A24M5Zkxrqb9N3MAewr3omIIlWqpszB2WTGRbuEmhAKac2bgbMSjBU8OkxIytwl4lH7FbM57uwlfv
	7Mo9HGRtigzMqNADJKnf8ful8pB+XVJTMiCywiC7is9TMqYZeF5SKyuZS4wT88ogczxiAfKEjFcQf
	wWO2gSDw7ZmZGL5gVstg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJkW-0000FF-Ro; Thu, 12 Mar 2020 09:03:28 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJkK-0000Bm-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:03:18 +0000
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 02C92tKk006279
 for <linux-arm-kernel@lists.infradead.org>; Thu, 12 Mar 2020 18:02:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 02C92tKk006279
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1584003776;
 bh=Ze66mSQ/66E2lEFTcWIDioNc3sfhaXsBfI/IJCaQiF8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=d5L24OgHRVwFOBGi6xGnPl0Z/D1On+Gu9Feb3LLGmWPc1rSDlcekOKc4JsCChNQ/V
 v+grQoy6PrO5Bj7I+mHMi/vWvtPUbrYvDQXrbPadyg7ecpAODRYk0Kr3X3hlBb02l1
 3LpkvTA8e8c6yEMZ+R5qp6DMvKB8TpGH1/kRYuMyM0sk2f29BB+OL29QvM3wlaIk3G
 PYG5VZ9hsvvUpPHlWbyGebmRGk6JRBIWD6g3Dkjggq8f7TX+b+gVwOTiQ5cqFNtHDU
 U/HYTfGNzCy2/x4StrdYRLR0SAywssKVcQoJHtkUpKoy2++DntLDl1UhHg2EKJpUn6
 wj/r2Ud7jH0IQ==
X-Nifty-SrcIP: [209.85.222.48]
Received: by mail-ua1-f48.google.com with SMTP id t20so1815149uao.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 02:02:56 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1OIiQ8U6ZvHU4DRLjE93ooBZBnW6mlnjSO9XcgSfk7wXU40d8B
 /UKqv7FMX+7dlaue3Yujtz6wT8diB256J+NnlAA=
X-Google-Smtp-Source: ADFU+vvFC2wWLLojiSmCVABb2cx04S0no+WUO1vLaarHeweUtZ5Q4oyHvq2r/9Q3efqfrz7YFQ41Invz1cnhlanlbuA=
X-Received: by 2002:ab0:28d8:: with SMTP id g24mr2907292uaq.121.1584003775380; 
 Thu, 12 Mar 2020 02:02:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583896344.git.joe@perches.com>
 <dae0878058223a42c77d725b8d7c5845a7ef9dc0.1583896348.git.joe@perches.com>
 <CAK7LNAS7GAk9yXkPhbS3ByU+n9Gb-rk0PeLcXLCNwpW1B22aeg@mail.gmail.com>
 <891a42ad8d8fd7beca911845108e1ded022ef3f7.camel@perches.com>
 <20200312085606.GA154268@kroah.com>
In-Reply-To: <20200312085606.GA154268@kroah.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 12 Mar 2020 18:02:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS98yeCeFZpKgNRRKcFhXSKWQ7Ka4vP90YcY=ufScZRCw@mail.gmail.com>
Message-ID: <CAK7LNAS98yeCeFZpKgNRRKcFhXSKWQ7Ka4vP90YcY=ufScZRCw@mail.gmail.com>
Subject: Re: [PATCH -next 005/491] ARM/UNIPHIER ARCHITECTURE: Use fallthrough; 
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_020317_142010_1EB022DD 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
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
Cc: Joe Perches <joe@perches.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 5:56 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 11, 2020 at 07:31:07AM -0700, Joe Perches wrote:
> > On Wed, 2020-03-11 at 14:15 +0900, Masahiro Yamada wrote:
> > > On Wed, Mar 11, 2020 at 2:07 PM Joe Perches <joe@perches.com> wrote:
> > > > Convert the various uses of fallthrough comments to fallthrough;
> > > >
> > > > Done via script
> > > > Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/
> > > >
> > > > Signed-off-by: Joe Perches <joe@perches.com>
> > >
> > > Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > >
> > >
> > > But, I think the patch subject should be prefixed:
> > > "serial: 8250_uniphier:"
> >
> > Yeah thanks, that's difficult to script though.
> >
> >
>
> Kernel development is hard :)


It is strange to process this per-platform
and to send out a giant series that
consists of 491 patches.

This is very trivial conversion.

I think it is better to have a single patch
to convert all files under drivers/tty/serial/,
with the patch subject "serial:".



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
