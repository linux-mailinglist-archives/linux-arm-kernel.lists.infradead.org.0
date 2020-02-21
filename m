Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E70168341
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8xORRESqa6yxs0jXz/LKoITdePDlkbiOe4JGbvXa8Y=; b=FTHZwhVfIW5F1n
	69Bc0SYUuaYHkMMKL3UUBnjxUEK1MxxbAsL9E/Ss2wBopZQev3P7RY0Z0JzpiGjsdIzmutic3Yepy
	H3sJ6n0h/HvG2k725asMflOWOWf9gKmXpADhtemrgwCW1VOoGul038UaTdlk6kd9GYdb6TZ3RsXPi
	3HRuOrfIOupUk9nssVckBRQUiDhpnoAnM5TZZRDDYajvOmykxK24/GRm9Dup/G/m8JQZJvR3W/A+l
	Y06+jx+07t5hYWnQY82IKkO5h2INByEl4hforZ1VXaFgiv3PozeKplrrtwYBl3itj7M5+YsBPle20
	xK2d13ECedALmxsg0hgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5B8s-0003Im-4j; Fri, 21 Feb 2020 16:27:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5B8j-0003II-A4
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:26:58 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70E0E24653
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 16:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582302416;
 bh=t1V43wNRmlXXbwHM5UCwthYHCaU8uRTSqTXicUUb1OA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nDNTY3NxX7sVLdRIdt3YPByd9Kv7CBWyk5mK1+pILwo8B/tIagUKlZB2GyeE65jg7
 qKK/qvZs6rVBVnfHKWFiaAWtbzhYCyxkcY6pzo6HGUKrpiDlaQQPJNCo6V4TrOiA7P
 fzA4sFEipaf1po4oM4UyDnGBcLq3/XPdySgDs+9Y=
Received: by mail-qt1-f181.google.com with SMTP id w47so1668276qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 08:26:56 -0800 (PST)
X-Gm-Message-State: APjAAAUABxgscQ64DwAzjgbpyD/JJRp7QZepql9/yxv1qvvcrzHc/yok
 btE3RIeOIsL8rGHr8sySyqNWaqZJPcjko4Vuag==
X-Google-Smtp-Source: APXvYqy3IJCfMKCYhwtA6Nh648QtdiZGkAdnsHguH4t6HAx9AAKqow0Va6pQMhbNm4jzkgv6vsm3zB5p0PonBGVLLc4=
X-Received: by 2002:ac8:1415:: with SMTP id k21mr33281075qtj.300.1582302415519; 
 Fri, 21 Feb 2020 08:26:55 -0800 (PST)
MIME-Version: 1.0
References: <cover.1582300927.git.robin.murphy@arm.com>
 <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582300927.git.robin.murphy@arm.com>
In-Reply-To: <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582300927.git.robin.murphy@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 21 Feb 2020 10:26:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKgz7N=nsA=TgJx=G9Zad77s39gyd3fwJV71-hdqokQpg@mail.gmail.com>
Message-ID: <CAL_JsqKgz7N=nsA=TgJx=G9Zad77s39gyd3fwJV71-hdqokQpg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_082657_375913_C96AEAA5 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:05 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Add new PMU definitions to correspond with the CPU bindings.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/pmu.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
> index 52ae094ce330..cc52195d0e9e 100644
> --- a/Documentation/devicetree/bindings/arm/pmu.yaml
> +++ b/Documentation/devicetree/bindings/arm/pmu.yaml
> @@ -21,11 +21,20 @@ properties:
>        - enum:
>            - apm,potenza-pmu
>            - arm,armv8-pmuv3
> +          - arm,neoverse-n1-pmu
> +          - arm,neoverse-e1-pmu

We've managed to do some interesting sorting here. Oh well.

I'll take patches 1 and 2.

> +          - arm,cortex-a77-pmu
> +          - arm,cortex-a76-pmu
> +          - arm,cortex-a75-pmu
>            - arm,cortex-a73-pmu
>            - arm,cortex-a72-pmu
> +          - arm,cortex-a65-pmu
>            - arm,cortex-a57-pmu
> +          - arm,cortex-a55-pmu
>            - arm,cortex-a53-pmu
>            - arm,cortex-a35-pmu
> +          - arm,cortex-a34-pmu
> +          - arm,cortex-a32-pmu
>            - arm,cortex-a17-pmu
>            - arm,cortex-a15-pmu
>            - arm,cortex-a12-pmu
> --
> 2.23.0.dirty
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
