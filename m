Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DD99754B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMUe2RUKcNpdIKvvaB9kMsxFhT+05XSyzV4ps13v99g=; b=BmwYmjanAWEw4z
	8/Hdd71j382h95u+ImQla0M7kWFrG42M9uLPMSoaQQTvEpDor9+a2HWlSCN+UVUkwxWYZ+SXyKYap
	+1ByoDrYdWP0FPAGfqsuSl3HEGMfENaG1XlY3cNZXNqjQKRj/NdgPJcs2toR8MHoE8bZG20u6BeWL
	S/coEHZ46J8DRFRuTeZpdhGsvcY2Ks+BxYyewzCJw4IsX6ufvibD8GptiLi8Yh56yeiFEuMkVz2NU
	3yjsSTfL/jOKZv72G4MXQYwBOrNkOtalBu8b/bs2ViGcpJWCJ0soqsj4uoXQOKIj+eSB/3kDylLUS
	PDBimhc70Ml4oM1hIE6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MH9-000747-In; Wed, 21 Aug 2019 08:47:27 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MGn-00073a-4Q
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:47:06 +0000
Received: by mail-ot1-f67.google.com with SMTP id j7so1317008ota.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 01:47:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R2UU1LvAktINA7rZOqc7JKeHUMfREBfar8DY/lNyPx0=;
 b=O92LRgfOvldojrwQ5m3DgAbGvOAGpj5Dogv7E3DsjwbbY/PU+tTrgt+/yHUl41b3Lw
 MyLRfDgws4c+L1b5HyVv3fw0E6pu6S/0jYd1WQuQRpQF1f2+RuUweWwHsf+phNC5tN05
 XhkVFMRAgCpBZgnyERs5hAQzdfjLgykbsnWFqcrWB+m0wLtt4YIIuK6iHSyXGrhKkO6p
 ZvHnKT7rEWAtZNbCb1GG4DtLChH89oWpgukUUnczFXTz51y2wtrXolxNPt0t+LhCM6V0
 htJltMlod3PVJMZbhG32cY7ROFgsTO/nSR2OMVrtT3+wLIaVoe+mLNl7vStN9ATAHZd9
 i+rw==
X-Gm-Message-State: APjAAAV3hTvAfYWQRNPXalbyCtv0LicHUrxS2LVFN4SE2IahutQq6iM5
 KbU0TFfzEfkuTN2O0p35m9TaDT9/WupFpnYC3Ro=
X-Google-Smtp-Source: APXvYqwOLkVYccbsCTHi0L2R1Rlv+0n/kkDXGg1Oh1WXHpSa9Ea0ccF5B+Ol95POupR7fObO1DA5X97L7fgDcamgiLU=
X-Received: by 2002:a9d:5c11:: with SMTP id o17mr9067488otk.107.1566377224105; 
 Wed, 21 Aug 2019 01:47:04 -0700 (PDT)
MIME-Version: 1.0
References: <1566219341-23048-1-git-send-email-ykaneko0929@gmail.com>
 <20190821084101.evn6xeiqcqv772um@verge.net.au>
In-Reply-To: <20190821084101.evn6xeiqcqv772um@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Aug 2019 10:46:52 +0200
Message-ID: <CAMuHMdWnAMH2VOcwk9oJs+r_NExHhGn4qMUTAuGjrZUSsvAXRg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a774c0-cat874: sort nodes
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_014705_170197_40B90ABC 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 10:41 AM Simon Horman <horms@verge.net.au> wrote:
> On Mon, Aug 19, 2019 at 09:55:41PM +0900, Yoshihiro Kaneko wrote:
> > Sort nodes.
> >
> > If node address is present
> >    * Sort by node address, grouping all nodes with the same compat string
> >      and sorting the group alphabetically.
> > Else
> >    * Sort alphabetically
> >
> > This should not have any run-time effect.
> >
> > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
>
> Thanks Kaneko-san,
>
> I think that the i2c1_pins and hscif2_pins nodes
> are also out of order.

You're right.

> I'm not sure if Geert would prefer you to respin or fix that himself.

Will fix myself.

> In any case, with that problem resolved:
>
> Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

Thanks!

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
