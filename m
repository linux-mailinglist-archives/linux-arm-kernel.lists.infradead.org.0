Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1437D9C05C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 23:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgE/zx4R4tL483MD+KYk1HiI1mG/XE2Q/IGCpQuicQs=; b=JwIHY0CtXfNk5B
	0kKNzEKkVG8AxFaOIJ5uArvdNLz4Y+XaDTvWOL5SZTWLmt7ORCVaJJw/2JULAXYh16iBqkpNNxGaJ
	B7j8RQbrXCsFS8An2SwSgmSe+vZh+DWdQHT42FEwAhS8adzFm3nEmvM3O5rYwdQd+FhTCmg39AgyG
	ROe5ts7PnCQS0XykGc2MHRDQbryeEQAD0s9toq2lMVgS1CNmuDkkArHEf4za3+X22hHaYSrAWaWXM
	Pk8MniDhyLs6K/AU28eDHnxv86ArO83Sbjy9y7vW5lAJW/TFUJp691KLX4EkyuV5mnSMnODWDLCgV
	2NKQhhLDypB25CQ4yVvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1dRY-0000lC-Qv; Sat, 24 Aug 2019 21:19:28 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1dQM-0000Wq-AT; Sat, 24 Aug 2019 21:18:15 +0000
Received: by mail-ot1-x343.google.com with SMTP id 100so1109808otn.2;
 Sat, 24 Aug 2019 14:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fC0UloVJVd7/NU/uEaCTd2LLUTCDIdGGkP7UNozA/vg=;
 b=kGmCMbR7sxG2Q8arZgcNRhhxUCcaNY2s4M5AYWXatkqZrkrTiw/az6vmKkeQ+y9dEc
 v/tuz6wuTkTI+rnsAVPp40XfYO2EoxITAIk1/RQOMwzzCZGZD/2BHWKJxT8XClRRv/xK
 ZTOEXs62AfMNAwgwqtj2J57M+qDI1UHhG4F+4rTJDFWLkOf/8DAj9PCcuxoVKAYCXgG0
 PY/sPTQrqZbxlgZ6vUvOlcRkZcYcbvnEVu+pC+dgYb71mZ5gNgMbJtsMCquMhVKBtRE5
 4gdy1e76nRnZBVcr8neWFQ3hJ8x4zUEq36HSDhNvg07d4h00Jx5DyUsC0mVfkfTEt393
 c1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fC0UloVJVd7/NU/uEaCTd2LLUTCDIdGGkP7UNozA/vg=;
 b=dxD/cxbvRyhT7Mf6ZlRiLm1AQtnrj58WFExyGSjH9G4q/WQgs+jssUe/0kd1a9wrPM
 9HZi+NKfnWBqlaDWD0Fphqr3S6Z/moLxLLNDmSK8HKins+Fk61gGdXG6tqyRm+mVhapZ
 6RIBDV4763WU6AgjPw0VLP+DAUo1shjIMrcTqqHvI6LoVd9orJRi4GNmmIuz87Clatno
 ++x06L4MHArgejJ7GCkrxTkh/sL5wzLCiKL9bhb4s+UW5a3zdkdzZ4vj29LXsK/fV2hM
 XUepAKQv289K70FVH1d/9HSlrkXgZZV9lWZcT4GWPGJGZWseHtxh8r7qNWHa2yjoC7gM
 EQVQ==
X-Gm-Message-State: APjAAAW9+HXb9sW/9yEvKshZXycjrya7Xytzj26hhcbpQi71Q9mkTCkl
 NMcdRsF5Qb+JuOlLMB1wTqk6paMA3cDrluZqHyE=
X-Google-Smtp-Source: APXvYqyc9UMrt0FZO+Czm5ynmHfnj9YArOYB/nd6DV6XFFx7to8SEBFvn4jOe+dwqxaAVKBg8HIXBX6GFOg3lVZAIRY=
X-Received: by 2002:a9d:7b44:: with SMTP id f4mr895020oto.42.1566681492890;
 Sat, 24 Aug 2019 14:18:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190824184912.795-1-linux.amoon@gmail.com>
In-Reply-To: <20190824184912.795-1-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 24 Aug 2019 23:18:01 +0200
Message-ID: <CAFBinCCkEE8==-Sqqj_=Ofnx7_H-970dETwEmEPohs74806ZMw@mail.gmail.com>
Subject: Re: [PATCHv4 0/3] Odroid c2 usb fixs
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_141814_391556_DDC6A57C 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

thank you for the patches

On Sat, Aug 24, 2019 at 8:49 PM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> Anand Moon (3):
>   arm64: dts: meson: odroid-c2: p5v0 is the main 5V power input
>   arm64: dts: meson: odroid-c2: Add missing linking regulator to usb bus
>   arm64: dts: meson: odroid-c2: Disable usb_otg bus to avoid power
>     failed warning
this whole series is:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
