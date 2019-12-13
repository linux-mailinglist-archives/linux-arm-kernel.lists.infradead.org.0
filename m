Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54A911EC0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 21:51:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLnPYzue1KHaJVE/mmyEK6q0v9K/kE72uTH6aP4/MC8=; b=AwYmVMeNvfOpwM
	x8D9ed/mAfajSvSahLPh1kHrmZprzIPttvTQWjdL5UV6WQ/5WondZ0h0CJhvmz9E3Ur4Et6SN8k0P
	6zPWMtac6Tfwn0QUZAsD+v8c0AXajw+wGyuXGQ/4SYZ2wQIjcV6VjoEZ1iOZNwUCouPHdNji+OWOI
	Ga6v+eo0WYfLnBqxMCxpr22m7bhnUgdHXFyquTlYsyH3NsUKUzxwgXN3y5nr9qwysfZwkjNfONXPt
	ZRHR1/vgeDl+DKG6nGTK5k952OiPxfblnhg3xAHsa5U1al5JRCobAHKuJMOzbMLyIjUUU+xw0orQh
	motGGs1woSCWpzdbmfPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifru3-00009B-1a; Fri, 13 Dec 2019 20:51:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifrtv-00008s-LI
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 20:51:05 +0000
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E04624689
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 20:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576270262;
 bh=+dKkT9qss0TqkoVOkTkEq+PspUmRCwAnZfc5MFA4ENA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W/zY2QBDNrZoAyQi2h9xiIIpG5KVH+26UxJbi+0i/S/DJugOQcg7XK787XAVmZKgb
 IpTDpnRyffCD+2nB2CefjCV3/FoznaFUd7SFP42sh0F4Lr/G/zFQNwQLKmDL9Z8CAJ
 f0/jCj5vjNzOvzD8jTcxFgWnTgVpYvFCOlQC8aZA=
Received: by mail-qv1-f49.google.com with SMTP id n8so279130qvg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 12:51:03 -0800 (PST)
X-Gm-Message-State: APjAAAU2zZGCsUbGDhPpbw5w35F8P/tIHE2QqWNCvuixf2HcyiMeirb4
 5euWqumCi7UHON7Q6CrpYNrdloGph4qVZDzj0g==
X-Google-Smtp-Source: APXvYqyB90WtC9yvdYd6CmgFqz44rFwwJP+EgXqkcen8gQAUWJSXIFADvOtFxe2f6ycbB1XDnFfJpLpI9ICEyUjapLU=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr13564621qvn.79.1576250763417; 
 Fri, 13 Dec 2019 07:26:03 -0800 (PST)
MIME-Version: 1.0
References: <20191213074055.26193-1-maxime@cerno.tech>
In-Reply-To: <20191213074055.26193-1-maxime@cerno.tech>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 13 Dec 2019 09:25:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLxGe9sWrTdZhuT69o_LBxQTi6TxcbT28WdC1gsPw5+fQ@mail.gmail.com>
Message-ID: <CAL_JsqLxGe9sWrTdZhuT69o_LBxQTi6TxcbT28WdC1gsPw5+fQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: media: Convert Allwinner hardware codec to a
 schema
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_125103_721663_341FD091 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -4.1 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 1:41 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The Allwinner SoCs have a hardware video codec that is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../allwinner,sun4i-a10-video-engine.yaml     | 83 +++++++++++++++++++
>  .../devicetree/bindings/media/cedrus.txt      | 57 -------------
>  2 files changed, 83 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
>  delete mode 100644 Documentation/devicetree/bindings/media/cedrus.txt
>
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
> new file mode 100644
> index 000000000000..47c8513555b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0+

Do you have rights to change the license (adding '+' aka '-or-later')?
If so, please add BSD-2-Clause. I don't have any other comments, so
just confirm and I can change it when applying.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
