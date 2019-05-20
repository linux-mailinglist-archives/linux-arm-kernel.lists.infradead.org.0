Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EEE24174
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xE2xDUI4GaT5O1SV75zMPuMEArUD1wXjiQyQ9IO2Uck=; b=e3alreRi3jNUPk
	+a/A8zM5fGQqYNPax2fU2mpPe7u88Uw0NUtZzJkvF/VYP9ny7iRR3LquhAmOUPNxM8ZvOLUsAU15X
	UO9Ecre53UUZYVRNfYBCqQlHBF07HEwYaq1S9eZ6fp2TEYv2FO0OMsjunoljXiR958Twizj9Sw/y7
	N3HxHCfLDOHIwqsBNZvJCdvCggNpMSDCYv4MIdlVRLgQAe37M3QdRLMCA5mn11ZsFCQB2LyGWBldM
	EhakP9usv/dvq/UzMeKJZdVVG55QoBEsX+eGjI9IGTR0wCHuPfEbWodV1OBerH9ujm/ZO7O7d0H8D
	edBVVdpEFHN97MN78zbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoF2-0004ef-As; Mon, 20 May 2019 19:46:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoEq-0004as-Ny
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 19:46:28 +0000
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 364D3206BA
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 19:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558381584;
 bh=uu3wErwhcw0wslwLMybmkGYaO/ZJDf6TXCa+47Zue50=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wi7kzTzgPolu43HW9ABtZZW2M/bhvdKnC6UOvqPtFu3ad7XUz9FrzPnFmmcUlr7rz
 qbC4TH27x1u9HxECMR2y0bc/v65GWfkejPNu7Uq/Ues98aLyHP9spbbIgZRm363jet
 Dt+vE9sJBjBmaKp6wipD/xewYVr66yvWxefMmu8Y=
Received: by mail-qk1-f180.google.com with SMTP id j1so9550268qkk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 12:46:24 -0700 (PDT)
X-Gm-Message-State: APjAAAU2yu8PJyXMgXUMzD6S1gisyuvQyV9H7p/0/lqQ7mS9aDzdPu2u
 O5rNQ+pD2sExgkNupR8j00hJ4K50pnpUsldyPA==
X-Google-Smtp-Source: APXvYqx5lF7MuceHa4XKg31nYlIkX1RB9DChxiqcJBiwxFPamVEefS4AQVC24ekASzW97hb76X00JsLaUGGwtBeAvVw=
X-Received: by 2002:a05:620a:1107:: with SMTP id
 o7mr52311850qkk.184.1558381583482; 
 Mon, 20 May 2019 12:46:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190520155127.cdc6dofoqckwsrrb@flea>
In-Reply-To: <20190520155127.cdc6dofoqckwsrrb@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 20 May 2019 14:46:11 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJhBji40AnA=ND116N0+DkvzhX=Rt-wa=DX3Fd3uQRdAw@mail.gmail.com>
Message-ID: <CAL_JsqJhBji40AnA=ND116N0+DkvzhX=Rt-wa=DX3Fd3uQRdAw@mail.gmail.com>
Subject: Re: Device Tree nodes ending with -supply
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_124625_078773_FF349E22 
X-CRM114-Status: GOOD (  15.54  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 10:51 AM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> I've noticed that you recently added support to validate the *-supply
> properties in the dt-schema tools.
>
> However, we have a family of PMIC that are exposing a bunch of power
> supplies (battery, AC, USB, etc) to know what is currently powering
> the board.
>
> All these various supplies are exposed as children nodes of the PMIC
> itself, and they are named *-power-supply. For an example, you can
> look at:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/axp209.dtsi#n56
>
> Now, those are obviously not properties, and yet the current dt-schema
> schemas are trying to validate them.
>
> I'm not really sure how to fix that. Changing the node names seems
> like an obvious solution, but they seem to be what they should be. Can
> we reduce the scope of the validation to only match properties (ie
> arrays?) and not the nodes (objects?)

While I'd prefer to avoid that node name, I fixed it with the fancy
new if/then schema:

  ".*-supply$":
    if:
      not: { type: object }
    then:
      $ref: "types.yaml#/definitions/phandle"

I'll push it out shortly.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
