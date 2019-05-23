Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDB6281DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rv9BPty79Kp9bmtBvn6x+QLFv4mFYRsc8mIlgmF2C34=; b=O2y8A6TwbCcGag
	8SrT4jyfStuke/2oAoWyh/n87pjAGEgh61NPUzD4mcG88O+bA8TiBdaZ/ncnThyF9lCSWXEF94dxp
	dksjH0/L7vJGOaaXfQuZBZAXzwcn1Jm93A6rWIWkq/Qtvc/Yf9oGNs8vJSS8F6vLE2GBXtXKNlAoP
	3H9DOvFhjcxU9lP82yz45k1n3UENSlEAQabd5ad4QsYJmdTaVu2Q9vG/mbkRS2bg8X2Lmdt4ebLKX
	2NvgCZHLNSWTccUBGkC6cdDUgSxTl5WTA4cYt+B4lOVdDvENIwpMltfLNxiY0a3l9Q/0/wVjk23fm
	De+8k6ed9BeF/Q7BYNDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTq3w-0001rG-9h; Thu, 23 May 2019 15:55:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTq3p-0001qo-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:55:18 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79D802175B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 15:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558626916;
 bh=JUOPRAHlxD37cj7X5mjXujgKukJ+EI5g3Of9neklXRc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ocp40sto8Gq6/0uRuAdHyZHHkF2oG0CIBODLzqqtKumSJxpWuCby6vxTFj19gf+eG
 9FIWW+5EJzp220GZ5j8OH62sdyNyEuCD+eRtoGun/U2S9jWpB4JlUEt4bCAxHyel/w
 mZK/3l5p6LCRP+bLZqB9mlMk2s0vqj6Wz6G6CFcM=
Received: by mail-qt1-f169.google.com with SMTP id f24so7284530qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:55:16 -0700 (PDT)
X-Gm-Message-State: APjAAAWUIk1vuCZr+LN60roEzlf2TRm+v6sRdjxqZBq9azKhlh6GMhNT
 TeK+l1zhdIk+mvhi+gyGSY914KdSFQ+aObtqUQ==
X-Google-Smtp-Source: APXvYqwEEihkSXSYkUOGNw6QZNJ7c5VF8WdzMUhYcRqzxhUuKrUfiTJdsCIvlXDQgQ80MHzHtm0PBbhB4PgJSALMZ1k=
X-Received: by 2002:ac8:6b14:: with SMTP id w20mr60341941qts.110.1558626915748; 
 Thu, 23 May 2019 08:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <6f16585ffdc75af4e023c4d3ebba68feb65cc26e.1558605170.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <6f16585ffdc75af4e023c4d3ebba68feb65cc26e.1558605170.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 23 May 2019 10:55:04 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+PMT99aw5bkp515XDpKELdpXB2BH_n6e-BwQS+KAHy0Q@mail.gmail.com>
Message-ID: <CAL_Jsq+PMT99aw5bkp515XDpKELdpXB2BH_n6e-BwQS+KAHy0Q@mail.gmail.com>
Subject: Re: [PATCH 7/8] dt-bindings: net: sun7i-gmac: Convert the binding to
 a schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_085517_648382_CEE92FC6 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 4:57 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch our Allwinner A20 GMAC controller binding to a YAML schema to enable
> the DT validation. Since that controller is based on a Synopsys IP, let's
> add the validation to that schemas with a bunch of conditionals.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt | 27 ---------------------------
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml              | 45 +++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 45 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.txt

I think it would be better to keep these as separate files and either
include snps,dwmac.yaml from it or only add the compatible to
snps,dwmac.yaml.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
