Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6C91C4D8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 07:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=el3EJ3HGV+C1ZJZzuduQ8AhBYKKpdgmFr2d5XJx262s=; b=l5/mpU3MNn3FEL
	KCZA+j0V1fbeNUZ3aRMoaMpYDf4bb61r93U1d/GUug1tY3mt6cxEt+Vpdi3imk/z6aklYr7f6jc4F
	x6pAAi41OvjjfH0HShHm2AjBh+PrZpsKFKZhCs7bJbuLuiWcIzYPGrJ8gSLJwS0EAZcIqREhzbqU4
	J3EVYb/pBNcJAWo0U42IwuEBiAUAWIevcVzgb/UTt9xyngTvzz/APIqwzRkUq5vae+aNlyjWBOyH3
	8xjI3mGFCNTurYv9GnaM6ZO+wZeRZR8BJqlexsBnD8l5P9+un/+YH+R54uAMOgLQyNCjYF/V6aGMv
	u9ykd0sUbXEjmG2bShDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVpmu-0001Ld-AL; Tue, 05 May 2020 05:06:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpml-0001Kf-Cs; Tue, 05 May 2020 05:06:28 +0000
Received: from localhost (unknown [171.61.99.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD0A2206E6;
 Tue,  5 May 2020 05:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588655185;
 bh=e8VuXUN/uzQjDtcEKXPbNGAiXnGLHtDXeImNxpzII78=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YB6AmbTa38GjMc7eliqreZ+dpQzlNmREktrgqMMyF+yMZbRhh6FVKFQrGsMR6yhzz
 KfgOtZEgzTbQM5+VCXglPTXTEvBrWAKJwrYTuuUuQhQPuS/sgyIk5S2+qL4EWR1zEB
 jSAPb5EhR65ZKTu8+6zgki6eksV7C0REvhS5p9SY=
Date: Tue, 5 May 2020 10:36:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: meson8b-usb2: Convert to json-schema
Message-ID: <20200505050621.GU1375924@vkoul-mobl>
References: <20200502114752.1048500-1-martin.blumenstingl@googlemail.com>
 <20200502114752.1048500-2-martin.blumenstingl@googlemail.com>
 <CAKTihDVy6oSuQe4eP87hWO17tBu3=XZ-PM41YOqLVOtXJ8+YeQ@mail.gmail.com>
 <28790ee42242ecc0b0050943a27f569dd1aeec16.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28790ee42242ecc0b0050943a27f569dd1aeec16.camel@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_220627_456866_5704A9F9 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, kishon@ti.com, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, hex dump <hexdump0815@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-05-20, 10:31, Joe Perches wrote:
> On Mon, 2020-05-04 at 12:55 +0200, hex dump wrote:
> > On Sat, May 2, 2020 at 1:48 PM Martin Blumenstingl
> > <martin.blumenstingl@googlemail.com> wrote:
> > > Now that we have the DT validation in place, let's convert the device
> > > tree bindings for the Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2
> > > PHY over to a YAML schema.
> > > 
> > > While here, also add the fallback compatible string
> > > "amlogic,meson-gxbb-usb2-phy" which is already used in
> > > arch/arm/boot/dts/meson{,8,8b}.dtsi.
> > > 
> > > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > 
> > Tested-by: hexdump <hexdump0815@googlemail.com>
> 
> Is the kernel now accepting "Tested-by" lines from robots?

Should we not? bots have been given Reported-by...
> 
> If hexdump0815@googlemail.com is not a robot, can you please use
> your full legal name instead?

Looking at emails, this doesnt seem a bot, so I am asking for full legal
name for these to be added.

Thanks
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
