Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDDF26974
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 19:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fNOtcb1FzKJsE8m2pF5/sI3eOa6uQp7SlIQ0QvBtko=; b=JuYKJUF80JOt/u
	JspRid4/DbJ3UdRdSakvz21kC7WvsARxyVgk8j4/Rh7C6Z6y6gZvP2wZSs5jlulCjaR735cQRW/bw
	zbJeGMr9tzI4sj4sdFul3aX/qiQROQbd+Rq7gu5EXUsLOyEpLb2PmxDQ2+03SyeveTeMXKqHHYM97
	iDMhVzhdMd7rk6KUv+fYI42ONafwB+qmygwG9MXfRFWsdHhaiwEatzuDdOQSV8Kd23fx/Of8/aWXt
	auCH1Ejt1BIBS6vNMCRxpBmpmghPl18hFcetuAIEh0uF67Nx0KmT4U9ln/uaPTh7XNuw5cpfBnvKq
	zHfC5d/Yw7bu1mcxj7Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVTm-0004Ln-Bl; Wed, 22 May 2019 17:56:42 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVTf-0004LT-MA
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 17:56:36 +0000
Received: by mail-io1-xd41.google.com with SMTP id g16so2579835iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 10:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IUYJTTUKU/r+xzqhgLBKHt03JAr1T1iEO6fP09np6HY=;
 b=hs0SyxyGyvJnojGG+976Q9dJvM5n1Bzo/RPzJ2Ugt9eaolkymjZhuL/Mz0YKvxhO/4
 AyxmzY3fq3iLf2FN0elzG5nTX2MCd6kGGZTY1ho6V9Olnw/odN9/vFY+vRIQemxYiV9i
 qXtLXFsBDdsOEnRJ7MxT++1/fvkDWjuc4tpqN6z21T7jMr4ObArgrI/0jweGpGr9twJr
 1Vk8xxdG6GrKfTvPFBY4HLyqgLWtUOMCX1nqidbQ3OHxt3Hh+AsUXlUjcKIqh8lPR8mo
 PMT9dPtO80kkyHYjfT96DjeJqd7fGhHmaE2zrUeQ7DBpbna7PU5GHENch6LuagKvnoMw
 1TYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IUYJTTUKU/r+xzqhgLBKHt03JAr1T1iEO6fP09np6HY=;
 b=NbVT1POqMWzr03BBDuplRdE2GirMJIe4ZwPJj8PKatmvUgv4it6ekHC58QzvWyVXs1
 VA4v/59aY0/dAQ9ouDcJxlbrAXMALx8fsHiIjLKes6P9m+QUk8OKZPaSr2yB5A0ILePP
 j1g0lh8Cr90wD+UZS1oNgcve1mCFt/qUikTNxAAvfjdWRjhAcupA1ALAZH67m8wninhg
 uXCtpdN7Sf+Ad+gDloFsqrjZEoR+AuD5dyUPn7ZALfc0n5gY/Pd2665rdZgDJMgo+m3p
 E0OpR+TcgTWxxvQA67/Z2ChZGynHK+3snJwGRIM8Tn46BB2e2iQWCqDSebRVg/HhY9dL
 JxhQ==
X-Gm-Message-State: APjAAAWP719a1ecp+mS7miYHN8v1XZKF7qttAV60tOB6+9rG0oKJF3q8
 NsVDYvyQ5ftUf+bRb1T+XwARSDut6qne9JWQsej964dT
X-Google-Smtp-Source: APXvYqwctojGn7ATOKQEqWOGBngjhjHG3LMCAv2n0E0oeiLPvz8OoR4Ua4HOLixLVOOaJiPcY4Vu3KUZzFWOvIMGqBo=
X-Received: by 2002:a6b:5117:: with SMTP id f23mr13610280iob.263.1558547794283; 
 Wed, 22 May 2019 10:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190522071227.31488-1-andrew.smirnov@gmail.com>
 <20190522071227.31488-3-andrew.smirnov@gmail.com>
 <1558517601.2624.32.camel@pengutronix.de>
In-Reply-To: <1558517601.2624.32.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 10:56:23 -0700
Message-ID: <CAHQ1cqHQWqpJdZjeBiOhEC5JjfcHdY+uA+kbCxzj6kRk9SLUXQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: imx6: rdu2: Limit USBH1 to Full Speed
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_105635_725515_A2EEFDEF 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 2:33 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Andrey,
>
> Am Mittwoch, den 22.05.2019, 00:12 -0700 schrieb Andrey Smirnov:
> > Cabling used to connect devices to USBH1 on RDU2 does not meet USB
> > spec cable quality and cable length requirements to operate at High
> > Speed, so limit the port to Full Speed only.
>
> Really? I thought this issue is specific to the RDU1, but you've been
> looking at this USB stuff for a lot longer than me.
>

I am merely a messenger here. I didn't personally verify this to be
the case, so your knowledge is probably as good as mine. Chris
reported this based on feedback from their EE team, so he should know
all of the details better.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
