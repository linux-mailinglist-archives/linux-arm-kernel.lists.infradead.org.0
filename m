Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6567EA9F94
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8Ovr/2mugx3Z1lEifJEcEmM5f6Y2V6OTttwKOWbBe0=; b=h0PTVnhcJUhCrq
	pPazmQwiGRFhtOllcEed7BMDBH2zMuv63tbBw/nTtcgzqs54OsvFFGgFnDKPtehb79x5ve/XTiv24
	lQ27ZJaPFPwfrrVCmHjJiyffOTU4y9CkOgiAvlgIdCKz+71cOqc9OKFLasaf1drTru0OyCJQ90VTi
	ZY1Sy95jx1t1DPQGjP7eeLzYcCu+PqeIykrrelsEmu4J5RWqcIbUHjEfL81XpXOwQNa41+alq+5dx
	+XcIZR3305cfOKmgpEHurCkIPlL24qgDD0ymSQfpkD0jA4OAMOHlHr1fuAMhVRwO5+Qg/vV+LNbNX
	AAwJZkzWMly05zd2ZFqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5owM-0008Mz-9b; Thu, 05 Sep 2019 10:24:34 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5owA-0008MZ-6b
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:24:23 +0000
Received: by mail-qt1-f195.google.com with SMTP id c9so2108407qth.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 03:24:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BTvF8zjGmq/0EMeGlHa1T87FqGqS6SItRz22+XKCJwU=;
 b=oC5vaMrRmssInslpg8smhstCsrkACDVSG4AZQOaWWb/uWdjOl14nLIpDT9e64tL0kx
 hym9IOLi8NQ073gEUG3MciBAsZKML2XtT6e9LeS2WXAOerqkamjC8aOkZWCJWMxiJZoq
 7ALd2La5HvFoTw4Dzq1CBGwB0lQBOVk/BcGadMsLGQvrZoVIoNHlqWDUXAU/SaaUyLv0
 xTdFaoeBM/k7c2PjBdEonoxpDdNjW7zo1pxTOlsVw+wX8scvHlCcu6LlnCEHHbavsk0P
 ZcAHci9/Ujwx98RJFdM7DVS+wbYji66DX6AKfCNlVljgHcPFSSC1HK2YmS6lYUjQvr/2
 F5BQ==
X-Gm-Message-State: APjAAAX//TV402sBLTMs2ZL/OCWT8r+qL012nX0eUAwtzzxA/8n77XPx
 T6ECxPh7JQZZT7YtatBCC7xULlckD2EOZxzD8z9sxHTl
X-Google-Smtp-Source: APXvYqxkEWxnSb9+QHBkg5tCdGDmyuWzLiorsbR4YMGIMMSACe2z+j0WfCG2ir1sARPeqZ2V1OnVrbTAvXqPisM4J/U=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr2636284qtb.18.1567679060868; 
 Thu, 05 Sep 2019 03:24:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190830220743.439670-1-lkundrak@v3.sk>
In-Reply-To: <20190830220743.439670-1-lkundrak@v3.sk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 12:24:04 +0200
Message-ID: <CAK8P3a0Jq93AVYau_7odZz73ZL22buVCveiHoC6oGf=Oy6KEKQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/16] Initial support for Marvell MMP3 SoC
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_032422_244755_3BC5D556 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 "To : Olof Johansson" <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 31, 2019 at 12:08 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> this is the third spin of a patch set that adds support for the Marvell
> MMP3 processor, that I'd eventually love to see land in the Arm SoC
> tree. MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad FZ-A1 tablet
> and Dell Wyse 3020/Tx0D thin clients.
>
> Compared to v2, there's a handful of fixes in response to reviews. Four
> irqchip patches have been removed because they've been applied to the
> irqchip-next tree. Details in individual patches.

I just looked at the series, looks great overall, but the timing means
this is going to be 5.5 material by now. Please send a pull request
to soc@kernel.org cc:lakml after -rc1 is out.

I replied with a couple of comments for details I noticed.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
