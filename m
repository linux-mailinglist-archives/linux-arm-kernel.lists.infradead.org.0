Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6553610F2FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:57:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFVMhYJDi09bEsJ22EnzZ0NpNjlkLbMFzaRdN8v3jcY=; b=oKArUZHzucoa7R
	nVL50xEqDWGcwJYvn+NzdAdQ6shkIoYQ4rNgExHqA15yh72Y2AutxmStYG6ZHnJ/eYlVigTyz144U
	ggPKWBTxbrCiY5B/42873IETZ7S3naR9XKCgkhLuNuG1YspI//gElo+C5zZheL/hasNn36MiQvOik
	WZnQs5GD94b7dYn+Y5XgohTymx1DrxLZt2WlKhoJckudxKJE254Dz10sbXfKBU+RgXkEK1kUWD0Bs
	Zi0/YaKwEg/IWQh2mmtxeCg4BuuyBs9fey0fPcujrsKyV0lpaLT+GfKg0MEqH5Cj1A2rx6WZeoHub
	qshbssqd96S0Nepn18EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibucp-0003pu-Ot; Mon, 02 Dec 2019 22:57:03 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibucf-0003pH-M9
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 22:56:55 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so1090847otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 14:56:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5dllmzilFshZS41Rqd+tPknCh99mINDcFfUz5Z0ooFc=;
 b=k1vSYnYUXgQqVrExE+aWj31OVj23l2OLTnzGHIXylFc55qO0f8NzVEtumlKKaYIEk/
 r9A+QwjQmDVoDehHS3AQi2yvGtpq62GuaE4KcW0TDeNq6nhUND3jOy90klsDSkbYjeCE
 4AGsemULjlte4WlcHpkS+BPROp6QcIv45NAg+Ciz3MDeU+GqeC/H3tgiBiIPmUV9joji
 G7yt4+zEpPug51l2apaFcG2ewMYQt23N0csnKdgB3O8bOgzKR64JLi12fxIj5yH2uuqN
 PtUGbsKa/6n5NEu+50d97O/rPAOeWiJ/SWK5Qm8xfK35jExNEkJPF5R7ebnuz+/i4Fnp
 UbaA==
X-Gm-Message-State: APjAAAWweF90OvIEnVapZvROcn7TX6o9L7Xe1BY/tY+nssr/pYja6Qnd
 io1a3V5bTtAFTTej3MjSs+42l2Dj
X-Google-Smtp-Source: APXvYqwNHU/NDbAap/EwY9yTEmx+YMp1DzpTlJFRvJvpquPu+VCM7xXTz7+aBM6RHGG7F08ogjN7CQ==
X-Received: by 2002:a9d:206c:: with SMTP id n99mr1077259ota.42.1575327412184; 
 Mon, 02 Dec 2019 14:56:52 -0800 (PST)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com.
 [209.85.210.54])
 by smtp.gmail.com with ESMTPSA id w12sm341891otk.75.2019.12.02.14.56.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 14:56:51 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id i4so1149427otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 14:56:50 -0800 (PST)
X-Received: by 2002:a9d:6745:: with SMTP id w5mr1041681otm.221.1575327410613; 
 Mon, 02 Dec 2019 14:56:50 -0800 (PST)
MIME-Version: 1.0
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
 <7beef282-1dd8-7c7a-4f6d-d0605d11eab5@kernel.org>
 <fb810251-f444-bd5d-54e3-774d2e1ccdb9@rasmusvillemoes.dk>
In-Reply-To: <fb810251-f444-bd5d-54e3-774d2e1ccdb9@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 2 Dec 2019 16:56:39 -0600
X-Gmail-Original-Message-ID: <CADRPPNSXS95DCpbnEG14tN7H4uxo7kFb8-azMU+MfPStyRcdpQ@mail.gmail.com>
Message-ID: <CADRPPNSXS95DCpbnEG14tN7H4uxo7kFb8-azMU+MfPStyRcdpQ@mail.gmail.com>
Subject: Re: [PATCH v6 00/49] QUICC Engine support on ARM, ARM64, PPC64
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_145653_723273_5323DF51 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Timur Tabi <timur@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Scott Wood <oss@buserror.net>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 2:14 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> On 01/12/2019 17.10, Timur Tabi wrote:
> > On 11/28/19 8:55 AM, Rasmus Villemoes wrote:
> >> There have been several attempts in the past few years to allow
> >> building the QUICC engine drivers for platforms other than PPC32. This
> >> is yet another attempt.
> >>
> >> v5 can be found
> >> here:https://lore.kernel.org/lkml/20191118112324.22725-1-linux@rasmusvillemoes.dk/
> >>
> >
> > If it helps:
> >
> > Entire series:
> > Acked-by: Timur Tabi <timur@kernel.org>
>
> Thanks. I'll leave it to Li Yang whether to apply that - they already
> all (except for the last-minute build fix) have your R-b.
>
> Li Yang, any chance you could pick up these patches so they have plenty
> of time in -next until 5.6?

Sure.  I will.  I'm waiting for the Ack from David on the networking side.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
