Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D7AC18F6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 20:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gji1ts5LToiZRen7g/7KKZI0udl8fniJWCbTNrJ+Dh8=; b=sIDX69kLpeJ1Wk
	hbhNUCd5WeJcO1qrSOO6hNkaYE3Fg+z2+EhdTT/ED9E6O4x0REuc5XCqwg+TSGvYM2rPZjseN5Wcu
	AQ3D7WRipKOmqwL3BNc5F9paHRVZA7MBcMUft0aHQLP1V7bIVEK/vQAaN3WOYNCh6MPwoWeJA2VHG
	X4xcdR63ndqysytLMYOvXrPpQE5EzfOTFdY4MLjTtDEq870w24pTVHgukDa+nPQ+SCC5Mf8MGzv1h
	MXDeb3zc75A9Pmo3RwXhlC/3moJ8vRgK2muxzNdeNEYewjP8ISOEwv1k4f4bR9XIT9P4hzQ6oV0yU
	ghFKDMfRebf3Gm2lNnEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdqg-0003L6-HE; Sun, 29 Sep 2019 18:23:10 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdq0-0002vW-7T
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 18:22:29 +0000
Received: by mail-lf1-x144.google.com with SMTP id w6so5353260lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 11:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I2oOR5tvCS97CthrHouvMSqg5pOQDzVvDjebg3lF4eM=;
 b=tIYVkbVQOZCJMPpJ0sLuPNRCxg4cehWVsLNJuRCbXOw0B5uzh6+q5cRrJHRzVTX1oY
 a1+/RSOmlVhyZ4vsLMGp55DUYlMuzii6M9Zn6glgxrVC5aoytx8VI1mbu9iI7jFf11bE
 CK1dsllj2ogxETE2uYTWK4dw1aSgEizTjKhYH7uBpiG4dz+QdYVheodqMk7F7yTmldqn
 xytIQQ2JfklxD1ZOmaGA9c0gA0LgqHwXimUHrFHQGpsuISXKkMhjpMwcAK5u/9N8EBJT
 q+aqVpwRztj35nMZzukQLm1TVeezBR3kkc6cqsKlmxdIC/pjspeizZBffSrAa2qWE/Ok
 cwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I2oOR5tvCS97CthrHouvMSqg5pOQDzVvDjebg3lF4eM=;
 b=TuzZwRzBLtMVpCn+3I+dSdu4VUrsUjYHS6fVSUA0DGYtuaxdpl9xBRUCfH/yJjoxXd
 oCoZX7Sty+ru3rTrxSWRch1xQ5v6bNd/6sNzoRtMsDGwKTl6xYxdlenhDndBXTOIKhMf
 VeuHEcFtZ8mfDl8/Gi/rxyFiBpp4c5APnky0N/miyfttfRdV2kdjOwnWzztzYuM7tlKt
 WVT0MzmS+UPtRwS+uzzfo2H3jTyvNDYJWni8laN5pka/xZkXilLZUjORkJKtJ3ELdOgN
 EiNInRrj9GjpnpZHUSiMEV7tXC/cWVsPlt8KJCofS5ztonvuWWNm4MMMpm6SgieqoQsn
 BGOQ==
X-Gm-Message-State: APjAAAV+vIv2+WCa+uUgAjtnQEsofIXeNdYzfuOJbqUHpezbgIW/ClkF
 L5jlEjP4C7KUQ0V8YqXRCYvEHA==
X-Google-Smtp-Source: APXvYqyNAiN5/diZRd39+iCMS5W2kHJDnF2GMM0abR1vMgUrxxMRPqXHBdEW+qUBiJnvzJdG1SpQXw==
X-Received: by 2002:a19:8a0b:: with SMTP id m11mr9035909lfd.4.1569781343744;
 Sun, 29 Sep 2019 11:22:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p3sm2520051ljn.78.2019.09.29.11.22.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 29 Sep 2019 11:22:22 -0700 (PDT)
Date: Sun, 29 Sep 2019 10:51:34 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 1/2] arm64: dts: exynos: Pull for v5.4
Message-ID: <20190929175134.fsieffurfdiqhpj2@localhost>
References: <20190911183632.4317-1-krzk@kernel.org>
 <CAK8P3a2pBV+fh0rHitZ30Zz61QNRLfNSD-nhnzq4ZtxSh66F1Q@mail.gmail.com>
 <CAJKOXPcOSvc2DfoN+7Tca=t5dSm3RcKqmm06AfR0PAVBeY=GvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJKOXPcOSvc2DfoN+7Tca=t5dSm3RcKqmm06AfR0PAVBeY=GvQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_112228_295248_97CB748E 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

Hi,

On Thu, Sep 12, 2019 at 08:32:47AM +0200, Krzysztof Kozlowski wrote:
> On Wed, 11 Sep 2019 at 23:07, Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Wed, Sep 11, 2019 at 8:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > Hi,
> > >
> > > Unfortunately the patches were applied right after closing the linux-next.
> >
> > Hi Krzysztof,
> >
> > I took a look at these and am not convinced this is right:
> >
> > > 1. Fix boot of Exynos7 due to wrong address/size of memory node,
> >
> > The current state is clearly broken and a fix is needed, but
> > I'm not sure this is the right fix. Why do you have 32-bit physical
> > addressing on a 64-bit chip? I looked at commit ef72171b3621
> > that introduced it, and it seems it would be better to just
> > revert back to 64-bit addresses.
> 
> We discussed with Marek Szyprowski that either we can go back to
> 64-bit addressing or stick to 32. There are not known boards with more
> than 4 GB of RAM so from this point of view the choice was irrelevant.
> At the end of discussion I mentioned to stick with other arm64 boards
> (although not all), so revert to have 64 bit address... but Marek
> chosen differently. Since you ask, let's go back with revert.
> 
> >
> > > 2. Move GPU under /soc node,
> >
> > No problem
> >
> > > 3. Minor cleanup of #address-cells.
> >
> > IIRC, an interrupt-controller is required to have a #address-cells
> > property, even if that is normally zero. I don't remember the
> > details, but the gic binding lists it as mandatory, and I think
> > the PCI interrupt-map relies on it. I would just drop this patch.
> 
> Indeed, binding requires both address and size cells. I'll drop it.

Looking through the history of pending material, I didn't see a new pull for
this material. Just checking in to see if there's something we missed?


Thanks,


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
