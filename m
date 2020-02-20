Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E2116616D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 16:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiyYQenkz9KgwhS90NXWMXDkodi4exH5Y2viWGeytls=; b=ElQTurXD+Xsp3X
	g+8OM7WpeJXbGd3nbrkcQNNcSedb1Lki34L1JRNoOBwz/rmE4hPrXrnyHm/Qz0AbeSXr9Zh1ZLYTA
	EEoudZQuMGJTEs3IIxI1a6why9ehfQmHzgb93p9cz04WZtsCkwMsRd6SChjIHA+H6+HCfoUZuojJW
	lmPlzYr7pIVoIu/Y8NM6mbFFyj0v+nBFTAuzrQfXNjtUW+18W4/s8aWoX/YOOlJAqcHPNGl59pg1B
	CyEWK5hcWuNe7RtNNx6H+jSFDe+4/AsqJHv/z2G0FfN1i6yiKM6KmSrTqh7/Z1ccVtm/G3YqbGvwI
	7VRRhcXCcAhBDa2MEXYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4o7X-0006iv-Bu; Thu, 20 Feb 2020 15:52:11 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4o7P-0006iJ-82
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 15:52:04 +0000
Received: by mail-pj1-x1042.google.com with SMTP id fa20so1046974pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 07:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ee8gYjz2/NK3zQLUacTfzriK0f627854wQ+fW/DiGas=;
 b=ibHAPK4dZOkBgSjnYOBBy1bLrcL86MaTk6ozB+/+/v8Xwo8BhyjNmuNYQm8JzD9Kg1
 5qG1SG+eGRtqdVDZaRz3YBTeI3csa558ewIUOxhTilOF82ambXFO1eF3nzmQR7ROjkqH
 DtQLxVIS4Hh/rcU2k45+k6FOjn4yqmDpidLwAps1ftNYSIYe0TMegSiW2c/aAGt/g+m2
 E0wuYiXYNhNRh2R7je4UeLXVI7YDIRSX+pm4jUs7bzppXuX++6H0E/qUGwGWX9r31Jaa
 eKLN3CuaVPywV1DXlfeAozmFoB6+G5Pwu/OHVikR1rZZqmjj3biGrCHtQYdAz4z+oPwM
 w4BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ee8gYjz2/NK3zQLUacTfzriK0f627854wQ+fW/DiGas=;
 b=el5O/3Nj8N1hmCs6qAxzRbQpQZ9EZaiurDJ1TKB35zE5AWCEKUU5D/nDDLKhKk0SDI
 WdpccZqR/LgJGQzWJX069HuLp/fi1YK7sBH05DoM7SGh3vZ9CTy2TQyIXjz2hFzAyaI1
 Py441RpgIWh2LWG3dUStFYk3xg3iin8B6f2bByZn4/jbu4HFeb/Be8sWs4n9QuOZm+8z
 o8cMNv9nKJ1M6xA13dr4ha7uVknbTmFrGbuEVl232Q8BZir5IDKiwiLIjuhS1ci5Anxa
 q+w07ZdBNk33ymjfV5fI+jwtq1RA2xygHQ6FCLhqo/6imW4cR/5UhxR0RWl/dcPgXnom
 SuZw==
X-Gm-Message-State: APjAAAXMqljdEh28M6Da6dKTkwxJfVyINC07+eiEQ7qhbYhCFP4/GHbw
 upvc12oJoOBcoeKt0WiOyjUfb4Sk
X-Google-Smtp-Source: APXvYqwEM87xdIwcka2RcS2+volC1263cunDaDInFyyuPNjsIvj3zzwsaqK+yOuYzvDmBnMgIWiUxA==
X-Received: by 2002:a17:902:223:: with SMTP id
 32mr32169684plc.167.1582213922023; 
 Thu, 20 Feb 2020 07:52:02 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id f13sm4207582pgk.12.2020.02.20.07.52.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 07:52:00 -0800 (PST)
Date: Thu, 20 Feb 2020 07:52:00 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Evan Benn <evanbenn@chromium.org>
Subject: Re: [PATCH 2/2] watchdog: Add new arm_smc_wdt watchdog driver
Message-ID: <20200220155159.GB29658@roeck-us.net>
References: <20200214062637.216209-1-evanbenn@chromium.org>
 <20200214172512.2.I7c8247c29891a538f258cb47828d58acf22c95a2@changeid>
 <804d3cc5-688d-7025-cb87-10b9616f4d9b@roeck-us.net>
 <CAKz_xw0fHgVBLdEoEoQ7OSAgBcvYBAowV0obWLsDUGNPotP55Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKz_xw0fHgVBLdEoEoQ7OSAgBcvYBAowV0obWLsDUGNPotP55Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_075203_309760_B0BE2B9F 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-watchdog@vger.kernel.org, Anson Huang <Anson.Huang@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Julius Werner <jwerner@chromium.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 05:50:03PM +1100, Evan Benn wrote:
> > > +     if ((int)res->a0 == PSCI_RET_NOT_SUPPORTED)
> > > +             return -ENOTSUPP;
> >
> > -ENODEV would be better here.
> >
> > > +     if ((int)res->a0 == PSCI_RET_INVALID_PARAMS)
> > > +             return -EINVAL;
> > > +     if ((int)res->a0 < 0)
> > > +             return -EIO;
> 
> In fixing this I found drivers/firmware/psci/psci.c:145
> Which also translates psci codes to errno codes, but uses EOPNOTSUPP:
> 
>     switch (errno) {
>     case PSCI_RET_SUCCESS:
>         return 0;
>     case PSCI_RET_NOT_SUPPORTED:
>         return -EOPNOTSUPP;
>     case PSCI_RET_INVALID_PARAMS:
>     case PSCI_RET_INVALID_ADDRESS:
>         return -EINVAL;
>     case PSCI_RET_DENIED:
>         return -EPERM;
>     };
> 
>     return -EINVAL;
> 
> Are these more appropriate?
> 

It is customary for driver probe functions to return -ENODEV if the
device is not supported. I don't see a reason why this driver should
behave any different. "but this other driver does it" is never a good
argument.

Having said that, yet, with the exception of -EOPNOTSUPP the other
return values would be more appropriate.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
