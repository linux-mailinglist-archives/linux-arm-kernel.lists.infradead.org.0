Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB2E1D71EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0skd9OT+7YQwLeWX9gTFyxo5VjF6ztFGxbdXWJsNSc=; b=Wsq1P1198pTTMf
	vFOKZHgwvdTbZz4pzNzPDKJOm7oJc7sx45DjZ09FrffZbkYCDtqCdkdLth5d3PNYCRpaSj3b13ZEF
	CRBNiR+ERi61g0O4pu4641fIkA6Sz3atMsbJKEby2sMJwCqNzzH14zFdrm5q6zaUrj6x7ElD4OYLH
	8gO+a4DKNlU4YsTGBkIfdztUi9wWwXaWpygzGCsZSpJL+ah4uCdetagJ6QKduzTXzrV70y9lYzFBs
	gKnDz0BlMXCMtg7G5GWmCaciOS7bL5k8rLUem/Q2Csej6Iz6/4Xxj+RKU7hPvdJl04q4kAZFdxdpD
	LpgziphJo+EfSAGp73Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaHF-0002ZY-2j; Mon, 18 May 2020 07:33:33 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaH6-0002Y8-0Y
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:33:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id 202so7109713lfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6uhRFGDARrcoHPrKHMBYkaN/2j11MRjpDJJbVmx54CE=;
 b=H+oFxtUqptu6CrGRKkzcmJs+eMoraTQOATafIq2NDm8CwHwFmls5nvwqEoT+8/mmOE
 WU7jisauq4/IiaKjcokmWtKJ1DP0tvQIHBs2ljdiXl8qlGxOtvQEAa4lD7HDUDrqwTWo
 VnA6gPlW7BZEITXpxQXAFUfO8KJGhgyzDF2UXRCdOQb2doToExJaRRP+vFv2jjUUPojT
 48hRbviNApp8pFFIMOcAtQbGT6U+m0T/qRRWzR9Dw1pnv66azfT1YUY+BE6/qqXLbxuk
 l+jytCjh61iQMLKyg95PEYoavnodXi3brpiHHaRO7wI6myD90jtTysY/uu3Mf+GJycpC
 l10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6uhRFGDARrcoHPrKHMBYkaN/2j11MRjpDJJbVmx54CE=;
 b=NlLru8YJmO+asElV+h3xs5yeksIWiTwrhW0utT6DjeKjPQbBPy56lj4NsshGmEe5IQ
 uB+8ZbwHRK+GPmrQQU8ojoO57KB5WHZ+n8+HsQBLXkkdDkeKZ4xDg+1HxyjBlJ0G83d3
 Fj7hws42SvFJQJTdCkXLFuladp5xNjyR1svVJwRHTV5hIHWZoxnoYQL5kyBtWmp8eDfk
 RdSlA/g5TbbQy/1gHv3DCpz1ofrZQ8zxY4o8tlOolxil9Vum8tUsLOhWxXYg67ZCLedA
 UpTPOvnjpFLgOkqA6eiyUVyg5HaaSO6dMxgejJPPUGBFFTYs+I4dmGbiLzPh3fFvTHrk
 oFcA==
X-Gm-Message-State: AOAM532ci1nBVq1dk1GBOpgIX6jBSpebpixNqEWqe1+Y32XwlMMfFBW6
 qZY7cw+3zvO32dKLqpZdcXAjBLsH+bezzTn2YNAYew==
X-Google-Smtp-Source: ABdhPJzM1cLtBMnZR+j+nSiG3KeWErg7zOIoRWARiHZUlNStxktk9ge3qdAjjUUMvZG6fIllhCXtTAAglY/emlzid+o=
X-Received: by 2002:ac2:5a07:: with SMTP id q7mr3670246lfn.77.1589787202475;
 Mon, 18 May 2020 00:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-8-lars.povlsen@microchip.com>
In-Reply-To: <20200513125532.24585-8-lars.povlsen@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:33:11 +0200
Message-ID: <CACRpkdZP=E=LvEFW4b8HvXR3yYFMzALC5_abiJuoewod6V+Y4w@mail.gmail.com>
Subject: Re: [PATCH 07/14] dt-bindings: pinctrl: ocelot: Add Sparx5 SoC support
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_003324_056632_BA855C0D 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Olof Johansson <olof@lixom.net>, Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 2:56 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> This adds documentation for the "compatible" value designated for Sparx5
>
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
