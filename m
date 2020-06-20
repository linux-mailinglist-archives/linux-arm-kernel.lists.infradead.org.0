Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAAB2026AA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 23:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tN9eI3TlD8fWhoMUESTMiJw6MIX2A/JsmjZSE6td/c=; b=gbEXHI3DAaoD+H
	zeqA+5Pj0uLQvek/kCXTUh8xhoSqZfGDnQLSbjeVIwzSQWQxU0umAK3f1Nmijb9Q+9oTgfpQ8TO4U
	vhge8tuM+/OPSNtF0r3GYThcSdZIwuhEPnKtyzBFN0fzJQ7DKI2/uuoKQJONjkwH9QYjt51aU1w9i
	TLUcOKUVIhfizGHvTWzVb4ICzR0n+XnS3aGTxM9KEGs1HOLLUAHQQLZIL7myvr9Slr5iwN6LFXC2A
	fTxQUjIfmp/H10VvHp4JSa5HKkXnFVoRbGUr6iZWCX63bz6VdctloZftCk8n0eHFmKBIStMEVgQFR
	RvluLRXoDXNFKwiLoUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmklj-0000vf-LK; Sat, 20 Jun 2020 21:11:19 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmkla-0000vD-AK
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 21:11:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id z9so15240948ljh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jun 2020 14:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XJEVsWfbn8aRBSjCUjQoaB/zi3FIbrrLmSUqtBf4ufc=;
 b=ejwQKsS9R74OVx4oleO34kJ/97nhPXE5oUxGSV3txe70SwiGWv62+473pSxKiEXCDL
 U5tedGRDKcJ42HmweVyL/YeRulQyKi1SjAM3wF5aYfzAVtLFlSXfhdyjkmS73imjEvlu
 mUf0ycwAmGlre8Y5z0bue63mfiIvmQf9NqndNnegmKmECrygz6SfWdTy7X3xxiGd+gRR
 +yQfN3RYHAGEDVUXCzjyj1IrM2oscTM+NA2sd3pyB8aGw9ES6CX3evJhV43ja5C7okJ1
 pGlD4rxPQ9+Lg427gcKNTxNbkPUt1/zLlPM8E2ZhiDJtCxpWA0tEg/WZnrnmtzOhiXsc
 0PrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XJEVsWfbn8aRBSjCUjQoaB/zi3FIbrrLmSUqtBf4ufc=;
 b=t5M6L/IWq27usYm+4XgXoZxb6/9CdmvkmkCSzgG7K1BsN5QABPloWHYo7SljNHj6t9
 Cu8YIFSXdERVA5wdvnHTwGKnvEQ3VRk8x+5P3hoTwJLj37NW3du17HDevGEEPBqN8tKJ
 4a9i1B4inncavPaM0c9vCel756kwnrPB4AeRO6XTDUlA6kYI8YRSFF67aCd71pioY9pI
 8RF6QcVL6YzA0BAMBtODmOZjK5SEWTVw7n3h5i340SwZBDymf86kz3sgXhVfhuSNiwHy
 g8IZyztJ47fmpE3GboXsMyFH3KQ0w3ZaqHwrp8j+y0lT1p2Nt5KagG0uZy6zSyY8esf/
 Rocw==
X-Gm-Message-State: AOAM531v9m245m7wBOuFzN8cnTIvi1whyTSmw07lnDCBgmLQyAJnsZUw
 xyZBmuqRfnLKPhKObMFb7VBgGFTnmDDnIfAsdiHQvA==
X-Google-Smtp-Source: ABdhPJyNzj8lntNB+gPdQZorIuGyuglVZ2GRN4JTEikAZoHXf3zt4iKWY8HyVoOjoJhJdUnny/FjxeRZZMdO0eg8d0w=
X-Received: by 2002:a2e:351a:: with SMTP id z26mr4790421ljz.144.1592687468252; 
 Sat, 20 Jun 2020 14:11:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200615133242.24911-1-lars.povlsen@microchip.com>
 <20200615133242.24911-6-lars.povlsen@microchip.com>
In-Reply-To: <20200615133242.24911-6-lars.povlsen@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 20 Jun 2020 23:10:57 +0200
Message-ID: <CACRpkdaWZeMCNuwUNzyYd+g9Q75F_8o7K1Npxr46V+-Y4z-6wA@mail.gmail.com>
Subject: Re: [PATCH v3 05/10] pinctrl: ocelot: Add Sparx5 SoC support
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_141110_423915_A492F189 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Olof Johansson <olof@lixom.net>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 3:33 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> This add support for Sparx5 pinctrl, using the ocelot drives as
> basis. It adds pinconfig support as well, as supported by the
> platform.
>
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>

Is it fine if I just apply this driver to the pinctrl tree?
Otherwise Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
