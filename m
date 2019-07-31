Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E7A7C941
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MN4VeUy5cJClz/WdaOt/YXwxz2F4kIJR/XEAcNWdZg=; b=DB538aObzFnq70
	EyTAYYIdp1AKrYiSMm8cGn4Vr1DzUMrXsuLZQAKn0+lAKFCWnjtG/yEBSckcd9PcNpKt1nzZnmHb4
	gg4G/HbYNg4nD17IIhPCgwSGXWm59oZtH35BG4vUh3uSiAUAH4ZQjcxDcnuNY2FplOnbldBlHp+0V
	Xq5arhdyDVF6sxKsUi5FQ3SuiB/U69NtTzzkGD8h+qKtbuVQjeoJS4QajX/53BCdKnWifT84LsPXe
	yVvX+pEcQfwoYr4KGtLgpQf7dPvrCbHop3p9NIvNBvmXyRcoYYtalH1kv5HPkavW8Vd1FYStUi+zT
	JKFjusZtS6OqEe5FKqWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrsm-0005xu-8Q; Wed, 31 Jul 2019 16:55:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrsd-0005wd-DO; Wed, 31 Jul 2019 16:55:12 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBC46208E4;
 Wed, 31 Jul 2019 16:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564592111;
 bh=JDEMB0zREMLmLrMHdC+useYBlGljcUC+uo1OriFFjzw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cAImF8l+MTX5ADdOiJKH/QneD3b8zhh4NS+aA1NAyHVfIxsAaqLYpsv7WWoB0TtwC
 2c+ItTFSXRfvJm8NLwOGBwC1tdL2l53EDDw8O2zAvqikMvMFvGEZ4ep8NiaBCipCVO
 J/gR1tv6gsEb3B4cn2OBbd6Mpyprif+nWU17dCsY=
Received: by mail-qk1-f179.google.com with SMTP id m14so24080097qka.10;
 Wed, 31 Jul 2019 09:55:10 -0700 (PDT)
X-Gm-Message-State: APjAAAUXsBgaIpHdx9QEN1BgOXBqqzIQE7/EjEpfBaIjzV2hLCQFqM82
 c/NkNJ1ZGofB+cp1P5S4Fo3HQORHmNQaB6P53A==
X-Google-Smtp-Source: APXvYqyL4gjIwP3FgCPMgYyaj67zGUm/qznjmZ2P2Af+LHVuDZ8XmiPXVioHVdq5jApCgeXPOXaATEbkx/ux3T/Eogs=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr83759357qke.223.1564592110116; 
 Wed, 31 Jul 2019 09:55:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190731124000.22072-1-narmstrong@baylibre.com>
 <20190731124000.22072-3-narmstrong@baylibre.com>
In-Reply-To: <20190731124000.22072-3-narmstrong@baylibre.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 31 Jul 2019 10:54:58 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJh0VJpRQtjEv4B9Zhw4vYPbx8spJtoR0Pmx3Mier5gjg@mail.gmail.com>
Message-ID: <CAL_JsqJh0VJpRQtjEv4B9Zhw4vYPbx8spJtoR0Pmx3Mier5gjg@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: arm: amlogic: add bindings for G12B
 based S922X SoC
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_095511_468819_6E1F5B42 
X-CRM114-Status: GOOD (  10.92  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 6:40 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add a specific compatible for the Amlogic G12B family based S922X SoC
> to differentiate with the A311D SoC from the same family.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
