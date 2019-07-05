Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEF66082A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2l0ao/gNJ38w7R1Olys7CBNiABcLmL3LVfuFBcIDII=; b=TiEEXvMls3tU04
	8eMTig49UJtrQNAeQk6brPT5wmi1J7Hkb2HnWweTG6q7mvw5Rt/zHIr20p2QtVlRK6J6ZWXz7SwXD
	fnt+5cD7TzgiWvmZVyJubMcNd+eqK8pVV8/AyivXWPU+QKAh0l8EQY1pCVZZV9F8P2xKCMhYOuN3q
	g75v/0n06i+Hs1ckOlHhtpdcDEMNgYfxfA0CaYnGUNlsYOtrHFlseH92VmtQCGfvfRbg1mpVIKOgu
	AYTu80OnuswXhHwBE8JZrUQlv4x5p6hpdZ2c/Z+/EsaL4HMC9w6kM8MEj4ZZAjdine0ZlcuykB9wZ
	v+CjjtiTF4f4j+ZflfRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPS3-0006O2-6F; Fri, 05 Jul 2019 14:44:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPQz-0005MX-MN
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=60adLkZbywPEuKsZCLqNo80zya9muW5FO6I+W0n23fY=; b=GxStsqP65UfGI77xY05HOnCnK
 HahdRjl9CCRTcnu3zoRStGc+ffhQAFkpN8/hVL/H93f8xmDhrLH+k+jS7e0igwx+s7mMg3Rt5MHn3
 VcaYZbt6EfaxoDZXFU/8zrlnaoDQl3r2BV9xqJ1rT7q72C47Na74r7toC+yr4BUuYNYRftIYTesmx
 7MQmeL5ifH8/diODTP7QI+ntFUWL6MXJS5ReAQGSOa2pWZCcFeHlkmZ5bVdPbnnqtPedzZQZq69Yc
 J/oYsE26MBHtI6rGE1Oz+KzrJBXyZmkPZJqHc2Clb84QnUsqC3Q6N1p21dDEZ6Y6PKalU555rQk7u
 pg7qbnKxw==;
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjNKH-0001kq-2L
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:28:30 +0000
Received: by mail-oi1-x244.google.com with SMTP id w7so7031211oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 05:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=60adLkZbywPEuKsZCLqNo80zya9muW5FO6I+W0n23fY=;
 b=gR41PYpJoUr4wNhUj+7pOS/whyCQVlB3Y/FyW0MXD2QyAPmFIaSnPr098/+LTqlkaF
 UbXq0mYJxABiIJQ3so7RJcyrf3LxVOOhasmetOHb8+QYHEy/2oifmyt+2t4a9mGC2ve1
 K9Aa3Qr8DFM4YgqrWExIPCc+mCc929pXBJcazbnKwUpHfkH3EY5Zqd/VH6xjqOUklZ7v
 PB1Nj3kVv/30co+ycIaMtFK+5h/shWiDZ85EQV1w9nfGxSVdLOUe6sbpa8xqYHL8MwQR
 YsIK6mntMv+DvJywT2Z2CQVtFUAC/NO/9KtXN+AHYh/yx3dXTSBrJdEFgqJ9GvFxzeWn
 fUDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=60adLkZbywPEuKsZCLqNo80zya9muW5FO6I+W0n23fY=;
 b=gYysQ6EnSPnwmFROzWvvZPpa8LjLr8zZewgXzuoBsTVB1Y0KsuXIsyykUoaUR8zlhy
 nSU0ykt/dIdJ/cBhkdUPtjERIJnFNwSwv6/SLbzqe7cXkZPUTPP5EBiex24piYV7cRlT
 ZetzGIDreSTl7RZK7qflarn3uoI1zeEeV1o66NU+48+ItlUGPUJUudFsGW7cIB/A4PtZ
 llHdda8MUwtP8VjJI8ekD4dQ2kIVbaVWrAIG60PyDD5zf3ajX4OMvTydRZodPMU1FB/u
 mTNpTNR5faqWLeeCoVWchbjYNDG9+bU6X0L56oJTu1EuT35K4LjWJgMY9d8PeHcUh+DT
 PTzA==
X-Gm-Message-State: APjAAAXv5ZXjlooPeGtjGv6bcfohA+I2fEkvLj8VyL5D7QtSmPpIFPdy
 20MKjAkhPLv7/nwoSIlFs7OyFQXiCsuIP5jpvTE=
X-Google-Smtp-Source: APXvYqySiSmBKjmMw33BQAZIcvRHSfEaWhuwsnn5aoM4/Gm2bIvNUsuuNGFU+OG8Pfy+n9z73RhZ+f/DsrJ8XacvS3A=
X-Received: by 2002:aca:cf0f:: with SMTP id f15mr1784578oig.169.1562329584866; 
 Fri, 05 Jul 2019 05:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190624140731.24080-1-TheSven73@gmail.com>
 <20190705072847.GA2911@vkoul-mobl>
In-Reply-To: <20190705072847.GA2911@vkoul-mobl>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Fri, 5 Jul 2019 08:26:12 -0400
Message-ID: <CAGngYiVsUZwCUEsqRk-YtZPGYxsqzHzD7U5GeeHyAa2Yw9Z6WA@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
To: Vinod Koul <vkoul@kernel.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vinod,

On Fri, Jul 5, 2019 at 3:32 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> > +             if (ret)
> > +                     dev_warn(&pdev->dev, "failed to get firmware name\n");
>
> if should have braces!
> Applied after fixing braces!

checkpatch.pl output after adding braces:

WARNING: braces {} are not necessary for single statement blocks
#102: FILE: drivers/dma/imx-sdma.c:2165:
+ if (ret) {
+ dev_warn(&pdev->dev, "failed to get firmware from device tree\n");
+ }

total: 0 errors, 1 warnings, 61 lines checked

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
