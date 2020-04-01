Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D51C19B570
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 20:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOa5d8R2JfXWnlc8QmH2jBGqaqrUiT8vCpzBo0zYXnA=; b=uumesnDRGsgjH2
	sALr3OSQpbp2oUsXVzxCFZR64JtLrParyszP/EiFEAjw8wI7Qp9idXLmQkHMWcb/CzowIU9pCi3iA
	FtGgiki6M+GcJoAOKO4mREQ2cNj1Ojt/fUsqSc+Whw5pIDlhcZ79TwBWJS9EDXbv+vIDiVukK1rZQ
	ESmjDEgBYpNt3PvOgwVGCiixs/wE5en+bPJaQUfDx0q3cLXe1+6TcZdleKjLCHwEMYq47jfZZqiRp
	ncWqo44hitZX/cotw3NUOkWvVHw8DCyrh6Zw9MszY2ZFzAU+dzEBmf77MWEACxPWN4z7J9AdRs6vx
	z8cQYVHmoNHUVfIPNyJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJi5E-0003Qy-Nk; Wed, 01 Apr 2020 18:27:24 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJi58-0003QO-AM
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 18:27:19 +0000
Received: by mail-ed1-x541.google.com with SMTP id u59so1025569edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 11:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qc8FdgkWFDlzCGPYLOnP9rFKt+4lOYRHOhNF4lWF83w=;
 b=h3sNiT6w5xhV7LEni1uXvK3mEPsRMhJkj6EkwmrmqhNJ3+PmaeC4pDLym0QIDqoXxj
 nXVOWLYT6+vf1kIyr3ySKn3ujiPXPq2GhWRPEWPGYYnJLC5Mt+WFdYo6sJXcQLnLRO4k
 cymwVaZhmrSxhbS4NuSNUrUvfvOV1QxQ4MTO9EMiEVXDsWSys5BTFov5jWj0n3IeCk1q
 VF0fOEBc2NIE80cWUxOb5qjfYlaeU6u22H8ao2LiQ9iq1dSAnlM0EWZkMe20+kpwi1tn
 do56udx2eWFB9Uhfr9Y+4dmYSfAoPG+/Cx2xyRQUOYzKwLTQFX8FkOje8+GLOIF3hFE5
 OXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qc8FdgkWFDlzCGPYLOnP9rFKt+4lOYRHOhNF4lWF83w=;
 b=hEv2U5FxqAWaEnMPUn431aP5OXPtpz9HuxN0Dwb4Los1f/l8Un7vhQMkSpzcplvO4d
 CjYHpzhalvTFU8B3bAKsL2OihpRCWBD2mQtaY8qwOkP9+ei31YYqHJc+vbRJj5CupeJQ
 tbDPKAY3KqXVHJAHI7tl+uadBFuy/yOIbHgrjfc6XLUHQm+UnKs5Qok0JObCmF3RilvU
 u+0KsSL6gEa/DM9FJUgAEysgUeqiqM3tgNQ82TOhq9h/HQXtj/m7HMTAzNM+N7JILuvX
 Oa41dY2l1CD923WEKOC2g+qjERxNQ4m7w+W6LQ3jY5WOe/+8T16f/Pi1oYuFs+RxAd84
 2wEQ==
X-Gm-Message-State: ANhLgQ0f+xXl9C/pUIENOJUMHnMsS49KaY+Vop++3prSVwRN1XFM+kgE
 hHLeEkeD9GyNCKC05vqV3GrX1zD4EmesUMfQyn0=
X-Google-Smtp-Source: ADFU+vt4AHASmjNfRn5JQa4Gc3qglj7ra6KhGxH+2qm9C0dVE3Fxo3wYrvhP6p1JqhsehGN7/QhDVsZ76LkLt0jfxCI=
X-Received: by 2002:aa7:d602:: with SMTP id c2mr22785839edr.118.1585765635929; 
 Wed, 01 Apr 2020 11:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
 <20200326.200136.1601946994817303021.davem@davemloft.net>
 <CA+h21hr8G24ddEgAbU_TfoNAe0fqUJ0_Uyp54Gxn5cvPrM6u9g@mail.gmail.com>
 <8f5e981a-193c-0c1e-1e0a-b0380b2e6a9c@ti.com>
 <2d305c89-601c-5dee-06be-30257a26a392@ti.com>
 <cac3d501-cc36-73c5-eea8-aaa2d10105b0@ti.com>
 <590f9865-ace7-fc12-05e7-0c8579785f96@ti.com>
