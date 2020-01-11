Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E88138395
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 21:51:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HyQWCg3uvY1CZQojLfDw6DYA31a4/aqbF8J4B6wBH6I=; b=lrL8pEP33d6KLr
	tivQofkqPmMeI2h4NCb0sZdKLFQkECDGfYpPtm4IrjhW7PpfiCTGC9srEKcBCgmVZ6C9ASqjR+/Ju
	5spetqfK+qiiRXX+JoHailBHlOhlz7eIkI/IpxUtEVKpgDDc9ZLWcHhfgXaIZryHdrMY3D3swHFVB
	3u4qXzlu0BsnWWxiMR62Fur9iMoLs4FYenRzdgtAx2jNfLxRasypaHufde5ajzxUsyITwBGj1UPKX
	9mlSHJ2NccSvNEJSqICxqTkfIVubggXt7E/rroT/8HfMxG2WwYXfHJCclTfPKVm39ZRKFNH0zE+U4
	1D8BGGeF4FUYJ8i9CopQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqNip-0004jw-1p; Sat, 11 Jan 2020 20:51:03 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqNif-0004ih-6v; Sat, 11 Jan 2020 20:50:54 +0000
Received: by mail-ed1-x544.google.com with SMTP id v28so4998127edw.12;
 Sat, 11 Jan 2020 12:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z1allRQVVIcRb3GsPlExTsGVhorTeSQyvjX+yCE+qh8=;
 b=hJUBjxnQ14Mkg+v0KZ6c/t3nrYWqpGIc4sggWABjJRnGUyE8mJZqSJlWevR+X2pXLM
 LQSpClltwxH4ooVGw4tHTB7JHmbb1UXYc905RnfaGPl+4J7rl3o46naKcJtWdi3V6V56
 /TMMbfEbpBJ01C3LFZPaUGan+dJaiT4c8Pxd94x0Ut8sbRA97vGiBJNbgq7xGxIxQnhp
 Up1nQRDJ9JeBKdnQU4B6yRXhH6N57MPmMCHXeoyAEHpZzEykyCldLD1aQkir+dw1Pn+F
 FBUrNk6ERO1+Vf5Gx12umJkOkHkqBzc16yNhfNr7QJmEIdJfFGeCXpUUCgI4JdMUqm87
 Rpvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z1allRQVVIcRb3GsPlExTsGVhorTeSQyvjX+yCE+qh8=;
 b=BPWewb2wXkQ2hSBrEss/1kyJh3jWP5KLwTvMmi/bPoOHJ13/ESou+5qOCk+5tjGUD2
 ozD+zglYNmzRIu3r8Nu8yTfhPEhA+Q7GL1/E281hpTaW1UljdE1fZqvIYhmxdP7A6FO4
 CP2LViVEEsmfFQDuNqmN+TGjd/4ngbAVXhOHzFZmn3D1fCE7yZn3fYpIORECGR0c87Fz
 NXvNEamkqOEfoNY2jxSdlYOzA6MlZf8TFb1amZkrymSIVKVfaO/U+XE27PhWgk5h/jA3
 ArKzQNvF96Gh95FKCo/D35fvL8ZgCAGXjFtwwTe38UFLuzATgTyva2HMxzFr6g3IROPf
 puCA==
X-Gm-Message-State: APjAAAWczVbRBIf4rBxgOdH6jySKa4sPRMvPKWotTxMu2sc/VseVltIG
 Q7RuTRRu1JxwY4lg2btITwH0oSqAsdSHs2n5IYQ=
X-Google-Smtp-Source: APXvYqwtaXUZxukv72KXhDvEgYsMrVJcbOLsej/ezPWjeRTXXD9cuqhLaJNWOoMJYBnJuHEu/7anl+4YWFW8qwXN598=
X-Received: by 2002:a17:906:27cb:: with SMTP id
 k11mr9466692ejc.301.1578775846889; 
 Sat, 11 Jan 2020 12:50:46 -0800 (PST)
MIME-Version: 1.0
References: <1578634957-54826-1-git-send-email-hanjie.lin@amlogic.com>
 <1578634957-54826-3-git-send-email-hanjie.lin@amlogic.com>
In-Reply-To: <1578634957-54826-3-git-send-email-hanjie.lin@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 11 Jan 2020 21:50:35 +0100
Message-ID: <CAFBinCCZSBWdKQwmcvponuUu_aiTnDCyRiPqKDgqfNkJQoq06w@mail.gmail.com>
Subject: Re: [PATCH v5 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family
 DWC3 Glue Bindings
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_125053_255508_B6B1EEC1 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjie,

On Fri, Jan 10, 2020 at 6:43 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
[...]
> @@ -37,6 +43,11 @@ properties:
>
>    clocks:
>      minItems: 1
> +    maxItems: 4
the driver parses one clock for G12A/G12B/SM1 and three clocks for A1
if there is a fourth clock: do we need to manage it in the driver?
(note: dt-bindings always represent the hardware, so if there's a
fourth clock which the driver doesn't need then it's perfectly valid
to describe it here. a comment which clock this is helps in the
code-review process)

> +  clock-names:
> +    minItems: 1
> +    maxItems: 4
I let Rob comment on this, personally I prefer naming the clocks explicitly
also I think clock-names has to be a mandatory property for A1 (see
Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
for an example which makes properties mandatory depending on the
compatible string)


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
