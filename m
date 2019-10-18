Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC888DD166
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 23:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wy5TtBNASoxLH+Dp6RNMCiRJLCMd0lNyNnsThJtLak8=; b=BuAlEYyZLgehXj
	HYCREyvc7kdLHfxXb3eFIEyQUpjqpOKjKdqe7NO61NLNpWBD0886d0DLZpytGm10EPd/W4AS1YA0M
	EWxUgjTX3nxvHYAVgkUTJYTpALQ18tLY2Bh1OOW7VSqt+0fZzEKOQXFePsjkMp3KxGaFiC7GbyLsT
	85G25m4KYKeyJBlgm7pDESr0TkkBwRPTK/d4ssecvbMDjVmX7Pra4Mxp0ApMsw9uEjoM0RbCHWpAX
	Npt3BNFJz3Z5e1agpLRnV0X1xx6qt4Kdy73/t+3Ffzrx7izsa7CiR+WszY2ZAySXgMK+QmOkYTquF
	kynF1Se9/VNuF/rfcBpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLaB9-0005qa-Ug; Fri, 18 Oct 2019 21:52:59 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLaB1-0005po-D5
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 21:52:53 +0000
Received: by mail-ot1-f68.google.com with SMTP id c10so6198465otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 14:52:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HvighmfITJLDYGeaiDUTpHYE/uCdU2psCtkCA9EvB0w=;
 b=s2gFK726NEP5mlpV8IS22tGnmsEjqARatFF2d7vJHJnRASViJ7Snq9jhbU49QNc6on
 a3WdkECpc5vBg7jW5Ap/ih68ZLBnPOnD4HGLJHv3+Oa4xMs1vMw7u4WlirHlRq9jxlsW
 nSfTCOQyXTLJzyymO0hJiPGpILYKUFviezK7Z1kUPzZb7KMRChspL2z+2rmH+J4u0sTl
 XVQbAPzdLteACXOWehnUUUwUH0Bwtd2UAraakASrm8W6ItoGWS8sKCjUecq+KXw54BJc
 hnC80wxheiuH8R4YGArV6jcsrT4oI0Kyezu1+d/HT8vzXHo8gELYWcx4gsglFw1dhtL/
 Jt0Q==
X-Gm-Message-State: APjAAAXiDgNZZbepeGWMlU3ZOgEYhgX0A95FlxMagkqOe1NoZD6zQW/s
 26U6N+0b57GoXFNH+FIkTjkw24ps
X-Google-Smtp-Source: APXvYqwRDg5Ra9YOcBtR9m7e7DrikV3wzyW1r1PyUNRR6iYlDSLwNMp5JUzRxhFVOD55L4smuY6krw==
X-Received: by 2002:a9d:51c1:: with SMTP id d1mr8800262oth.70.1571435569354;
 Fri, 18 Oct 2019 14:52:49 -0700 (PDT)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com.
 [209.85.210.41])
 by smtp.gmail.com with ESMTPSA id 67sm1862943otq.34.2019.10.18.14.52.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Oct 2019 14:52:48 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id o44so6203364ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 14:52:48 -0700 (PDT)
X-Received: by 2002:a9d:4d0d:: with SMTP id n13mr9769808otf.74.1571435568401; 
 Fri, 18 Oct 2019 14:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687DA0268FAF03D3E77A23B8F6C0@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <e02fa027-9c78-3272-d2d7-7ad2b0ed3ab0@rasmusvillemoes.dk>
In-Reply-To: <e02fa027-9c78-3272-d2d7-7ad2b0ed3ab0@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Fri, 18 Oct 2019 16:52:37 -0500
X-Gmail-Original-Message-ID: <CADRPPNREUK1SVxO4P5qb2COn+T04dtYgpVEzrveKUt16hBqAtQ@mail.gmail.com>
Message-ID: <CADRPPNREUK1SVxO4P5qb2COn+T04dtYgpVEzrveKUt16hBqAtQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] towards QE support on ARM
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_145251_440437_A5E73B83 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Timur Tabi <timur@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 3:54 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> On 18/10/2019 22.16, Leo Li wrote:
> >
> >>
> >> There have been several attempts in the past few years to allow building the
> >> QUICC engine drivers for platforms other than PPC. This is (the beginning of)
> >> yet another attempt. I hope I can get someone to pick up these relatively
> >> trivial patches (I _think_ they shouldn't change functionality at all), and then
> >> I'll continue slowly working towards removing the PPC32 dependency for
> >> CONFIG_QUICC_ENGINE.
> >
> > Hi Rasmus,
> >
> > I don't fully understand the motivation of this work.  As far as I know the QUICC ENGINE is only used on PowerPC based SoCs.
>
> Hm, you're not the Leo Li that participated in this thread
> <https://lore.kernel.org/lkml/AM3PR04MB11857AE8D2B0BE56121B97D391C90@AM3PR04MB1185.eurprd04.prod.outlook.com/T/#u>?

Oops, I totally forgot about this discussion which is just three years
ago.  :)  The QE-HDLC on LS1021a is kind of a special case.

>
>
>  Can you give an example on how is it used on ARM system?
>
> LS1021A, for example, which is the one I'm aiming for getting fully
> supported in mainline.
> <https://www.nxp.com/products/processors-and-microcontrollers/arm-processors/layerscape-communication-process/qoriq-layerscape-1021a-dual-core-communications-processor-with-lcd-controller:LS1021A>
>
> The forks at https://github.com/qoriq-open-source/linux.git have various
> degrees of support (grep for commits saying stuff like "remove PPCisms"
> - some versions can be found on
> <https://lore.kernel.org/lkml/?q=remove+ppcisms>). Our current kernel is
> based on commits from the now-vanished 4.1 branch, and unfortunately at
> least the 4.14 branch (LSDK-18.06-V4.14) trivially doesn't build on ARM,
> despite the PPC32 dependency having been removed from CONFIG_QUICC_ENGINE.

Can you try the 4.14 branch from a newer LSDK release?  LS1021a should
be supported platform on LSDK.  If it is broken, something is wrong.

>
> >>
> >> Tested on an MPC8309-derived board.
> >
> > MPC8309 is also PPC based.
>
> True, of course. This is just some first few steps, and I'm not claiming
> that this is sufficient to make the QE drivers build on ARM yet. But I
> have a customer with both mpc8309-based and ls1021a-based platforms, and
> they want to run the same, as-close-to-mainline-as-possible, kernel on
> both. So I will take a piecemeal approach, and try to make sure I don't
> break the ppc boards in the process (just building and booting one board
> is of course not sufficient, but better than nothing). Once I get to
> actually build some of the QE drivers for ARM, I'll of course also test
> them.

Understood.  Zhao Qiang also maintains some patches similar to your
patchset and I think they are tested on ARM.  But the review of these
patches from last submission didn't finish.  It looks like your
patches are better divided but not really verified on ARM.  Zhao
Qiang's patches are tested but maybe need some final touch for
cleaning up.  I will let you guys decide what is the best approach to
make this upstreamed.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
