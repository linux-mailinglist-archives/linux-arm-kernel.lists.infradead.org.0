Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E6E7C2FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qibIffUM549Gymr2sJAfKk9s7GE3B1EWVnwrocZ/y10=; b=objcTyxOAFp8v0
	u4dINEDIV0y1ldWlJEh7NRQ/6pbI2fhjo8SuU7bjGBqunz8S9RMIuXhgUP4aJ2Fy0CzcUD1YHpz71
	uddaJZn6PUAMo8HAruKUVMsLwgiif+P4IZZ+euDK1BMtGp6GIEeKeUpbfEyiV3S/gCgnY75wEg1bo
	5lKr6ZZNWPmDTeQQF9Ga0/ZWD2j8ekQtR+Agt2ZuIEcya1Or6OC21Y5zVIfTHsgS7nTGaPGlvH4Ox
	Nwf4REVnCljmbQy7g8DI15/c2TAKO9FyTJ74FkoPIXqSsI5+fyBlFCeKgTzZwHR3m65woP5habYIO
	7HDbIlAX6qpjGfmbLLOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoNe-0006dV-KM; Wed, 31 Jul 2019 13:10:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoNX-0006aG-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:10:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id c3so8714139pfa.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 06:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rt+guMwNhJRHRn5IfYwFQ/sgOXInz6KxTo8lw7aiy5o=;
 b=gs78//H7LNShCsnjSw8NmM/oTXR89tctjqExwGarNFR1HPDda39C7FVxzEan5zMHdK
 6cB24JjcjAbQy8XtUkZodo4u6df686F71Mv/q7oDld/FoFf/tUwpH8Ya396ePXCTfD0o
 Dvgu62a6MeZYYZInpUcG3Fb+JTJxaZenxvpq3gvsy/xll4qitJKWbPeGlVPtgYnCNQLR
 EPlshKNhjkQhbqyB0pQFFls299RawuFj12qdOUx2n+J0Ko7JvNfb1x0RR0EIG+LYodIQ
 anMWP0EuZVFFnYgh1OC+Xwui/N0TFC1OY/jUToGF5CcotzxoYJGX807D8jgfAJdSfeIG
 A3ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rt+guMwNhJRHRn5IfYwFQ/sgOXInz6KxTo8lw7aiy5o=;
 b=n4FiAyRByTbHSi9XbS1j2ZE5FsorNGgMHnNH/CmDf3oV6+4domDidjZIxSE2yngLIs
 Z0hO4pWRjCzEUa+1Nf7+u+lX1qUY/N1AU2Nu1UqQZbELAs6LdCf7OwMgWfNR8HpvkYiQ
 ktymRCSbXEpmWGB+Pb1/ZqtpIZ0EF/Qjd3FW8szFqPebmhThf3E4d/PcLquVVwxezFmr
 4Hva/KvMowhsciQBBg86UZSIlrjltOJg9fzG9gnnB5U1fvYB19917zJOWTm1EFkk/TGo
 qaf7VCuOMFgEKNbdSTWHgFLMGt1Pkf5R1NkwU0vpJOFfl9cgRACPKmXSDllyht1nn40m
 PdcQ==
X-Gm-Message-State: APjAAAVzixdg6PQ5ASKXXU61if8EokqoNfa1pIHvNyI8xxdbMFYyoDeR
 4j8hfS8CY3UuIe2wbIjlHfQ=
X-Google-Smtp-Source: APXvYqw6zrs3C36FlP+BQfVYwpgNJ/uT+OXNK7FouVI0RYpGcs21O7mEWzL/gYHEOWg9kiuYl3v9Hg==
X-Received: by 2002:a17:90a:b908:: with SMTP id
 p8mr2967626pjr.94.1564578649195; 
 Wed, 31 Jul 2019 06:10:49 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id r12sm47427239pgb.73.2019.07.31.06.10.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 06:10:48 -0700 (PDT)
Date: Wed, 31 Jul 2019 06:10:45 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 00/10] drivers, provide a way to add sysfs groups easily
Message-ID: <20190731131045.GB147138@dtor-ws>
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731124349.4474-1-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_061051_118705_A6D8F2EF 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: x86@kernel.org, linux-input@vger.kernel.org, linux-fbdev@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Darren Hart <dvhart@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Richard Gong <richard.gong@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 02:43:39PM +0200, Greg Kroah-Hartman wrote:
> This patch originally started out just as a way for platform drivers to
> easily add a sysfs group in a race-free way, but thanks to Dmitry's
> patch, this series now is for all drivers in the kernel (hey, a unified
> driver model works!!!)
> 
> I've only converted a few platform drivers here in this series to show
> how it works, but other busses can be converted after the first patch
> goes into the tree.
> 
> Here's the original 00 message, for people to get an idea of what is
> going on here:
> 
> If a platform driver wants to add a sysfs group, it has to do so in a
> racy way, adding it after the driver is bound.  To resolve this issue,
> have the platform driver core do this for the driver, making the
> individual drivers logic smaller and simpler, and solving the race at
> the same time.
> 
> All of these patches depend on the first patch.  I'll take the first one
> through my driver-core tree, and any subsystem maintainer can either ack
> their individul patch and I will be glad to also merge it, or they can
> wait until after 5.4-rc1 when the core patch hits Linus's tree and then
> take it, it's up to them.

Maybe make an immutable branch off 5.2 with just patch 1/10 so that
subsystems (and the driver core tree itself) could pull it in at their
leisure into their "*-next" branches and did not have to wait till 5.4
or risk merge clashes?

Thanks.

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
