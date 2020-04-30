Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085451BFBA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B2bOXno7vPotaje211zmAvcp55Um5NGcA+nLd6htA1E=; b=CKS9xX42Pachdm2r1XHp1pcCI
	6EpMExAIOK15A/6YGkiiNlCU98KFHnvVrUcsKfiZpimb0C76j88p6LFTr3UGTtzdsUtH4fSy7dxsf
	huEoFf1UBp8VLcfApUOeB5kL6XosyhpjsgGoqB0EsWekZEDNsw4SxEC4YrF8T+vPnNX7WVfhuGJ4f
	p05zNJN5z465kEgAQsU2Bd2pHJECKu+zgryYWH8MfiBzogXwMScS9rp6R/2xaWA5yuWDCO13L/eLk
	bN0J50Z88CI3uBK60uA0RzrOydTJI9viM1r8DnfsieGgpN7ZDguUWZKqRSKwFEe/m+MVkF5h2NwpV
	fH/3XjTdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9kw-0004Jl-DP; Thu, 30 Apr 2020 14:01:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9kX-000440-Gl
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:01:17 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49EE5206D9;
 Thu, 30 Apr 2020 14:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588255270;
 bh=9FbFTTlnbKLjAAIPjJx6YuYxhy4pirQW6SAhcXe/fIM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VMXtb8vhEM+n2AJtnnYWEg28q2MQfNCnhDqtmDeZp2Nn/BQEuu67JEdPdGFmLHEaJ
 dwgVN7ndgB6NkDsFbVa5YTi4BZjE8Nt0aODE8LeOisc/N76gGKBUeeJ+SpojTHueHC
 cJ1QIpegAUWyaw3A+SFIZePzFTZr2pc7ojL2dN38=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jU9kS-0083fU-Nk; Thu, 30 Apr 2020 15:01:08 +0100
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 15:01:08 +0100
From: Marc Zyngier <maz@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 09/18] ARM: dts: r8a7742: Add IRQC support
In-Reply-To: <CAMuHMdWUYU6-S+EhzTKE4JeS2ExLQcsg_Bpy7RKD+cwhg55M8g@mail.gmail.com>
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdWUYU6-S+EhzTKE4JeS2ExLQcsg_Bpy7RKD+cwhg55M8g@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <0002cb9c8b1f0f7a308dea06af14bb37@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: geert@linux-m68k.org,
 prabhakar.mahadev-lad.rj@bp.renesas.com, magnus.damm@gmail.com,
 robh+dt@kernel.org, vkoul@kernel.org, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, tglx@linutronix.de, jason@lakedaemon.net,
 gregkh@linuxfoundation.org, linux@armlinux.org.uk, prabhakar.csengg@gmail.com,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070113_610693_6B011F12 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, "open list:SERIAL
 DRIVERS" <linux-serial@vger.kernel.org>, dmaengine <dmaengine@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-30 14:54, Geert Uytterhoeven wrote:
> On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
> <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
>> Describe the IRQC interrupt controller in the r8a7742 device tree.
>> 
>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>> Reviewed-by: Marian-Cristian Rotariu 
>> <marian-cristian.rotariu.rb@bp.renesas.com>
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Can I safely assume that the irqchip DT updates will be routed via
the arm-soc tree? If so, feel free to add my

Acked-by: Marc Zyngier <maz@kernel.org>

to these patches.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
