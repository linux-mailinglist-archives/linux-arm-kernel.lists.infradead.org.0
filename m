Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B950E834E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 17:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Axx5ed1Br1L2JFKjlcHklOpYoaKf+TTLNVvv9Lsoujw=; b=ID38riOkKNc5hR
	92kg0pvt8xm+i/xawHMEUelt5y1wdRRQ5oWGd+qo39tvOSyL+wUdO6X5WC/gZMwPE1MRv+gzK/EVv
	oKq+rgoQiVOjqDgxsLysP1jiL4S2ueXyhUD46P+Haguo78eS3YjTUmegv7NAsYPwtf+P/8h0bjZDx
	/uVLhHwiEzErucTR3eZKe42uRWhB4rYeNAb44z15JM3BhvvSHEGbsdp+WsKaKXZLyCUTc1JSeLGBR
	AjQNv7VxqqrOqbCdXUHfwtEMlS/NHAp79zKELRcViLpVVrK087BxxAygURXnttuLXN5nV6jbBrkHv
	Z5MxAviu5JqXuugjkd1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv1C4-0004OK-AB; Tue, 06 Aug 2019 15:16:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv1Bu-0004Mm-1a; Tue, 06 Aug 2019 15:15:59 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97FC820717;
 Tue,  6 Aug 2019 15:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565104557;
 bh=la0HnOemoXK5fpvWjp+yCiuvCkWWSLx12p8REZ1hLrc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cScU+ROGIiEoPjPJtTRdXG1cbQsMMpzEBSty6kfgERiB6umRY2L+C2ht5GwKKeCdJ
 nf0igOibxERc7xRV173c1Dp8A004bt+yeTKLrOFqRSGcUO70GxzHw5vhMW517vqGh3
 exHqFJOsZ4QKxPe/HxRcIXgWmdcw20oZH+8I7bEQ=
Received: by mail-qk1-f174.google.com with SMTP id w190so63143573qkc.6;
 Tue, 06 Aug 2019 08:15:57 -0700 (PDT)
X-Gm-Message-State: APjAAAXUN2AcXZNq3o0WGfr4CeiyV0xwbir+DEOIxyFNynqYQ5y3VYk/
 FswC6xz8OQPzSDm4+uwRwZiri7jtUKWZ9Q6cPg==
X-Google-Smtp-Source: APXvYqwLPJFWVImQ45weKYeyNJR2eA5NTRfK2u/H55qjIL0tD0cxfdGp8MnhGn/VAZvOKrsEobtM9NSgRSK3rhzUNug=
X-Received: by 2002:a37:a010:: with SMTP id j16mr3781144qke.152.1565104556857; 
 Tue, 06 Aug 2019 08:15:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190806125041.16105-1-narmstrong@baylibre.com>
 <20190806125041.16105-3-narmstrong@baylibre.com>
In-Reply-To: <20190806125041.16105-3-narmstrong@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 6 Aug 2019 09:15:45 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKnzNMittFbvmz+ELu9UVMkmPmFoVT8ydWOYtCST+MwVA@mail.gmail.com>
Message-ID: <CAL_JsqKnzNMittFbvmz+ELu9UVMkmPmFoVT8ydWOYtCST+MwVA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: net: meson-dwmac: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_081558_107937_F0009017 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 6:50 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Synopsys DWMAC Glue for Amlogic SoCs over to a YAML schemas.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../bindings/net/amlogic,meson-dwmac.yaml     | 113 ++++++++++++++++++
>  .../devicetree/bindings/net/meson-dwmac.txt   |  71 -----------
>  .../devicetree/bindings/net/snps,dwmac.yaml   |   5 +
>  3 files changed, 118 insertions(+), 71 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/amlogic,meson-dwmac.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/meson-dwmac.txt

I don't love the compatible schema with 'additionalItems: true' and
contains, but I guess it is what it is. I'm hopeful schemas help limit
how many variations we end up with.

Reviewed-by: Rob Herring <robh@kernel.org>

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
