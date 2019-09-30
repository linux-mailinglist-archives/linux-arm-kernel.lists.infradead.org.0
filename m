Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FC9C1C79
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgRfzlkeHrQFOpFgCqkSTmBc9XBkmqMeb6nhnD2Aqh8=; b=gUdY5f1Hm1XiDt
	9OOfLwa/9pBAKfFd9WPhavcxZI3kvjprtRL+BrjNiS2QuRM/pMUdOgoCcXehlhhWHyy6lKTWEqf5y
	YK7ly8oNSo5CadujHAM6aox4kKQK9AxjVtVY8WgTPgxuSgrRX3zOKM7qdJovf40f5A9SqMbLUPdNl
	xjEuBZZDaMLVbHamIhLk+EKIF9c9VUHJuR1X3jUOTtHAh56hXG06eZTuxh7QspNxwMV8xHqBosJU4
	/owumvtSzS/UzTecjp9xp36hvN7vxWqxxNsbB1G1pcNoSP/E423+he9igyE5TL0zDYkqSSJI+HHrR
	i9Oi8HU5G+AzSIDDWqlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqdh-0005rI-62; Mon, 30 Sep 2019 08:02:37 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqdV-0005qO-H2
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:02:26 +0000
Received: by mail-wm1-f67.google.com with SMTP id r17so13486819wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:02:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fizj4yTUNCuGZAq8TVj3hQISg7yH6mFEeG99CtKC4TE=;
 b=gRtcbDRde6lDBgztzKy9rFniTnw6zEwv8w+fj+xcthU9gpri2N8VYhHP5IaRsT7k2Z
 Ei8OIRYlLhfPeR/VZaI53Bx2r6OVwWNxSIU4ebOQzdWcGpgOJFIzBqkLI7nlccBZt6LW
 v8Cf2GKf6TQjV8SBoGuvk8TIWp7pDEskC0ArdvsPIEkr+QPyEDwkM6mKw8ICXP14Kx8Z
 vDU+EP0wRFvhtVl/OGHP4yuOIrrnrQXCUsKlErgXffftBOOaIwn5wGqK4v5Yfd/1GHmm
 ymJdnSarlrQiASLsPgc/8OKTtYcNBS3qWz6XBj3JVA86yYfCgOp04FnrYpUjw34T3lQ+
 jMJA==
X-Gm-Message-State: APjAAAXtHDbXp3lxLl3l33IBd0c/q+O/9q56XwDiLtvE8JbqLgNkE7kN
 ecSZYxGjM1aDOcD9C3q5B5o=
X-Google-Smtp-Source: APXvYqxndPqHVxIHe63ZUThkAaMUEXaaoIZyED6YAbYpSbBXh+m6JJ93cT5e3vlVVimUo6YvZaoW2Q==
X-Received: by 2002:a1c:c1cc:: with SMTP id r195mr16991339wmf.50.1569830543182; 
 Mon, 30 Sep 2019 01:02:23 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id a3sm19395536wmc.3.2019.09.30.01.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 01:02:22 -0700 (PDT)
Date: Mon, 30 Sep 2019 10:02:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 1/2] arm64: dts: exynos: Pull for v5.4
Message-ID: <20190930080217.GA23709@pi3>
References: <20190911183632.4317-1-krzk@kernel.org>
 <CAK8P3a2pBV+fh0rHitZ30Zz61QNRLfNSD-nhnzq4ZtxSh66F1Q@mail.gmail.com>
 <CAJKOXPcOSvc2DfoN+7Tca=t5dSm3RcKqmm06AfR0PAVBeY=GvQ@mail.gmail.com>
 <20190929175134.fsieffurfdiqhpj2@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929175134.fsieffurfdiqhpj2@localhost>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_010225_565908_872C66BE 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: DTML <devicetree@vger.kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 29, 2019 at 10:51:34AM -0700, Olof Johansson wrote:
> Hi,
> 
> On Thu, Sep 12, 2019 at 08:32:47AM +0200, Krzysztof Kozlowski wrote:
> > On Wed, 11 Sep 2019 at 23:07, Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > On Wed, Sep 11, 2019 at 8:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > >
> > > > Hi,
> > > >
> > > > Unfortunately the patches were applied right after closing the linux-next.
> > >
> > > Hi Krzysztof,
> > >
> > > I took a look at these and am not convinced this is right:
> > >
> > > > 1. Fix boot of Exynos7 due to wrong address/size of memory node,
> > >
> > > The current state is clearly broken and a fix is needed, but
> > > I'm not sure this is the right fix. Why do you have 32-bit physical
> > > addressing on a 64-bit chip? I looked at commit ef72171b3621
> > > that introduced it, and it seems it would be better to just
> > > revert back to 64-bit addresses.
> > 
> > We discussed with Marek Szyprowski that either we can go back to
> > 64-bit addressing or stick to 32. There are not known boards with more
> > than 4 GB of RAM so from this point of view the choice was irrelevant.
> > At the end of discussion I mentioned to stick with other arm64 boards
> > (although not all), so revert to have 64 bit address... but Marek
> > chosen differently. Since you ask, let's go back with revert.
> > 
> > >
> > > > 2. Move GPU under /soc node,
> > >
> > > No problem
> > >
> > > > 3. Minor cleanup of #address-cells.
> > >
> > > IIRC, an interrupt-controller is required to have a #address-cells
> > > property, even if that is normally zero. I don't remember the
> > > details, but the gic binding lists it as mandatory, and I think
> > > the PCI interrupt-map relies on it. I would just drop this patch.
> > 
> > Indeed, binding requires both address and size cells. I'll drop it.
> 
> Looking through the history of pending material, I didn't see a new pull for
> this material. Just checking in to see if there's something we missed?

No, it's me who forgot to resend. I was sure that I rebased the branch
and created new pull request. However it seems I did not. Let's keep it
for next merge window... v5.4-rc should be any minute, I guess?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
