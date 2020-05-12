Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A011CFEB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 21:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ee+6OQrg66KxaNUyyJBKNYjW7EkFd6aXDgkzJC30JZc=; b=VFqwOGINNaqEBX
	QLf93yg4A+SqDklRTYScHQKoVOfhs8vgyKweJum4UGQEnWVgwUJW3IzaN9LqiYHVBTmD6gDLXuS4E
	XzFB9gwiprJY4/TjggHPDyFqjRXjiSVFn9IGUn5fxL/iadw0oREuMKukifGiy4XOrk9Tu5EcMoVEC
	/Fnkmx0pN+GCueM0UzEqUuGeC/fLVoqLqmkN2jKlVsDawjw3uavX/udORGYR29F7I6LLkoDfYMI/n
	lbg1XRcEw4XLB42+2/79QM3BvBkvU8QI8PJfRXqvimfd2dE32pu6lhr8IY4YwRJTwxBUi3+wT/OiM
	cyrKKZ8yIwpxIATvsKrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYav6-0004DZ-PQ; Tue, 12 May 2020 19:50:28 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYauz-0004Co-JI
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 19:50:23 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MyK9U-1jBG6P1YUO-00ygF4 for <linux-arm-kernel@lists.infradead.org>; Tue,
 12 May 2020 21:50:17 +0200
Received: by mail-qk1-f169.google.com with SMTP id n14so14969746qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 12:50:16 -0700 (PDT)
X-Gm-Message-State: AOAM530x8RIFLxBsZV8bxAbSX66WqVMGRSekju+WVZokISWw3yWs0xak
 be80AmIl7uJzxlVNrZ+O/J3D1/njQa2ryEzc4Dg=
X-Google-Smtp-Source: ABdhPJwKJd3U0klcU7IDRjkuleiIc4wPNOMiOc0saxTFEWTaSUun13tPHi7rCexv4xkXDUCA3EAbyG/iGjnOgQ+uULY=
X-Received: by 2002:a37:bc7:: with SMTP id 190mr2657025qkl.286.1589313016016; 
 Tue, 12 May 2020 12:50:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
 <20200414151748.GA5624@afzalpc>
 <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc> <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
In-Reply-To: <20200512104758.GA12980@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 12 May 2020 21:49:59 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
Message-ID: <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
Subject: Re: ARM: static kernel in vmalloc space
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:7r4DKUu9SULWSnzvWVGFU22Vfza6vBRPyMDLsRSCIAuGV8JEWHW
 b0nmjtdB4/Ck5qyJHeIcwz1hyWOCPbC1SkiOWzDSUv4zgt3Lfv+Y97pudL0/w3I6ih/SZg5
 5vil0rTKO5BKAxCC0brXn2g3uP74myD6L0E24OO6/43OxE4+Gch3eTwgwSoo4myZVlShPnZ
 fDYIxZPMhx1FRyh1a6XRQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ynyngGcTjVc=:uRZ2odVKYWibpUbT+AeD6D
 GJ7t2KBiIeGEe+9vNcGM9Je7o7UhrdYML/gPGWa65JUEmwrRb7PcCTFTxTJM5hadUOp8ehBYf
 BecII/2XEa1w33CUOoJrH1H70u2afTr6+B+pL0L6UQQ17KmRCraD0ZnHq6zcFjslUMZAsYlCB
 E8FWeIKegJKybr4ErMeJrUVSCMBFexyp0/Gg7lJSv0CZklPMpc8WuMfHc3G6XUKXr9zTP+KQU
 qg7iphDV/uiGxF6pJX8g+yOkkDUQ0TIFiEUbOSxI6mqDp3KTKHXKeKDjbdhk/BkrWmLdW7Ch2
 rB96XTrLQ+N2gWNbGl6E4Er0Q0VY2hBBIQoNpSmxPZv+Z0bcHfxTjBQGOO6rVLXm7tm/X2aCV
 rEkg4N/OHSckQ/5F23oYG1ER92iLg9meXi6sPDwZ8CCtZX3/wyEc5uR9jidzOZynBX5jWvVZa
 O1KO1v7fj0jibHhwcvnlVdPC9i/D4RviDVQKcboq/iw1oJnK62F4B/MH/uKSCrQEA6Rvj3az+
 Mu5LVLp58NPDJ8OM4PaVELw8MKBPDjmyXL0OZz5Rb3EBTyvA55/UtVRL/3mykaj6fRDq5CjEU
 9evVOhIrAlea1HYmXPAipgcvk8P9fRhbNnEGL6L2EgZNQGl8PoCg0HMbMd83Nac6I8UTSIda7
 0qlVavbuuKhxTPvGD6b+mG7HRe5hM5iE/e9e3YyLhQ/ez800QomtZwQSAF4y1g9rXXmOuVHXO
 WEVeZUT0vfFfmRZxIchz8ET7g88qDOoyvQdJ4yHqFJjyZSb/friB/rB5Lj2Wsvmo6KomnAzqc
 PmjfirUn/wROljOTAU889PiZgxVrkY4RT6sizOa5nI76M4hMMY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_125021_929941_5DCD9318 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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

On Tue, May 12, 2020 at 12:48 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> On Mon, May 11, 2020 at 05:29:29PM +0200, Arnd Bergmann wrote:
>
> > What do you currently do with the module address space?
>
> In the current setup, module address space was untouched, i.e. virtual
> address difference b/n text & module space is far greater than 32MB, at
> least > (2+768+16)MB and modules can't be loaded unless ARM_MODULE_PLTS
> is enabled (this was checked now)
>
> > easiest way is to just always put modules into vmalloc space, as we already
> > do with CONFIG_ARM_MODULE_PLTS when the special area gets full,
> > but that could be optimized once the rest works.
>
> Okay

Any idea which bit you want to try next? Creating a raw_copy_{from,to}_user()
based on get_user_pages()/kmap_atomic()/memcpy() is probably a good
next thing to do. I think it can be done one page at a time with only
checking for
get_fs(), access_ok(), and page permissions, while get_user()/put_user()
need to handle a few more corner cases.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
