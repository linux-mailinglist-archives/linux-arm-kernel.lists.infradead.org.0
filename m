Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4E9483EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+tF+Ns1G6CHC0+adZctx1MJg0qbyezDk+PDddug/1c=; b=RJpVrZHnMJni1i
	UM2L/12XI2zfwu/2wb0UstuGhjCsugQHIg1H5fpeBm64AIIdE6n2xMeiKp7cJyTWCw8S3WzjWnSjB
	YNBATW7Dy/b1qnuYYJdzqg7GLWsikgl8FueY6Ef28Fp2E1QJXyYXvI7EFZsYu5F5zPrglpkQ91F5U
	LJbCnY/P8uIp5ymxcR14i09dTOSybygPcXCLdXwdF3Ldr3LdKO7X0ZGgtJsVDVWwm/S4Mcrt9xbkl
	WV4qP2sZB39R1HiWXojgIOekb69GsHqnmc5A5mGgAG32K6Fy53HzjeV6DJ9+6n1UPQ9qe1ZMLoIYG
	wHLAjC36x36n9U1SpUqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrg6-0008Kl-Ad; Mon, 17 Jun 2019 13:28:06 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrfw-0008KK-73
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:27:57 +0000
Received: by mail-ot1-x342.google.com with SMTP id j19so9277625otq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mJsPsjYAC+D3Ahla1gO6b++R1ySTexA3DFmiKdVNKWo=;
 b=MXkyJQB9PxauZ8mD4qfnd9cMinYSX8UgPaJCqpc2N6NWAP8Do6zPFB0IrVa9ktAWIt
 aouaZblOwdUXxA3WA+jdAygJITWcfOAl98fr/H4EDsSZVD/ROYlXL+cWBa9mKzk4vHci
 NKcp7yaAptskxYFgzG59xEIBPx95gfoDuMpqNfLSYJp2jQydPMrrR6H/tsNRBR3muEl5
 iXWL5M5mwD6Rasyt+fAqcbY/Rpm84bJgDFT+ouTQVvwPCALeItlRvcf9MJ1NYAwL+VeR
 CCoUD2skfkr3YCSTpRB14BPWTTGRtD6fgC3f+/onHzdO37eawrr8zaYsbJRF46MZCO6q
 ktYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mJsPsjYAC+D3Ahla1gO6b++R1ySTexA3DFmiKdVNKWo=;
 b=RPJlSFZWSI3eiAbehzzS9un+x29dEaQfVZmufp5Kl7LWz4awZD0sE/2VWnsEL/amD+
 yvdSqnkIlMSMxrshlenPfOgN7c9F4Dq56H1v2y5sfJbGMfqBvrlpVY/wLV+kPuGFC1tf
 JNHkEnOzYHHjZD336JKsYiHGE7v/UTV5ywV7v6MWtG4yik+5ITGOnju9IBqcoR6YdqOW
 2QVoaafetmL6KA0QjLPJwtw4XL80bE5R+RELk4Sb3oOZkivxn7q8DdVuhK/NZTWR6NHg
 aX+ziWjkKPIJsKy7tXaiv6rIZDzh5rZTZ8AEq/vzU7Yc5B0BRz29t7Za0cDg4xMhsQ8b
 QtNA==
X-Gm-Message-State: APjAAAUT5ksN0x0IPIL4gPuABxfLhWSfY9lZQWJgpAc5rhiaKxvfstlc
 XB/XRLB92THMnTNxPgUj6+on0JcTANpJoAlw1HuD1IwH
X-Google-Smtp-Source: APXvYqyhiqkq9CGaDNxwiD6SQeF+F81INxi2lxJi8huCiuSNrRrpuYkOSzLBr6YGnAzUR8mMAtP8t+7zjxH9w00HMOQ=
X-Received: by 2002:a9d:7650:: with SMTP id o16mr38379346otl.0.1560778073731; 
 Mon, 17 Jun 2019 06:27:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
 <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
 <1560765934.30149.26.camel@nxp.com>
In-Reply-To: <1560765934.30149.26.camel@nxp.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 17 Jun 2019 09:27:42 -0400
Message-ID: <CAGngYiU_kxRXbk1vSzV+hBZ=SQdxe2h7TXj3dbK6Q=YyXcDr0g@mail.gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062756_279948_85F8E8CE 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.olbrich@pengutronix.de" <m.olbrich@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Robin,

On Sun, Jun 16, 2019 at 10:02 PM Robin Gong <yibin.gong@nxp.com> wrote:
>
> The default imx defconfig and dts should be ok, because firmware load
> is delayed after rootfs mounted where firmware located in and before
> that, some driver which use sdma such as spi/uart/audio may have
> already enable sdma clock which means channel0 interrupt could be
> cleared immediately without interrupt storm. That's why I can't
> reproduce your issue at first, but catch it once I sync with your
> directly firmware load defconfig. So seems not very must to CC stable
> tree?

As far as I know, the bug/crash does not happen if you're loading the
sdma firmware from a filesystem. So the vast majority of users would
never see the crash.

I agree that this is not a high-priority bugfix. But it's worthwhile for the
stable trees to have it.

> Yes, but Michael's patch is the right direction, at least it fix RT
> case and meaningless channel0 interrupt storm coming before clearing
> channel0 interrupt status in sdma_run_channel0(). Now, this patch could
> fix its minor side-effect.

I'm not suggesting that we should revert or change Michael's patch. Just
that it would be good for the v2 patch to contain:

Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the
interrupt handler")

This should allow stable maintainers to pull in your patch if and only if
their release already contains 1d069bfa3c78.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
