Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A707DE1CD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7cKxHQjIZzj6hiw0qyD+xsvECa4LdsiPuS7+1RiQOk=; b=FgMioEAxvI/4Q4
	tDMM2ti0UErvvtrVP8jVQtcNPKtpZ4ebnbFK1HBZoGOa/jZzxro5olFJ/vpbgR2tkl5y/P4EZ45uR
	XPBTMOBzM+SBvZmgUdKtelONLXH/dUJ8juE9Q4znL193+uZd2lnGe3lRbEuTzKMLHKxIPZarqHuV3
	RDdL3us0jjvU/rBAueiyeQCJPzLZHpr+ayBvhwfYRngQaCN6u6r4GRk7XknGXjx3fUsNslku6Xc6e
	kyi3Cp8o9vA2Toy590fM0KjtVQ6ROVclfIUiPOA5SlBQHjQezDmwpyDiZPhNNolvQYoA2UPKu5Nus
	f2BpOwiEp+GVQ4RQG7Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNGoY-0006UL-UI; Wed, 23 Oct 2019 13:36:38 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNGo6-0006HN-N0
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:36:12 +0000
Received: from mail-io1-f50.google.com ([209.85.166.50]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MMXcP-1igiX22LOp-00JeCf for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:36:07 +0200
Received: by mail-io1-f50.google.com with SMTP id y12so7361153ioa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:36:07 -0700 (PDT)
X-Gm-Message-State: APjAAAWksTrXvd0hzfLh6JOPuhxYPPR9VOb4FYllL7CE90h7QUoVS5oH
 Vqv2ee5uaoBUYvqYiehB+nKAO335GPCacSLuVKM=
X-Google-Smtp-Source: APXvYqwqW5j67aigUtbaQwMvvZPaRM75Zx1vwHK4rpCvIcwvfeEYCvDuZFw2giioKFckU9rb9ypL7pHNYyg0dml8Ps0=
X-Received: by 2002:aed:3c67:: with SMTP id u36mr9047061qte.142.1571837765100; 
 Wed, 23 Oct 2019 06:36:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-28-arnd@arndb.de> <20191023131321.GH11048@pi3>
In-Reply-To: <20191023131321.GH11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:35:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a03JtFrCYFUQAFnSENghrXSCDBQXB-QfiDG3yTxXxdpaw@mail.gmail.com>
Message-ID: <CAK8P3a03JtFrCYFUQAFnSENghrXSCDBQXB-QfiDG3yTxXxdpaw@mail.gmail.com>
Subject: Re: [PATCH 28/36] fbdev: s3c2410fb: remove mach header dependency
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:cgBTlSf+CME59FCOgHz2nN+DwZV3C9q4IkNUqNxtR3myOZc+YiT
 zpTrJOXIQaAZJU33DJfNfjI80t7DBGuOlONCOHz8Qv3yWVKPAd28UcWTtIQBjAD0HAAt/c7
 yYY1AAQyFR6wxrNfMnl0ViCJ7uwY21DdZNBpUhUIvd2JdA6EHQxw9LFKY1HDdatDdnxKsFY
 uRr0n+C0bMqMjn4jOAl7g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:I9D6lpdgfYQ=:psgsOEuGpec6MMMKWdLMcv
 ChNxSMZQc1kKHosRXQu5dfTO4SRhhi2LcwJvS9b+SHvEICSzerSxK6Zg2Wv4zPGOBiHoD2a01
 y7FI5janRkb72Vbw5fa3eb3JcnriBxosQQSkw+ujBrFAmdDth+cK2jmxt+JllJnR4Z17TTcxg
 Jgc8KUDaYEWLnK1EKN/nAJgnGDx89Ei0smELKQxBgqbHNVwdEMRCqRaCxpKprugiNjuhC/tT4
 DLAQqeoWOVoyME8+PfV6Mu+u1Xq9GI7xAyZf2xmY4VqkV/LbZTgREX+mr9yqQci+y5TgddgI+
 TwxHfrFZPxvQYGqqkvs0OR8YbgEq1cpNlmTk3yxqnj/7shT/AEb8CTyETJ7/soz8ba2gRrEuG
 TrKatpBJLvxE1L+QA0Y4TqK3l0olqxEED5MeDzwB8p/Yyg0hrgmQpYGDpw3AvqBFLZfeZlpRU
 jKugD14IBWfH9+JyesIk548JtH5t3YPROz8cz4YSWjbemJY9bfJV6QyK7cssMGIO4rxBHi5eY
 EDfZxS1wcF7oj6wehO2+q3eKdj6rWYH4fc5oJvpqoXO4rIvd1I+HZC+9XX13xP4zeuQfcyuEh
 or4ltpSsurDEZBn8aLNjzwfGCYwW7qngcZmZU9023YygfnLbCpB4V3yz/OfqKtO0CHgvhxz0t
 dk3bFmBKZcNkQqEfpENPqbfOMHK9Z+w7ifh0NQY8pz2QCX8LH2DnRDZHqBNoa8KNwnCIudp8f
 VdnOlp0AMU/iP4psR82T1McVIfTnB1pTVuB4od7Es2F2LYCh3Rx2MnfNRNYHuwjHX9XWzwRli
 CS70iR8/sGgI72U5xl0cjYHkapOXJe38MkM9XIcERo6EW2In1BFP9hdJUNlehP+LlbKYOU5J7
 zqkFV3+knUE5nFmU1IEA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_063611_041592_E1D6CF8A 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Kukjin Kim <kgene@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 3:13 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Thu, Oct 10, 2019 at 10:30:12PM +0200, Arnd Bergmann wrote:

> > @@ -321,6 +320,7 @@ static struct s3c2410fb_mach_info jive_lcd_config = {
> >        * data. */
> >
> >       .gpcup          = (0xf << 1) | (0x3f << 10),
> > +     .gpcup_reg =    S3C2410_GPCUP,
>
> Nits: indentation before/after '=' looks wrong. Tab should be
> before '=', one space after.

Ok, fixed now for the four boards that had inconsistent indentation --
jive, mini2440, smdk2440, and rx1950. Unfortunately each board
seemed to have its own way of doing this.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
