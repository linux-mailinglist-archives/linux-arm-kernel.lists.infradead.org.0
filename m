Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18647368DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 02:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htAReR0je0CKNlObZildB23vuEH7fVqRY0DM1pkAL+s=; b=KNdAY7sNfO/FoN
	zeERMBeTSnL52kS/sa3EN9x7QYMtFDXDUFOzmzoTTpBiX17seArvgylGSZxZ2ReiPREc4Yh8PBUDP
	cSPf6vQiuE/f/3fvLo2ERehzSsYizrs8/eITGfeenx6PXPhkXNXWfE4qJ3vKPoJP8M5ntV9pfFhUs
	STjcglvk3mj2Bgif7sTEBI4O2AnIJOYa8+pikcjAzoZYcKhk/AfcW3belpc1OXi5GurXq1mBOWjrb
	caZHhP/OQLKDgz7zMA7S4b0sCR9AYzNQglW11AVhA/SOz6laByKGbN0zIgvnlAPBEZP3qpCGsa5lc
	48VdwhHSXbtt6venRX6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYgcu-00084l-O8; Thu, 06 Jun 2019 00:51:32 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYgcn-000841-CS
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 00:51:26 +0000
Received: by mail-it1-x144.google.com with SMTP id l21so537981ita.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 17:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x3JgMGXxoFyrSzQKQvIy0d7RmVBrUCmiUkROdMVZIa8=;
 b=Jxkav8gsgBQ06Hb3Wavigr7Dv4OUBFIziYGUBLGQNsY249hkoBhG9msopaIum3RGkC
 GFdgeT5uczfIuMBub/0izw1+Yz8t7Cnv9B8AtQXn3V1tl60GxZcEkkf3i1UqTrYJLLNj
 enR4W1ZSsOFMvaAv0uJSRGUps1GRMSN8BCLXthT0DDEBjrQVQEVHZP8Q1tRtTXJi0cE7
 h8OIo2Y/gnomw6nVExCTiDhZWYYcsHxZr5ByjwKkSD+Uw6e0Td8eAf0vve6CCzpApvUt
 IyZT5EwLTvLYNnNXL5SgS1RnZQ8raSUKBDtadEx4HRLAZpWheGbBukqCCahrFAJMkheI
 ZStQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x3JgMGXxoFyrSzQKQvIy0d7RmVBrUCmiUkROdMVZIa8=;
 b=KeU0lr6oCLWx9J5IWS8R4C5L7nCftH/+m2usLAzL/Gikmk+ZystoMEtIeK0Cq+9gIW
 DXMLZA6ADJSphjA1ni9/CszJQOPfLWcZpNYJ6rIjybViGRJd3KQoHQH55qXtxLsHjKG9
 wFVL9sjKMF8GTSBQWte+rOrRSFGvlszxgn9kNpovjjjbfW37WDXy8moxpB0CDc+Rn4dT
 PLY3kA1siETCcR3tGpGV3DCiyjqGdunqeXsVLarGX8ebhO1A+39J6ArgCiO5gHpoMH+G
 CDIeOEMd/ti/8LBJojDRi/n+BsFwnklvbdSK6zxi+pUKc2wfKOocQp/0uOvsN1VryUzK
 EijA==
X-Gm-Message-State: APjAAAWEcvxl4BHYMPvZVKESi3UmkvVejr0qkUyi0eLR7N42Dv6DPUXX
 /yDesEB9baQNVGvsFwUZQVtkQY9QSU/M6/XfaoA=
X-Google-Smtp-Source: APXvYqzmph6ZRur6mOBzsUcQ4NfOKcvNyvpb/8eRdiBEF85qH85HkoWRXZfOxuO7UJ3GmA6ueUrxorUxCsRI9L5q0bM=
X-Received: by 2002:a24:424f:: with SMTP id i76mr9129411itb.119.1559782283865; 
 Wed, 05 Jun 2019 17:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
 <20190531165326.GA18115@e107155-lin> <20190603193946.GC2456@sirena.org.uk>
 <20190604093827.GA31069@e107533-lin.cambridge.arm.com>
 <20190605194636.GW2456@sirena.org.uk>
In-Reply-To: <20190605194636.GW2456@sirena.org.uk>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 5 Jun 2019 19:51:12 -0500
Message-ID: <CABb+yY27Xe7d5=drKUGg82rJXcRU3EfZkG9FygZoOiioY-BMyw@mail.gmail.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_175125_452997_7217749C 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 2:46 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Jun 04, 2019 at 10:44:24AM +0100, Sudeep Holla wrote:
> > On Mon, Jun 03, 2019 at 08:39:46PM +0100, Mark Brown wrote:
>
> >
> > > It feels like the issues with sharing access to the hardware and with the
> > > API for talking to doorbell hardware are getting tied together and
> > > confusing things.  But like I say I might be missing something here.
>
> ...
>
> > So what I am trying to convey here is MHU controller hardware can be
> > used choosing one of the  different transport protocols available and
> > that's platform choice based on the use-case.
>
> > The driver in the kernel should identify the same from the firmware/DT
> > and configure it appropriately.
>
> > It may get inefficient and sometime impossible to address all use-case
> > if we stick to one transport protocol in the driver and try to build
> > an abstraction on top to use in different transport mode.
>
> Right, what I was trying to get at was that it feels like the discussion
> is getting wrapped up in the specifics of the MHU rather than
> representing this sort of controller with multiple modes in the
> framework.
>
Usually when a controller could be used in more than one way, we
implement the more generic usecase. And that's what was done for MHU.
Implementing doorbell scheme would have disallowed mhu platforms that
don't have any shmem between the endpoints. Now such platforms could
use 32bits registers to pass/get data. Meanwhile doorbells could be
emulated in client code.
 Also, next version of MHU has many (100?) such 32bit registers per
interrupt. Clearly those are not meant to be seen as 3200 doorbells,
but as message passing windows. (or maybe that is an almost different
controller because of the differences)

BTW, this is not going to be the end of SCMI troubles (I believe
that's what his client is). SCMI will eventually have to be broken up
in layers (protocol and transport) for many legit platforms to use it.
That is mbox_send_message() will have to be replaced by, say,
platform_mbox_send()  in drivers/firmware/arm_scmi/driver.c  OR  the
platforms have to have shmem and each mailbox controller driver (that
could ever be used under scmi) will have to implement "doorbell
emulation" mode. That is the reason I am not letting the way paved for
such emulations.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
