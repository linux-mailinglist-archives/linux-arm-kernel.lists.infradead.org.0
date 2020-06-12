Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2DC1F76B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LX1o+fM6Yk4GRF8O7PCEjgs2ziopS5kYm7CuxaoGME=; b=pqm3uSvB8KjKcS
	53yxig6P54BgEEqp8IsyOsqX/f/ZLcQK08YWHbUjjyrMfD3MWT3Oo7dwJGBNZtI6TC0PxJeVLn3Yc
	TMYxw7JzQuEXePh+djUPD6c67212QAsmK4bMxzhDQzLm2OJC2Kb9OxyefAJZ69YEtPHhWh7kUuviA
	SgvPEltVJU56kvAG4dGbDKY7MQP1GdRLBxRvSpbAVbE05y3f9cj8dWQ/KGl/rIitG2vcfW7beUjp1
	cdiro+eskAkCeKR2gskqF4q7kRpRT1gvd7W8nl6Uce/FR9/od95c42881TOkK9Qrqih/tnZEwaIIa
	lnBAV7tgY6GP75DhkJdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgsx-0000QL-1d; Fri, 12 Jun 2020 10:26:07 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgsk-0000P3-Fi
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:25:56 +0000
Received: by mail-pj1-x1031.google.com with SMTP id h22so298503pjf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 03:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cUX8I3zbQvQLr1JtDLu8cxMFi8HBUB/7MciF2bMGdXA=;
 b=Xm8r5tnsMoGuSi4xpAI9+p+TAX+EGw+C+Bue1QyTIMG0CVcJ9jRKmmIQxK/wnkpKbc
 7nrAjHjR87jnCXJtSLUFuKFm8t1Ukhq9UleBP4oTnjOyi1e3KODNkQ76Zl4p/jjC2EVb
 nvby513WQsjxYOWwsX961qlEo67QxJpVx0VbsnG+mTmtxHntGmXDANcbX4bVNkx7T4cl
 Y6yb2hI1yDphLwpBYlkoLmM/9BlN/wAnLgWEdQt7iOW8PcbSRhoqcuP5iJMz8hpHPJsf
 cXLICpttu05Pg/MMeRnlZxEg0OEn9eI2zvYAJbs72qRf9Uzy2WZNqfX9LrSZFK2eHaIC
 1B3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cUX8I3zbQvQLr1JtDLu8cxMFi8HBUB/7MciF2bMGdXA=;
 b=T/GylPHHcI5fVaVPF2YzEJuK4lbDfRHA+/EXZH2IBH/woqdVBawNzfm+RRnjb3aqcI
 NsHjb4oWkGxkoWsuZ8MSeKIY+M9YMA7YvJGstA6+zee8a+DZE6ZfaL+qoojtv+Q/OzZb
 SXl73L+Rn/lMPsDvg/kZ5nnZ406Zh9x9CCSavi74R6YI672XfRmpP5L7OBEZKoXk6MKt
 kQh0hFKNfnBLfK2YXKNvVodoaqqypT53EGEaE6HiKUvfjYh1O6oMnHQV1gpvnqFjCe6W
 k6+cH5YI/fDjpt8X27eR3Yhyg28Ty+huxG5LbOj/G2gja81HupkaVzQzwv94X8KCNxfD
 Ymmw==
X-Gm-Message-State: AOAM530YzyU2oM6/zR67E5yGL7hsokPlUj/LdNgRHFs6glq79BxDWjOP
 KizmUo01a3DnpvPYVVWDd/s=
X-Google-Smtp-Source: ABdhPJyDf0t7pZ2FhXW0i0j+FfjSrBnypvQDMT+Lriq057tGe/P55czkaQp9gxDfqZGw9iHCNuzHJg==
X-Received: by 2002:a17:902:9346:: with SMTP id
 g6mr10732696plp.19.1591957553757; 
 Fri, 12 Jun 2020 03:25:53 -0700 (PDT)
Received: from localhost ([49.205.222.116])
 by smtp.gmail.com with ESMTPSA id x18sm5750238pfr.106.2020.06.12.03.25.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jun 2020 03:25:53 -0700 (PDT)
Date: Fri, 12 Jun 2020 15:55:51 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: ARM: vmsplit 4g/4g
Message-ID: <20200612102551.GA5377@afzalpc>
References: <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
 <20200607161116.GN1551@shell.armlinux.org.uk>
 <20200608110902.GA5736@afzalpc>
 <CACRpkdboPBGBdHaRtZ=OAFvikYZVh=BVu192uyiB8T=yeHHEbA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdboPBGBdHaRtZ=OAFvikYZVh=BVu192uyiB8T=yeHHEbA@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_032555_019407_20D0346F 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1031 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 10, 2020 at 12:10:21PM +0200, Linus Walleij wrote:
> On Mon, Jun 8, 2020 at 1:09 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:

> > Not yet. Yes, i will do the performance evaluation.
> >
> > i am also worried about the impact on performance as these
> > [ get_user_pages() or friends, kmap_atomic() ] are additionally
> > invoked in the copy_{from,to}_user() path now.
> 
> I am happy to help!

Thanks Linus

> I am anyway working on MMU-related code (KASan) so I need to be on
> top of this stuff.

i earlier went thr' KASAN series secretly & did learn a thing or two
from that!

> What test is appropriate for this? I would intuitively think hackbench?

'dd', i think, as you mentioned 'hackbench' i will use that as well.

> > Note that this was done on a topic branch for user copy. Changes for
> > kernel static mapping to vmalloc has not been merged with these.
> > Also having kernel lowmem w/ a separate asid & switching at kernel
> > entry/exit b/n user & kernel lowmem by changing ttbr0 is yet to be
> > done. Quite a few things remaining to be done to achieve vmsplit 4g/4g
> 
> I will be very excited to look at patches or a git branch once you have
> something you want to show. Also to just understand how you go about
> this.

Don't put too much expectation on me, this is more of a learning for
me. For user copy, the baby steps has been posted (To'ed you). On the
static kernel mapping on vmalloc front, i do not want to post the
patches in the current shape, though git-ized, will result in me
getting mercilessly thrashed in public :). Many of the other platforms
would fail and is not multi-platform friendly. i do not yet have a
public git branch, i can send you the (ugly) patches separately, just
let me know.

> I have several elder systems under my roof

i have only a few low RAM & CPU systems, so that is certainly helpful.

> so my contribution could hopefully be to help and debug any issues

If you would like, we can work together, at the same time keep in mind
that me spending time on it would be intermittent & erratic (though i
am trying to keep a consistent, but slow pace) perhaps making it
difficult to coordinate. Or else i will continue the same way & request
your help when required.

For the next 3 weeks, right now, i cannot say whether i would be able
to spend time on it, perhaps might be possible, but only during that
time i will know.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
