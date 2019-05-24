Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E01E29F47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 21:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/ZUHdy7Hk98lJDgiGSQcF5ygQe1YIapbERnTdzPps4=; b=sk0+H4qHI9BZ3U
	7jozRMswKPI2MJCj+rVayKF+TZjTnfo3oW/9rJu+NYCao9zgIsZvvQZMbYY67TwX+Z9Ypl1lEbOmX
	Wj9f7OK2oedjTS7mQPnsfshI47DI0vV7gtEtW4hw8tFvxFAOsVatb1d9gj1j1I654sPHKq/vj05AZ
	R4jCAugPpHhFdEsZ3Btz/Syuq9m11cm3AuFX9E5GGcHD+l+DtQ0xCv2rx8McdRu5rxdx6R6ggXBFi
	MSDWjf1nEsEbLKe5OWsSdEjcH/yIu7lxclCCVvSPkjjcVSfohRG6cwH+ZeqBxNTvNcWS6BZRi4pBC
	8D+Ia4ZN2Ru1C86eLdEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUG5n-0008Ui-6K; Fri, 24 May 2019 19:43:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUG5e-0008Tx-42
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 19:42:56 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B0D62133D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558726973;
 bh=P4F0yOxDnt7KgIgixW6cWq/d7ndhyoPDVMiTUzFfBsA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SFwIDF4Aw3Jd2KfBBerNI895AiBx9F1rWeur2SqXk3w1aiv7VZv6/fqCeVLf/CSxf
 kmvVoELfJgGout+uePXkYNs86jDeyaz4q6NZQp3NbUcDYCsM5NaPrDDn+kRM2P+meO
 3qzh4XVC8UGpU65Jp9qWaIUBYz9HOcjkmnWruQRY=
Received: by mail-qk1-f169.google.com with SMTP id a132so9185330qkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 12:42:53 -0700 (PDT)
X-Gm-Message-State: APjAAAV5+Ip0A6/VB5LfvOzPjyVS8gypa0Xrz/s94Jvv0OrHy9L7lOFL
 5Vnw2GFC+N6D+vZ70qK+juMl3n3K9KJ1iTFRCA==
X-Google-Smtp-Source: APXvYqxP2ozbNjdQZTI8z07dp169gKEcH3wTgMaVgZJd+xk2XZr48eTlRy8nhRjK7gAAZkNfMHlatuL1g+sO3Rt6VYs=
X-Received: by 2002:aed:3f5b:: with SMTP id q27mr86664137qtf.143.1558726972684; 
 Fri, 24 May 2019 12:42:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
 <20190524162651.28189-6-ard.biesheuvel@linaro.org>
In-Reply-To: <20190524162651.28189-6-ard.biesheuvel@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Fri, 24 May 2019 14:42:41 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJZwRkq7ciOw101wyHCq1gbWBCZ-PKyLZajgRg_wLG0Vg@mail.gmail.com>
Message-ID: <CAL_JsqJZwRkq7ciOw101wyHCq1gbWBCZ-PKyLZajgRg_wLG0Vg@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] dt-bindings: add Atmel SHA204A I2C crypto processor
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_124255_006398_C372094E 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 11:27 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> Add a compatible string for the Atmel SHA204A I2C crypto processor.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
