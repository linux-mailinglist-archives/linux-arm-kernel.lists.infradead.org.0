Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B4B3D570
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hc7ZB4ibnpFr2n/FF5XFJJge7hr/a8awKif6uaT87lA=; b=qOrzbiZDUfuemC
	pjdI8eN1zuXcGgUn1Csw2y1FrOINW6whWcF+jO8tI4PD5gg5vbtt3sJU0tELave04LrSXmxueSyfB
	FM5hp00H+fFV6MTUeAXvXeSqCYrqKXkwlSEAquMhekELvktdLfu0Gt7plAYwlwHr3JREODjsBzjPt
	ZCfTeTBCKK1FyAqzuBrLZua4Jofb1gBwe8Uq4FIcoYZrLOHm4Mt3IwfDMxN3WXla3ahk6Aq7tve4R
	TXfCMFvfMeyIcC2wJNCEJCilSpnn0Q33sS55Nv8S615qghW2xY7J46o7MYlLZH8nNvsDH1T/SYz1N
	Hd5nnv//jcktQ6tqtsxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halR3-0004lX-TS; Tue, 11 Jun 2019 18:23:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halQu-0004ko-3F
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 18:23:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id p10so1576192pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 11:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RUaqGS6QUgdTDoLllogq970LN7Ava4NDdFpVFqXYY/M=;
 b=GiGCJBrmLCcwdoXR/hfEWhxRxVXP0yUu9sUUZqvg4wVFwA5vVS81R3w7B/Hws02GBs
 bQf5m5LzSY2evhzZIaPcrTxdlRnOKG6JcgzyoPlFQaOBfdx4zG/zxciv5YgK+lrLTrxM
 cYO9J/gPwcAT2TpewnRYZ31E6KAMbCy2diEh13IEFyvzxVtxzxo7VvptCqzuA/hlCovh
 ZjKXMOGRmPvdeF+5XJnjjjFZqUja5TFKSjRPTAWJT6DPCrYdGGCmiq3H5dJ2O/MfvLXb
 zKyrSiVi+o3Z7jKpHKP2VcOUjPmBH9gPMgDgTzpANCDXfrsR2Ml+cEgzRas33f/OlAYk
 2KbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RUaqGS6QUgdTDoLllogq970LN7Ava4NDdFpVFqXYY/M=;
 b=BgWNSIYwamf9TQ/r1Sva9goMX0omLqwciMA4v6KEezRMmkC8OwNV/p8q3Gvx57Pxm3
 enBZEe0IZncvso2rQJKZqnsINOlA+Nu20234KdWxJLD9TajWKtUjqxEHI4Er2zSpaCMl
 1Kb1S9pEJyyztS8PAf8H9gPP7mdqG/IPTy04SXIdZ5bwtOL/lpBAjnDPVsnZnLrbTCYp
 xJwcciHrc6aoM4/xkNWXRHTLgcHPOJlBi57a4hL8iXxPe3nAps3CJUmZd2TIyQIpEtoo
 nTs8AgaQjcMw6ZPeJ5fsOyoD+HIjmmTKmVW7Lp0UAjJedcqwu1MnPeie9SNFh/JcLVvX
 /ZgQ==
X-Gm-Message-State: APjAAAUmEe9ECvJzJCfLI2/2MkJU6dTqO9un/Yi6ArpAkzBTENAa4RY4
 tsoelBoteA7hVZLzCeKSinKHL9ouEmy9wGV2IoU=
X-Google-Smtp-Source: APXvYqz0tqszhCDpzjSzH68sStNjjm2tLdRCgCOXbFIcDIoXYykPNvT0ZevAXzhMLOzrGgeFEbCuT5n6tl8XXCDe+dk=
X-Received: by 2002:a17:90b:d8b:: with SMTP id
 bg11mr28168554pjb.30.1560277423232; 
 Tue, 11 Jun 2019 11:23:43 -0700 (PDT)
MIME-Version: 1.0
References: <ff457774d46d96e8fe56b45409aba39d87a8672a.1559933665.git.mchehab+samsung@kernel.org>
 <0bea1c7c4fc06c7edabbf3185c0cbbc6e85eafd0.1559933665.git.mchehab+samsung@kernel.org>
 <CAHp75VfTNJOGZx-PoUXLRvzghqf6bVUdJ+yFjE9hNtDLCQ1=UA@mail.gmail.com>
 <20190611140501.11ba091b@coco.lan>
In-Reply-To: <20190611140501.11ba091b@coco.lan>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 11 Jun 2019 21:23:32 +0300
Message-ID: <CAHp75VcdMXHf=hz_m5ySZ-=fBU=qkFxry9Q-Dos9Jx0qoyHCXQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/20] docs: mark orphan documents as such
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_112344_141871_66338D5B 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Tue, Jun 11, 2019 at 8:05 PM Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
>
> Em Tue, 11 Jun 2019 19:52:04 +0300
> Andy Shevchenko <andy.shevchenko@gmail.com> escreveu:
>
> > On Fri, Jun 7, 2019 at 10:04 PM Mauro Carvalho Chehab
> > <mchehab+samsung@kernel.org> wrote:
> > > Sphinx doesn't like orphan documents:
> >
> > >     Documentation/laptops/lg-laptop.rst: WARNING: document isn't included in any toctree
> >
> > >  Documentation/laptops/lg-laptop.rst             | 2 ++
> >
> > > diff --git a/Documentation/laptops/lg-laptop.rst b/Documentation/laptops/lg-laptop.rst
> > > index aa503ee9b3bc..f2c2ffe31101 100644
> > > --- a/Documentation/laptops/lg-laptop.rst
> > > +++ b/Documentation/laptops/lg-laptop.rst
> > > @@ -1,5 +1,7 @@
> > >  .. SPDX-License-Identifier: GPL-2.0+
> > >
> > > +:orphan:
> > > +
> > >  LG Gram laptop extra features
> > >  =============================
> > >
> >
> > Can we rather create a toc tree there?
> > It was a first document in reST format in that folder.
>
> Sure, but:
>
> 1) I have a patch converting the other files on this dir to rst:
>
>         https://git.linuxtv.org/mchehab/experimental.git/commit/?h=convert_rst_renames_v4.1&id=abc13233035fdfdbc5ef2f2fbd3d127a1ab15530
>
> 2) It probably makes sense to move the entire dir to
> Documentation/admin-guide.
>
> So, I would prefer to have the :orphan: here while (1) is not merged.

Fine to me as long as you will drop it by the mentioned effort.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
