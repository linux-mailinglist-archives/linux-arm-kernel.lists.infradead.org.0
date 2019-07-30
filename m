Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DCC7AB15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8yrrqFyQgjL2kUfbK2xcqZYMXJ/QYIn9KvkV6ctkLE=; b=Jat1GpGU/pObEE
	1bhGQ85jHv59CiQpyEHGqYFbEdJPCeF5pi9boy2fbspTkZYcdJ3QGACtrJG0X259yvYvDwAUtZdY+
	Sg1pgn4587oFusuX4Hdyv02ssIbvAKFYMsvbEE12vHUikD8wiT9uZgFvE/hJzwv2NAiimsHkA9OCC
	owrzzIdunLEWtHaID7n0wbsWA49BGHYYLZYLHYINyaLILBo4feoEzoDn/wCoCq/qhxrfIkauUqVMK
	E8GyLppH6LAUObWSvYrDeUVJ0OZR+n70RiMFdOQYiMQrnR467ScH/JygqLBWCQBqyr7TsGi8FfftO
	jk72GFV1ezkLzIZ6xM7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTAx-0006qZ-8u; Tue, 30 Jul 2019 14:32:27 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTAl-0006pn-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:32:16 +0000
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6UEVpSt017862
 for <linux-arm-kernel@lists.infradead.org>; Tue, 30 Jul 2019 23:31:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6UEVpSt017862
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564497112;
 bh=cZjjC9PP1LqBq8GA5ZyQIzvHoACB+pU5O0RNljsPvx4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bOM5KONwY8MAer5gZNRMU4a5mhn+IvHJSRmI1XKrTnxtZlb33QfMJO5Q3zUdoe6F6
 evlMhZ5o0qQkYZZ1WsGYyEILa24yLaAe3bPgirX8txBha5gry9G07ife/lR5JFoBl2
 H6Vr79ZQOs/hpx8zen/TERFjHkxPN1hCN/TLwORSd0qa/E2eWPH3uAfcl02Jqd0/E1
 m6ohCE+4NVCExFDL+qTPnSmDgy9MBgBEYQ62lE1lhiJfOFI903QKUi1Hagu4pbqpjq
 NIRV3yugeY+UkAsdiDGouY41enR+zrQiVXAZKyZOyrdYWZTSMckpSYsyWTEIEUYN5d
 9Ku/vD/lBDveA==
X-Nifty-SrcIP: [209.85.217.50]
Received: by mail-vs1-f50.google.com with SMTP id h28so43598005vsl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 07:31:52 -0700 (PDT)
X-Gm-Message-State: APjAAAVgVl/NsMpoCZB+oY4cupxyMcYVDftobz2XjsY2o1B4qXsRWCOn
 kzWnXauD9sZ0Q/CQG+KRVesUvPKOZP0x7OneMCs=
X-Google-Smtp-Source: APXvYqzzMjiYis6ulKJOaFvw4iNNbc6SgmW0tRSjbeem8L4rYZQnOGWU+h/jR5zfUjSp3CfUodjMbZzMk4in6+qlTt0=
X-Received: by 2002:a67:fc45:: with SMTP id p5mr11106683vsq.179.1564497111451; 
 Tue, 30 Jul 2019 07:31:51 -0700 (PDT)
MIME-Version: 1.0
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1564465410-9165-5-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1564465410-9165-5-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 30 Jul 2019 23:31:15 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQZNu_R_noC=P=oe_NVewAS-LeVhmuDNT=TQJApRCtgEw@mail.gmail.com>
Message-ID: <CAK7LNAQZNu_R_noC=P=oe_NVewAS-LeVhmuDNT=TQJApRCtgEw@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] pinctrl: uniphier: Add Pro5 PCIe pin-mux settings
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_073215_887937_EE146416 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 2:44 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Pro5 PCIe interface uses the following pins:
>     XPERST, XPEWAKE, XPECLKRQ
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
