Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5600B81090
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 05:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxBr3pWHE+JLkYemMCYRiZ9VFCJ5+dXflvxrd0bB41M=; b=k0oNAHyNbcuqL7
	rIFWDlo55yBArA9JXiWNKZA/uAD2jGypQFvkSEINoWw6HjSrXBbGk/qoAtQ34fpSeoy/0VNO9JElZ
	o6u/1qiY/iyn+IMnwxZrfU5AOOpNzviuiFTg+9fTFqY4kMe5WSmz4nLTdXwZHH+OmXnXsI4OHBoVm
	3GUkc31h2TuRvhinhd3LAT5j1jxyzZA2jUoI73gy8XIkpFFG9FzNw4gBQW876gsJSPd6Ez6/C/b9H
	24RusjnOpcgDLuRc3MQrFrk30+nFNB6h3EsH5+Ua3Fy/TuM/YrxXtD7IBoI3mCK/zUO7DAsvfR9tG
	RjfNwNjzzloDGjvOVT6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huTlI-0006eS-BI; Mon, 05 Aug 2019 03:34:16 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huTl6-0006e7-7s
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 03:34:05 +0000
Received: by mail-ed1-f67.google.com with SMTP id k8so77277281eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 20:34:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E/ay00/7VOab39V9iAjlvzjElxegSNNc2eB2hEKTE4I=;
 b=oThVUdWWOUTa1ZUR4y67BzZK1stjRHVqiq2/nKkhKkaBGFZ2drSR39h69Nxrt4lRTt
 gPvyc/9pDYL0uWd64Cpnvh08yO+ny3hDBdQhL/FefNTCX8UB7MPZ35O1zoMg8+EmdCHC
 0RLRHqOLVRMS+X50AKvZCXGrl1TYpN0JKvxACGkRyrAzEGAuzcFyORD0uItE9cStTdFC
 nQczktHLBT4NiKPFbbNDyoTKJVwmNIj/Cj16tB5JkogVJF/ne+0dbLb+JjADgzoOxqaj
 RmELYdwKjUecMk4LG4QDmK4Y8P0FzrcfMmYnxMFFg/Gujb7wO5CwfpgF2XoyLY3wXa+I
 NA2g==
X-Gm-Message-State: APjAAAW59yrxCs4T8s+i6GgRYpwno4Mm5XdEa82dtG/X3vrQ0+ZS0RvM
 LbcfwhT/M9P88eKxG4moCo/wHVC0sfg=
X-Google-Smtp-Source: APXvYqzl2yBLtOmZNhrQWnAN1+zucAcug+70dgfig9mlMxiyUoorCppGcr4cyMwav/PrDY3nRRAMHw==
X-Received: by 2002:aa7:c753:: with SMTP id c19mr131642046eds.81.1564976041996; 
 Sun, 04 Aug 2019 20:34:01 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id l35sm19465017edc.2.2019.08.04.20.34.01
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 04 Aug 2019 20:34:01 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id x4so29665723wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 20:34:01 -0700 (PDT)
X-Received: by 2002:a5d:5152:: with SMTP id u18mr21347018wrt.9.1564976041031; 
 Sun, 04 Aug 2019 20:34:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
In-Reply-To: <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 5 Aug 2019 11:33:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
Message-ID: <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
To: Sunil Mohan Adapa <sunil@medhas.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_203404_284958_5530A53B 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Martin Ayotte <martinayotte@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 2:47 AM Sunil Mohan Adapa <sunil@medhas.org> wrote:
>
> On 01/08/19 6:49 am, Martin Ayotte wrote:
> > If my SOB could help here, I don't mind since I've done the commit
> > more than a year ago for Armbian ...
> >
> > Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
> > Tested-by: Martin Ayotte <martinayotte@gmai.com>
> gmai.com is likely a typo.
>
> > On Wed, Jul 31, 2019 at 10:42 PM Chen-Yu Tsai <wens@csie.org
> >
> >> Thanks. The patch looks good overall. The authorship is a little
> >> confusing though. If it was initially done by Martin (CC-ed), then
> >> he should be the author, and we should get his Signed-off-by if
> >> possible.
>
> Martin is indeed the original author of the patch. Thank you for reviewing.

I'd like to apply this patch with Martin as the author, if that's OK with you
both?

Thanks
ChenYu

> --
> Sunil
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
