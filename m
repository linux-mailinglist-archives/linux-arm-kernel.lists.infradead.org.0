Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2643A9E2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Y8jtGhy9QHKQ3eFjGxSnv4y6U3GwepGgfj10NWHk0I=; b=mQTAMykmYHgVPk
	Cw1unMyRzPPvRsk2JnuUMekHzo2NiejRXtTF78mFLDze3QsVpW57cXNOHf8DLaHnqkMTu0ti7KE3s
	MU2IHZWMHl/RF+0U26rLTxYU7xV0WaFk60KQcxxTwxQfXDNfwesv1lVThz1MjXO5MCe5sfwWw2A8V
	V0CcwRr9wz7QAbiFzgmp3iqiUdV22zHwgi4sbvKlfGJvxoUPAeSGl+XkjwdhHk4C9c8HtEqLk/xHm
	7xJGvLw6slhn3Ilt9D7Oggo1O2IUOImXME+Ro+za3DeRWZKL+Ump3G3TEJp6DLBiM0CxWlc95Zg36
	Pg5Fcrhtyprhc6lzO7Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ny0-0004hx-38; Thu, 05 Sep 2019 09:22:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nxo-0004hU-9b
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:22:01 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDBEB22CEC
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Sep 2019 09:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567675319;
 bh=NH8zw2DsahfYGKLTjXt13ZAAi9PCZWGCt4HzlHNYnmg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=p+Cw8oNZZy8TNU5UoJYRJV4Ap7/ikU0qxdrMtBCPW17ZQRKsFLRrEc4IWMYoKGpuk
 gkZP9vCkijuJmkwIgXEibbDRT7zPngSvHhw5hDmFWxwaomnskbWL5tWVvoU8vutYgp
 j/RWZi1AZtNa5TKtOtO/pK3tg9rrl0tPHT+dA9jA=
Received: by mail-qt1-f169.google.com with SMTP id r5so2007121qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 02:21:59 -0700 (PDT)
X-Gm-Message-State: APjAAAXEeuyaORo6pa1ni1Dio/3J8xrfb6iA13yHgDtZrhH4cSoZ0zo6
 yc9utqOjpEmDhy4DJPOKd+s/2z7/GuLD4iv17A==
X-Google-Smtp-Source: APXvYqxeugvAUFLcLYFbxmSaJvKmXtHFs4LVKAqHKRyHX9HN2+iGCFcDCTuMhzgTg8mWgt75I4Yah+VMdMVrWe1lJRE=
X-Received: by 2002:ac8:468c:: with SMTP id g12mr2401498qto.110.1567675318970; 
 Thu, 05 Sep 2019 02:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190905081721.1548-1-james.tai@realtek.com>
In-Reply-To: <20190905081721.1548-1-james.tai@realtek.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 5 Sep 2019 10:21:48 +0100
X-Gmail-Original-Message-ID: <CAL_JsqKGX1n-jsi0xtG8_Q=1LAhT=ufe0y2ZNBNoE3fR10K_xQ@mail.gmail.com>
Message-ID: <CAL_JsqKGX1n-jsi0xtG8_Q=1LAhT=ufe0y2ZNBNoE3fR10K_xQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Convert Realtek board/soc bindings to
 json-schema
To: jamestai.sky@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_022200_597177_B5D10C7D 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "james.tai" <james.tai@realtek.com>, CY_Huang <cy.huang@realtek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Phinex Hung <phinex@realtek.com>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 9:19 AM <jamestai.sky@gmail.com> wrote:
>
> From: "james.tai" <james.tai@realtek.com>
>
> Convert Realtek SoC bindings to DT schema format using json-schema.
>
> Signed-off-by: james.tai <james.tai@realtek.com>
> ---
>  .../devicetree/bindings/arm/realtek.txt       | 22 -------------------
>  .../devicetree/bindings/arm/realtek.yaml      | 17 ++++++++++++++
>  2 files changed, 17 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/realtek.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/realtek.yaml

I've already submitted a patch for this that's *still* waiting on
Andreas to apply or comment on the licensing.

Also, your patch isn't valid schema. Please check with 'make dt_binding_check'.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
