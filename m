Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED39F1955C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 11:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqqRZEGe06G2NihkYKxBTGYF7Lo//xROgpghGTNV2Ns=; b=aqSA6XClnMCuET
	9OJUnVUCj5mRh/bcuaqaq8UlTFLmE2B/oMbWfPQidtoOjDbHZ1cai13NztVKblC88/3ArpyjI1FGm
	UK2tpkY3BEXxuz3vJIvAvklN/nQsLKEVfRiCgg0mRn5fP0dh6JSVeNBYBZRP1yICduSTJqBWQYQl3
	uRIm+on2ewGqvMGM5XWm3UuadMyBGrV2dFaVNr+69ZELiHdVc78fgd2FkLamHokhzc0MOU/t0IRDb
	/he8iEe+B56DKwaGZ5SyW/W93UuH8YCcZwgecqdxWo5A3kTCzUbPVqdzsdPlbr4iJdct3PPzdqdLs
	L4CRsrwXDgUVsLQGEV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmej-0005qH-QL; Fri, 27 Mar 2020 10:56:05 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmeb-0005pR-Sv
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 10:55:59 +0000
Received: from mail-qk1-f182.google.com ([209.85.222.182]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N14xe-1jOkZk0dsw-012aRz for <linux-arm-kernel@lists.infradead.org>; Fri,
 27 Mar 2020 11:55:54 +0100
Received: by mail-qk1-f182.google.com with SMTP id i6so10290349qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 03:55:53 -0700 (PDT)
X-Gm-Message-State: ANhLgQ04X02O4jRz2+heb7AUgVWew71vGeMZDZilTPO5nxEPDio5r5pY
 uCPDDvYz8OnC2aY6AgGqANw3X6/L+2cQ0+N38l4=
X-Google-Smtp-Source: ADFU+vu/SBluPJe4SG/RVo/VOSCt5yg8qCa0C0hT1HJWo2MkHT9vfnjXTH3ldYZD2r/o7bjQOUlqAYVkLLzc9qdU5cI=
X-Received: by 2002:a37:a4d6:: with SMTP id
 n205mr13487320qke.352.1585306552796; 
 Fri, 27 Mar 2020 03:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <87mu8ppknv.fsf@FE-laptop>
 <20200302031736.5or4ww5a4l7zomfo@vireshk-i7>
 <20200308161903.GA156645@furthur.local>
 <20200301122226.4068-1-afzal.mohd.ma@gmail.com>
 <m3ftepbtxm.fsf@t19.piap.pl> <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
 <20200304163412.GX37466@atomide.com> <20200313154520.GA5375@afzalpc>
 <20200317043702.GA5852@afzalpc> <20200325114332.GA6337@afzalpc>
 <20200327104635.GA7775@afzalpc>
In-Reply-To: <20200327104635.GA7775@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 27 Mar 2020 11:55:36 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0kVvkCW+2eiyZTkfS=LqqnbeQS+S-os=vxhaYXCwLK+A@mail.gmail.com>
Message-ID: <CAK8P3a0kVvkCW+2eiyZTkfS=LqqnbeQS+S-os=vxhaYXCwLK+A@mail.gmail.com>
Subject: Re: [PATCH v3] ARM: replace setup_irq() by request_irq()
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:dahVdVRXaCT8swgXjamQEBgcERzgXw53Qoap62/A82gW626dxJt
 g9vCer96BTpkSnPsKEfBGLIBePHIDIcUhVBdd1NynAwUrK/jCaCRyGkolYg1NIJzV1vbg86
 gN0TL3jC9Co4mdmeOJpw6mIujWggKKmvVUN83cw79zOO7GPAf1DT31I0giw63gz4Xi15iQp
 8rvPEfoK2Z1BwWpyOJ0hw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lQHnhdeXChI=:UPdP9DVrlPNawxwFh9Sos5
 Yw9TX2y8zKnE5r6CsagpgfqbUvUPWEkrlATZhcJYTuHJ5IFfVEh60gHzFI+QoXVEoffW0MEwl
 QrRkYmxVTjnkgdboTXISOKJnTkwa6adE6Sgl7xjXLQW0xuQ2JY3bpSS6Hgp1cnoaPllk9bGhR
 k1WrVzw40f5LjlIMmlsy0NU9jjoPj8dCiF0bNE2h6zGC69tc+9qcbuI6Ce7eV2GETlSinzMG1
 SFXbyZQgRS56X6rgEe0udWHrb6InCv1UaZgbVzUzj9Ow038z+7Bt+lrG9gxeh12i/RiNiPgZp
 6ZGJG3TDUC5sV6RzQ93pj3iRi1w6rAGbDNjM0KeDQ1aFdUmQesr38U9BUy4sufBe6dptws09O
 dfYrD4X/na0907qIeEJ5sxAZpEm1vA4MSLGw/4zcHRjHpw44vM7d71mlSBV+zca0FBjd29MNa
 8GxUFdWQ/G/8fi3kpOB3a8U7vpZgHkTs/lNeIL7ntPKsV1DmvfDD5hjGitMGhFirUA2UITV+I
 oM5rMwDjtGaXSeERTA79sYeKT/pWdh+xKibXJsPCsDWBxYPVGtpjGOtiDVGtfVnSWCZd/8UIg
 rRQjHw9//fckl6AkjwkTpBP1scwrUu6kQCLXw0X6W6h40LjsC5p+VsypQwHQvvy+njMQPEVcE
 DoCB3VEslF4cKeaZWF/LRotVEANO2vXOKsBnb2IBUcaYNjYXs4UY5hNQwx2Dekpt3Oaan0aFg
 rygrDjMHdrbdaQTfsa9Xm37hTxccWexS8RieDXviimEoie6Q7qS/LUdgD9IwVqiSuO4JOpU5W
 uBbWROUlzkcTCA6L0XRLsDmoxsf+oT9pWFHBCJgnXzf5KiCogU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_035558_224732_EC93E809 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Tony Lindgren <tony@atomide.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>,
 Viresh Kumar <vireshk@kernel.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 11:46 AM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> Hi Arnd,
>
> On Wed, Mar 25, 2020 at 05:13:32PM +0530, afzal mohammed wrote:
> > On Tue, Mar 17, 2020 at 10:07:02AM +0530, afzal mohammed wrote:
> > > On Fri, Mar 13, 2020 at 09:15:20PM +0530, afzal mohammed wrote:
>
> > > > Can you please include the patches 6-10 directly into the armsoc tree ?,
> > > > Let me know if anything needs to be done from my side.
> >
> > Can you please consider for inclusion the above 5 patches.
> >
> > Sorry for pestering, i understand that none of the ARM SoC pull requests
> > has been picked up as opposed to what happens normally by this time of
> > development cycle.
>
> i think you have pulled the ARM SoC pull requests, but above changes
> doesn't seem to be applied, can you please respond on how to proceed ?
> (of all the tree-wide changes, the above are the only ones in limbo)

Hi afzal,

To make sure I get the right ones, could you bounce all the patches that are
still missing to soc@kernel.org to let them show up in patchwork?

I'll apply them right away after that. Sorry I forgot about them as I went
through the patchwork backlog.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
