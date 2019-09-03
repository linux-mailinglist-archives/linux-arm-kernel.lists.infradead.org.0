Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71824A71B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvlzTDcjs4Ik9Au3fHJ1rKKqyfLjOTJa4hzClPMA+Gg=; b=KC1FexYbFAa7W9
	FYNxruFjFXQOZxhknnokyD97vRTBqGESx00dzsWOdK7kZGxrG+DQvfjE1gA9zXr3m2gq4WDrwPd9D
	JMO9GskIr0SNnYosuq4vDmEIHwPNZ/i474k1UZOCjlrFIMO1QtaMcpGRUha1fc1ttd6lgcWo4d72w
	WKUa3B3CM7xEXjvTsenBi/n13l848ko5XyMpH4NeamSEXoeIEmq9tVuNj7grJMVs7T/voiOjcnJQt
	Ha7ZNfp2/3821H4M4tWElAELuhNWauVa3g6xBqGzd9NEhcLk8FyYeJqxbfi1CqyVdACeAsEH+1sk9
	LxeVmNABav6BCWFZ9K/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Cft-0001Za-Py; Tue, 03 Sep 2019 17:33:02 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Cfg-0001Yv-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 17:32:49 +0000
Received: by mail-qt1-f169.google.com with SMTP id y26so20954364qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 10:32:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vgjm2gNxQwoJZ8v0bniiaqPHu8QBdyk+Apmy2AFV2l4=;
 b=Vv4AdDa/OCvS9tPf9rnoC6sYd2wPINFy9tUKOa6GxBxZPXk0Swt8exCVw7u+dzfrJn
 TFfUCKSt0K0Q4VNAljZNHMQNQM+U8hVvXXclcOa1Df91uRIP6SJ/6nChQG4T/JPTWFXP
 2z+U1Oyq/b/uCHWNfPQm/VGzAlX6FYw+Jkw6PMwD1nHOLr02Oydk5V4FSuBgr0m3Z0bS
 5bW1YrdZ0fwpDKw5H7pjwP/DjDhF7iyuc9kmwhajHCk1z/H+1nYF/NSK/1ra6hcP52IQ
 cHBgSKizLk2bysyD5q4PXtkYDyL43n64+paPnG93pSx6B5YnfzTsdMylZOYyoVTm9ah3
 cE9w==
X-Gm-Message-State: APjAAAWJZenHyhmktFxYy5A3IFUrcE94qD9fB1mr2zddhPgeaRMArhH6
 /zy/3hMV9xNTD+l7cOg7mV7VHRNjBgxlHlHFQ50=
X-Google-Smtp-Source: APXvYqyVRUIJPIQEHx95xhwPjnvSTza+9sTHKmCNkiM1M8D9DvwWC/dFC/I4zoquypk9wQ0vA4TbG60cCWZR89wfsHQ=
X-Received: by 2002:ac8:6b1a:: with SMTP id w26mr11188688qts.304.1567531967226; 
 Tue, 03 Sep 2019 10:32:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
 <20190816163042.6604-3-krzk@kernel.org>
 <CAJKOXPfdvzvomUfmxhGf0qjEQH3K8TADCneo9SM6m50k4b=Gyw@mail.gmail.com>
In-Reply-To: <CAJKOXPfdvzvomUfmxhGf0qjEQH3K8TADCneo9SM6m50k4b=Gyw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 19:32:31 +0200
Message-ID: <CAK8P3a0sa8WgcNnL8jusYKFr22FqGnut4kRKM-1QcB8G+ygnMg@mail.gmail.com>
Subject: Re: [GIT PULL 2/3] ARM: samsung: mach for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_103248_655311_620B30ED 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.169 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 9:52 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Fri, 16 Aug 2019 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> > ----------------------------------------------------------------
> > Linus Walleij (1):
> >       ARM: samsung: Include GPIO driver header
> >
> > Pankaj Dubey (1):
> >       ARM: exynos: Enable exynos-chipid driver
>
> This last patch should be dropped so I will rework the pull request
> and send later v2. Please ignore it for now.

I don't see the v2 yet. Are you still planning to send it?

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
