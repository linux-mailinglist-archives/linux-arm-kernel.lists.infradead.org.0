Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153853D0E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jgtg+LvwRiichWv0Pp4B8qzA0ge987U2n5ppEQXs6wQ=; b=m8yZx+J6Dw4Ct/
	g3p8xy983k1WuHKgdn6ohyyQKGwhgnNzRADqDutMbGeSK9XS96+CoC1REvfSp2WzzeYTtjK80FfLK
	zKgIlk7FuznjjOrzzi2Zd4gX/YlVrWpN9A8zPLvQvKwZzHBHsLqChsi76AlT54pHmScjhmMTGxkAK
	52AZ1uskLij1ZlKJ0fJlrOj/CIlqLSgOd6ZIo5rSUXeBkm+lq3Xi8sh9eo4rSF/s/rfaBrRRZc4Vo
	qawtypA0CqEpqZ2uHE/UzHVFI1IJmFobq40a4V4xL+cS7rh1oqM9dDbeWrvUqsrjijYTxPX/DCtJ2
	Js8HG82q+KUAxk+vt/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hainP-0003WO-QM; Tue, 11 Jun 2019 15:34:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hainD-0003Vm-D6
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:34:36 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06267214AF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 15:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560267275;
 bh=EIcAIZ/5jQEzsABeTR+aC7PKVrq9xNtOvhCECCAOhjo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2Ogg9gJ/CYlSDlMcbqVkJHH5oo+Tf0jE47tYWydzdt4mFoTMuYTcuhWE869ebEtb7
 J1nPQsMEtCCZ27ZQzz0zRxESbZkpv3MdpqfNUNIkRZF9j5M1cjUN7B1Ph6DCLGp7Pq
 zQNc77IZ4hIAeBoH/G76FhHmgM7u7nC3qJVpyMBk=
Received: by mail-qt1-f176.google.com with SMTP id j19so15012785qtr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 08:34:34 -0700 (PDT)
X-Gm-Message-State: APjAAAWnQI62r+ju0cdRuMZUIBC8R77x56l4DzWKq4AJ/cJXH5q/NAXd
 jDR3CNrUgVoy0haIHWWpdwJyQI3vvnEvqN/srA==
X-Google-Smtp-Source: APXvYqxHE0iAyuzqP4GlfYljLhcmiHNIV4RBb1i3p8OE6draWdzReILUB1955qUO5N63UUi+1XWDV8PkRg1hqqwYAPs=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr11888081qth.136.1560267274275; 
 Tue, 11 Jun 2019 08:34:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190611090309.7930-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190611090309.7930-1-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 11 Jun 2019 09:34:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK7F+6W_GGAtkjv-tiou9s1tMDcB+2yshrDqoTU1V65KQ@mail.gmail.com>
Message-ID: <CAL_JsqK7F+6W_GGAtkjv-tiou9s1tMDcB+2yshrDqoTU1V65KQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i2c: sun6i-p2wi: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_083435_460731_8694B64E 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 3:03 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2
>   - Remove redundant constraints on address-cells and size-cells
>   - Fix the example
> ---
>  .../i2c/allwinner,sun6i-a31-p2wi.yaml         | 65 +++++++++++++++++++
>  .../bindings/i2c/i2c-sun6i-p2wi.txt           | 41 ------------
>  2 files changed, 65 insertions(+), 41 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-sun6i-p2wi.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
