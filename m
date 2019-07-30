Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350027A3CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5A7ZoAWuqtlotrv18ffRAYDzADH1QKVfWekXPE6Ivh0=; b=pSNNj4Sczib7nM
	etzp3fP9XEbSHgD9exPqo/5M8tGHwmIgELQEoTVOuYwDKY7w1MZ+cLG+mxwzcSEBp2a8P9FoDri+n
	EUGRGS7esskT71QtlWEcIHYaCIUdoNMAmwetdqKuHGEtAWzDevlhaHQptihesVoko41Oh5tAIqzt+
	e0+yB+n0uHxDuiDDEU4RDHgEFmUtiAsdgOfy1sX7Y65Rrd9XwUao8wHqXcOHIVmgJv3TbsWitEqDR
	dDvgalQv++r/GTKA1NW7sGJbVsk8kvuuoiWR3DeXlrAb5edq6bpYPgpcTqX7Pt2Nu309TuC+K40zh
	XlsK0SBebqx45gZXvfgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOEu-0006Hg-HG; Tue, 30 Jul 2019 09:16:12 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOEa-0006EK-Bh
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:15:53 +0000
Received: by mail-wr1-f68.google.com with SMTP id g17so64915413wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:15:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7p0S88q6+XKwX8nM1vn9ytVwUof8aNjUGgnKhdm0yLw=;
 b=IK4ZgAMhg4rYogQRRNCvAHvpSPaqBsDVkaTSZVpCeXH39PQrwpIPZeV4BsGaWAvfcr
 v6ZBp6kalrxU6cjFNKmp4xSULJ2o7PT6ij7ezGRJBD/vMXlQ/WnKpqLuJFVNauwuCpLa
 hfDMC891luOA3X4KPoiSJKnaKdXFX3GmNgI7HZZIVRmbce0zFT0xrZLPAN9bkRhXxak4
 4fuQeCIiFR2iBjFBIIsRKrRWVAjzIZR5AFYwk0MWYXlGDAv8mkS+P0zdtooKsa5vrzBf
 zj5g/X+wcSIkeVWrpXG4ilCHpSQs5EVyUmuPrrQ86/sz9WU2S2uYCPQSVre6B7yAZZsv
 e7Dg==
X-Gm-Message-State: APjAAAVQP+rH+PqTUMVbqbzg33xTz2m9O0nauxMfiHq1prITSGPfgYb0
 Cqmszub9PnbhQF7FZABOThy490d+6/fVg97MmUw=
X-Google-Smtp-Source: APXvYqwFq8tNlizKa4xwwnwOIsApULbIfdjo4PywI+8FPcpDJoetPdAip7VupgqUk3oill6YxGGIPMtZ5oH3osoVAt0=
X-Received: by 2002:adf:ab51:: with SMTP id r17mr100214527wrc.95.1564478151165; 
 Tue, 30 Jul 2019 02:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <1563816172-17864-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563816172-17864-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:15:39 +0200
Message-ID: <CAMuHMdXCNk918JKdudm7Ww34aRGm34zUh7wnQ4=PDGN=XK_Ncg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7795-salvator-x: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021552_537407_9C875636 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 7:23 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

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
