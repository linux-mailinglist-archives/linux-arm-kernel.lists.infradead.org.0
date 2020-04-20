Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1A81B1620
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 21:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0c+JeZXoPcxDclWPL7AyXPCTUjufVGY2uVypw59lbs4=; b=hnghRCWZ6lEWWr
	enWA26N7AKvbtW+H0b7QLEFGgL8kZ8I7TcvjGKDZRB16NII/1JMTtur+z9If4bUvbDRELmYwf7TMn
	a19guR55vgaWYUYv04zLAStfn1LjH5PuC4wp83/ffKrPQ3bL4JKCNoCltR8J++fdW5fezJfr13j3M
	jXorUOH3tM3cGa1LvxBnCHrRBoBN7mIbZDbPSVKpmIr2CdHG+PV/NgDreyej4nWWG1AqIC6cK/HFa
	M6GrH0tGiF1eHOjb21kJsTkL3p0N2IJ/orUd11qOr5OeurjQ4xJ+lcON2IFNo0GPvAF+r/cZomkas
	zUHyxj6FrW/36jbuz9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQcLV-0001DY-Uq; Mon, 20 Apr 2020 19:44:45 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQcLN-0001Ao-MF
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 19:44:39 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MZk1p-1jlfjJ2HHb-00WnYD for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 21:44:34 +0200
Received: by mail-qt1-f174.google.com with SMTP id z90so9609519qtd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 12:44:34 -0700 (PDT)
X-Gm-Message-State: AGi0PuYtxJ45RIG3etaD3LMsIuhHl+7UkjJQ1jpdwDRQBoIUDTwAxps+
 +Uh8QRFBs8HzJcPxVCkBI6K0xc8gXSzKnwDC/AU=
X-Google-Smtp-Source: APiQypIQ/d1G7kkipasQ9Xx8TSOfP/G9AkgCeJ084oCa3E5yGJoAUJ8JtONcb4zbeOgvQqIRkO6e4rHHZmSKchIZTzo=
X-Received: by 2002:ac8:2bce:: with SMTP id n14mr6857624qtn.18.1587411873264; 
 Mon, 20 Apr 2020 12:44:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200420081154.597ffa59@canb.auug.org.au>
 <20200420081323.4fb9889b@canb.auug.org.au>
 <20200420151843.GS37466@atomide.com>
In-Reply-To: <20200420151843.GS37466@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 21:44:17 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1Ln+hkSQnQ8jzYSWvJ=bZ9V5juzDYcJoZvx0y-QpfrtA@mail.gmail.com>
Message-ID: <CAK8P3a1Ln+hkSQnQ8jzYSWvJ=bZ9V5juzDYcJoZvx0y-QpfrtA@mail.gmail.com>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
To: Tony Lindgren <tony@atomide.com>
X-Provags-ID: V03:K1:HNwWsoz1qczbitjuldMQRh4dg8rgb2rDja+gAwJobqICKsWGGRV
 TJQXe+dFd9kbmlXJfr0Ea9Oci4AhppN/w3h41r1W5hJf6ZK3FeY5plKU9+6HVFeGVwLznWh
 wkhDT7Cdv0gk8hYi5Bb+sNkmIa9rXu3GV64eSkcy4NskwWlMv4ThXFuluL6jH4zQOWUDndv
 KPwwUT9BSdzxrkdjq1k7w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Iw1nIr2pfLg=:f3QL5b7UolMGDhVUVMNwI8
 SJ/6qPbXma5V110vcMrMRe7PsW9eN9bIkT157IaCKwPH6kARydfKzeZ0n7dkZCPrytlXomAm+
 edJp2RFJe+Y1C28oWLp/JyVXGIrcJjz97DPvSYFYsZL9WujIADSp7A4QqKdZZoPYiH0XAQ5JW
 ZS7AYc7EQHJEg4AQY1KI0qJioNGNu39JnPH1Vp9htb9j+IJkFDsLURrxuxVshbjSLL0NZ8Gt0
 K5ZX15vHntBkHzLVb0Z//AFk5HQPr/gCX9p9fSZHnP3G+Pjd7Tg2Gh0JStRvM3njGQ2thvVFS
 GN1cpSqZPoAI8mGq25FNpPnAYFCRBCkFsbBT97Yk/E5H8/EUslqg+a6OvAtkUwGRCpD7kkRWJ
 X7BQF4GHfA7BL/dLEZahgIENUCebu6TGdEqpvNk28rapy/AIrGRmnZQiT9Ss82qj2E84IFGTE
 uJgJrbl1zqQxzZvoZ0MHf8t0W1dLuc5QQYzK/yiknmF/tZCRox5wuvQr1eL+GMRFoX/dbFbc3
 x/dkuy8paONG4Po6NTGxUYK4L9+bppkMeXR45qNXqKJCnoZPJKJIDnyfOSPsTYHjszZ9ZERk1
 R8UEBAGCU2N/YyFRQbyJJTsdspDzZ1zAoKJG6qQxrr3mh8gRuG6hLaKuz2jS/VXi3FU4tMFaC
 tMNS+G4LwuVMnbtmM3pIdFVd0tehR6rsIaAGxsggyBziL1OtGJPfvz8NLwmpUyvfj6OBpU5h9
 jUn+T/wSsqOwHEmG5wkJwbxPrUv3UjuIn2qbIUblQVTM9QQoaJlHCPQh43MPbN/oljSLW3YpK
 0mQyjnsNtl47TWhqnioHcnsPVCTY9SSYpqF7lhDEfT7RHiSLXc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_124438_019688_2073FFD7 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Olof Johansson <olof@lixom.net>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 5:18 PM Tony Lindgren <tony@atomide.com> wrote:
>
> * Stephen Rothwell <sfr@canb.auug.org.au> [200419 22:14]:
> > Hi all,
> >
> > On Mon, 20 Apr 2020 08:11:54 +1000 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > >
> > >
> > > Commit
> > >
> > >   512e8d40f91d ("ARM: dts: OMAP3: disable RNG on N950/N9")
> > >
> > > is missing a Signed-off-by from its committer.
> >
> > Sorry, that is in the arm-soc-fixes tree.
>
> Hmm so the commit I sent a pull request [0] for does have Signed-off-by
> for commit 07bdc492cff6 ("ARM: dts: OMAP3: disable RNG on N950/N9").
>
> Seems like some commits in arm-soc-fixes accidentally got rebased?

Indeed, I found my mistake now and uploaded a fixed branch.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
