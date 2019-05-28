Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBE22C0E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkhAhlPmLO+Mixo2WTTuWURSvbLxE6EKwTqcWQb/XE4=; b=aFLBvfapM+XBBu
	fLHQi67yaqrlAILu/1HKYEyr1uCTY/Q250Q0iVA4fqOuuoGT7ONL8QByJdE8X4DWQ6I81aa+SxyGr
	FzH0RPiYSu9Gsg266ZS1OcWms7Dg2qio19Ad4qDNbfs1WgIuAx2oXo7EKqZMvYk9oQ9OdSTD8jmsQ
	7ixAg8HuS4vz47rMeSY2Qxlx2EsPNnyus7ei2uHTNN5jKY9jwfKzPPliIGIx51bvkQLhtO2Eem2OY
	G7SjGBjoid4n6zg9t1E2u9LRKugGQAEZo8f2+2OfO5xavemWFY6BwanZPJveC5A+CbwcJuXA3va2g
	d+5939laMVvQ6I6LsgLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXAh-0003Rf-1S; Tue, 28 May 2019 08:09:23 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXA3-0002rE-Bp
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:08:45 +0000
Received: by mail-lj1-f195.google.com with SMTP id 188so16750695ljf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:08:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jxRdLO81GaMwi25+pHF6tyabtHcRY5PiY9DnX9mbDaE=;
 b=e8lmFj2aqDj6Lw80EKXO8+fE3qUBcIOoSN8VjrI8/h03lK2WN+HV+7bfQ1379JQpvG
 o0ri9Xrpwtmh9P+FPkz5P3hcsh9TJIemghXKNQYHkEacLmLovuPhWytrbDFzon1CVSj0
 GPpcYNzClJ2WUbMeNri+HIRu0MxCaTWcIup3ZDa4m+p+Yc6jwR6ZtUU2/1KyUalShQEe
 SZcJo8eLG+U8yxSwprL8wSogwtIpzynn9oJ36R50zduNhoVDuhBt5Ui5xZrKKVebSfvo
 TnYGvmwiEEejOuM6nEoT4q7e5KzthfAF0QvtzQ/mxtTNdYL0snT5a6hyOT8LUlHVnbEN
 QJ0A==
X-Gm-Message-State: APjAAAWKbFSPMQLTouuLDFkTIdpf7D5//r3K0If4DIibG3zzqRimY4uj
 rFCV/gEpG/5I4DQ/SS19NAlFROGihUnt+0xduGGnZg==
X-Google-Smtp-Source: APXvYqymnIsHnIptohD+ZvCPE/vzwdkhqMTohAuXSeeplJGZYPhUDn5vCS9XnIBXws7SNfPGmO24LuOyutztcv2tv38=
X-Received: by 2002:a2e:249:: with SMTP id 70mr60782672ljc.178.1559030921424; 
 Tue, 28 May 2019 01:08:41 -0700 (PDT)
MIME-Version: 1.0
References: <1558104187-2842-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1558104187-2842-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 28 May 2019 10:08:29 +0200
Message-ID: <CAMuHMdUmmwmm2bx+g=G-py5FiQ5Ynrmxr262j61P5=y5GTA6OQ@mail.gmail.com>
Subject: Re: [PATCH/RFT] arm: dts: renesas: r7s9210-rza2mevb: sort nodes of
 rza2mevb board
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_010843_566717_A917E266 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hi Kaneko-san,

On Fri, May 17, 2019 at 4:43 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> This patch sorts the nodes of arch/arm/boot/dts/r7s9210-rza2mevb.dts.
>
> * Sort subnodes of root ("/") node alphabetically
> * Sort following top-level nodes alphabetically
> * Sort subnodes of pinctrl alphabetically
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Thanks for your patch!

> This patch is based on the devel branch of Simon Horman's renesas tree.

This looks good to me, but in the mean time renesas-devel has progressed.
Can you please respin?

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
