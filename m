Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0581DE18D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctAdvJyTIWChwChunEz0SIFsPvJDehH/6QuGGK96S4M=; b=NFqi8rGt9heLVk
	0PMh71O68HqwVtAUUH3m1Vrpq0M/Ao8i7itjKvRBYYw7sQdCuItK4J7Tr/jmrPniqRkw0s2B8qSxX
	gGvuWsj9dQ1mLTtZXZ2wb/vm2tROmk40qI6n+bhgJAjgQpMP3rLfwi5gl5I9RfC1kVy8RiPoqRfeW
	P4D6ZOJhkWfDbiOaQW08/tasw4BA9jRUQeCdSFGmp0dE7SpfnRlLhyTcHqystzcEsaA7APHIBlfwQ
	IVvRMdJSCdxSuYYFOMGIE9ylt/F9iciO1eh5g4tzDrdBihOOQE164fAT7dJ6jnCu6pb0oWrkC8MGQ
	BNY9w4G3LdFXLg2luiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2jX-0000J9-5c; Fri, 22 May 2020 08:08:47 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2jN-0000I8-45
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 08:08:38 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mrggc-1jErZz3Fhc-00nhN3 for <linux-arm-kernel@lists.infradead.org>; Fri,
 22 May 2020 10:08:31 +0200
Received: by mail-qk1-f169.google.com with SMTP id y22so9950549qki.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 01:08:31 -0700 (PDT)
X-Gm-Message-State: AOAM533BhTXqtVppsrhwjy0FZU7ySIYZpKDcVw+os4qIAJn8rrnvpEhZ
 h/e12hUMSvyM59QncHMkarZl6TnX2yJhPY6t5lo=
X-Google-Smtp-Source: ABdhPJxvCN5ckqOsRHgJtAQbB9IOx9DfaplnfBWTHN4WldKZGpHGw1jQyX3CgSCcu6TNJ4bB5ueanJiINGKzx+D9eUA=
X-Received: by 2002:a37:434b:: with SMTP id q72mr14547426qka.352.1590134910369; 
 Fri, 22 May 2020 01:08:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200522160313.09cb2b7e@canb.auug.org.au>
In-Reply-To: <20200522160313.09cb2b7e@canb.auug.org.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 10:08:14 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1H43KuLbQ0mPNjSCoWbqT2P_kx93zsdYtQXv2nw2WdvQ@mail.gmail.com>
Message-ID: <CAK8P3a1H43KuLbQ0mPNjSCoWbqT2P_kx93zsdYtQXv2nw2WdvQ@mail.gmail.com>
Subject: Re: linux-next: manual merge of the devicetree tree with the arm-soc
 tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-Provags-ID: V03:K1:rfjxHqMOK0bf1no3nhcdFfm4pqY+D/VGXc4SZggFyLmgeKYfwVg
 mdF55mTH90lKmw0Fis/QOyyD9moHhN7zJOWuPeVB8Tu4B/ukTPIyRLzf58RTju07aSx0CQC
 UDrZcQJAscjaJ8+lwUh5jNRHJzalYNPIwweW+WloAkB2tclC7cEoJZn166utcR7FXemhSit
 nXDw4Gt36+sOlK54mcahg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Q3hLBZ/fr/Y=:4LSz/vRqwGvLBd10DM7TUM
 sWiVKv/L7mLn1CgYzyB6zYg4z73MV17A1H/5nXqAPrlnsw5rFYa7HzW9v2J03JwY3vRGkpiDn
 9WXdk/e3VN+jddXMlDLCdCvEDE0mGaFyhwtbeqMjmdt1/sCOSn4gUZ3DL2jR7b3Em2Rxa1yYC
 NNrk8CEaYu1ymXKofDzKFzdhIL9Z45aULs8DoIhhsbMS2aZ2CWG3wwY+JcQ95wO+y9bCmEK61
 ARCwOxIOoXzNZdkJQEf6d7F0east7oA3o353FMaGzqKv+uiKjUyXiilIzyIG7gtktQgP1Xvku
 A3Y7ZjScXl/oe0pk4Xlcjz3zy11NFiqVtG3Wb7hCh+ry+2L2nQHT5JI0qUg7ePAw3S3BhHafr
 Hd3HqCvLa1lMkipY1M8H6v+MpoVkcznzNCz8dw17hQfIolk+CDqAvM4u/bmt6vxo25764/4py
 60k0/gD5K58TqeqV238j1nKOHbj0SnAHgqR7/VoSymyIquMmCIToHe1E/O0u+6MND6ECTV6u7
 ZMBYm4Y6c7VxAX4okyvEJTywHX4Ixwz7yFt3iPhHQ926Hmw9ZkjIiDEA9aU6u6d/RcY9vT+ou
 0n8xT0ADtP6XwfhGtZNp0k4McMm32GoVtkmDHlWvzg7SHFc2xvWXqqI8sRjmIaiPXeStNTF1D
 +ZYQF0m78QmIkl/DZaMzPegiVyEqTARlS2hU6L7j6slxxlujcvskHCxzSkIcc3ZRcq5Rv9nTH
 G2bk0s7UHaffAixNwGLcDrnt/V9CpjtstmyTGG7lyCcomq92qi5YPhj2/WQYNmeXudb7LeJIJ
 21AmcRpcxFFwQjweuWgqjK44qAmIp5jH6bL/fqkrVRhO7lSB7k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_010837_459067_C7E413A4 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Rob Herring <robherring2@gmail.com>, Olof Johansson <olof@lixom.net>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 8:03 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> I fixed it up (see below) and can carry the fix as necessary. This
> is now fixed as far as linux-next is concerned, but any non trivial
> conflicts should be mentioned to your upstream maintainer when your tree
> is submitted for merging.  You may also want to consider cooperating
> with the maintainer of the conflicting tree to minimise any particularly
> complex conflicts.
>
> diff --cc Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> index 10a7f0752281,113f93b9ae55..000000000000
> --- a/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> +++ b/Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
> @@@ -51,9 -51,8 +51,9 @@@ properties
>         - description: LD20 SoC boards
>           items:
>             - enum:
> -             - socionext,uniphier-ld20-akebi96
> -             - socionext,uniphier-ld20-global
> -             - socionext,uniphier-ld20-ref
> ++              - socionext,uniphier-ld20-akebi96
> +               - socionext,uniphier-ld20-global
> +               - socionext,uniphier-ld20-ref
>             - const: socionext,uniphier-ld20
>         - description: PXs3 SoC boards
>           items:

Ok, thanks! I think can let Linus handle this in the merge window.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
