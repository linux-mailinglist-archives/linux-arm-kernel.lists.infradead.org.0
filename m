Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F86196C0B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 11:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzfBLT/tqYPMg2U/VRFwbmJb+/9oGsX/D4D02DYXtkg=; b=HGN2T3KmU/RoOL
	Zk3IvCRR0C8Utjq+Wgi/VZFvX+B+JrfHKBfl/SR/ZIhgDhKGuQk2coRa/BPJM4ikwO00b0JdGSPeh
	0s432IL+k18vXKCdJSFjmsiLT9KPIbIq+f0P8l45Zv8JskryL8tkxzWLhrKyobvMAk/9lgG1O74Ab
	sJXM1ZJazXf+f7TSyo6l0TE+b23Udz03x0waWpg1cXKPUueCFXL3apixcEj8zAdFAWgKK7OUSvGLK
	tRq9OzrytVKqTwYZLKctSyq0tJ+6vAa7XPNGCV6HjT6Xl6YDVYtr6WoSzh5lEdml+nUJRP6NKja+v
	BBEv7JKEyVMBe0LEg22A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIU8B-0002Fq-7h; Sun, 29 Mar 2020 09:21:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIU84-0002Ev-ML
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 09:21:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id g62so17778708wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Mar 2020 02:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=x53chI72Z4A5z3wT784xdPISVx+MMGzvobvSOBptE6g=;
 b=FnIrRA8BoFYj2RWpJ93LBznjfYgaBi8gS487V11zI073uv6ZjT6fmm2u9BwonL5VUY
 1lGpxYjz+TIxyNeexabK4v9UKbHKki3PAxlmGGSGPym4tXG6GL1sgKoUPvHghFBMX7JM
 cPrLvxLtKm6Jm6ODZv4owOGZOISVkpaMaKg4C3KjcC4DVJl04WBoljGuF7CgjTWMSWjm
 mzddCajS+9G3olNXVUMPSs0AN5m2ylu5FhOkM1Bj843r3zZQ6Z/oswLxMm66QsiRVlKF
 dpKQiYNzboWBbY2lPXnN7hqU3YhEoeBT8TojL85NRefvN2VUSAQgdxyNfcC5t8nG+zIy
 m1WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x53chI72Z4A5z3wT784xdPISVx+MMGzvobvSOBptE6g=;
 b=PncveKmIpXem5d1jEskiM2YeKiMNfXf3SD/LaFbYAovnWW4mflOE7sDGToF6fFF5cu
 lurHEOxIB4hwX9uyVsNGLnBHkQcDgk1YEUumGvVDPyQkchF1ApWqxpX8eZgbIq6qt5sH
 0CLE7995QMkrh/wcPfPU4csPk83JCZ+SdSe/ODIXwBlR4UpdDEhFHGvWMEYbYw+nBFcU
 eDQPLY9goJUS9L/D+w7Ma7fJnTMOYCKVjPwUQWGoDLHogqiFmCv58dG7L49fahBvXDAi
 WCCrG9a/eVdGtalwY1j+tXzwVo2I4zuRMkmH6O+3U/rzINcF61xtKbtLq1wiR/fSWDFD
 wwLg==
X-Gm-Message-State: ANhLgQ1/6cEAgfaEBI66pektgbw4K7Rt6kmX3K+lh2y7jrXURIm/awS3
 y5BUZ2zHE6snfUwMJCbryM8=
X-Google-Smtp-Source: ADFU+vtjvZzrvTpz+nRmLxc2pCZraCHS4XlmLXYuXqI1Tsm2DenOisGvZgfCT5iEiIBT6h0G/5Oq0g==
X-Received: by 2002:a1c:b7c2:: with SMTP id h185mr7752149wmf.67.1585473673928; 
 Sun, 29 Mar 2020 02:21:13 -0700 (PDT)
Received: from eichest-laptop (77-57-203-148.dclient.hispeed.ch.
 [77.57.203.148])
 by smtp.gmail.com with ESMTPSA id x1sm9392665wmj.24.2020.03.29.02.21.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 02:21:13 -0700 (PDT)
Date: Sun, 29 Mar 2020 11:20:33 +0200
From: Stefan Eichenberger <eichest@gmail.com>
To: Rabeeh Khoury <rabeeh@solid-run.com>
Subject: Re: [PATCH] arm64: dts: clearfog-gt-8k: fix ge phy reset pin
Message-ID: <20200329092032.GA4620@eichest-laptop>
References: <20200328212115.12477-1-eichest@gmail.com>
 <877dz3el4k.fsf@tarshish>
 <CA+j0otmO9QEKuYGk54wO_su0Kyzdxaf9ZB34SMBXQEih+46qRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+j0otmO9QEKuYGk54wO_su0Kyzdxaf9ZB34SMBXQEih+46qRw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_022116_755837_272F5BE3 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eichest[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Baruch Siach <baruch@tkos.co.il>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rabeeh and Baruch

On Sun, Mar 29, 2020 at 11:42:35AM +0300, Rabeeh Khoury wrote:
> On Sun, Mar 29, 2020 at 9:22 AM Baruch Siach <baruch@tkos.co.il> wrote:
> >
> > Hi Stefan,
> >
> > On Sun, Mar 29 2020, eichest@gmail.com wrote:
> > > From: Stefan Eichenberger <eichest@gmail.com>
> > >
> > > According to the ClearFog-GT-8K-rev-1_1-Simplified-Schematic the reset
> > > pin for the gigabit phy is MPP62 and not MPP43.
> >
> > Have you tested that on real hardware?
> >
> > The 1Gb PHY reset on my Clearfog GT-8K is connected to MPP43. Russell's
> > commit 46f94c7818e7 ("arm64: dts: clearfog-gt-8k: set gigabit PHY reset
> > deassert delay") indicates that this is the case on his board as well.
> >
> > In case there was a hardware change between board revisions, we need
> > another dtb for that revision.
> 
> It's a bug in the simplified schematics since that schematics is based
> on rev 1.0 and not rev 1.1 as claimed.
> 
> In rev 1.0; the 1Gbps phy reset was connected to MPP62; but that MPP
> is not functional as a GPIO when selecting MPP[56:61] as SD card.
> Due to that we manually rewired ALL rev 1.0 PCBs 1Gbps phy to be
> connected to MPP43 via R8038 pads.
> 
> Rev 1.1 fixes this by that by disconnecting 1Gbps phy reset from MPP62
> and wiring it to MPP43.
> So basically rev 1.0 and rev 1.1 are compatible software wise. We will
> fix the schematics.

Ahh now I see, I didn't enable the phy driver when I did the test with
the default devicetree and then when I changed the devicetree I also
enabled the driver, that's my fault.

Sorry for the confusion... I can confirm that it works with MPP43.
Thanks for the clarification!

Regards,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
