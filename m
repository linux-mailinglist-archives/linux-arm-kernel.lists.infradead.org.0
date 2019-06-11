Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F71B3D2FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxhGxGqQyaJnEQZhBpIJCMOdXUnWcuX3XgglbqYI13Q=; b=hUsjZ0uxS6Eshm
	CLgWen2HXxpIRsMQYB9snPlXFkWj4vnN9pzr0NHpPqpUaBgSdOJ+Uvkdlh3IlBoABQAeuZkE1llXi
	0oAqQ2O8Awzw49qXnB6soEs0DOxOohoqeSqHE410iz+lkmXfC6Te4QoZb1n74LhbHfM9i+No1vlmT
	bO9PTg99HjHRVG62mFItu9cL8Mj2Va+4oBqY2ug9nR+yBFgUpJ0cdSJfIcHOr7ValOOeXTm7wvAbQ
	n/qEDw50lXdJz2Xlg4MvJPE5ltJH/3AD0eGNgb4QS00AukgPVEaY8Ign9qusMcZZckgc7eDLOA+Qp
	dRZXUDAxMWvUfJ0ir6Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hak0g-0003Wd-3N; Tue, 11 Jun 2019 16:52:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hak0T-0003UZ-JZ
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:52:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id l19so4686448pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 09:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DQYk/P/AHz+84MHAfqs8A9FFft/ChbHJqGQaIDzi6ok=;
 b=cjJRH/tiJROWu574Li6WdMn+vr3Phrkemo9e0MrIa7BjfXn2y19eO6hPYoPqTcaHm+
 hm86n1rLG16xTwB/lLMEZ2SGn8PMjk7ag060+cgnFYiLM2inu1qWcunQBV1YSvwfqYTT
 DgE717bOFNLWOZArTH/miO/fXl2dyCUiS6unF3rjzsK53ET9uPUrfDplIbVezPaE0owq
 T40LrouoYo1Kjly8EJOlF7nZLhlPBw95nQfBGP3R4rCFndbjLuo5+P13eHpc0hbKjwSf
 j1WcA8dmRUBq2QbCXlBPmirBES11keCDGZCylHH6F7HiSk1MO2DGiSF9oKgwoUiwsuzg
 zNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DQYk/P/AHz+84MHAfqs8A9FFft/ChbHJqGQaIDzi6ok=;
 b=hnsnEuBKcUeOEazJBovFlxxG4T2mm7dCKYXN0CpIBaJfIRKelu3Uan6hLFPysi9gto
 Xe6D0puT4UiEkAPND+MNwMA0EitG7SxRgBxbvHSgI9HLdj58zEtCTELOJh9CQSrBdrxw
 60GXK9OLaTAJ0EXv4SMJMP6/cII5HZWA43iz0EbXCMzVzoB+f25ZxtExQfEASqCTtFOE
 SIGOIf22HOyHgdSyOxQmfAsSnKQrp+j4AE9DNsJ10eRbZealvK+swxAwxjdkP7tqIIQu
 y2GFbC2Wnnw2pZ3bGUoMwSbhvmQSgnXiVAgVyvd8hthRx5ziiec82eKoJXeuNqSSWZ4G
 bYLw==
X-Gm-Message-State: APjAAAW0IBWrn2lwHChq57Z4AaFijija9PinntI5USdOte13jMjJ4Yv7
 wBxTikT6YPBYFfDSI+uS39OIlvyV/OP1Xh9bK7I=
X-Google-Smtp-Source: APXvYqwIRgwZSvbJvIgasj06odVOLwqV4e1NGaONT67RAQJDqA/rR9sRiGkufN8AoUbyfd4Xe69TJ3rJVeHoEHiPbLI=
X-Received: by 2002:a17:90b:8d2:: with SMTP id
 ds18mr3765976pjb.132.1560271935519; 
 Tue, 11 Jun 2019 09:52:15 -0700 (PDT)
MIME-Version: 1.0
References: <ff457774d46d96e8fe56b45409aba39d87a8672a.1559933665.git.mchehab+samsung@kernel.org>
 <0bea1c7c4fc06c7edabbf3185c0cbbc6e85eafd0.1559933665.git.mchehab+samsung@kernel.org>
In-Reply-To: <0bea1c7c4fc06c7edabbf3185c0cbbc6e85eafd0.1559933665.git.mchehab+samsung@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 11 Jun 2019 19:52:04 +0300
Message-ID: <CAHp75VfTNJOGZx-PoUXLRvzghqf6bVUdJ+yFjE9hNtDLCQ1=UA@mail.gmail.com>
Subject: Re: [PATCH v3 06/20] docs: mark orphan documents as such
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_095221_672618_25A20BF1 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 dri-devel@lists.freedesktop.org,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Andrew Donnellan <ajd@linux.ibm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Matan Ziv-Av <matan@svgalib.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Frederic Barrat <fbarrat@linux.ibm.com>,
 "open list:LINUX FOR POWERPC PA SEMI PWRFICIENT"
 <linuxppc-dev@lists.ozlabs.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 7, 2019 at 10:04 PM Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
> Sphinx doesn't like orphan documents:

>     Documentation/laptops/lg-laptop.rst: WARNING: document isn't included in any toctree

>  Documentation/laptops/lg-laptop.rst             | 2 ++

> diff --git a/Documentation/laptops/lg-laptop.rst b/Documentation/laptops/lg-laptop.rst
> index aa503ee9b3bc..f2c2ffe31101 100644
> --- a/Documentation/laptops/lg-laptop.rst
> +++ b/Documentation/laptops/lg-laptop.rst
> @@ -1,5 +1,7 @@
>  .. SPDX-License-Identifier: GPL-2.0+
>
> +:orphan:
> +
>  LG Gram laptop extra features
>  =============================
>

Can we rather create a toc tree there?
It was a first document in reST format in that folder.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
