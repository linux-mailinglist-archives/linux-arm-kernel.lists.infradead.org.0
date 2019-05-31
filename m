Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C855F31230
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z82t6uv3SkzRUh2+oHoUH1uVnZ1Lvs8HDdhWVN3WzD4=; b=NrW3dJazOarER6
	iQMWbvNIsxEqWD5eR6B9ug4eCMHEywJJ1rp2zgr0mCyMlGaF+ZmNqAIvVatuJ0/DD40E/5SM87qJA
	V9PnT6sjj/9OPi6mYtimfUlhtM9AP7yrWAuW0CMVScpc5EwtiIbqmsTMG9fj25MQrkGF/A9JmhZDQ
	6XRh7bVRqn3dEPWWxEfgKMK2400jE2Bgqkqllx6FlPzSusO2pgM84fWjxa5A2Yy2X9z/ddXWjPLaj
	anFCgBjGXbGnMB87RnOgQ6xzWaEtP9Ns6SPo0WPdWRSA+fEV69WHlyDdzogGXHGGMx6uatLaBnop4
	/Im766n6+iT3W5J1jGgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkI5-0007mb-Du; Fri, 31 May 2019 16:22:01 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkHR-0007l2-RA
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:21:23 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so8684211iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 09:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hhzUzcK+D+x0PoR8QoOOO0vIELyXq5qCJQReWwEd68k=;
 b=avkpptgN30TGCHK1XGlzNzBfHRpn6OXiAXMYSQjo1mMKGC0YWM0fQDIi/HI3fldW0B
 vUdNL4NJ/dSpcY6P2E8h3eYXHIO1WTZXyaltmZdtL9pnF9xKadr+RVpDRSWCsAlWcsjQ
 +fPgx9hzSwPVG2/qCaSbCzlw6ZiBtn3frTTW++3CfLkiyrIzm7pHCIjbn/e6AlisMBJs
 +xEWhR8qtnXAe4EPvZIxo4BPTmuXaN46HJEwcH9LiJLS/RtvSAX03FG5jr5caf1/7N9M
 4hB0viKAivOLyEDpWzoDjlcxHd7r5u9TsXcVtUKuAl2t4i6Mtikky5lj6gG95+bc9q7V
 +YIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hhzUzcK+D+x0PoR8QoOOO0vIELyXq5qCJQReWwEd68k=;
 b=mpLWh3rQpvte8bWP2a76flvAh1wYttFIjFdUjbhGz9RyNQyA+GqEAWybuxYndf3w2Y
 TYfjVtzoP01Ld5i1V2YxjJoNopPpKzfsVLlKY86aT5N61bBxb7Qw9FQtGQrskwIO5xtl
 1uUt0e9hEFfPBGT58fbPqX3zWvwP+HeDOOF/sZNlKHD+xWd1QBulHpByC5gTGUXMaRXb
 +lvHsHSGqCmvJrOfzx2EsI4YyOtKXHmFyy03mVna3U2b+6KZLe/Tu3Ief3gwKOiNf9Em
 h2AvluGXjyHqtDYKr4SaGJf0z1R2AkNbhRnkitb2FBWNgnAr7oy+DTQ7gY2MhyEgZ7gA
 ICpw==
X-Gm-Message-State: APjAAAWh6BxZx07z1qfnUNwT7O4YebLBxY1aYXLl5PaIBSLZRXAEzm3C
 SMyeKPNFUTPEH+wjzyqOIZcZcwmVXLF43sETBSU=
X-Google-Smtp-Source: APXvYqyOTbkf5uG2siRLrdE23h185dSngIKc8wsDjAlb6RyZEh9XEpe4nzXaFLzGOZnH3RtV3azlZDTBHwilrML5lE0=
X-Received: by 2002:a5d:8c81:: with SMTP id g1mr7320119ion.239.1559319680310; 
 Fri, 31 May 2019 09:21:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190531143320.8895-1-sudeep.holla@arm.com>
In-Reply-To: <20190531143320.8895-1-sudeep.holla@arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 31 May 2019 11:21:08 -0500
Message-ID: <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_092122_061675_3E9C801E 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mark Brown <broonie@kernel.org>, Cristian Marussi <cristian.marussi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On Fri, May 31, 2019 at 9:33 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> This is my another attempt to extend mailbox framework to support
> doorbell mode mailbox hardware. It also adds doorbell support to ARM
> MHU driver.
>
Nothing has really changed since the last time we discussed many months ago.
MHU remains same, and so are my points.

>
> Brief hardware description about MHU
> ====================================
>
> For each of the interrupt signals, the MHU drives the signal using a 32-bit
> register, with all 32 bits logically ORed together. The MHU provides a set of
> registers to enable software to SET, CLEAR, and check the STATUS of each of
> the bits of this register independently. The use of 32 bits for each interrupt
> line enables software to provide more information about the source of the
> interrupt.
>
"32 bits for each interrupt line"  =>  32 virtual channels or 32bit
data over one physical channel. And that is how the driver is
currently written.

> For example, each bit of the register can be associated with a type
> of event that can contribute to raising the interrupt.
>
Sure there can be a usecase where each bit is associated with an event
(virtual channel). As you said, this is just one example of how MHU
can be used. There are other ways MHU is used already.

Patch-2/6 looks good though. I will pick that up.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
