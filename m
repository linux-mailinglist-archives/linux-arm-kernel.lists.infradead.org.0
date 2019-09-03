Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D21CA6851
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhUHzEaHVI350XcrK9vJe+X3agzche/gfBUTCtjxgg0=; b=fh8V+rqrzr6aJY
	NPVIesOQeRcLCM5DU5DR/WP2U4lz0kXWkaabkPQAA/JCIFJ3uY5T+zvpA2Nza5hHzSshUWTvri9yT
	73j7ZN78hJgczRKUD1qF7oTcy21PvfyEeKS302dQd6hjTLXgGiWzLravBBCHsQx26p0/+SrlioTBy
	Wb9xRPbf56YZEIJzCQjXaNy3pPsws9E0pkA0jRrq0x9v4TqLvHPhcEwafAGD2FnNNRgai3CCBCMM8
	XTFgnmhy7YMZETSGbZ139SK53v9Y9EsxdZ2RJVia1FYs/JzFuaASH/EoHSBzpwvaJr+BJC0Qzm7Ux
	AFxo7uSy6BsnVvSZbHTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57eN-0002Tm-7n; Tue, 03 Sep 2019 12:11:07 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57eC-0002Sx-SU
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 12:10:58 +0000
Received: by mail-oi1-f193.google.com with SMTP id b25so12553983oib.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 05:10:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+xIjaAJUd1GaonkzJJosr23Uf/8WYjOGEAgyMrCgFo8=;
 b=b1FCEOmn/LGZMhBnRq2pFbuMiM5ix67ReeaUpDk2BmOzzzEkeJjqvl/lUoT8VzFZTW
 fbAl+h/zuyF+JIzLZ20SLZ4mfkqq89ktFa0jF5LudVbiT9q3z9Ai2xbN2knBIuQmBWZT
 tHLTJmKv0jl8SzyNesQjFy+e5v87V4yC7O//MQjloBe+Rocf10ovsvEscOtaTa39dpte
 sp9BSTVToQL/r2NFP9+MevyhL1K1OJxkxPJGgUb2OP94GxVbpkFuYI/vmI5feVICfNQt
 gD45SgFYYBZirwIUBNu8e42zBUaPAsLGMdWmOBFg2R13ZngqRYx+zWdtVublsjAzRnVV
 /Y5A==
X-Gm-Message-State: APjAAAXoTfpEKlqpqbNz3yQbtD5/GJXR5SwbmJQJo8jzYw22tUM8k2U3
 lyFdlJII9Y7hCK2uaACzKC4MV2Pji9AodEYNdkE=
X-Google-Smtp-Source: APXvYqw3dbLaAk8lG3cvVJtzb7nnwDcpsyyBK7lRsQJ/qXJS1f/gFMp4Lbsj49Py5g4STxcx9I3j1ZpHB0l2i2wWFGE=
X-Received: by 2002:aca:b154:: with SMTP id a81mr21347044oif.148.1567512653543; 
 Tue, 03 Sep 2019 05:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190828113618.6672-1-geert+renesas@glider.be>
 <TYAPR01MB45445637B824C0464A1CD5ADD8A20@TYAPR01MB4544.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB45445637B824C0464A1CD5ADD8A20@TYAPR01MB4544.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Sep 2019 14:10:42 +0200
Message-ID: <CAMuHMdW6WhNYHL-3vWj82uRUuxxuYfk3BRnqu8SWnh3i6zkXjw@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] soc: renesas: rcar-gen3-sysc: Fix power request
 conflicts
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_051056_923333_1490062D 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 6:14 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
> > From: Geert Uytterhoeven, Sent: Wednesday, August 28, 2019 8:36 PM
> > Recent R-Car Gen3 SoCs added an External Request Mask Register to the
> > System Controller (SYSC).  This register allows to mask external power
> > requests for CPU or 3DG domains, to prevent conflicts between powering
> > off CPU cores or the 3D Graphics Engine, and changing the state of
> > another power domain through SYSC, which could lead to CPG state machine
> > lock-ups.
> >
> > This patch series starts making use of this register.  Note that the
> > register is optional, and that its location and contents are
> > SoC-specific.
> >
> > This was inspired by a patch in the BSP by Dien Pham
> > <dien.pham.ry@renesas.com>.
> >
> > Note that the issue fixed cannot happen in the upstream kernel, as
> > upstream has no support for graphics acceleration yet.  SoCs lacking the
> > External Request Mask Register may need a different mitigation in the
> > future.
> >
> > Changes compared to v1[1]:
> >   - Improve description of cover letter and first patch.
> >
> > Changes compared to RFC[2]:
> >   - Rebased.
> >
> > This has been boot-tested on R-Car H3 ES1.0, H3 ES2.0, M3-W ES1.0, M3-N,
> > V3M, and E3 (only the last 3 have this register!), and regression-tested
> > on R-Car Gen2.
> >
> > This has not been tested on R-Car H3 ES3.0, M3-W ES2.0, and V3H.
>
> I also boot-tested on R-Car H3 ES3.0 and M3-W ES3.0.
> And I reviewed all patches, so:
>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Thanks, queued in renesas-devel for v5.5.


Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
