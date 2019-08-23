Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C599AB3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjRyZFqISRK79vauOd4v/AJUaME3X/hcJmvq+EkCgSA=; b=P8Z3LTeFU0nd6p
	RCckuVwzeJKKg5ziEFv873B2Ipcqa35ZIi97sCGEScPN/HwjRrvuQuDEv8VcXDU0FQynpGb1TRs4K
	LpJ4mgRDOiqL1ZctuSqsNAYoDv8hVstcqRQGowg28azkNuV5a0RDbjzO8fzpGl52ozWW+//1HbC/q
	pClic5qmzRuBcKgvc+lWxU1zaacs26a4UI0u2qwqXgWAeANQ1xVKotpUuP7huI6WLVMQIBNWOE4RM
	b03qGD8HCGDfwD7H6YSu5r9FsBhfZv/lyxtANVnZeIb/RRuHX4MwLGMesJBw42l+ciNTg9CBEqLaQ
	zoiD2msCq8WIWXKch5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15jx-0000c8-0D; Fri, 23 Aug 2019 09:20:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15jg-0000b5-J9
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:19:57 +0000
Received: by mail-lj1-x241.google.com with SMTP id x3so8216344lji.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 02:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0+DA0AUrj8c0E7gzH9vsBYpt4Fmk9x7nsKTREy+4/ks=;
 b=Oghd8aglYHCh34au85+ry4tne+dtAEjBaom3pk8M+iAp54CYFO2abPgeB4U6gGQoFb
 GXq2rlRHqXupg0sssYrOWFmgHV9pZ628O7CVXoWMqtoJKF7y0c6OkAuaRAgGvID/hnie
 td1TOWlzu+vzgStPw7oHVBR3qrwozDq5AsQ2MV+x3hnNyLk8QwM/uhNh7csdnxs08q7p
 3kdx4TnXYbqkwxufvlLaPfqmh9AKDixX8dG2TXzvdy8JIjs2TM+R1WR7/mPoWU/keGPm
 P7VjGhBYL48nDEqaCWPhMu3j3+gyLaSTLX6iA4uhDaNzla+LKn/3WZjKESEYDKj2WXXz
 Z55Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0+DA0AUrj8c0E7gzH9vsBYpt4Fmk9x7nsKTREy+4/ks=;
 b=SWaStSuZo+O0hjbZ5g2KjRRwA58TD+x3NKXjNW8K6GPnCdQsZSlS/xLg19efBh1742
 cY7Ug+WTwMuNH0AkPG/wpOGO/5u3Q2/FphRJeCxhkMpKRQGEJr75an/IE5h8E+IHkq6p
 cSY+cX4gLHk0/NyxgmoTWrMiVCkwYa/nzvPWZuv08cHDU1WZ5kLRNWQ6FZOCKczqhWui
 oDjdBxOUTDGbWrF1YNrwUWuOmhj9y2GJUMlQrkFYXAf6m39QS/TJMw53pmxoVfCPjPI3
 TV/va2LxqfAGkyiFCIhz9FUZfs5CE389m0Xx+ZnSTjQxia5SV+2Ya7Hyb+npBBPBI92K
 vtHw==
X-Gm-Message-State: APjAAAWbYZyC0ewVsq6pirTTeSCumY9yAxboBEIDcd7kNxGPwKDZWg0k
 Szn1P0EbGLS99FuW1Mbyl9Uc7j+ZXien0R4QOr72oN+XtGQ=
X-Google-Smtp-Source: APXvYqwK+gepCG0Ez2tTpjT/vmPLIiIHDlmYRRbhEPz9u24BZVmHTm4kFBeT7fwouJFEuhCJDdriYDbZdllA7ru0lvE=
X-Received: by 2002:a2e:b174:: with SMTP id a20mr2366638ljm.108.1566551993585; 
 Fri, 23 Aug 2019 02:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190820145834.7301-1-dinguyen@kernel.org>
 <20190820145834.7301-2-dinguyen@kernel.org>
In-Reply-To: <20190820145834.7301-2-dinguyen@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 11:19:42 +0200
Message-ID: <CACRpkdasbXuqUkO3NjMGBU_ePEBT23BS1eP-bigB0_g494LgvQ@mail.gmail.com>
Subject: Re: [RESEND PATCHv4 1/1] drivers/amba: add reset control to amba bus
 probe
To: Dinh Nguyen <dinguyen@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_021956_663922_883AA9E2 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Tony Luck <tony.luck@intel.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Kees Cook <keescook@chromium.org>, Rob Herring <robh@kernel.org>,
 Anton Vorontsov <anton@enomsg.org>, Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Colin Cross <ccross@android.com>, Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 4:58 PM Dinh Nguyen <dinguyen@kernel.org> wrote:

> @@ -401,6 +402,26 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
>         ret = amba_get_enable_pclk(dev);
>         if (ret == 0) {
>                 u32 pid, cid;
> +               int count;
> +               struct reset_control *rstc;
> +
> +               /*
> +                * Find reset control(s) of the amba bus and de-assert them.
> +                */
> +               count = reset_control_get_count(&dev->dev);
> +               while (count > 0) {
> +                       rstc = of_reset_control_get_shared_by_index(dev->dev.of_node, count - 1);
> +                       if (IS_ERR(rstc)) {
> +                               if (PTR_ERR(rstc) == -EPROBE_DEFER)
> +                                       ret = -EPROBE_DEFER;
> +                               else
> +                                       dev_err(&dev->dev, "Can't get amba reset!\n");
> +                               break;
> +                       }
> +                       reset_control_deassert(rstc);
> +                       reset_control_put(rstc);
> +                       count--;
> +               }

I'm not normally a footprint person, but the looks of the stubs in
<linux/reset.h> makes me suspicious whether this will have zero impact
in size on platforms without reset controllers.

Can you just ls -al on the kernel without CONFIG_RESET_CONTROLLER
before and after this patch and ascertain that it has zero footprint effect?

If it doesn't I'd sure like to break this into its own function and
stick a if (!IS_ENABLED(CONFIG_RESET_CONTROLLER)) return 0;
in there to make sure the compiler drops it.

Also it'd be nice to get Philipp's ACK on the semantics, though they
look correct to me.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
