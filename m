Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20929BC239
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXRSfcE+4wqxE16+duXlEzIiQw8MjK23wksljhKBigw=; b=St4wFqtKplsx75
	hcsGiXDtNLcEXNR9x6IV5yOZtE7C6/cDwRJQ+Y/gJqAY/p69C/7PhZyacgVIGZFxAYLtgh5GM/Iv7
	GGwUT4q4UfZ6TDVDplb/2rjpp2Slva0kCkQE3wBj2HbCNg3g/+0Ch2KmwnhrL0b8iyIZsQgaKoFtJ
	WBr1IKeQqFXxK1wuNuJbApjFpxjqJ7P7TGtEDgeuPiXbIIcNSmdf6WMVgTGUV/TG22fXoX1QmqS87
	2xcsVxTxJTL6gmp1dy74XYE5wmI+xvesAP76WGQCAJqikPfZ1FnRafhPUSLtDCdDfvY0+PFYruHTw
	OBwKq4K9/pObfrLke+tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCesS-0001bj-MK; Tue, 24 Sep 2019 07:04:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCepN-0001MU-HL
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 07:01:57 +0000
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9180E217D7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 07:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569308483;
 bh=5h4RjjXT6Y1QOlkrf+E8Ulhz1Az+W+fntEF2LT7QCYM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1SI2QAIxn+9P+9+ZXLQOcENmeJvKQZ7IxWXebwQwwyiQPnp5bLMSct+YijIUXHdm1
 2RNZJoedR7RYaJB4W951JOl8Y+/QgL+3eRGwSxR51phVgUzwpHhiJEmMTxsVbaAZhz
 ev9EDY/7q7/k0R70PB000kUrGUGzHXQ95yYqAW4c=
Received: by mail-ot1-f47.google.com with SMTP id k32so556256otc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 00:01:23 -0700 (PDT)
X-Gm-Message-State: APjAAAVaCzNcWbm+/HCxFyrVVk5DO9/sQ5PE/d4JHkacOiQMkQfI9X8O
 87jyNeVgf2Ln+l86PojjytdGh+1RzchcwzIaCcA=
X-Google-Smtp-Source: APXvYqxSVm+0t2DZ+pXLOjqfSf7/0N3VzaSsLciWrai0ViqCVP8GbXcUaRjcovauaSZEeA9dFQh1yAnhP42V2hGdtnI=
X-Received: by 2002:a9d:4597:: with SMTP id x23mr724863ote.185.1569308482898; 
 Tue, 24 Sep 2019 00:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190923161411.9236-1-krzk@kernel.org>
 <CGME20190923161450epcas4p32dfa1273d244c1392c7bfb4c352f2d3e@epcas4p3.samsung.com>
 <20190923161411.9236-6-krzk@kernel.org>
 <7ad1898d-3aa7-db49-78c1-c42b34568c60@samsung.com>
In-Reply-To: <7ad1898d-3aa7-db49-78c1-c42b34568c60@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 24 Sep 2019 09:01:11 +0200
X-Gmail-Original-Message-ID: <CAJKOXPck6GhOk-ewByb=UtQsX7_NxVH=Aci77ODEAh3YfJKmiQ@mail.gmail.com>
Message-ID: <CAJKOXPck6GhOk-ewByb=UtQsX7_NxVH=Aci77ODEAh3YfJKmiQ@mail.gmail.com>
Subject: Re: [RFT v4 6/8] ARM: dts: exynos: Remove MCT subnode for interrupt
 map on Exynos5250
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_000143_234375_C5E7FFF2 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Sylwester Nawrocki <snawrocki@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 at 08:58, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>
>
> On 23.09.2019 18:14, Krzysztof Kozlowski wrote:
> > Multi Core Timer node has interrupts routed to two different parents -
> > GIC and combiner.  This was modeled with a interrupt-map within a
> > subnode but can be expressed in an easier and more common way, directly
> > in the node itself.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
>
> Works fine on Arndale and Snow boards.

Thanks for testing!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
