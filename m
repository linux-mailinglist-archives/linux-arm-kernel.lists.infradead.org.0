Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A535010F2DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 23:28:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMa/GGPYNbdKkHixcI2RM9sLLWq6SPm+tGRFujHMDIk=; b=PWw87Ny6OlDbuT
	3SRvRevYsRZg+Qm1QufjToqZXxPSzyUa8qh2SZSUxI0CN+/qZxAUkvoPOZ+FkwQkBUhkGm6BLbWuA
	9PJZrS1S0Xxe9FTn5tfLGO4AJ6tidS7wbqaY/V4FY3KZ4GlDwvzBrqA6bXkaH5bbTP6kUrfj2LrpK
	BNAHpjI/0NihxTgeW+ePntK7XTGDoZx2hoi1nZyLLfjG+3m0EmifN/D9xG8NJshKuz9j70pHycgNZ
	IIx+AzzUokz/E6hV44G/zvgeXqWpYWyWhR7zibcCmMIUlRY+TtHFvNc6xg+kko/Ms7l50LHNNEds9
	EF32HUPYLTGSne2EolKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibuB7-00018w-PO; Mon, 02 Dec 2019 22:28:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibuB1-00018d-3f
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 22:28:20 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A308A20866
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Dec 2019 22:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575325698;
 bh=vtI7mRkc90kox/lp/QnBdenTVtng043mxOskJbzb9LY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=raTio8Ys9WlfQ98qiG2STnIIyPWVEnVIJb/FJkcQEoyHYxDITPZpNIkt5Y2yp16Ts
 cSsS+PL/X2nuQTOuK7wBZo8pC7jiTNQfD/fR/7rgytt+/QGcfnzlE76pmReo+TDIUk
 J9lMFH+gNRZ8S4//f6ye6YEbjkvZgO5VRaZPSJg8=
Received: by mail-qk1-f169.google.com with SMTP id f5so1309965qkm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 14:28:18 -0800 (PST)
X-Gm-Message-State: APjAAAUaZPynrHHySDsM9BS/xstLN2lYLY87nqIr5NH50OVU6LmrFyEn
 kkmEmCGwi8iaQyD0WT2XT3gIvzHYur4fBCFKBw==
X-Google-Smtp-Source: APXvYqwalRjZ37h1dEK3CqI89rRu9nNpBLiaC1kZVv+jq2pIZ7D2g8faIIJOpR+XFOSAiuprP7WyGvAVM0hjiKKL/qQ=
X-Received: by 2002:a37:4904:: with SMTP id w4mr1472009qka.119.1575325697704; 
 Mon, 02 Dec 2019 14:28:17 -0800 (PST)
MIME-Version: 1.0
References: <20191128090726.51107-1-linus.walleij@linaro.org>
In-Reply-To: <20191128090726.51107-1-linus.walleij@linaro.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 2 Dec 2019 16:28:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL5RpR9QVsdJGZoBfGfeAmpSoVKW=60zHLWZ3BkPuwbJQ@mail.gmail.com>
Message-ID: <CAL_JsqL5RpR9QVsdJGZoBfGfeAmpSoVKW=60zHLWZ3BkPuwbJQ@mail.gmail.com>
Subject: Re: [PATCH v6] drm/panel: Add generic DSI display controller YAML
 bindings
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_142819_194497_A9D4F666 
X-CRM114-Status: GOOD (  27.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 3:07 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> This adds a starting point for processing and defining generic
> bindings used by DSI display controllers and panels attached to
> the virtual DSI ports.
>
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Cc: devicetree@vger.kernel.org
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v5->v6:
> - Rename subject to pertain to DSI display controllers in general.
> - Change some of the wording in the DSI controller description text,
>   making it clear that the binding pertains to the combination of a
>   DSI controller with at least one panel attached.
> - Add a proper compiling example.
> ChangeLog v4->v5:
> - Drop the example.
> - I still have a vert annoying error message in the Sony
>   panel bindings that uses this schema:
>   sony,acx424akp.example.dt.yaml: panel@0: $nodename:0: 'panel@0' does not match '^dsi-controller(@.*)?$'
>   As this is modeled very closely to
>   Documentation/devicetree/bindings/net/mdio.yaml
>   and that one doesn't emit this type of warning for its ethernet-phy@0
>   etc I am pretty much clueless and just can't see what the problem
>   is.
> - If I can't figure this out the only viable next step is to drop the
>   ambition to create yaml bindings simply because I'm unable to do
>   it, and go back to traditional text bindings :(
> ChangeLog v3->v4:
> - Rename into display/dsi-controller.yaml
> - Require a virtual channel number for the DSI panel, as
>   DSI have this 2-bit virtual address field.
> - Bring in some but not all properties from the existing MIPI
>   DSI bindings. This schema can be used with simpler panels but
>   not complex panels with multiple virtual channels for the
>   moment. Let's handle it when we get there.
> - Add an example.
> ChangeLog v2->v3:
> - Make a more complete DSI panel binding including the controller
>   and its address-cells and size-cells and a pattern for the panel
>   nodes. The panel is one per DSI master, the reg property is
>   compulsory but should always be 0 (as far as I can tell) as
>   only one panel can be connected. The bus doesn't really have
>   any addresses for the panel, the address/reg notation seems
>   to be cargo-culted from the port graphs and is not necessary
>   to parse some device trees, it is used to tell whether the
>   node is a panel or not rather than any addressing.
> - I have no idea how many displays you can daisychain on a single
>   DSI master, I just guess 15 will be enough. The MIPI-specs
>   are memberwalled. Someone who knows can tell perhaps?
> ChangeLog v1->v2:
> - New patch after feedback.
> ---
>  .../bindings/display/dsi-controller.yaml      | 91 +++++++++++++++++++
>  1 file changed, 91 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/dsi-controller.yaml

I'll let you apply to drm-misc.

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
