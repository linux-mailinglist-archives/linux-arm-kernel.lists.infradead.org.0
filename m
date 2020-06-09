Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6B81F3DF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEAXEBSQ0GOJgwdAJSsS4wWOaCMZhJqDfvpT6x4gPfA=; b=aTHugns3x5aEz+
	u2hYiuUxusXlQdHyalwNNwZyblSWLIkYOmzqf/scReJnNmlRLzSqbWF8vPM8Vd451stiG0LTo4tsT
	nuKxyH/HvaAUFaCMI/cuz2BlWnodRjsRcU/GDnBB/UjAEwZgRZ1DcPTeLPKi2MVVEAwDFAjtE8G9C
	gi6UnMjFI7zLqgYpI8zO1wa97we4P6sGdj24D/wUmnJtrCT2/BvM9Niwyp/1Zb8+NKV3nB91e0T1e
	MF8q4WLXkOxIlALkrVTFgM2gsaUW0BEmdLMLy+vTCTjh+tBYHgxN6dG/8qznkAbjT2/6aIyEInutJ
	sLknHrIT4h1p8Riiga8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif9d-0008Ec-IU; Tue, 09 Jun 2020 14:23:05 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jif9S-0008Ao-W4
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:22:58 +0000
Received: from mail-qv1-f49.google.com ([209.85.219.49]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MwQw1-1iqQVF2UYX-00sKtk for <linux-arm-kernel@lists.infradead.org>; Tue,
 09 Jun 2020 16:22:52 +0200
Received: by mail-qv1-f49.google.com with SMTP id g11so3676059qvs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 07:22:52 -0700 (PDT)
X-Gm-Message-State: AOAM533LLVxG3ZzdzglPsUqMxNUN9PClhTwZ4EJsWt0vOuTQAbbUu5km
 kNng50Cv6Gjp3Mas88KgdHgIp61zI+BXlRVVDsw=
X-Google-Smtp-Source: ABdhPJzx+z0bcXYPuVlwRHOD6yM3S4Ldg2eDOed2FGAJyrwsRqttQVklksdSbVPsCNsJw/sXsvOlcAmaM4SRPmpBk0o=
X-Received: by 2002:ad4:4b33:: with SMTP id s19mr3849476qvw.211.1591712571533; 
 Tue, 09 Jun 2020 07:22:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
 <CAK8P3a2=o6RkONUoHTaR-2jpXg-wa-YnCYi0a4gAknYmvu8X7Q@mail.gmail.com>
 <20200608111834.GB5736@afzalpc>
 <CAK8P3a1q51=_DUS1A8k67c3TyQ+7LTpeo98LmzoFK=qg+8Fktw@mail.gmail.com>
 <20200608151727.GA5017@afzalpc> <20200609121506.GA7846@afzalpc>
In-Reply-To: <20200609121506.GA7846@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 9 Jun 2020 16:22:34 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2YKifKbt4-CUODe4YYPxT-+pRwkj0BAvbw1P8vUg9x1A@mail.gmail.com>
Message-ID: <CAK8P3a2YKifKbt4-CUODe4YYPxT-+pRwkj0BAvbw1P8vUg9x1A@mail.gmail.com>
Subject: Re: ARM: vmsplit 4g/4g
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:BjYAQwxusuWNHAYlxBGkJ0pVw9FbOfAf+eu9R2CrPKPOvfjltyp
 wCpe+yDqVpkwyD54X73XRki9quT9XZYSr/aelkN9dhhN3pXb329FJCao/mSBw3OvXjz8BMv
 aZCxri3aB6sXhXqlOUP4MH/W81eooYhv+MK198wrzPqc22LYkhTtk8RhL9ySm7GetMFoN9i
 AeAIvbc9mhJ9trQiWumsg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T373hwbEk/U=:Y3Tjyligacw57VLDdWHRev
 Aj6xSN8qAVtnVU0bWEgnXmQwi+Bu5wNUvkppJmHuIqurhXYzTCP90EU828EkveqQ95nafxLux
 BgnEQ4mbN7FtELJAqrQsjzCQs2SjJ/Nz2SJi8kwlFqMJWhg90bDpVkGpirPk2royUZdYkxZtx
 b8SrTrx69pmmdobm8kvcoAe+7//FZB5n0fckrxeBu3HK6RfXneGtUFyRW/fMeKaINTM0vJIEa
 V5MJY/0hGYPagy1MjBiT4IgkFqY7lOO0ZDAwBbbJwH+5+Iy5GgEi9Rk6GF5n6loPzQOrU/YnL
 31kVy1uVnTg66jMwsmV2K9PKZ2SOndC/hgYVCbNwN27lo7Rcrl3iuECi+LzmEuZT5qWeYbLQ1
 QQ/HT5cnY2KdRlWG0AMPDKoI0guJhbi+rKCIv6IHmd8IwD2l0WsrfOGzCi3ES7aK8HHF5pWOX
 GIHxuBrB15tIqrASXqJZ6wS5CXiJyh9KgUiR+/UCOu5uiefCALAYgAVzQxiFHxGeI+cWAfK6V
 GazQoqSSIWOemMqDQwX7MD8bt8mmECsHfYDGTxRLP7UdSf64dcMQjmp+l1EIvv/wkD7gfiRxv
 GxvjsJ6MYq9lYzzveBoif4zx1MlzRM28XzLZ3SJ4ymxGGgY1i1AggfAlPtmOC+W95Y4pDnXQ4
 EOECDzBNPdrVWBlA72vh1bNUQy6G9xuhNEbMy1He7LAlem+iLGXUjui4dQ3B69lL1SbBGUqlZ
 /2u+l7vVrN+3LkyNkb6RlDLebj5We9SmlP06Kdn317yBbYyW8/W7oU0HbH2meBgnzmTWajjD3
 Ii1h4JgPgRXKyTPFh9vLUwNHHj+1rPL2w9Zbkoa9SZrFFiadrk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_072255_321078_68D69E8C 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 2:15 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> On Mon, Jun 08, 2020 at 08:47:27PM +0530, afzal mohammed wrote:
> > On Mon, Jun 08, 2020 at 04:43:57PM +0200, Arnd Bergmann wrote:
>
> > > There is another difference: get_user_pages_fast() does not return
> > > a  vm_area_struct pointer, which is where you would check the access
> > > permissions. I suppose those pointers could not be returned to callers
> > > that don't already hold the mmap_sem.
> >
> > Ok, thanks for the details, i need to familiarize better with mm.
>
> i was & now more confused w.r.t checking access permission using
> vm_area_struct to deny write on a read only user page.
>
> i have been using get_user_pages_fast() w/ FOLL_WRITE in copy_to_user.
> Isn't that sufficient ?, afaiu, get_user_pages_fast() will ensure that
> w/ FOLL_WRITE, pte has write permission, else no struct page * is
> handed back to the caller.

Ah, that does make a lot of sense, I had just never used that flag
myself so I wasn't aware of this.

> Am i missing something or wrong in the analysis ?

As far as I can tell, you are absolutely right, and get_user_pages_fast()
is the best way to handle this correctly and efficiently.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
