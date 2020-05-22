Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAFE1DE195
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lLgHeq+UNJUaIXUYe3c6F2nSJghbo879dKqJDfIdYg=; b=NhFm8741Uawdw/
	OvXdQQnjYcBw9tH0LbWvjWUDBbXkmIcPQbHt1QYc/MnGGFnODr3gSPoZXENFY2km0yAyii1+b1wyh
	3tQONgL5KsfUPExXMBszXg6GsKPA7waONje6h8ml24KYZU3ImGT4/7C40GZFcwqFXVHgwySzLiWqd
	mqIk1lufLrTNek0W6wUz/ybGKdzFG71ebGSYiMyQvgvppKL4e5c0GK+fXwsCs9o+ydNC8IkalYSV/
	3fbSQdfQ6XiwOHNaTH2Nq8f+Wk5/WEuqV5OO1QDuCljRbfVJmBtiNJkUellPkpM/r4j7bVl7lxJQP
	ZjzddIGrkPW7M/ObSUvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2lC-0003Ha-2L; Fri, 22 May 2020 08:10:30 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2l1-0003Gi-E3
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 08:10:21 +0000
Received: from mail-qv1-f50.google.com ([209.85.219.50]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MQvGz-1jN0qX45MF-00NwmP for <linux-arm-kernel@lists.infradead.org>; Fri,
 22 May 2020 10:10:15 +0200
Received: by mail-qv1-f50.google.com with SMTP id g20so4324745qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 01:10:14 -0700 (PDT)
X-Gm-Message-State: AOAM53342XefIieHtkEkIDEgCFuxYiCwcOO3fv/YkkeIG5DIT9N9dmQH
 /wQmjzCPl9OyegPSNhP21cJLbrUQUTiwBizTRuM=
X-Google-Smtp-Source: ABdhPJxoz0VBY0P9VSs5lNsQ3oTYwi3r5Iu1g8xwCJPQrJXyNwWk1Nipm7AlAFVx6Sc0ECmHPTYYnfW2UzAGL8m69xI=
X-Received: by 2002:a05:6214:3f0:: with SMTP id
 cf16mr2678071qvb.4.1590135013931; 
 Fri, 22 May 2020 01:10:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200522082433.4f536de1@canb.auug.org.au>
 <CAK7LNATU18vKsSV_pugSRw4e3bQBUAQ670ac34GbO2YNHXgLPw@mail.gmail.com>
In-Reply-To: <CAK7LNATU18vKsSV_pugSRw4e3bQBUAQ670ac34GbO2YNHXgLPw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 10:09:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2LbuhGVJ2jv3YvZhbTjuBoR3F_1ejVEdWwapHsb9YBvQ@mail.gmail.com>
Message-ID: <CAK8P3a2LbuhGVJ2jv3YvZhbTjuBoR3F_1ejVEdWwapHsb9YBvQ@mail.gmail.com>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
To: Masahiro Yamada <masahiroy@kernel.org>
X-Provags-ID: V03:K1:SUizGR+5fXYOdtfWQ75AX8T+sEU/zAtmBBasbfGLI+PLHMvqtkQ
 reJOpQobwMO7/5rPYI/ECc7pLkHq7TAg4Ln3FTLaZTTlrdiiPlQWmZVWfzyMB+Y+cUhic5x
 fZfRBZVxJ01VBLlJk4PZH5iiyqF9AW56eWRiHst0qNo/qzyqTso2vawBPbaauw+9PI3M2n1
 nuhN6HFQhH4lHZne6Pn8w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YAMZp7rM7Dk=:7asSgXo9eH+HHe6ixX9Aez
 tm+r5fk6B3VnIJ2vaArwZgDfRNMzUUP5t8NrPlsn354WnhuvxFFAK0i1hSSKHIJ+dQWdLQaCs
 f6ug7RVDVNtimTeYpkjKbkR669t/O421qJHE6d5fkDDupBJVCXhW369ttKoHkQU+2ZoWadXBa
 meCASk7JBNGiEGzhGNEmYmlIk4m/Hu2K17Ks5vNJxtTcLjkfCJGN2eZkBSUCpD+GWwrwz2m6H
 PLzmpc74g7JTjRaTox0HjPD3uPl+sXAu+rrV9H1b9XLPwmJAidLcrTmeUsfDCH9OSIhp72pjn
 jrqzgjnBQSdw9oivpHStIu9c63pEX0DwQZbOeYt/ji7iZoRTL7qq0sGcwOF4ootpAJRkpCjjz
 3m8AodFGFvYZoSgMxrpx8YsyQ51e0ey4JYCd5N6NeFp7Mno6oc4IPRUugU7m2xnDtHCKwmC5t
 MGFYfvNC14bGTfxP6NAPgbA/wd48CvWXTS4BD1r0pUcpX6YSV8Ais8SiIcvawnwmn3Hyr7GwA
 GVqXwwdDuo4aI8L0W71a4p1WO/mk/OoIS9gJZRgSevbXLpSeJxGCDoKNmXzLZxZs1BAj9m1yn
 MgSiiTvsgUAG7My5r9LtN0f08IeZZwKOLJsUp8QwdZNBQZGN4rinWBePjsNt08Fp91THvhQk3
 /MwXlIgtwrbpnWdocJLkixjRKozFVG8QpamL/8sV+udiGAmBC+U0YGSDOcjYcTGHR/zLZ3iB7
 W3bhDf+HdDsRyMwH5J4TDr8dsM30WCnYCtDil0M2Y/tjHBuwbjNvXplNLB2oKDB4UyZBPFt0L
 1I4kGCNep4BUV2fh4TSR8V+taiq+6jxrHkATIp7s0F9fo1MVL8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_011019_770765_27FFAC2C 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
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
Cc: Olof Johansson <olof@lixom.net>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 3:28 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, May 22, 2020 at 7:24 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >
> > Hi all,
> >
> > Commit
> >
> >   82ab9b6705bd ("dt-bindings: arm: Add Akebi96 board support")
> >
> > is missing a Signed-off-by from its committer.
>
>
> Sorry, I missed to add it.
>
> Olof, Arnd,
> If you want me to resend the pull-request,
> please let me know.
> (but, probably it is too late, I guess...)

Yes, I think it's too late, I did a lot of merges yesterday and would
rather not rebase them.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
