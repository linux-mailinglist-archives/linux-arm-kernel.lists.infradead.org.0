Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097FB19F6C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/xX9xPxKakc3wQgtplZnUjI7gjjdC0ZSfy8j9Rk/Vs=; b=obABk2uKuDtlBW
	PkPbAu19UjgGnR/fMg27WGhgAhYfOo7WCGrZU+NnzloX0lNRR6EfeyTcNkM3BUNx6HbMa8cqIsGjb
	shXm6jN6AmEWGHKeV/3RMl2Jjd/8KiPsaZgLBPz7190wSEs3qsq+bhwxvmGg/vvUb9xxysNxozf7K
	1j9gQCoRVHgWqsfRmQtsJaofND+9W/fQYJZIKQJ2rig5jNd6zejNKKLReZ7ZwHgxknmUVjbuUus8E
	Ibzl/pF7qIdNbJOpaZC+ADAXh4pH1Diyb0cghguFCsscYUBOPKHk89RORSeq4mc4TY5oh21Re/K0H
	Et0uPtiTtf9HMoL3nk+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRgP-0000gH-3h; Mon, 06 Apr 2020 13:20:57 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRgI-0000fN-Qm
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:20:52 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N0G5h-1j8kEW3CJb-00xISZ for <linux-arm-kernel@lists.infradead.org>; Mon,
 06 Apr 2020 15:15:39 +0200
Received: by mail-qt1-f181.google.com with SMTP id 14so12471642qtp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 06:15:39 -0700 (PDT)
X-Gm-Message-State: AGi0PuaiFQ8+2WOGlfDs+DEU3sz231rR3aAZolFEi1UqCKz7Nxt/Ajur
 V/kE0E77jJsnRtUFsYCCFLUSccrmRIOsZRE9b9M=
X-Google-Smtp-Source: APiQypLa5L7CKwlGZNhn/7xAjUoLc+7MSyvfCvi3f7raJ3Pm4QCoa8xTD4iijCH0Ufx8gGRQ4K6mPgVfCzePn/2MrKM=
X-Received: by 2002:ac8:12c2:: with SMTP id b2mr379999qtj.7.1586178935967;
 Mon, 06 Apr 2020 06:15:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200406121233.109889-1-mst@redhat.com>
 <20200406121233.109889-3-mst@redhat.com>
 <CAK8P3a1nce31itwMKbmXoNZh-Y68m3GX_WwzNiaBuk280VFh-Q@mail.gmail.com>
 <20200406085707-mutt-send-email-mst@kernel.org>
In-Reply-To: <20200406085707-mutt-send-email-mst@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 6 Apr 2020 15:15:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1=-rhiMyAh6=6EwhxSmNnYaXR9NWhh+ZGh4Hh=U_gEuA@mail.gmail.com>
Message-ID: <CAK8P3a1=-rhiMyAh6=6EwhxSmNnYaXR9NWhh+ZGh4Hh=U_gEuA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] vhost: disable for OABI
To: "Michael S. Tsirkin" <mst@redhat.com>
X-Provags-ID: V03:K1:C1cGFpa3axehUkzII4e0rAXJORp/8Aar5RupDyS1SJiTiSZYhui
 qsrPYd/sFBKa1Pi90tbh6mt5MdvRaZolWwxl8C4eGpRRm2haw+lUdiB1I8RfajeRxxTvkBC
 11e6N5bYEB2Ny2muafIk8QanuT9tGxvbyKv7ja4BjNEgdevdmkSKZTGYKQP/aV7z4vY1iA6
 9Vz6AjRES+v3iTPTaTqDw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yqB0MPshkkA=:62mH2KgM6hebsLAgHoLGdg
 fRzEQkpFsb4G2nRsXR5FBu1E7xmHJCcKCSdOnylUzKDax4yPNTueDdgtxz2OChJgS/WGIQHZW
 kjOk/P3OQxJo8t/Lh9CTU3pyg6htRM5srTvrXY2YkXcZDdQHGLWPyytmvORqm3raNwuHhNy/a
 qd1LSQpBXjQmotM43IPAljY4oifiHc5lExxxvrseyc0aqN1pQx/xTS24M2PMqF+FaHpEbQ8Q0
 ml8UK/5PIm3bm9n1MPFomJSEZsizDSRarE1r9ZeF9PHL/JnjQYKhhHc+P29/M45XinGmRdUvc
 zY4I1oe54jvyH+B/FBvQj+XMYFfOFeCdPhZEiyZOh+S5SfNvW64dOw/CfRGPuPVLqnbpF2WZ9
 p6oXsbw+RX7oYn+dPbgaFuEC90kr9YyrJBCqV0wqyl1fhhyV7wKg2aDk+l20xIUAvDxsg2OYJ
 XjayNhJf49bUEyIOHx3vcwSDZjGDv/TXQKAmfFZZcWzE/JLaGixExvavPXBhgMm2ZFCBT0bZ1
 6495gTNSP61NxmJiyte4I6MMo4nTMLgLvzzq11QXNykCc0tO0/+ZaQ8E46N1xFLhuURm1VBDV
 yuP65BY5VyEVQZpVcJY4NE/7DfkhEQpQQ/Id/7NFdY7SLvgAytaKQNT140IIT1dWdN3W0jFpz
 VIu3sQPNhGS0zXwqF6lhRQTQ68WuGD0Sofnwj3fLcS49QGk6iQ65Zc5Ckro/sMMcyA997M8Cp
 cgWXdOAAaPyOQJbJi6BQdu3zMpmcM/7Hnddn7IuD7bgi9lDGk1rix+YIBjrSk9SZmWELDb99w
 SwaiuCzq6YbcHO/0wOf3FJ7P1BBRxkm/QRmW45ahK7Pvfihfzg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_062051_159697_281B1F35 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Earnshaw <Richard.Earnshaw@arm.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 kbuild test robot <lkp@intel.com>, kvm list <kvm@vger.kernel.org>,
 "christophe.lyon@st.com" <christophe.lyon@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Wang <jasowang@redhat.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Dutt <sudeep.dutt@intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>, Networking <netdev@vger.kernel.org>,
 virtualization@lists.linux-foundation.org, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 3:02 PM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Mon, Apr 06, 2020 at 02:50:32PM +0200, Arnd Bergmann wrote:
> > On Mon, Apr 6, 2020 at 2:12 PM Michael S. Tsirkin <mst@redhat.com> wrote:
> >
> > >
> > > +config VHOST_DPN
> > > +       bool "VHOST dependencies"
> > > +       depends on !ARM || AEABI
> > > +       default y
> > > +       help
> > > +         Anything selecting VHOST or VHOST_RING must depend on VHOST_DPN.
> > > +         This excludes the deprecated ARM ABI since that forces a 4 byte
> > > +         alignment on all structs - incompatible with virtio spec requirements.
> > > +
> >
> > This should not be a user-visible option, so just make this 'def_bool
> > !ARM || AEABI'
> >
>
> I like keeping some kind of hint around for when one tries to understand
> why is a specific symbol visible.

I meant you should remove the "VHOST dependencies" prompt, not the
help text, which is certainly useful here. You can also use the three lines

     bool
     depends on !ARM || AEABI
     default y

in front of the help text, but those are equivalent to the one-line version
I suggested.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
