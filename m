Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEE4377B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rtcytd9LWUW+31WR7KY4z06Fbwh3bb7LVxMPV3TYtq4=; b=hhoG+GwjnryrCZ
	O0Lk2xAoy2XJk2fHdUaxc3rfHZYRn2IvjYuShTyJ7aB4aV9OFO7xAWerov5g3SutAD7tUJ58OPH4J
	kXFofas93kg1YO5fK7YXSKhvc7YclbOzb8kjbHryhMvLdH+pIlzXyRS+5aUJ7/2BxbHv0oVWvOx8c
	yVMJBxjwHmh9wjdIMHJUZMZtxqeOqa6aJg4rQGUR7HOC0Jr2/49iP7bJbHTuUXRJALPUa572uNosr
	DnX0q7E6xZIoS4OCUaVtY+9XzZBeTcPGsOv8//gxQALnxavAmrY0PYBG59Fp1efeXKjEKc+wYJwHY
	ABlRAibf/zuxA79AqxYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuCU-0008JO-6u; Thu, 06 Jun 2019 15:21:10 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuCE-0008Bj-15
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:20:55 +0000
Received: by mail-it1-x143.google.com with SMTP id h20so538438itk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 08:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PiMfO4YCof/W4JkE5dyaN3W6EpzaEIO712mn6YXuGlQ=;
 b=n2r+s5VI77v/Gl4qX5FTH2C3QoCnzX7QviDVxNwEh8v1VqtutxdY5cKYrbeIhUAYfe
 VsQI2A59EJb4m3eV3xZObhXAQiS03hkRIWDrVgg+KmDAA36jQXofXhgoyd/EW3mnmBQe
 +FkL7Quaar04j1iF1sTSuDhZ3PkowMgcPRdNLpDtUZ/LdvrBxdBFQep7j9hZLjRrwsFJ
 bDDn/uaFHCz1uJDdpSTa8otDDOf7h88eC3Cj/aYs4QUJIeto5WgVIRcTc1yaWbtdlHJx
 2JD0m120jGPSw12tYIsrEwsVrO4tpuowAiFXJGRwMiiD/hMR7IPJuwJgbSzwvnL/0CrD
 HrQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PiMfO4YCof/W4JkE5dyaN3W6EpzaEIO712mn6YXuGlQ=;
 b=FpxyhLDjCGZzvsEKxcN+KmN1q76B0S4OmNg+dgypv8j2nx9AG2ZMbJlAEx/TIo2HI9
 WXlROhBzxvYPG5cQ1OiV2A9hllEv/f44jRjizvsiUbsclGt2gPnhj9yqXjKk3tIiueJh
 VHVj4fzvtnJKlNqwhAOcSBBD0fks1dF5ob8p/Gq6MEj7AuLcYJsAkhcAZGHhItD2FQj1
 G42ovTVuCcwMP5muoTdT069dp4AlwnhX5BNCuw6qCDmlMMmEG/aUGR6H2ErOm7/5pQui
 z/u6pkS/WrFOtovPvLb6bB67m3+hkjUjBpEmI/I8VmaNIQQvNEhyDW5O1tpNY0XL6uvR
 jh1Q==
X-Gm-Message-State: APjAAAVwDy5r8GsfVbvvUW1h8pmrCaBJtcr0l4osgq0OKbmgHkpuCsgG
 xMCQJIaM9WmV5mu1MbR3tNzDkjEQQxuVFgVBvrc=
X-Google-Smtp-Source: APXvYqwoGrsOerFQadM6uR//lLBEZzEAIg6wBoWX+NYN57fO/8eXWEoPhiyO83o6l0JvSjzFVa8euk8cY7ZxCX8L1Zw=
X-Received: by 2002:a24:424f:: with SMTP id i76mr499467itb.119.1559834452931; 
 Thu, 06 Jun 2019 08:20:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
 <20190531165326.GA18115@e107155-lin> <20190603193946.GC2456@sirena.org.uk>
 <20190604093827.GA31069@e107533-lin.cambridge.arm.com>
 <20190605194636.GW2456@sirena.org.uk>
 <CABb+yY27Xe7d5=drKUGg82rJXcRU3EfZkG9FygZoOiioY-BMyw@mail.gmail.com>
 <20190606125140.GB26273@e107155-lin>
In-Reply-To: <20190606125140.GB26273@e107155-lin>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 6 Jun 2019 10:20:40 -0500
Message-ID: <CABb+yY06heJ5s5-2tvrDt9CdL+--YLG+P52e52YFPqTA=Nb3vw@mail.gmail.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_082054_067193_D83FFA0F 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Cristian Marussi <cristian.marussi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 6, 2019 at 7:51 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

>
> > BTW, this is not going to be the end of SCMI troubles (I believe
> > that's what his client is). SCMI will eventually have to be broken up
> > in layers (protocol and transport) for many legit platforms to use it.
> > That is mbox_send_message() will have to be replaced by, say,
> > platform_mbox_send()  in drivers/firmware/arm_scmi/driver.c  OR  the
> > platforms have to have shmem and each mailbox controller driver (that
> > could ever be used under scmi) will have to implement "doorbell
> > emulation" mode. That is the reason I am not letting the way paved for
> > such emulations.
> >
>
> While I don't dislike or disagree with separate transport in SCMI which
> I have invested time and realised that I will duplicate mailbox framework
> at the end.
>
Can you please share the code? Or is it no more available?

> So I am against it only because of duplication and extra
> layer of indirection which has performance impact(we have this seen in
> sched governor for DVFS).
>
I don't see why the overhead should increase noticeably.

> So idea wise, it's good and I don't disagree
> with practically seen performance impact. Hence I thought it's sane to
> do something I am proposing.
>
Please suggest how is SCMI supposed to work on ~15 controllers
upstream (except tegra-hsp) ?

> It also avoids coming up with virtual DT
> nodes for this layer of abstract which I am completely against.
>
I don't see why virtual DT nodes would be needed for platform layer.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
