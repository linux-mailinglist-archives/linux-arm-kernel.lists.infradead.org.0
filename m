Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B139C5F4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 21:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4zi6E3Ya/hJRgoO4BPol8eVpg9a6fB146sjl83HC+k=; b=H0OlU7LkGzUDNY
	1g4rowKVATuWWwnhY5G81pGN73QXk5UXcYCAkuTTuqAZloRBFLSbVuYjAs/jJnVYSTrjhyWuWqhJS
	2pUZ33iOAFL+4pc1wxjxQK98HfsFvc+wXNPXrN6Zn4hvEfYrG55hvAmvVOnhhz1BkRUhGho1e2UOA
	B+gCL54FhyMaC9mwpHhKacXF+LyhlLME4416MZpOpdjgvJYkcvgGcMIi9qyKxTVONY0JNzMw7EsZH
	c838jyR9w1GyBGSbjeDWaf9OQLxy6sTzYuzbyWDRUMo76FmKXZnZAP5diOpEPvI2tUl5l5g6ACkDU
	nmmex0ErUnEF2aDqoIoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1yYG-0006hP-4f; Sun, 25 Aug 2019 19:51:48 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1yY2-0006fZ-L7; Sun, 25 Aug 2019 19:51:35 +0000
Received: by mail-oi1-x244.google.com with SMTP id a127so10629308oii.2;
 Sun, 25 Aug 2019 12:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hjng6vlLFgbv9Pq9MqHuljD4Do50I8hCQZSgXlEUD+s=;
 b=JrDdoARW3RK4az1cCf/czevGVpc2XlfXp8QUxGdhWyb3hVQORUWD8P3xDDMIDpy3AE
 3KAkLF5yPDxXJXfDCVqf7kuHgDdCRIqIGVn2h2f+jLlHQSQTp64ULV3JHXm5RuQhHD9B
 OCrtDQ8dqbF+NUrvZpRPclVYhN2us1pbugiPBNfbyc30P4xgzUvEY8dUsF+l4zc3tmgT
 q0UmeQYGc3WHoysYNlUofnqCWkg8/k0LPwPDN8+Qz9igplv2xKYrkqK16H+T7IiWs/qO
 zxn+EdozSlAEbQyfaux5mw/6XF2EmAqQGz+TvFuEPhDBsdbr1lJ2EgsLmr2kin//JpJL
 ZSxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hjng6vlLFgbv9Pq9MqHuljD4Do50I8hCQZSgXlEUD+s=;
 b=KHUUJbxD6cF6kV6xvJbFk3e0vFBgyQa1Gjr7jyPfK8BORaA9JK4MB6bhsK6Ii3Vbee
 Ymb+tsjV+edj18GznYlLn13Iq+fg352xSCEfqEeyGTWsucDvcPZqNvLXnO18+Eg5zw0M
 X1B0rR1AgHoencYGCwTM2fWnvjcKQlLT30Zgj3pIkKhw5VFX71huuEUUWFhUxuAZ54kC
 /qsXlwggWfGvzaxVIoQkoUahOrRDPRv1v3WsVWcO0d7lQh2x1vH3WkpxQCxcV9fkqXwm
 G/wiHRphSZuNzntODxmeKgrH8rnxmhybKQx6FSX9EHk+FDBJYN31FkMJiP1N9dDAS9s9
 ZTFw==
X-Gm-Message-State: APjAAAVm/C3FhfmNATntrfOypsYRKZ/qXc1TxOS5Zc3LAIkfIVTvixTs
 VRj5qJ/15byjei7xwHeKHbgirPbcpFCDdbuGw40=
X-Google-Smtp-Source: APXvYqytfpz4w1IVT5MQr4MnHby/LbGVf5kKD4Rnq9rK/D7rVL1EJG62FQ5lDoR6ZfEKArVTzVXqRM0d613Y4v6IXcc=
X-Received: by 2002:a05:6808:5cf:: with SMTP id
 d15mr10416816oij.140.1566762693708; 
 Sun, 25 Aug 2019 12:51:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190823081427.17228-1-narmstrong@baylibre.com>
 <20190823081427.17228-3-narmstrong@baylibre.com>
In-Reply-To: <20190823081427.17228-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 25 Aug 2019 21:51:22 +0200
Message-ID: <CAFBinCBLVDVWPbDZ+_cPTbJNCavvzJH4A6U8D9XWVSR-j3fzFQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] amlogic: arm: add Amlogic SM1 based Khadas VIM3
 variant bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_125134_720696_CF41373A 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

the subject should be: dt-bindings: arm: amlogic: ...

On Fri, Aug 23, 2019 at 10:15 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The Khadas VIM3 is also available with the Pin-to-pin compatible
> Amlogic SM1 SoC in the S905D3 variant package.
>
> Change the description to match the S905X3/D3/Y3 variants like the G12A
> description, and add the vim3 compatible.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index b48ea1e4913a..2751dd778ce0 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -150,9 +150,10 @@ properties:
>            - const: amlogic,s922x
>            - const: amlogic,g12b
>
> -      - description: Boards with the Amlogic Meson SM1 S905X3 SoC
> +      - description: Boards with the Amlogic Meson SM1 S905X3/D3/Y3 SoC
>          items:
>            - enum:
>                - seirobotics,sei610
> +              - khadas,vim3
>            - const: amlogic,sm1
on the GXL we differentiate between S905X and S905D
do we need to differentiate S905X3 from S905D3 (for example)?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
