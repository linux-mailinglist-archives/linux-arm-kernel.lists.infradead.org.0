Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559888974C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 08:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3g4KPPXOfniH3VJCor/F3cCvhnmY+qhqZZzSGxPTU8=; b=kgZRdDZE8bjajn
	qKXysmvBr/jWpfb+YifYFPCX3zoCuFHkzZ9gXM8RVhLi3Hvkte08S27REMRgCNtpJbdK4eqx+/iH9
	eEZl4CXsTyQPSPNw3PEYeUoCJpdKPkx1mCIeVLa05Y/fqZtdgJV7mBjij2YJoN8MOdU4XGbkbG4FV
	zEn8hYRLH2fUltljBet84lSbhvpf3LbeygYUHkmovlN5DV2oKSA9gZQkX4++ihbP/7OGvLtQifWec
	FMxyyCUBWZoNjm9thUjV/MrBRyI2IZZuUhJB32/Z3EUNeMPS4+NnO3m2VfNy59NokDO2rTr0o2vj5
	UiZYF9goTXzhFrELAYqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx43m-0003ks-KR; Mon, 12 Aug 2019 06:44:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx43Z-0003kX-B0
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 06:43:50 +0000
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CC37214C6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 06:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565592228;
 bh=Au2I1+pUG8x4q8Vy+c0mrDmoxr5LQjnxTD3Xa5TQ1QU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Mbt0BRjkREv80x2Y1XC6k01N3P07Y10yQ0YuB/ojwaH/IlA4yjz+wrMCxIM2bVyq5
 PT4q8AY+Q/0MTBx2VYvfDiW8s/UGZzey9WNhPzsO6iw183/5duURR5uS2WF5IZhscv
 mZGKDaC7SoOt80tFLSB5eU3kVqm2I4ELWgO3hhuI=
Received: by mail-lj1-f176.google.com with SMTP id d24so97280376ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 23:43:48 -0700 (PDT)
X-Gm-Message-State: APjAAAXH/xoEmzxhde9Q3e2iWuEXlk6Tr+8rkHQ1Ie3a3XsaawUH47sp
 2Kq6a5T1Cd1Uk7HOIOSSCS1aNqH8ZMpMNHg4y9A=
X-Google-Smtp-Source: APXvYqwTeVn92BEolAItuNZHe53VnNj3QCoRCdIpcVGtJTAkEKRjOqmtUpzwDjY4TbKPcg+mlkRd1l0/IhIzzOgy18Y=
X-Received: by 2002:a2e:8197:: with SMTP id e23mr608659ljg.80.1565592226364;
 Sun, 11 Aug 2019 23:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190808172616.11728-1-krzk@kernel.org>
 <20190808172616.11728-2-krzk@kernel.org>
 <de032954-2b6e-5aa9-0d91-c37417c8e162@kontron.de>
In-Reply-To: <de032954-2b6e-5aa9-0d91-c37417c8e162@kontron.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 12 Aug 2019 08:43:35 +0200
X-Gmail-Original-Message-ID: <CAJKOXPf_uJUhNrciK1mFddN+gZ8vxtTEsz_uF7k60+EWYW94OA@mail.gmail.com>
Message-ID: <CAJKOXPf_uJUhNrciK1mFddN+gZ8vxtTEsz_uF7k60+EWYW94OA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: eeprom: at25: Add Anvo ANV32E61W
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_234349_400648_D1FC2DC7 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "notify@kernel.org" <notify@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 8 Aug 2019 at 20:09, Schrempf Frieder
<frieder.schrempf@kontron.de> wrote:
>
> On 08.08.19 19:26, Krzysztof Kozlowski wrote:
> > Document the compatible for ANV32E61W EEPROM chip.
>
> This chip is actually not an EEPROM, but a SPI nvSRAM. It can be
> interfaced by the at25 driver similar to an EEPROM. This is not the
> ideal solution, but it works until there's a proper driver for such
> chips. Maybe you can add some of these details to the commit message
> here. Also there is more information on this topic here:
> https://patchwork.ozlabs.org/patch/1043950/.

Indeed, I'll correct the description of commit.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
