Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D514549ECC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 13:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHaTQwhN96H975XhXVolIQkGSoCA5A9NuqG0j2Uxx/g=; b=fMsQmQ1rWgD+6Q
	cxrZGMWhczd4HHhdesadSwOpGhaZdfwol+CbxwIrKz93oSFrlCiltMG77JWXvDu9+RgOkoxPqJEmo
	9Rx12L+a7QuSaIgMh1HXfG59dgk2I3gFcgEvIdspL4lDV9Y961aZxHI/VhsvlJwauANJ1TT83ChJF
	JHhFnk6NFvT10ksX2iGUKdf0FsOH+G7/v+5tekb3+h9dOClphniWic4wQNhhWvC4CHE/rnYda0pVd
	6RH8is2MxrKgT69lzN07rp1jvXef2r1h9oXpgf95nZiCYAADL92AqKHD5JHQgx1ojgQrJFuiT2nhA
	obZB9ahIEC5JWpVhNS+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBqh-0007Nz-OA; Tue, 18 Jun 2019 11:00:23 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBqS-0006H8-Oq
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 11:00:11 +0000
Received: by mail-io1-xd42.google.com with SMTP id i10so28603668iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 04:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kO+Ld9oYjzAATMOMgs9ipgnAjY1R155cPSoZsGOuzvw=;
 b=k38HwrCbmC3eCmrmtgABfdfrVM7qEZtCCm57u1eT0iBPWQTRkN9T279vnl54dQsROk
 VZps4HuMSCod0NNe+C0Wx4K7EA3G/tUYAnBoS+itZKD4yvF37EfGtB2zC84Vdt3v3SW7
 l7JR3JfrZmQktJuK5PTfW+Iwj24COPpoDb/VojmW9Rq64ZP2X7bW8YXODnEcG+nBZoW4
 n3IPWiPSnclpe75r5M2CsaVSbPA5QKAiiYlF0WSSH60C3g9Z6PVBS8H2slAvAS5VU7vN
 9g1Tus6PQ5hO9i3PEBGnTrBcsBrpYX5qjq1KnAU0s/VJIu7LoyzVUCfcrCDtPYCV0Brw
 57BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kO+Ld9oYjzAATMOMgs9ipgnAjY1R155cPSoZsGOuzvw=;
 b=c5KuoJ4PpcdCZ5IJAldgv5HtyA+z2fBfDsZGHn9OAwdBoF1mtB2NlM09uaqJN5ydQd
 oxJi5RDqtDlqHRvaEgZx3aoSGYtiGpk+MnIWARtgqeX/2HSAouh+X2KdxEb+GesADaDS
 bol4em7LaflN58GpXV9LvPFpWAuPfxtS7RNrUfWV0isVFXL7z8+F/IepuZlD46rXIzGS
 XBCtHSbQGYrxbelYO4TPPluAqZyTQHprHNDDI3+7X3PjlZb6Ij8rTOjUe19Nn0t9v+Ct
 NVpaJFcq4mZsPGlt730mGVaCnEFXabNSMqEYGHRVqSoYe9WanToK+U+T6qm3n+twgejf
 dlFw==
X-Gm-Message-State: APjAAAX5WlGRrFGcI9omKJI7b6GhqTVhf2hdJ3cRTO8EIvEY9fn9wAs6
 hp1Gbmu7P+WHrk9RXUn5Uv4D4wYlFGIQ3LIlp/SUqw==
X-Google-Smtp-Source: APXvYqwXvXgzzgcpl5G2fh6wX92HRT8JWqYU42X7PPvD/O88q1XVoNNuNUd+bUFwaXY/YrFLbvjH5EKejj0YJ1h8ZwE=
X-Received: by 2002:a5d:94d0:: with SMTP id y16mr33611523ior.123.1560855604399; 
 Tue, 18 Jun 2019 04:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190617122449.457744-1-arnd@arndb.de>
 <20190617122449.457744-2-arnd@arndb.de>
In-Reply-To: <20190617122449.457744-2-arnd@arndb.de>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 18 Jun 2019 11:59:52 +0100
Message-ID: <CAOesGMhU9OHg_4xAiGy20KmXXLU62kONQxZ6DV5Tj+PKeBSJTg@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: ixp4xx: mark ixp4xx_irq_setup as __init
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_040008_895712_7298DC28 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linusw@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>, Krzysztof Halasa <khalasa@piap.pl>,
 Imre Kaloz <kaloz@openwrt.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 1:25 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Kbuild complains about ixp4xx_irq_setup not being __init
> itself in some configurations:
>
> WARNING: vmlinux.o(.text+0x85bae4): Section mismatch in reference from the function ixp4xx_irq_setup() to the function .init.text:set_handle_irq()
> The function ixp4xx_irq_setup() references
> the function __init set_handle_irq().
> This is often because ixp4xx_irq_setup lacks a __init
> annotation or the annotation of set_handle_irq is wrong.
>
> I suspect it normally gets inlined, so we get no such warning,
> but clang makes this obvious when the function is left out
> of line.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied to arm/fixes. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
