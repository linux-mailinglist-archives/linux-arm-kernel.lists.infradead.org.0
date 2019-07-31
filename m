Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8897C33F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNCgvwW3ktQVmSE7Oguur63jsOkfwHtiLI8aErPmt/8=; b=U02sMxxmZGjmqF
	Lg2KaN4x0lfF2ZaXVgTEllgBiHF+bT7H91uFsNGgaFFEdQVsxzDOysg0HhbWIxdX8Nas5TEo3Cd1Z
	0jJI4oIIcMmWlXawRwDDZDXvruPRqh9IH81/UVeqQGddDP4F3d3TdlK0XFR8Lwv0K/5iUHhiDWuyh
	8B8IeHuKwTKZJWDtwMKT5G3VJeBjj7XjBnw+A5RVaApfQSB0jEEUo+H1WK0kx42pWxZ0yaieUHLK2
	9kyUufuMN1l3DorVQHmJOPkSWWfw100CiTDt3ydw9FGEM4ledVBi4rbiT+KOjUGFcmOmkzac3IQO9
	l0XNmeYRCsHeEa6n1bcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoYK-0002y3-G6; Wed, 31 Jul 2019 13:22:00 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoYA-0002xM-HU
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:21:54 +0000
Received: by mail-io1-xd43.google.com with SMTP id e20so3235636iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 06:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qEmtqV6jxIm1Hf7XCoFWbgfozoS82kQ9/Zb5qc7DFzQ=;
 b=iLKtDYhQ1/laEfKGBtuXbMfooXiyjZ2AmkBlkslHGjFZItiG4iB2z0M9LzNcR7awVf
 9ik3RbeyAKgBKGiDRVsmk4WWMlNOzJcOSY2VbRleml4zG9+0sCTCeoWJQGKFCOQ3qytm
 d0Kil5SswxA4ZMoBjhJpnI0igtkGv1aCEns0ueRxAMmhGlFNDOZrRRIg+e71N153QivE
 3Vxp8UR8I2IM/2cinG7q6TgyuG6e3qwhmvoBhAL5BYgkj6fwkHOFEdqitUzOqfPq2xaV
 4VCZiI1aosV9SKIiWWLwn3A05GqHn3MByxVWAIJqRor+QNYZylU8JC191piLfQFLLEtH
 fp3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qEmtqV6jxIm1Hf7XCoFWbgfozoS82kQ9/Zb5qc7DFzQ=;
 b=LRZXs6Ub7Gu0QgH2mIbxkQMLoUTCTyjyGpEshfauGePiH3Fk2O9oFVagYuj1AK0B7k
 iFRpfjCU4ZUBUMgfrzuyZjdNWYMKfQYZUxa74iufk5YQYMBlQXzcLW0GE7XJrTS/jBCl
 hx3PhL8sGdsk+xU92HoEh6NzBV45Ys/zdB0P33Psk/ZAfCJsQ5i3qI/Fn5MFI8wBA7gB
 GrD6R2QOJCXuONfmjqLgQEIQc/sioYkru0WEp71woI+qrfO0eFR1H5yV6odR73Cr8YxM
 Fjr5CpkFqd4ZImH870/RmhIw1B5QgS6kOXWD3jw4WLkFVNGMFl8eiypYtaSZ93Gz1NVB
 1fOg==
X-Gm-Message-State: APjAAAW0C8nfm+Txt3Po4sU22BVSzwOjbtAuh05vmLklUgmzgW6hVnkT
 3IZ6nAZg8ErWHZH8/uN19vDm9d6PqSg6RE6E2hj5BhfklEA=
X-Google-Smtp-Source: APXvYqzPVMAFcVhfX7nef6PXLS/pYiwVYlTrHmhyyV8Mlbt2TQ+kXJroNOKFGdZUkM4UDziKIKKtIjxDZXRuH16p/bU=
X-Received: by 2002:a02:16c5:: with SMTP id
 a188mr128658135jaa.86.1564579306847; 
 Wed, 31 Jul 2019 06:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190729135505.15394-1-patrice.chotard@st.com>
 <CAOesGMg-3xt2qjjZ569pUE+d6tn7nz264AN9ARkBT_Ej4TFC2A@mail.gmail.com>
 <de6ab910-380e-6271-88d8-6fe670525e60@st.com>
 <CAOesGMgi2cLUZGZnzKY+4i2tZSFyLe2TEK5SPY5yu0qSh_BRxg@mail.gmail.com>
In-Reply-To: <CAOesGMgi2cLUZGZnzKY+4i2tZSFyLe2TEK5SPY5yu0qSh_BRxg@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 31 Jul 2019 15:21:35 +0200
Message-ID: <CAOesGMirq=42Cj4kT=dLSqUiG-yee5zuqFhg5t=ud5KPmQJYBw@mail.gmail.com>
Subject: Re: ARM: multi_v7_defconfig: Enable SPI_STM32_QSPI support
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_062153_608499_42BF00CA 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Patrice CHOTARD <patrice.chotard@st.com>, Russell King <linux@armlinux.org.uk>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 3:20 PM Olof Johansson <olof@lixom.net> wrote:
>
> Hi,
>
> On Wed, Jul 31, 2019 at 8:48 AM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
> >
> > Hi Olof
> >
> > On 7/30/19 7:36 PM, Olof Johansson wrote:
> > > Hi Patrice,
> > >
> > > If you cc soc@kernel.org on patches you want us to apply, you'll get
> > > them automatically tracked by patchwork.
> > >
> >
> > Does it means that you will take it directly in arm-soc tree ?
> > I mean, I used to take this kind of patch (multi-v7_defconfig patch
> > linked to STM32 driver) in my stm32 branch and to send PR for them.
>
> You can do that too -- it was unclear to me whether you posted the
> patch with us in the To: line because you wanted it applied or not.

Also, we request that platform maintainers keep the defconfig updates
in a separate branch, since we normally track them in a separate
branch on our side. So if you do it in the future, please send
separate PR.

For single patches, it's just as easy to send us the patch as a pull request.


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
