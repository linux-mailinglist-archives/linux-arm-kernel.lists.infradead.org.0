Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51627A3AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lGHOKSXF0fjcUT8Zd21YR635ffIQC3IxIwMZQrce7E=; b=b7IS0AHOHVevxw
	SHxmj7OQNr5iA1LhwxQTCriC+FZEShMIaSMam0ByaR6GCYmcgPlsnj6Ek4ySS+6w0cTEepBdXBiP/
	fplVu3LJPYg+PjDpwkgL3rXcndTz96ZhgZva8FB/YdgaTsdmAKDE7EKXQDR7Xe1KZwofdM6B4MXNA
	vju/oSN8SbubfD2D+RJHXinvZMCnaKyk6+c8WRQ3gVr0n6vyLf9oODP68Gwu4BjOEmTrmkfGcbuPM
	Z8SUQ8QwsjFvEr0/1fwmmrlyb7ZpGsTl6T8BpGacX688bzpihJsw68b3IWmAlyz3KSYS59wH5YbdZ
	6cDDZrSTRmY6R/M5GjCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsO8s-0001MV-JG; Tue, 30 Jul 2019 09:09:59 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsO8e-0001M9-Sb
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:09:46 +0000
Received: by mail-wm1-f68.google.com with SMTP id v15so56400767wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:09:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j24m8YwIkgZoAdisYhIZZGOM4mMaO5nu7o1IplZhp0U=;
 b=YyOCQHn1PA/UDgYd+2WtuyPXRq4GT4ayyEai9nJkH3NACazqNEuSQa2MzkdlEWJDmv
 4ddzUNlANd5m7t+OiToZ4bs5chAZozGyH4sbBcZncM/SYIT5AU53r+tR1vqGZK9df0NH
 q0tWpqpq+wYLJ3sOVV+xKWcGClvGYou2VrNYLM9xiXZ6pQGpYz74LUhtUkcWcBU1P85z
 MsqrqApITNXENaJ0YAj3yisrzfCCE2eLhLyGGBFT7JFHqkuJk9QmKSJ4RCDr0MGQdgye
 FdH9m9JEo8wqlriJigY2KPm2Lkp0rgwvwz8BEZ7aq3Lq0BAHudfwpR5CM3tKom1CXh9p
 vLzg==
X-Gm-Message-State: APjAAAWhEmRJaWGbV0C0ZpAMdy/jeM3crKv4f8TJspu/uFJRdmGnyHT0
 4QxzUW6HPoqHC/iZ6FpEVfRCC2rrCNjfxfbXgP8=
X-Google-Smtp-Source: APXvYqySBUHLqBSU7N6XxWulVRUOlueaDCODh+7IELqk6wpTCnt5wfRsHvBVYsa2lVF720QG2sKFJ9HzIyMa6NIOZ0I=
X-Received: by 2002:a1c:1f4e:: with SMTP id
 f75mr101586919wmf.137.1564477781703; 
 Tue, 30 Jul 2019 02:09:41 -0700 (PDT)
MIME-Version: 1.0
References: <1563904928-2797-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563904928-2797-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:09:29 +0200
Message-ID: <CAMuHMdXQwRm1H3metXwGZdtFK13qhNuOLZem5hZmoHDtcm2rqA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7796-salvator-x: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_020944_934904_F9326315 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
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

On Tue, Jul 23, 2019 at 8:02 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
