Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223158C3BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCGDcyNxss0nOFjeqvWCI1/zIBwB39YeIxTuzIziuWQ=; b=E8P3F/imVdp5c6
	gk73HAeXfgV+s/2qVmzX1uIsLKr1OLDfKolBcmDDZInNVCI7M8WzZRIJOkkuHA65dRMZ5i/QOcxd3
	hzzoW/rOcKNQRr0ATOUxN0jNde2ZkC6FQcfo/kAKj5KxSdcwkeVlvBY2uSdLWZcoVC0Dwxjeos1Gu
	9EBQ6992f8tU0C79j3xtUEYMy0HlmqtaJlA3XJ7bD4OFrw5HFAfTcsV07E9oM8NuAJvWcgtePaQXH
	u7Y5Wnx737BAJo7cKc866AEA/nZ1SMqyiKqTMJebZ+o+mQaeLqrI9shBYTOkBj1VJpo1xTLQBCgwj
	qvcZz1WZi0+PDycDoOBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxePU-00017K-AI; Tue, 13 Aug 2019 21:32:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxePL-00016v-Te
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:32:45 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78EBA20665
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 21:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565731963;
 bh=ocGtIgTgq9tRn05MEA2AseiewpPV58nDV6Bz5EJeVWk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ryp35nFyB4LnjvwmcCk+mgcBlhlO9BoGGEbJqCuysxgMYE3QrXhMpNU3pFzcephid
 2eNvhTsz6fl6tXCc9h5oWhr8XJ2JVTIdVMNyhKFCFQNvMRXbeO3LBh7o0ekIv+8Jvk
 RiHcWeAQT0plw55xtzmZyqe1cwYGYxCeQwnApwjo=
Received: by mail-qt1-f179.google.com with SMTP id y26so107982380qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:32:43 -0700 (PDT)
X-Gm-Message-State: APjAAAU7g4AW7OJorb+H678oBfEk6eun2/qVUM1It+FAOANUY/yqyoQ8
 xhF1LSJwkXJ3fGv0Wwtlj7Eg+82BPUdSANbaMw==
X-Google-Smtp-Source: APXvYqx48HpN2WmRdaQx2jqeMfSS99pR9DuL4bLmyJdzDJvvyzz7a7PeTjZtWFPiQUCpm5ztHYxh1a0HIsggmFI0ZZU=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr35482240qtc.143.1565731962734; 
 Tue, 13 Aug 2019 14:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190813124744.32614-1-mripard@kernel.org>
 <20190813124744.32614-3-mripard@kernel.org>
In-Reply-To: <20190813124744.32614-3-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 15:32:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL5v1nd85FuuU1aHDDvojnWqs-4aDZAUDm0iCR0akhF9g@mail.gmail.com>
Message-ID: <CAL_JsqL5v1nd85FuuU1aHDDvojnWqs-4aDZAUDm0iCR0akhF9g@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: watchdog: sun4i: Add the watchdog
 interrupts
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_143243_977068_E4297031 
X-CRM114-Status: GOOD (  14.68  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 6:47 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner watchdog has an interrupt, either shared or dedicated
> depending on the SoC, that has been described in some DT, but not all of
> them.
>
> The binding is also completely missing that description. Let's add that
> property to be consistent.

I'm fine with fixing errors like this in the conversion patch.

> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../bindings/watchdog/allwinner,sun4i-a10-wdt.yaml           | 5 +++++
>  1 file changed, 5 insertions(+)

Either way:

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
