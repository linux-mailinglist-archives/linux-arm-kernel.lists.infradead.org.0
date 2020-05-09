Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117EB1CC3B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 20:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGIgI3MWWs7Tti0MQ2FeN/AjKjSkFueYV1jAjkhfA/A=; b=tvdC2/QYuUbMOh
	CMVSWItB6FEoxbDgMJRgKwTMFtPH74sgT+YJblBB6+O5xteBhAvLw/9EN1+VABWqDhv4XLiImhcEi
	svoljta/CBnkNqGo3UCJ/Rq8DOl/mhNOEs+YL6cMv5qcFDNLuDdSpVMO4jcrGrONXFFCo8oSHRVWM
	OojK5RpLOT/Zf1Ln7LBaAvz8NFqbvKoOONJNF7bNfsOmsNM0vAgGniOcv48T0NrgrBw/JgSKOVlbl
	lVQmkaRs4rh+mv8YyEfZDpNtWqA/VAfA132/KzQ0exFBTqlPueQswDdeC2Fii7auO6IIx7KayiN1x
	qUxsiWruQYprNZLyOKcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUJw-0002wM-CA; Sat, 09 May 2020 18:35:32 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUJp-0002vB-Pr
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 18:35:27 +0000
Received: by mail-ed1-x543.google.com with SMTP id z19so2292379edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 May 2020 11:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=utUg+njPE1R78ibsKG63T1N43ZIUmqNveGR52jnUI1c=;
 b=n0UrUCUiYUufwg68km1Zk/XTBqLkxN7YNzPhw7YD5CC9FSMdO/4Me0UnvTh4DVY22l
 975HXTVf/njdTs4t4gn4B+3wBxpLzXQa5xLBEwERg74NC/R8Ob8nWqKnM8zlGRrkKG1l
 rjzze9yNW0ZPmY6B0ehS7oiqxfOeUPBYNx0QerSHqciFL/fBYmCOKmvZqcjZfgMDrkE0
 BksKzEKmd1yAnQ/YF4OLzEJuEH2ABG8agdVfG1M++BiAHOYMLNOfCfFsXpOIQI3vNrGf
 LEpLgOUPnREPEY3zS4aCLrwjwewCyV5a7NVxGMdl0CU/oOUWJd8MA99a0vVlPFJLtNUy
 wb+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=utUg+njPE1R78ibsKG63T1N43ZIUmqNveGR52jnUI1c=;
 b=AggJi9bcHTOMda+qqs3jaMFBXt254fiuQthLMyfd6sy6+ldOXBuorPxmD5+RrRqfVU
 4Z1HTLVEUNk/OtQj4Gc2tpUu3ZN9Ctq+talrkTWhQ4HBhZMyjVZw8Ohj1d67bxW/Tr8/
 +arNlJyG+6/MyaoCBcEk6fgmbYNjL5YpSsmjAfWQunzmHeLV3Dw93SYM8grwHULpPc9U
 t4NcjYbOCt6/Mk1jlj7XV+QwcLhDZFee2CDXa4T0KqCu8DdXVLO59Hy4ozCbUg//ujQF
 9kH8eF6WMw7nzfLMz5seYQKikusnc+bfYB7/F6uDxhCggy6mg6/sK/0tS/dOmWbVIINW
 kEzA==
X-Gm-Message-State: AGi0PuYTXhg8elh8IgYiiHDIiZ57wnS8EXkL7lEcAX3QauyTzP5aPX1k
 9OsjhO7UzEJg+3xQ38qTByrXqNqUxl4ZUOQHqrA=
X-Google-Smtp-Source: APiQypKcDsrlf52ien88Tvw4J/n6MWoqk4eQg25WolLAm5L6tIYO9yQtvjjLKsoe0bV542rP9Hm42Tfch5r9JTLIZdY=
X-Received: by 2002:a05:6402:1a46:: with SMTP id
 bf6mr7000136edb.44.1589049323195; 
 Sat, 09 May 2020 11:35:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200509103956.26038-3-hui.song_1@nxp.com>
 <20200509103956.26038-2-hui.song_1@nxp.com>
 <20200509153315.GR208718@lunn.ch>
 <20200509172724.GG1551@shell.armlinux.org.uk>
 <CABHD4K_tPkCherpY5zUtxV1wcKc=7aj3ayr9yxG-sLFZeMf3Dw@mail.gmail.com>
 <20200509181845.GH1551@shell.armlinux.org.uk>
 <20200509182647.GI1551@shell.armlinux.org.uk>
In-Reply-To: <20200509182647.GI1551@shell.armlinux.org.uk>
From: Amit Tomer <amittomer25@gmail.com>
Date: Sun, 10 May 2020 00:04:46 +0530
Message-ID: <CABHD4K8jwLxcfLeeiAQpsEVfafV5DutFOWukj2WJaKKU0gPjUw@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] armv8: gpio: add gpio feature
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_113525_864577_226A32C7 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Hui Song <hui.song_1@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, jiafei.pan@nxp.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Oh, and... u-boot@linux.nxdi.nxp.com bounces because that domain is
> not resolvable - I guess that is internal to NXP, and this patch
> should have remained within NXP and not been posted publically.

 Yeah, realized it just after sending my reply. It is for internal NXP list.
 Had it been for open source U-boot, Author would have chosen
 "u-boot@lists.denx.de" ?

But, I still believe Author did it unknowingly and we all should be
easy on him/her.

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
