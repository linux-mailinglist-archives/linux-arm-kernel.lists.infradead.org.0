Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F402F5A89
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:07:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sulTNG5TtlEfHRiXawq/S7QRu8pXIAdDRVwe9InXNIM=; b=QlOl6GvinnDqSe
	vjMl9ZFaX+IrufBXbbG0fvxXd46CaB7Sn+ZpWQnAJwen3/0e85MxSzUJFX2ibD01Zf/u+pMBqiqcR
	+AkDwpAQOI6A5AfYv3zlAYz5BGw/ETX8d8yecRnBI3/bDEI3370jRqE4BxB9w1eJSFAKKj1Q/vyXu
	yh7kXlcq77J2zS3pWM0cuOhkWS1bFHSigc9OosG0OcdPDnGpFPSfH7Kc6tl0xYwHWM8jeqX6KORfH
	UXv1Gj+dSuNSlO/+DVdp/2cLhALcMIrmRX7hhhtCLfZbaeNe6Mv0vYaiFbjmdD6IN2+szZTh3Gnd7
	QSvdJ01t9khdq2XS4Jeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCPf-0003e5-Hv; Fri, 08 Nov 2019 22:07:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCPV-0003ca-HW; Fri, 08 Nov 2019 22:07:18 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 150422084D;
 Fri,  8 Nov 2019 22:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573250837;
 bh=F9598YJ7umblSSscgKD6bsQHkgKqFEeeQhpYqMVujj0=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=qmmxDqIczTRF6/bWq+R0BzxMQqujVYIpWuBVIn4pclepcyJjht82PY/zGNpM0nanz
 5aTU5BjMKzw1wakefOXN5VOhuvdNk+hHjnUMq6g6sYWZPfVEoq0pxJ5aK6ccWo4sGr
 R0J5rqpNkhSakh/X8E9tTnOwlwYQPaYhRN1B6tp0=
MIME-Version: 1.0
In-Reply-To: <20191027162328.1177402-2-martin.blumenstingl@googlemail.com>
References: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
 <20191027162328.1177402-2-martin.blumenstingl@googlemail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 jbrunet@baylibre.com, khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 narmstrong@baylibre.com
Subject: Re: [PATCH v2 1/5] dt-bindings: clock: add the Amlogic Meson8 DDR
 clock controller binding
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 14:07:16 -0800
Message-Id: <20191108220717.150422084D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_140717_601438_639BD611 
X-CRM114-Status: UNSURE (   7.57  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Martin Blumenstingl (2019-10-27 09:23:24)
> Amlogic Meson8, Meson8b and Meson8m2 SoCs have a DDR clock controller in
> the MMCBUS registers. There is no public documentation on this, but the
> GPL u-boot sources from the Amlogic BSP show that:
> - it uses the same XTAL input as the main clock controller
> - it contains a PLL which seems to be implemented just like the other
>   PLLs in this SoC
> - there is a power-of-two PLL post-divider
> 
> Add the documentation and header file for this DDR clock controller.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
