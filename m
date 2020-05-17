Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEC21D68B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 17:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8ORyCt6QG+9AgE4ZEkRfARiF2RarAUTdr76tvEp2Vc=; b=O20CKGuVbPn4t4
	B5qUQX8e1aSn8jMpSQGNL4g63a0VhDSHhDFfgeLTLGPT+msBngI47JYvkCAOIMrjuHgCAvKqgUwdF
	Gx9TnB3TBiPg/4t4XRCRyZ0moRCE7O3uTZiUN/yVTyKHoZilOmyBU5AMKJsI6Dnx0FvnEb8rRd9A5
	yvt5QTg7ov4H5AcqX/FG/46B77UWJL/KQqkRRNI0IJ35n1z0Lo+LKFxFWVS6/lDCGVZk9Pfugq2oo
	2kpjxZUgL5dYRZuCAMtB4/ocRTcvukgm/A7aFO5ESNQJUmcnboOiFyKDf5gqskJ0K7NRMdKZfpqUF
	uLZZOMDIXuHxlsytWQHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaLZX-0007gn-39; Sun, 17 May 2020 15:51:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaLZP-0007gI-6C
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 15:51:20 +0000
Received: by mail-wm1-x341.google.com with SMTP id g14so20542828wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 May 2020 08:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4Y2aFJKNUiFBLQvn2vvnEK/Ead8cU3LUw4bCLelXdS0=;
 b=UGGCy6TvvsLP2q0CxhmrvQHdIFIIbEfPAtgdI3IOIOuKhkTMRC/BC4WwPaymCW0tny
 iuA1xi7IXR+ab/Gx0dG3BMqyVmQg3Fi9qXVgYFFiVuTIAyRHolD+PSSvfjAT7fMiHAZj
 6nVTrrB4wq/zGBWaBB2eigVDmgqT/jlUuS3Q4d4L3pCviJGQ7AmJji+r28/hQCT+Qpzb
 LyygNaW6zHilFl/dki//YzSLiEU13nnIKpfjyb07vIDh9jBNsMzNlb2KHuPmWmoqqHPt
 +cHDt4W+xnFcnAzw5kDJxl5hjRkNZVI8s2trrxDWcCjhAXpW5WPXN/FXgCPGFfEx1bP4
 JirQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4Y2aFJKNUiFBLQvn2vvnEK/Ead8cU3LUw4bCLelXdS0=;
 b=R8oNbDGnns+PSlK11SCJQEj//OT+9Vu6uxPtPwlLNwnlemEQcZY/flbQlCtSqidvHO
 008DztSFfJbj5mwV2dNaFAUqhTF4+tiscGk06Vy8W0reem2t/IENA6UVLLPhY4Y2C45m
 Vk9YZ9608iXiB6+LGlbXR6A+XHxxpNFJYSqnjpCuVs22RK387dyqaxOxElmiHxtMuXj7
 l3HWOqt9wdib5QAKbPKmd4CUzV4PUyju8ikKZI0/Uoa5Do5uGhXE/y+0djEz+KdDmH//
 LRIYZgUw8X76n7YO6oZF8iCRuEfhJ0NCQ7cV/SeUiOZJ3DaPpGbYw79/Rl9HJVkt/B3N
 d0SA==
X-Gm-Message-State: AOAM532s6tAAl4BGdBrDVP5udH59++acHgLAgmr2dEtA29PmuPxmV/6H
 bslFREasv3J5+ChNny5sZlBj7+Dk1mjNcqrKm4c=
X-Google-Smtp-Source: ABdhPJw8gi9ZQ9b7ziDhHvd7AdBz6Ju+aZl0wFkN7BHXZ/1UxBruJsqKUGVLfoAJ0nQTpVk7cv98fXWPYNpz5Op4udc=
X-Received: by 2002:a1c:de05:: with SMTP id v5mr14097715wmg.1.1589730675709;
 Sun, 17 May 2020 08:51:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200409070448.3209-1-paweldembicki@gmail.com>
 <20200409070448.3209-2-paweldembicki@gmail.com> <87sgfyh9au.fsf@FE-laptop>
In-Reply-To: <87sgfyh9au.fsf@FE-laptop>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Sun, 17 May 2020 17:51:04 +0200
Message-ID: <CAJN1KkyhnG7qByXYP14ULTrUhYNbDt0AQ_Er=bnM-KymLz8bPQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: kirkwood: Add Check Point L-50 board
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_085119_230652_BC05E078 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Stephan Gerhold <stephan@gerhold.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.05.2020 at 17:26 Gregory CLEMENT <gregory.clement@bootlin.com> wrote:
>
> Hi Pawel Dembicki,
>

Hi Gregory,

>
> Applied on mvebu/dt. I think the first patch should be applied by the
> device tree maintainers.
>
> Thanks,
>
> Gregory
>

I sent v3 of this patch some time ago:
https://lkml.org/lkml/2020/4/22/1353

Is possible to use it instead v2?

Best Regards,
Pawel Dembicki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