In-Reply-To: <590f9865-ace7-fc12-05e7-0c8579785f96@ti.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 1 Apr 2020 21:27:04 +0300
Message-ID: <CA+h21hpAnWbnQihTVGyB-TyRYad+gWCdF7suzsXRFJg-nsU9xg@mail.gmail.com>
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_112718_387618_8E3EEF28 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: peter.ujfalusi@ti.com, Grygorii Strashko <grygorii.strashko@ti.com>,
 Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>,
 netdev <netdev@vger.kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 lkml <linux-kernel@vger.kernel.org>, kishon@ti.com,
 Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 Murali Karicheri <m-karicheri2@ti.com>, Olof Johansson <olof@lixom.net>,
 Jakub Kicinski <kuba@kernel.org>, "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On Mon, 30 Mar 2020 at 21:14, Grygorii Strashko
<grygorii.strashko@ti.com> wrote:
>
> Hi
>
> On 30/03/2020 11:28, Sekhar Nori wrote:
> > On 30/03/20 1:06 PM, Sekhar Nori wrote:
> >> On 30/03/20 12:45 PM, Tero Kristo wrote:
> >>> On 28/03/2020 03:53, Vladimir Oltean wrote:
> >>>> Hi David,
> >>>>
> >>>> On Fri, 27 Mar 2020 at 05:02, David Miller <davem@davemloft.net> wrote:
> >>>>>
> >>>>> From: Grygorii Strashko <grygorii.strashko@ti.com>
> >>>>> Date: Tue, 24 Mar 2020 00:52:43 +0200
> >>>>>
> >>>>>> This v6 series adds basic networking support support TI K3
> >>>>>> AM654x/J721E SoC which
> >>>>>> have integrated Gigabit Ethernet MAC (Media Access Controller) into
> >>>>>> device MCU
> >>>>>> domain and named MCU_CPSW0 (CPSW2G NUSS).
> >>>>>    ...
> >>>>>
> >>>>> Series applied, thank you.
> >>>>
> >>>> The build is now broken on net-next:
> >>>>
> >>>> arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi:303.23-309.6: ERROR
> >>>> (phandle_references):
> >>>> /interconnect@100000/interconnect@28380000/ethernet@46000000/ethernet-ports/port@1:
> >>>>
> >>>> Reference to non-existent node
> >>>> or label "mcu_conf"
> >>>>
> >>>>     also defined at
> >>>> arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:471.13-474.3
> >>>> arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi:303.23-309.6: ERROR
> >>>> (phandle_references):
> >>>> /interconnect@100000/interconnect@28380000/ethernet@46000000/ethernet-ports/port@1:
> >>>>
> >>>> Reference to non-existent node
> >>>> or label "phy_gmii_sel"
> >>>>
> >>>>     also defined at
> >>>> arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:471.13-474.3
> >>>>
> >>>> As Grygorii said:
> >>>>
> >>>> Patches 1-6 are intended for netdev, Patches 7-11 are intended for K3
> >>>> Platform
> >>>> tree and provided here for testing purposes.
> >>>
> >>> Yeah, I think you are missing a dependency that was applied via the K3
> >>> branch earlier. They are in linux-next now, but I am not so sure how
> >>> much that is going to help you.
> >>>
> >>> You could just drop the DT patches from this merge and let me apply them
> >>> via the platform branch.
> >>
> >> One other option would be that Dave merges your K3 tag which was sent to
> >> ARM SoC to net-next. Its based on v5.6-rc1, has no other dependencies,
> >> is already in linux-next, should be immutable and safe to merge. This
> >> has the advantage that no rebase is necessary on net-next.
> >>
> >> git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux
> >> tags/ti-k3-soc-for-v5.7
> >
> > FWIW, I was able to reproduce the build failure reported by Vladimir on
> > net-next, merge Tero's tag (above) cleanly into it, and see that ARM64
> > defconfig build on net-next succeeds after the merge.
>
> Thank you Sekhar for checking this.
>
> I'm very sorry for introducing this issue. I've tried hard to avoid such issue,
> but still missed it (probably I have had to drop DT patches from last submission
> and send them separately).
>
> Sorry again.
>
> --
> Best regards,
> grygorii

I think the ARM64 build is now also broken on Linus' master branch,
after the net-next merge? I am not quite sure if the device tree
patches were supposed to land in mainline the way they did.

Thanks,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
