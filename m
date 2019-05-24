Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8E129F4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 21:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hINiZFOgNccaMK1iFjoORriljRsJe4CAy6a0hQBajdU=; b=LC3RMSW11NPlj6
	QYDlMzCEOQs6+FGSOgA6tqLR6AYmaFcKDi+sPaBMbFKizZ9Ui/AuDIsSjabb5LpbCw+Go6vd1J/Jo
	IG0xEAMJB70iAUCSOc+jfaXWKJX3MQeA8qilMb+YLEAKK2E6ASFSBMCx2yAUC0HGvfoN6Ad1hWu2M
	Qd+aDfSH2Xxsw0epE7SvWZgtQvSBAIbjj+nhUwnWUf0Z1ZdM6SrHVXWoz70N3z8O4ZHpM+CcM/XMZ
	b2llk3hdHBp9XrN4xM9RqlZ3OMy6Rhe5s6GIarkz5plasPqGTcvJ8GXE+h99KmHwQ9HJf6aduxy0I
	DN/Chflp5HGRVK0VyhKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUG65-0000Kt-9j; Fri, 24 May 2019 19:43:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUG5x-0000K1-PK
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 19:43:14 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BDAF21850
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 19:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558726993;
 bh=JoJ30cZZRw+96tUSEN2lLac7yZbukKSqlzqPvnxZo0E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fovUaanVzvYvwZEA1pjRpYU1WpEc0jWDhBLr9b2svYpR0Riztfp2nATcfeW8Uqn+t
 usnY29eAv0rh0aA95b/kWrxvIGL4TTBlVIsklWbWkaeVA54n3aJbYCmpQKnQhf2bx1
 aVLnT2RCS9MUkIzG/jSCJXwaxzOdlKSX/FApIaUY=
Received: by mail-qk1-f172.google.com with SMTP id p18so9244291qkk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 12:43:13 -0700 (PDT)
X-Gm-Message-State: APjAAAV7usMaof2VOvntKfg68QJWv8O8bOB4iDnuuFQfCjTG77KDGujf
 6cos2tFTibeLyflten6JFZn6/sQd1fX88agPqw==
X-Google-Smtp-Source: APXvYqzkUYKCKgnkwrNYbWnSQTsripKs5yX2p+epdNTxo2VL5V4U7Vanpt6QtJj+hEfCDR5o4QiRFJEscpPwAJKjIjA=
X-Received: by 2002:ac8:3884:: with SMTP id f4mr89506622qtc.300.1558726992675; 
 Fri, 24 May 2019 12:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
 <20190524162651.28189-7-ard.biesheuvel@linaro.org>
In-Reply-To: <20190524162651.28189-7-ard.biesheuvel@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Fri, 24 May 2019 14:43:01 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+=p+YA9emmZMhbCA75NM1ZksAx6mZkP1Fsype3SpK=TA@mail.gmail.com>
Message-ID: <CAL_Jsq+=p+YA9emmZMhbCA75NM1ZksAx6mZkP1Fsype3SpK=TA@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: move Atmel ECC508A I2C crypto
 processor to trivial-devices
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_124313_839818_AF27794F 
X-CRM114-Status: GOOD (  10.03  )
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
> Move the binding for the discrete Atmel I2C Elliptic Curve h/w crypto
> module to trivial-devices.yaml, as it doesn't belong in atmel-crypto
> which describes unrelated on-SoC peripherals.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 -------------
>  Documentation/devicetree/bindings/trivial-devices.yaml    |  2 ++
>  2 files changed, 2 insertions(+), 13 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
