Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBA6B1460
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 20:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAQna5/iyd2rZ0U/3BRISwAi6V1aVMtBIUEeGXqOiIs=; b=d1CftfyqEp0IBM
	Y66DhZN+7QFy6uNn3N54ZnkYZsDVsHp093PgnBWuruQ49A/erotldgivugP4NcCEvPUk77bHZG3mg
	cDVSSPWx//Z+1WL9x4ZF8C6RVXxTVm4e69Sqzyyn39DtSFQu1J3gln9Wp9QlsuwVIKaIquk9Mbo9w
	bVjCQzM/6MeG1lQriVolgV+v7exIWF4Y+LY1cR77InpaEo4DDVEQI5MaLsyJqnhOUslpiWsf7T5iP
	gSYrfoY0s0JnDubs4eGck1XVvHlC2PIWXWBxhS+0qBr6Qj1/06R5oDeKV8KxuFBQgJHI0P0CR+9Ca
	y+H6EnFUYDmd5eqQSFwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8TlC-0000Ju-3S; Thu, 12 Sep 2019 18:24:02 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Tkx-0000Ib-FQ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 18:23:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id j16so24581544ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 11:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IzpHMPyEAs7qHXeC8+PI+k8EjPmSxRwc5lCuYXRCv54=;
 b=UZ3qHTaVrczrYkLqCzFJel3IMA/0c7kf0uAfHAAJOzbYtfQv5ist1ZHOa4QlmfW8Y8
 1AccvRFP+4hzmqF/mVoOwGA4l8o5DpECcGgLYz2jE77VlFvAgE+zB30oFDvBEvN4+qN7
 b2KB42vYdwZpch/CRMGMfR6lyFLUvffEYJGADc/Aaexis9rTRYC+WyV2vz2TYvVvKYIN
 /Hj7Z7dhOQ9iBUcmPP31o62k891bi3/x4FEzaOJz5n6DkNAttTbJv+jeqdrBpWk4Jcvj
 /DcBW3x7lGouxlUi484qAfkGHAmC3hpvwfD4UqKFSlkAZsAwUOfj9fqzmF3WTw8wZ4Om
 a/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IzpHMPyEAs7qHXeC8+PI+k8EjPmSxRwc5lCuYXRCv54=;
 b=KzwgMY96wUMHP4BEdjXAqUKSREF+QJrLjyy+aZFBgnvoamdTRb1jUoIXMGF/SOxqnV
 mxOlXa+Z5GLrilaYdQwDJNyDyfJtSzmjG2L+mwPCvx7tKjro64eQ3ksLhrcRHu5YQaFy
 yeKMFle3skZdvnEBN8Od8sdB8GR4vWM6kfh54D1MfeVD/vFQh+jEjtaBSZZFDEjPXWBS
 J06iWgsvxY/PlW5SO8PRTFUjeJtn0NczyogvvUKSI0OXfNXPVYx73xdl83ZGtGT+VnYQ
 H7sYJJkhs2lbMOU66zF/7oTxpfPB8Ce6sib6FU61keC5byo/rzIVa2hxFjcYoKkzbFhL
 akkQ==
X-Gm-Message-State: APjAAAU+u68Y1i5AG+xRrCWq60iQbjF3xgxEK1bryH3WlcZyInZy50I4
 wgVW1WcgdAMCaykrNrVvuo4d758CRowuqXBUPSI=
X-Google-Smtp-Source: APXvYqyg3z0rmVB8MqaYGii3kSi/ffw+EZze6khxHsFFAgdyRAoLKz5Agii/j7bEpQw09ybFOM96bJvWRrgLf56KWoY=
X-Received: by 2002:a2e:3e0d:: with SMTP id l13mr27406384lja.10.1568312624761; 
 Thu, 12 Sep 2019 11:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
In-Reply-To: <20190911144943.21554-1-philipp.puschmann@emlix.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 12 Sep 2019 15:23:34 -0300
Message-ID: <CAOMZO5BKiZGF=iR071DaWLp-_7wTVJKLbOn3ihwPeVVSNF6nCg@mail.gmail.com>
Subject: Re: [PATCH 0/4] Fix UART DMA freezes for iMX6
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 Robin Gong <yibin.gong@nxp.com>, Fugang Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_112347_544001_B1DFD0AB 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

Thanks for submitting these fixes.

On Wed, Sep 11, 2019 at 11:50 AM Philipp Puschmann
<philipp.puschmann@emlix.com> wrote:
>
> For some years and since many kernel versions there are reports that
> RX UART DMA channel stops working at one point. So far the usual workaround was
> to disable RX DMA. This patches try to fix the underlying problem.
>
> When a running sdma script does not find any usable destination buffer to put
> its data into it just leads to stopping the channel being scheduled again. As
> solution we we manually retrigger the sdma script for this channel and by this
> dissolve the freeze.
>
> While this seems to work fine so far a further patch in this series increases
> the number of RX DMA periods for UART to reduce use cases running into such
> a situation.
>
> This patch series was tested with the current kernel and backported to
> kernel 4.15 with a special use case using a WL1837MOD via UART and provoking
> the hanging of UART RX DMA within seconds after starting a test application.
> It resulted in well known
>   "Bluetooth: hci0: command 0x0408 tx timeout"
> errors and complete stop of UART data reception. Our Bluetooth traffic consists
> of many independent small packets, mostly only a few bytes, causing high usage
> of periods.
>
>
> Philipp Puschmann (4):
>   dmaengine: imx-sdma: fix buffer ownership
>   dmaengine: imx-sdma: fix dma freezes
>   serial: imx: adapt rx buffer and dma periods
>   dmaengine: imx-sdma: drop redundant variable

I have some suggestions:

1. Please split this in two series: one for dmaengine and other one for serial

2. Please add Fixes tag when appropriate, so that the fixes can be
backported to stable kernels.

3. Please Cc Robin and Andy

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
