Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B0277F46
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 13:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHKQcp5I2cNbiBzE3hXZWduwr01Y4bKbLSaF17aae14=; b=H3nZVgMsv0FcAt
	en/bsvyLnwzC84VKqGYlmFshctyf8y+59j8JtCKo5nYWLD9gBdt9nJPH6bXKixfUeTPgNJAvSRNpW
	c+kKUe31X+YaWozAU8u3XAAHE+w/sGy9n5+yuki4PDDeiCiPIhOVAAns4sqVub8YtTyeBIdMY9N7m
	O8MIac/dWfp36D39xpymkIaVZvLm4UyXqV5Y9RbWyUwv79KYWJ94iveCfuARpynmh+2TAQz9bynvi
	Q1CkKwzFfvTeGSPL2mT5nbmiRliH3hf4Sub1z0nOeLPqh7jqSGwFUz/i0AxYNtDUnBeuVHKFX7UjO
	gltawCwmhVMbuyQSqCNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrhWK-0001qv-Uo; Sun, 28 Jul 2019 11:39:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrhVx-0001mE-Lm; Sun, 28 Jul 2019 11:39:01 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 25BEE214C6;
 Sun, 28 Jul 2019 11:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564313936;
 bh=OvEepJy3oT6ksyvUS9RloPjZaalZWvVPFCQys9FpK20=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XH2IW9A/PFvzGBOhmozRvRDzUtZVAvlP9K4dffnnude5Yx+FYZqAwFmBRxuosuEj1
 9jv2ZrB053WFws1st8+iq5dQr8UmQaU1xleK4BPNCTE+z0K1FjXTMFZ+rGvtNydIRq
 xxG5hyHHGll+5V3H1yLfgQQNiqbW8rWT50oufLhk=
Received: by mail-lj1-f180.google.com with SMTP id t28so55705723lje.9;
 Sun, 28 Jul 2019 04:38:56 -0700 (PDT)
X-Gm-Message-State: APjAAAVu5qClQZCUZQpQZlnRxHgTM5NrhWhIBYUZlS0TM3xCzxccOBpm
 Qbmd1X8b+3Pnd+ktQ8Ci/OV06e3qdbbME5LscuE=
X-Google-Smtp-Source: APXvYqzGiWzksa+0jU05XqUycO/HjQrSHPzvRlDT0Jo8FWgXXh/SpTMp5KGnsiA7nL4OAWdNIpdMgskzMUpKABzGP1M=
X-Received: by 2002:a2e:6e0c:: with SMTP id j12mr10171576ljc.123.1564313934212; 
 Sun, 28 Jul 2019 04:38:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190727142736.23188-1-krzk@kernel.org>
 <20190727142736.23188-2-krzk@kernel.org> <86910491.m50tbimVMv@phil>
In-Reply-To: <86910491.m50tbimVMv@phil>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Sun, 28 Jul 2019 13:38:43 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcHB9969bqw+aqRh1HYHKDazhhpKy_+uKKcA=5Gkg6+EA@mail.gmail.com>
Message-ID: <CAJKOXPcHB9969bqw+aqRh1HYHKDazhhpKy_+uKKcA=5Gkg6+EA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Add missing unit address to
 memory node on rk3288-veyron
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_043857_857870_998A3439 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 27 Jul 2019 at 17:33, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Krzysztof,
>
> Am Samstag, 27. Juli 2019, 16:27:36 CEST schrieb Krzysztof Kozlowski:
> > Fix DTC warning:
> >
> >     arch/arm/boot/dts/rk3288-veyron.dtsi:21.9-24.4:
> >     Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
>
> please see the comment directly above the memory node on why that needs
> to stay that way. So no, we'll keep the veyron memory node as is.

Damn it, I missed it.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
