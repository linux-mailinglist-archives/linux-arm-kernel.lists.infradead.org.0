Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FD426409
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 14:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVb0XpTIRByS/msKXQNiAXTjSs/PdKEnUJgP8mWbDNg=; b=fWVA5n3m2w9IKw
	J7LASIuC/I7Ndz5pnR8P36K9tz75RqqCNu5yw0SVyqYYeFtbrSlgySFOFsKI9/3KwDlfb5xqDYpQN
	9I2JGA71KUFJLWfaoBGCuO4z5uftgy65s1q0sdCF3cGcwjfcOX2Ui5NFxGgcSCoZDBBWZU1UYdrKu
	goIf0wuy+s82J/1xTxgKxFHsgLNOrq3LW7ETiHZrZw0n4qqVqziQ2XGb4U3hkNkh8P3IPnTBg+Nbx
	MOwSclT67i7ymHMor6T+w2IZwTABIihfZZ9OVIHdQBxVZpathm2v14vX3q1P18Tn3YhtSdr9dhTqE
	tkK5dwGvvunLGFugcT8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQh7-0001Vc-RI; Wed, 22 May 2019 12:50:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQgv-0001Uz-V1
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 12:49:59 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96F752184B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 12:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558529397;
 bh=5ZGoJi7NkwXVR/OD6kRE/4231NNk5lVLqumccNmisaM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=P/Xi9UJqmeYRdPazqEcKP9IuQTWCddd6kst1SKQ3qjtCiUCMbvuOEEDFicZv/pk63
 NeV63sW+AFY9dTKnLz1Lreb0QxFX4AC9RFKcvXTXt1ZrMWRDQBPXZKLqEvEDUM4vwH
 QT+r59SQPi1NU1B28D+wbB9ZjFloODaKSgvs63xA=
Received: by mail-qt1-f181.google.com with SMTP id f24so2081628qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 05:49:57 -0700 (PDT)
X-Gm-Message-State: APjAAAXGWrzdqG3g4ENoTqyE9piwuGilL8Xa1XiS7Iul1Sz945wFAfTU
 zM/Ze6GKQkQY8prriTECZn3054PWU6DKWtbBbg==
X-Google-Smtp-Source: APXvYqxJyh8gPJdSllFYvlfTjnDcRfyrin0i7k2617dS8CfKNsSi0ccmNnsl8crgC8wL+I59VDGEoYxEPmonj9M9fPU=
X-Received: by 2002:ac8:3884:: with SMTP id f4mr75987199qtc.300.1558529396825; 
 Wed, 22 May 2019 05:49:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190521212325.16639-1-robh@kernel.org>
 <20190522104226.nwcvx33akt6q576m@flea>
In-Reply-To: <20190522104226.nwcvx33akt6q576m@flea>
From: Rob Herring <robh@kernel.org>
Date: Wed, 22 May 2019 07:49:44 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+JimAYW9GiPz6_hNJfnA+8bnN=kPDOEJFPyt+57bwriw@mail.gmail.com>
Message-ID: <CAL_Jsq+JimAYW9GiPz6_hNJfnA+8bnN=kPDOEJFPyt+57bwriw@mail.gmail.com>
Subject: Re: [PATCH] spi: dt-bindings: Convert Arm pl022 to json-schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_054958_009325_7E1BD466 
X-CRM114-Status: GOOD (  12.00  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 5:42 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Tue, May 21, 2019 at 04:23:24PM -0500, Rob Herring wrote:
> > +allOf:
> > +  - $ref: "spi-controller.yaml#"
>
> You're using a different construct on the spi-gpio binding you just
> sent (/schemas/spi/spi-controller.yaml).
>
> Is that on purpose?

No. This one is correct (though both work).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
