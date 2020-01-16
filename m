Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC05A13F5C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auVwm5wHpi1PgpGu0Xthz20v8w56sGFhwYjcD+g+BQc=; b=CrFN+m9chqk+WT
	ZhWqSajUKL+WUP9HYtvcxn3OZJHn24T7NwANMhPXdM2qTZnreUXifkjWhy0DvHKjbKcr65QBl7Bf/
	CCV8gykvSSvnJ0gSFjnREw0IatUNJ4MNhICCwIqZuG7iBiOWNhE79zppBcvzZnu61f9+9/hpIPXmz
	c2SGMrsIDydPGlVmxwyjBrHJsveXxcTJ7LoeApr5U/z2rjMHoSUNhmcjI4yVVMx+aF0utuxn0hNg8
	DhP2D6CwCC/bXKIDNgZAk6cM4PSPkkcpSJzWPK/6p6wQ+xEkJ4CxWeUceSUnrsQC94Texn0mFHAsz
	xOkK8V+OrASUyoupi30Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isALt-0008By-OI; Thu, 16 Jan 2020 18:58:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isALc-0008BI-7z
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:58:29 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B2342072E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 18:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579201107;
 bh=xQHaMmW5+OUanOpzT3F10iGg7VHntvomNgGXkgpU0/4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pW1ad/mr9lv4mjG0KEHhw15B0zLcU7PWxrVIHtozNIlIefsGUj+3aY68lA0al2hhz
 oWtE//Q1g1pAS6w0SBmCk64FIpGJjxgsQAswNY8yo9mAkJeDp4c/olz+VXoP3Kme05
 TC1GjKQjhsUfwbm5bhgzsLb7A7y6H9uLiQgNebmM=
Received: by mail-qk1-f177.google.com with SMTP id z14so20203726qkg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:58:27 -0800 (PST)
X-Gm-Message-State: APjAAAUtZXXefb2yrgcUP/HLJUXG/q5Xu/QkTL04iYlyiHuGNo1DrQQr
 fnV3xJL5R8ramUO96gwRceavezaxPtYYq78m4Q==
X-Google-Smtp-Source: APXvYqz7Jds+/Z0T2jKmrW9vc4gPA0ja7tR3DL5ZNZX7bEiGSGPBQq4mA+KAyBwwQDFM1HxCAgDqUAjb3yEtcnqqaag=
X-Received: by 2002:a05:620a:1eb:: with SMTP id
 x11mr35416430qkn.254.1579201106608; 
 Thu, 16 Jan 2020 10:58:26 -0800 (PST)
MIME-Version: 1.0
References: <1579200077-17496-1-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1579200077-17496-1-git-send-email-stefan.wahren@i2se.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 Jan 2020 12:58:15 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+51A_wKBzxwihkQd=eo_AEQ-wo4pK_GthO5b8WT=6oKw@mail.gmail.com>
Message-ID: <CAL_Jsq+51A_wKBzxwihkQd=eo_AEQ-wo4pK_GthO5b8WT=6oKw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: brcm,
 avs-ro-thermal: Fix binding check issues
To: Stefan Wahren <stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_105828_313944_B5EAEF50 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Will Deacon <will@kernel.org>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 12:42 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Drop the reg property since this only necessary for the parent and
> add the missing thermal-sensor-cells property description.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Fixes: 3d4849897691 ("dt-bindings: Add Broadcom AVS RO thermal")
> ---
>  .../devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml         | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Thanks for the quick fix.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
