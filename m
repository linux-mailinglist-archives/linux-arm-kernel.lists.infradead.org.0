Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C156DC6D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tznHB+rN6+FulqqM3cXmUNNhjiIs6y5iNLVyDQyx5uI=; b=uVBKWaKR1LlgUn
	VgrP91s5kX+1+VJfofG49o5oj3MTpWmhYwkgMdxw+aU/SECwQShjs5C6W49JGPJcoOMiTUdKfPHkJ
	cKxhjWB9qiIbSd6XK624W46Z8oXaXR5sjYOBFhrFEXtxQ/p5mawUeb6N0R4f5LLGvpMeMjBcrJakZ
	uWHfLwa/EqRnEa6uTSZefpojb39dI7Df8+5AOXObx88+pg5XaHqQ/lP65pH9WDo8kmN3JJeoTGXiT
	0Y2SWYDSG29eDMHNYUcSej1FXgG2xI6ncgllWpIT4g8sGWtB7RUCWKPO8pDAQixNPN7Wj/w4DdGrS
	gmGnqBoXquALabkgh74A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSsQ-0000MZ-Tm; Fri, 18 Oct 2019 14:05:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSrr-00005a-J0
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:04:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id h195so3967279pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 07:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XDsR3uMfXkgF7u6HALnY0iXOM6iF9eRUOFTw+nG58FU=;
 b=s/332UPVcH1YG4ye19Mtt+q/dq09kM3b0whWofT6iOrvdLjKeNJSYkEGYFV41HwrJ+
 NWTQw49T0F9jwGWvwScp1UZ2t847mGaAFXXulMv9mGQAJLsG3dKWHgREe0FpOs6jVYWK
 cppS7aPIqstVZHnSUo3gHthlzVCgIAjPKB5T0vMa1tMxCUgxWuDmLC+RQT/E6RHfjHDC
 AqSTsQDXzjEWd/gfhgAYV3UjuuJtrtpN/6tAuKaAU/ghmYpCssDi7ZljlQIV/F5zRKrX
 TWEOv8hq5IVZpBOqM1H9GQ9T/oMyHsN53zFGEZmTr+uA1ka0S8bMJoWEGMXfMR0uDHxe
 aVkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XDsR3uMfXkgF7u6HALnY0iXOM6iF9eRUOFTw+nG58FU=;
 b=Z3wcZyrVIa8HJhC/pX3YyRDky9Gi9FYGA6C5qjviba9bDEVtGty1HfZjur4LqCGuCT
 B0l/7XZd0i9UzIJJqKxKf1vSjMrdOcKT9X6z+BjSmnKMuRZa8SfBstGuizA/kYJL/ULR
 4x/0SHiDwKa6kmHxxmirhEmBeWNF9HQ/dLyjM8ACAjQ3Ql3PXIX7cCzee0PyBNbCXIwK
 gQpQgUMjUcKY5/xbmA8/TlSxWaDv3PuDRPHNrReB/kcjnMQrwRZPhdGS/SaEryzrSvYB
 +gsABKPe9IVow0YMb1Us+sYiRnWglw5nfPQv3cEpS3dr1J3+j1DB8jLmtBAx8UdsZASZ
 flwQ==
X-Gm-Message-State: APjAAAU2Ytz6LuKrHs4xHDSOeHgc8W4Bdl/CI8VNSwViT3OkWh+h2vva
 iIi6LjOCpFLRXq4VubkidEkYhvxdlgNlU9aYFf4=
X-Google-Smtp-Source: APXvYqwnOvM20v2TXGRKh+0hhjR67QeiaXXXTMLJTzrrZMqLeIyDAtaDXT+eB8luNhsXXvgzPPPobaNa8D5T/VNq5xk=
X-Received: by 2002:a17:90a:9416:: with SMTP id
 r22mr11549632pjo.20.1571407473810; 
 Fri, 18 Oct 2019 07:04:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191017025058.31528-1-hslester96@gmail.com>
 <CAHp75Vd2SMERjtvNumxAF1HSp8GSThmcyx96zkFzUXKwnD5d2Q@mail.gmail.com>
 <CANhBUQ2yxGbjk_DgXbip=TPT=evzA5naoJSY9t1_Ep47e9oupw@mail.gmail.com>
 <CAHp75VeLyTi=gqfNr-=Tg36yQs_fYG__iQAxAEKdks0mqsTbug@mail.gmail.com>
 <CANhBUQ1CnCHiY8tkCMcXZ3DAPcfnQZgfA_Fj4qf3yYBKGg10Wg@mail.gmail.com>
In-Reply-To: <CANhBUQ1CnCHiY8tkCMcXZ3DAPcfnQZgfA_Fj4qf3yYBKGg10Wg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 18 Oct 2019 17:04:22 +0300
Message-ID: <CAHp75Vdb19w02zKHo1tqAtF8TmT=z6Ye2YFfxVw_TGtO3VxfLA@mail.gmail.com>
Subject: Re: [PATCH] spi: pxa2xx: Add missed security checks
To: Chuhong Yuan <hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_070435_643516_C12945D0 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 2:37 PM Chuhong Yuan <hslester96@gmail.com> wrote:
> On Fri, Oct 18, 2019 at 7:14 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Fri, Oct 18, 2019 at 1:39 PM Chuhong Yuan <hslester96@gmail.com> wrote:
> > > On Fri, Oct 18, 2019 at 5:35 PM Andy Shevchenko
> > > <andy.shevchenko@gmail.com> wrote:
> > > > On Fri, Oct 18, 2019 at 8:59 AM Chuhong Yuan <hslester96@gmail.com> wrote:

> > > > I'm not sure they are mandatory for all platforms.
> > > > To be on the safe side, you simple need to add _optional() to the both
> > > > call along with above change.
> > > >
> > >
> > > As I know, this is the only one in spi which does not have a check for
> > > devm_clk_get.
> >
> > For some it still may be optional. That's why better to check it and
> > mention in the commit message.
> >
> > > Even if add _optional(), they still may return errors and need security checks.
> >
> > Of course, see "along with" in my previous comment.
> >
>
> Got it. I will send version 2 in which both _optional() and security
> checks will be added.

Let me be clear. I didn't check if _optional() needed or not. You need
to investigate this before sending new verison.
And in either case this should be explained in commit message.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
