Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A043615049E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klzC4HidPvqYmplE2r6a2gFQ3FNsAe7s5eP6YxTXRts=; b=h7g/rU0JhVDZd4
	94iHIyk7X5aJUB/yI7usXjMpnwf8iL2E/GpCNpFEYPj7LIIDTYHRWpDo25Ygy8D6QEJakKRFoSMax
	UYoaDoksr+vm1Vk7aLMjNAlOzG55c37NhkVvT9+be+VhQ+bz9YBYwfiqURz/sHSeaD4Um7mkhrCmZ
	mfDfl8rKzkApXTWBDH+7C7xJgjRGoxGIuitgSnB9YaxUQTv89GD9VZV+vE2YvaNZbYjm21J4/SWd2
	Y1yt3l/MRxydfbPin3MGE1T8408F2cun9nj1s2WoF2+i7iknc7HKMheb7669T+BFEqdJTnS6KmceD
	5I4cS83449TxetpyM5xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZMc-0005Ob-3W; Mon, 03 Feb 2020 10:53:58 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZMT-0005NW-R3
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:53:51 +0000
Received: by mail-il1-x142.google.com with SMTP id l4so12228007ilj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 02:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xA1slDoqBq1wNtrTR0f7nXbBTEQEIlnapNwEpNkpg9g=;
 b=EMf4Er6vqgT1LOu6aLpORiIOn63hrGTH1Ch3gUJjIQPtn4zvJLO1f4XvBdHLgVMazs
 PCdP5/YS/l7nIqgEai6oruDRAMmnWD9C48rHgg7GWqW37JolnCJq3wE6kna+JVHd2zSe
 agq3KnmnbYp5WkMsKS81aK6SE9V1mTQBvfAWuxAARuia+kwb6QGPqOOBIDIhTa/Wcptt
 kzR938ls/FRk/232pMp8Ox5SVYXE1TlnxUczlSroKOUNxqm7aZRMdKqBTnKG5kSzSn+C
 9qu3NJD23C3BbaNtTrOZa1sw01EQHv6NzfFxRESsTaYnyLSrA1uFEPHHsKoOXFpkhIA0
 fQZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xA1slDoqBq1wNtrTR0f7nXbBTEQEIlnapNwEpNkpg9g=;
 b=AIJqzzKGK0KFcXmoSkWFmPCvE+o/mfY2iKf0GlYBtgjMo6iS0dpH3qnhkcr1jxGuSj
 N69dEW6aOjR055KsQIZYaCou9zIDZuoR0BdvuKJo4t8Gi6OBfsAhXt86Rq8myHIjhEA2
 gZ+gGuqf4enVnX0KS5OyFPkaByJ75cHbrJz9OZWcXk+74ZxbRWHI/hEDtJIp/iylixno
 9JRUlkxOFsVbp/yWBB9RPk0NijAsxfKh1oOlGs4EftNgWrNEBOmPF8SOW6NmeyWw0oaM
 3TUylrwi/NnsIb5B+U/b4u4O0OSd0sOEg1I7uN6IEbLleZOMMmg8K2ua+jkwLni3Im5n
 LoGQ==
X-Gm-Message-State: APjAAAUvvk+XVFHasLZGLaYfHZAtS+toQGuyxyRW3VAEXrzVCRFq08zH
 MtLMoT5b8wRs5qpK+ou7els4MvGp+8rgnCZUotQ=
X-Google-Smtp-Source: APXvYqwi2e+OZzwE+GaVgXvx0G8DUeuHxSXqJptgRY6pVJihSlOnoWPfMoYbRYTuQT20fciXDKoALEGsg78SgS3s+JY=
X-Received: by 2002:a92:1547:: with SMTP id v68mr20312779ilk.58.1580727225757; 
 Mon, 03 Feb 2020 02:53:45 -0800 (PST)
MIME-Version: 1.0
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-2-aford173@gmail.com>
 <CAOMZO5D3emrAk84wDS04qJC-3AyvFnqodhoMsXO-ukHnYsU+PQ@mail.gmail.com>
In-Reply-To: <CAOMZO5D3emrAk84wDS04qJC-3AyvFnqodhoMsXO-ukHnYsU+PQ@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 3 Feb 2020 04:53:34 -0600
Message-ID: <CAHCN7xJyZRwJhnWW2mAbOeGyrMsB7Au_e6AvwiNmNS8gFUfSyw@mail.gmail.com>
Subject: Re: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_025349_901263_55194153 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 2, 2020 at 10:39 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Sun, Feb 2, 2020 at 10:00 AM Adam Ford <aford173@gmail.com> wrote:
> >
> > From: Han Xu <han.xu@nxp.com>
> >
> > Apply patch from NXP upstream repo to
> > dynamically allocate AHB memory as needed.
>
> The commit log could be improved here. What is the motivation for doing this?

My motivation is to get the flexspi on the i.MX8MM to work, and I did
a list of the patches applied on the NXP branch to see what was
applied on top of their 4.19 kernel and this patch series generated
from that list.  Most of the NXP commits are one-line commits, and I
don't know the motivation for what's happening.  NXP did it, and I
know it works on the Flexspi driver.

Maybe Han Xu can comment, since it's really his patch.


adam
>
> > +               if (!f->ahb_addr) {
> > +                       dev_err(f->dev, "failed to alloc memory\n");
>
> There is no need for this error message as the MM core will take care of it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
