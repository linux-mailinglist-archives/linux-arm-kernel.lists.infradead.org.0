Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62D310F7EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXP+3uMPbG+6AtZk/GfK+J+4fkHTV6ZuywBJdKqws78=; b=KiVcBCQTej5apY
	w7Ood9iacCyBB1kHz9PeQ8SYUuRA2SZ7xeWZkOayNjOmGpdXoiaUapD9pmhkep0t3A/QJvgn01qxi
	oJ+luBpZJUSpe9+FJBcDNqD7bqquVdUFOc/RDTmeRImlNBe77n/05T/yJrJpytowpJt5klPzed4km
	aOWAZ9GHXGCHSFLOdr8ymS1oXixzdBxvhdgb6epNVGvIZ/Lfibd8dEt8EjB8IDAReJZ3cQ2jCu7eM
	ChOqY1Sg7ipJWnDo1T7odB34meLR6MgrDtUx0TWetfcxLreqTF/qnmr7hPah0NMJuLsJkVMuar87p
	Cz79gZVYqy7TOAa3u0Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1s4-00012I-6a; Tue, 03 Dec 2019 06:41:16 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1rv-00011X-3e
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 06:41:08 +0000
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id xB36emeJ019677
 for <linux-arm-kernel@lists.infradead.org>; Tue, 3 Dec 2019 15:40:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com xB36emeJ019677
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1575355249;
 bh=GmXrWvhOttxlHCjX9wBisNRIMAo1vtJVcSCFg0ZfW/E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eQfEAHxN/nyufxxHjUgeAqfUWRF9N56N6laRBYIa9ZUPDx+oXOlkXeU7KxqPwuQzo
 pSrn1TZMHRowWTRqGBXYN2AANUfHl5vYyyXnnkfQLRj/UxYbQwcUe06/pcP9/5pI/v
 jCYcFWZHB5NA8Jj9QXLSGDVJNjzwRalDB/SROx4QLfA7fv7qX7qGIEkO6305O9AtVz
 86nMvnH5KzB0HRgM40Dp+axd9d+ayIRZ2zLK0fjXKD2wK0L+uwCgFIJwUtLd8RxoEu
 t9I8bNCFI0J635yawOfhmbAUpYhg+5dsS7/vMhZkkznnSQHOftcRL7E3CtYtHdccrf
 mR12BCMLCqmMg==
X-Nifty-SrcIP: [209.85.222.47]
Received: by mail-ua1-f47.google.com with SMTP id p18so920831uar.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 22:40:48 -0800 (PST)
X-Gm-Message-State: APjAAAWxZPyFHDvhavttVPt/FZ2Osj8/JDt4p7hxqaAdJvneFs6BP/Z/
 vnoy1TtCCiRp4j+Lk/831s8YXnVTapG92i0fWmI=
X-Google-Smtp-Source: APXvYqwRi6dH3+fcClvqz37Ap3nH0SRDXHHJ5azuwG10OEJ40DOOd6/KUMOAaiwkuJFBpVyZafygaqHFxR9pXXHM82Y=
X-Received: by 2002:ab0:6418:: with SMTP id x24mr2561736uao.40.1575355247780; 
 Mon, 02 Dec 2019 22:40:47 -0800 (PST)
MIME-Version: 1.0
References: <1575001159-19648-1-git-send-email-hayashi.kunihiko@socionext.com>
 <12f11e521a41d9f1e0e916fcbe413f6d0390bb3c.camel@pengutronix.de>
 <20191203151149.52A8.4A936039@socionext.com>
In-Reply-To: <20191203151149.52A8.4A936039@socionext.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 3 Dec 2019 15:40:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQvsw-bgXm5u-z0gtSZ078RvPFU10yqyhBRi2Oaq4bqdA@mail.gmail.com>
Message-ID: <CAK7LNAQvsw-bgXm5u-z0gtSZ078RvPFU10yqyhBRi2Oaq4bqdA@mail.gmail.com>
Subject: Re: [PATCH] reset: uniphier: Add SCSSI reset control for each channel
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_224107_499253_9BD605D2 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 3:14 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Hi Philipp,
>
> On Mon, 2 Dec 2019 14:06:20 +0100 <p.zabel@pengutronix.de> wrote:
>
> > On Fri, 2019-11-29 at 13:19 +0900, Kunihiko Hayashi wrote:
> > > SCSSI has reset controls for each channel in the SoCs newer than Pro4,
> > > so this adds missing reset controls for channel 1, 2 and 3. And more, this
> > > moves MCSSI reset ID after SCSSI.
> >
> > Just to be sure, there are no device trees in circulation that already
> > use the MCSSI reset?
>
> Yes, currently no device trees refer to MCSSI reset,
> so I think MCSSI reset ID can be moved.
>
> Thank you,
>
> ---
> Best Regards,
> Kunihiko Hayashi
>


Fixes: 6b39fd590aeb ("reset: uniphier: add reset control support for SPI")

Assuming you tested it this time,
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>




-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
