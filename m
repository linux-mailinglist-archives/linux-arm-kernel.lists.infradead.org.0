Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDE51AB0B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 20:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7Csla+/paApDTykTNIJdB6Zt0ar+6g2M0TzzfuX6Bs=; b=d0ZMNkbEkTgqXw
	Pqxp/oMwV0xG3PdFjzFKt4RxT2WNbqr53W6b604xjO3wwg40qVvBXLQLoEwzvVCpORs8EyUinFmhn
	aIDIfEA0ui5VyKOxSAr77//BHAazmmC8w7ck2MiRpguQ0guIMjJMkJ3hHNTxc5hVrfl/RzxSQYQz+
	JZ6vj3yqQia8oa4nXzYkYp550EaDjhq1C/3GsJ1715vVwZJNmrVK83Lr2dY6KyweAj1wApg/wsmeX
	sLaNA/+2g9cUJEM8lzybnAkeyUutRUkKdBXNc+QAZ6ygJj73B4DRA8wlr/8tbrFqdexi/Z0s9znqG
	bPteUtBPmcHCc5aKEOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOmoq-0004Q5-0u; Wed, 15 Apr 2020 18:31:28 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOmof-0004LD-Vp; Wed, 15 Apr 2020 18:31:19 +0000
Received: by mail-ed1-x543.google.com with SMTP id i7so6298915edq.3;
 Wed, 15 Apr 2020 11:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SnqHof2dPOXKoAKXV6iF52K+2gAJh/5rV8baIqoPo+o=;
 b=FlQhQpkChTKQQKHE/kjZW2JHPP/s2wqj9SshjyqQZHZ1Z085P88gpkVzD7mYH4Ej7H
 /8kITqU0Ici++jfH5rEOOhqHL0jd2qukqDVFVcGnLbYwh/apTw4YNDCH+2M+gmUzrjar
 hoOwAfFifXLoTbP6k1cH7slupuNak1QwX8L8/7m09MQvu3p7JA+AeUIKvRniPPE9ubhi
 Pel0J86HNvqJyD6otKJnogaD9EIB9rzqn4z0qryuqX5unULzwv7/rr5r7rW++KNYstiw
 oWMcguoovE7j4w3t5WO84J6Y3TYN8lQK7tvYJLJAvcFFqrrqRofNt2LxQS7v/bmmp6xn
 WWmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SnqHof2dPOXKoAKXV6iF52K+2gAJh/5rV8baIqoPo+o=;
 b=VuvAsLw9yCPUPuTzGdS0hUIoOE7c3wOXLOZje2DMIYiq6TuiYUUenUro/+SaUbuAKl
 TeFolZm1UiruJXXKPoilyTxnwTVBAGAz2nLRW7uJOya8PY79PSlwQ2LtXGPvFg7teTrw
 K1s5E8UhKEwsgHeerFUeH4jY+dLkgU8TtdzGEiKKS2z36NV/J04tHvCl00AodqBC5y9T
 N9LaG+/PGOnE6PX5vjZA29MgKpa4Yva3sFufW14e5DQ/mfuS1wzjjMoauMsw7M29J/23
 UTH+v7McaTFP5/VBNq0RsoBB1WKn3WbStt40KBWFknmXuloHJb4yn8zahYOdwhVN6tNT
 S02w==
X-Gm-Message-State: AGi0PuZ14jZtlCeAtqIJw+QVUABRFwyLH40DDvSkYe0Ef+W2JwCJPOHu
 TL+/InBioV4pwUaNTnL6kWrs7BBTvMsCjmDZ/iU=
X-Google-Smtp-Source: APiQypIRaOcf7VxFnJh078+KvE/8zI4/yu3CzjaNn7Hoogp4F4FsEu0TUbJADLqHifTfYx7wJfx/Q6y04OU6mhoRBdE=
X-Received: by 2002:a50:c004:: with SMTP id r4mr24970839edb.110.1586975476369; 
 Wed, 15 Apr 2020 11:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200414201457.229131-1-martin.blumenstingl@googlemail.com>
 <20200414201457.229131-3-martin.blumenstingl@googlemail.com>
 <907211b1-c8d5-39cd-5d2b-dd41efbdc7a7@baylibre.com>
In-Reply-To: <907211b1-c8d5-39cd-5d2b-dd41efbdc7a7@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 15 Apr 2020 20:31:05 +0200
Message-ID: <CAFBinCCjHtSNigkeG_M4sVs27SemTMu0hUEQEHk53odAybm6sA@mail.gmail.com>
Subject: Re: [PATCH RFC v1 2/4] dt-bindings: power: meson-ee-pwrc: add support
 for the Meson GX SoCs
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_113118_048474_5CE28B10 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Wed, Apr 15, 2020 at 10:51 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> > +            - const: dvin
before I resend, can you please double-check this reset line?
it's the only difference compared to G12A so I thought it would make
sense to check if this is really related to the VPU when we're
switching from one binding to the other anyways (as now is the time to
sort out pending issues - in case there is an issue here)

> > +#define PWRC_GXBB_VPU_ID             0
> > +#define PWRC_GXBB_ETH_ID             1
>
> Should be PWRC_GXBB_ETHERNET_MEM_ID like meson8 bindings.
I can do that, thank you for looking into this!


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
