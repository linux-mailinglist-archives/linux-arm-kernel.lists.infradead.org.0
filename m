Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254BB9661C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M44WPl/qiS8yjQACG12QyVt24sFy5i2oar4aFsU34uQ=; b=TH310Axe4TwkS9
	Nid/5rM4LW2Vxwn4JepJsuSo7beyua/p7C7R1yhXZcxY/NlzKXP0fUhC5FcBn9D/vLyt3t9sfNiJL
	rD/ZyV8FOkosWrKyr0ZInIhY3ogMvRCqbsJBoPAf8g/n/YSAX+VecArncqRK2a+4pw28hHUEFmPl0
	USIpF6yvKk0QRcWBea7szBBzwmn9wdDcPwoFaW9OonSX8TAMnkP+k+JCtDP8vXMYnZuOE/NGYgGHe
	rJRCIPm2T4Y/7+n2yjd3hYpFrQWQSUcK9O3nius1KVkqZZPQuV5ih6YwGOeh5QfB33Z+E8GlDPXs8
	WMpgC7p5NQYPfJyoAAEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06qD-0001Fd-5i; Tue, 20 Aug 2019 16:18:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06q1-0001Et-AR
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:18:26 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAC68230F2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 16:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566317904;
 bh=vSKsKdK9IvnILRtQlA/Vlb4e7VL6KyuijFf6Qr77Vyo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=P8B1UyAjjQcRVTw4CZkWfoT3CVeiiSN+krnpT0XNAUC5xZZyDdaz1GnUiGG8t91wq
 g/Tt2ARlyZku7kDE4IH6F4nPPD67lIT32044zY8ETRAoFimCAvNHIWwm8YE3yLwwbu
 JmxlX44VlwYGODQVsf+f9OAssEmXFY+Y3LG8+oKQ=
Received: by mail-qt1-f180.google.com with SMTP id b11so6660050qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 09:18:24 -0700 (PDT)
X-Gm-Message-State: APjAAAUVIY28ZcSUwv1fgg7qDP70z7JSkjlmK/uLEaPHd3+/ioZDkz9k
 e0s2DUpz6YefuZT21xEl02OjlZHHJRxqA0TbWw==
X-Google-Smtp-Source: APXvYqycMaa214ptNayJBYSEm7y6VToBsSlNqtP2In+5+f5juo9lDSmILxM4UZrWQJSIt7mf+ihWQZGtHJECipi/vbw=
X-Received: by 2002:a0c:9782:: with SMTP id l2mr15058937qvd.72.1566317903978; 
 Tue, 20 Aug 2019 09:18:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190820145343.29108-1-megous@megous.com>
 <20190820145343.29108-2-megous@megous.com>
In-Reply-To: <20190820145343.29108-2-megous@megous.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 11:18:12 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL-fBA5fV=AwegyGpCKAEHtU1C6MZQX9dNYs0tpL9EbVw@mail.gmail.com>
Message-ID: <CAL_JsqL-fBA5fV=AwegyGpCKAEHtU1C6MZQX9dNYs0tpL9EbVw@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: net: sun8i-a83t-emac: Add phy-supply
 property
To: Ondrej Jirman <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_091825_378434_634487D3 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 9:53 AM <megous@megous.com> wrote:
>
> From: Ondrej Jirman <megous@megous.com>
>
> This is already supported by the driver, but is missing from the
> bindings.

Really, the supply for the phy should be in the phy's node...

>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
