Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E282815F8C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 22:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5R95MMuRSlGD1DGuRJ+atSJFTce4uAnLU0e0sy7alY=; b=JNEGWXEt5PXsTP
	ZrfF78J/SbEZhnuE8EWAlD37wXRByZSFUaXddKCbj68RcF8Juk+l3K6go2VxH+EWtP2Yo5QMk982M
	/7F/v/xyKdU12zpl2XTYSrmNxWH4CWFiYNs6iKWBichtoMxQ2BVbpGx2Qi23TU1iyy+Ms+nVfweTG
	hQCLbw+nQ4ydukohlIJWIN6dD3N5t3KLXTBWuasuN3WMs1hnpDfJKCoh2Gy5SsGLLxrqsehOlOxEw
	N7Ko56hctU75NPO8OsqumLDmD5eqbnSuGWj30+0+AYZnjelE82D3iQVUZXh6SXogQgf/9OMA32Y3W
	15DVXxBeeWya3s7uAsRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2iZk-0007YO-6t; Fri, 14 Feb 2020 21:32:40 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2iZa-0007Rs-Qc
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 21:32:32 +0000
Received: by mail-io1-xd44.google.com with SMTP id t26so168722ioi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 13:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BZKc7Iw5Ao6DeSW088cynAow9LgysvsQp4C3aBIY+yc=;
 b=WMQs/0hLj9/SxQ3vyxLv+3rncv4W8okLOKv6C0paboIrojTdECQfyJCrhOCRT0fx4G
 oM3HAXuULlD2gvgTYP2NxZj61hNw6RN40PPsvbd226CVbYcK1BLyT/VvhFm1NUfXzdYg
 VY8r0gqWL+Gg+F2FX6wfqU9i/m0gWGApmJFk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BZKc7Iw5Ao6DeSW088cynAow9LgysvsQp4C3aBIY+yc=;
 b=j/+9GhBkJxvrPlszkAlsud26D7XIxKjrvQce2OXT95v39JM1A1c2juKhaGupwIBVrE
 2lBSOdTQstYXhW2zbIhDN2fhJgpFAcPzBXbMYZef8AH5NGowrPA3tLeuIsIMmKOlaBNV
 bR+xRIU/UsZDP38gYAvFf2z5tEs0ENwiRWlGF+QqDzVPkempI4WgH0WpJzKv4fS96CWV
 DwUbPBwVzfJTpyb/csVGkhg0Jpqb2k27jOOkimhJ/0YfJ1SKvVYTMbCrkUBZNGcZ9E9o
 5H/8/7YmLjMkHYxEODq8+SiloMgkcWVymK0YjB2JWiBPGGwxHao2DJCqn4AqyniF4Uxi
 uegg==
X-Gm-Message-State: APjAAAXSuXleE1+01jmAGGoBaF+i32I4W+WpETto4OEeYROXYNRZ9JR8
 ichKC/0XaVYjub+gEIO5RBobwEdgW1Le4SJPVM4GCg==
X-Google-Smtp-Source: APXvYqx7rGGJlQRvlXAmdf/4YbIGlcmVKixshxKK0TyrASYGQsdOT/bDRr50fWVkgOszmmXZ5IeK2mFn5MiS01GixLo=
X-Received: by 2002:a5d:8796:: with SMTP id f22mr3932931ion.163.1581715942261; 
 Fri, 14 Feb 2020 13:32:22 -0800 (PST)
MIME-Version: 1.0
References: <20200214062637.216209-1-evanbenn@chromium.org>
 <20200214172512.2.I7c8247c29891a538f258cb47828d58acf22c95a2@changeid>
 <804d3cc5-688d-7025-cb87-10b9616f4d9b@roeck-us.net>
In-Reply-To: <804d3cc5-688d-7025-cb87-10b9616f4d9b@roeck-us.net>
From: Julius Werner <jwerner@chromium.org>
Date: Fri, 14 Feb 2020 13:32:09 -0800
Message-ID: <CAODwPW-d_PpV4Jhg2CC+7Tfyrrh=gh6hRfcEKFb4gj+LB6vrWw@mail.gmail.com>
Subject: Re: [PATCH 2/2] watchdog: Add new arm_smc_wdt watchdog driver
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_133230_888302_1022E869 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Evan Benn <evanbenn@chromium.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Julius Werner <jwerner@chromium.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > with a Secure Monitor firmware to forward watchdog operations to
> > firmware via a Secure Monitor Call. This may be useful for platforms
> > using TrustZone that want the Secure Monitor firmware to have the final
> > control over the watchdog.
> >
>
> As written, one would assume this to work on all systems implementing
> ARM secure firmware, which is not the case. Please select a different
> name, and provide information about the systems where this is actually
> supported.
>
> If it happens to be standardized, we will need a reference to the standard
> supported. This needs to distinguish from IMX_SC_WDT, which also supports
> a secure monitor based watchdog (but doesn't claim to be generic).

Back when I wrote this I was hoping it could be something that other
platforms can pick up if they want to, but that hasn't happened yet
and the code on the Trusted Firmware side is still MediaTek-specific.
Unfortunately Arm doesn't make it easy to write generic SMC interfaces
and my attempts to change that haven't been very fruitful for now. So
yes, probably makes sense to treat this as MediaTek-specific for now,
we can still consider expanding it later if there's interest from
other platforms. (I would like to avoid every vendor writing their own
driver and SMC interface for this, although looking at that IMX driver
it seems that we're already there.)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
