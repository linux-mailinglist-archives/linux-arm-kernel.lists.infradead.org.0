Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B1DC8D5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etM4zXgQMZ9lHRwVY393B5xZUVH3/aUFKNp7ZuC/gXo=; b=Twc9M9Cu/0Y27h
	/KvGKcGl04vtHW/Hjws/WEeYv1LNqrEIiKjOKiX2p8B+CnRpsmqPNah+RT1rikadAaCSiA+z7u7Tt
	8I4WkQyW3UmL7TAX/KCzsUlGeTQzpPIq9KnT5LhhBXwSCj1Ro/7E/9vibggKjAfLXHgmiHpXq2tmy
	8M41l8PiWsjic4ipGCoLYKaPi+lO+C8SWC0Ys9+avtYhmEIAgRTDlGXmJYKeo/SwNQsEWgL8rSYvP
	7WD7eaGGZeNqAwwsIla3C3pR5R0RjqNf/J2hBeFCOlssaXKk40zciMBeswMTRC7FhCqyXztswBqul
	2ysDL4B6s5XfxZyzmYLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgtb-0003Ft-2o; Wed, 02 Oct 2019 15:50:31 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgtJ-0002pZ-87
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:50:14 +0000
Received: by mail-io1-xd43.google.com with SMTP id n26so29510909ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GgrgypA3DxUGV2Hcyn2yPyZpwe6ccGDhojrwZbcYpCc=;
 b=ujTSEqsXf+iupp/ifM3h7w4Ejxx2fmymksEJAm0g8N0Alo7FNBe3Lz7dNvlR1Mt7DL
 7s/pgBLsUsU+RK3RaP38PbrOC6mkp7+3v3/LCJ1sWWn5xLcyykjatUpJpE6uxsDtDEYa
 KtP5XeVD0rbFpkjv5nKpwLZP4W9TauVZ1/JJP3IME77URgq/n4jKSa7GXJDvhvgkAKBq
 HOZpugbfayXfKMZwY2NRxfDSy28lJGL5iut6ZZ8iFF98J5cX5O9KjK1pSMgBnkWUScI0
 jcH1jQgQVVxXQ+5rGV2lpH3V8edYcYdj+/Te595M9OzSZJKvrJnB5nTgFc//xkXkgNJ7
 RwpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GgrgypA3DxUGV2Hcyn2yPyZpwe6ccGDhojrwZbcYpCc=;
 b=lga75o/HRmY220Vu5lfKGecNUHDVGIQOsfSddUN/9Y+7f+4VEquE3KVitZeyhh5/yQ
 MFqrUhR7Xbo/XZfAsEfP7GENSO+mRpYSdEjeAoeeShSfwhrDWdk5A84bAiWQ38WjcMXN
 EOeM7BlOILcTD5f5h5/h4/Quu20tEfEYSJCTmdlnVB9VL0OZ4D9YLxL+3xYjcbbjsSNF
 ccfb/iKztzuiqXaSZguAXNclYrBoZrarDcW79kB5VkCFDI31lbJDXPg7b7avrNL26Yzw
 02p9dkKYpc1HO2tO3tPQfN+NbAJYrVEGyCNNOY+ztl+5nSlkGwFbuM93P7SijlXBuCv6
 ur8A==
X-Gm-Message-State: APjAAAVYh3EI/b+piOQTZSj+w8eEOXHBUhHdXWQUoqZOiZrL0hhadqBp
 SJzaIjw6Jea0DbhdtpWrHUuQk/wSKzUcyMZ/toS3pg==
X-Google-Smtp-Source: APXvYqxWoflWc4huqe4ztcpNHyki7LeviAKmD46t20HNaJsq4ky/7tlOgT/pMGjJCpqYc2vou9S51QJsOpaiPNJb4Dw=
X-Received: by 2002:a6b:da06:: with SMTP id x6mr3930202iob.42.1570031411001;
 Wed, 02 Oct 2019 08:50:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
 <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
 <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
 <5b8835905a704fb813714694a792df54@codeaurora.org>
 <CANLsYkxPOOorqcnPrbhZLzGV9Y7EGWUUyxvi-Cm5xxnzhx=Ecg@mail.gmail.com>
 <585ee38c-39d1-47df-78b7-f4b670f17a25@free.fr> <20191002153410.GA10598@xps15>
In-Reply-To: <20191002153410.GA10598@xps15>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Wed, 2 Oct 2019 09:49:59 -0600
Message-ID: <CAOCk7NrSufekeFKnEsAQVsvBHzQ0N=mzf5vMta3tKHWuGtF5Ow@mail.gmail.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_085013_394159_5130EB57 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 9:34 AM Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Wed, Oct 02, 2019 at 05:21:23PM +0200, Marc Gonzalez wrote:
> > On 02/10/2019 17:03, Mathieu Poirier wrote:
> >
> > > The problem here is that a debug and production device are using the
> > > same device tree, i.e msm8998.dtsi.  Disabling coresight devices in
> > > the DTS file will allow the laptop to boot but completely disabled
> > > coresight blocks on the MTP board.  Leaving things as is breaks the
> > > laptop but allows coresight to be used on the MTP board.  One of three
> > > things can happen:
> > >
> > > 1) Nothing gets done and production board can't boot without DTS modifications.
> > > 2) Disable tags are added to the DTS file and the debug board can't
> > > use coresight without modifications.
> > > 2) The handling of the debug power domain is done properly on the
> > > MSM8998 rather than relying on the bootloader to enable it.
> > > 3) The DTS file is split or reorganised to account for debug/production devices.
> >
> > I believe 3) is already the de facto situation.
> >
> > arch/arm64/boot/dts/qcom/msm8998.dtsi is the "base" config.
> > arch/arm64/boot/dts/qcom/msm8998-mtp.dtsi for the MTP board.
> > arch/arm64/boot/dts/qcom/msm8998-clamshell.dtsi for the laptops.
>
> "DTS file", i.e msm8998.dtsi

Bjorn (the primary maintainer whom will likely be taking any DT
patches) and I had a chat.  We concluded on disabling the coresight
components (by default) in the msm8998.dtsi, and then enabling them in
the msm8998-mtp.dtsi.  I think Bjorn would like to see some patches,
which it sounds like Sai will post in a few days.

This is probably how things should be moving forward for all qcom SoCs
since its standard practice to disable the coresight components via
efuse or other hardware mechanism for production products.

>
> >
> > > Which of the above ends up being the final solution is entirely up to
> > > David and Andy.
> >
> > 2498f8c1c668 ;-)
>
> Then it is even easier to make a decision.
>
> >
> > Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
