Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AB19662D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WarnOkvW3AiilkAkqWdxgIgafqaSbZkILC7aT7YZtRY=; b=TATyxTjaIqkRb4
	ycB3hWre1ZoP0t8YX9NscdSej5wACijBfrBQw1BLFTOlSrODO0f+BGPwuIkpOHauAmnENAcH8q7FO
	DqiSoXE8aamx+wfzPinKAvm67o8kFHs9SC9RSPK6uJDhg7rn1WxIAUopOTmep8sMnHy2wwTl27uV1
	WcZuHiS/TR04LrvmrxIbuaMNblE6UEhNA/YckQQAnRwfuEFfL1Rb46A2Z98Klv3RjH/BXBJm24Dna
	buVPhNknT+P8rfwyOBJ8UH7UyTSjGrxvBk4hlsIyAi2nrjSYSADZp8cfzBYsHNbrAxwRc/C8rVM9c
	eDrUmXm3xkNfnaQyRAFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06sP-0002tP-Jw; Tue, 20 Aug 2019 16:20:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06s7-0002kN-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:20:36 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E72623400
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 16:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566318034;
 bh=MhrM+wnpo98DgCvfrw9p71rUiiQM/sQQEu+zF5hCEp8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tbPSe22P0yz80TXNq+TmiToY5Gbdd0QxeDFmQRKu5Ab/jv0rBQmWVmx5VHcyohU9E
 hqStg44RSY2kOyVylH5IMtvL8hTYXAs6XgqvTgi7+HXsdEoe5B9ToOJwko/jiNU7ul
 Wvz6OTpFY1A7xSXjAko24tJBv7z2fLHTP8z84w20=
Received: by mail-qt1-f177.google.com with SMTP id l9so6685062qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 09:20:34 -0700 (PDT)
X-Gm-Message-State: APjAAAXQYn1IFvHKdY+tQInG1Qax8Unmhvw4b25HkQyOArGSwkRi1k6K
 DUm0yoqG5MsVPx9FNCEnX/+X+cfjmmcL/UHytA==
X-Google-Smtp-Source: APXvYqxQulqOuuzJ0nzppEZjKqYQUJ1LWIXaKSrDPdDKV1V49e8+VUYVdf8eB0g9VTWSMt7oK6gWHJ7swc+TgOoIpDE=
X-Received: by 2002:a0c:eb92:: with SMTP id x18mr15088587qvo.39.1566318033661; 
 Tue, 20 Aug 2019 09:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190820145343.29108-1-megous@megous.com>
 <20190820145343.29108-3-megous@megous.com>
In-Reply-To: <20190820145343.29108-3-megous@megous.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 20 Aug 2019 11:20:22 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLHeA6A_+ZgmCzC42Y6yJrEq6+D3vKn8ETh2D7LJ+1_-g@mail.gmail.com>
Message-ID: <CAL_JsqLHeA6A_+ZgmCzC42Y6yJrEq6+D3vKn8ETh2D7LJ+1_-g@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: net: sun8i-a83t-emac: Add phy-io-supply
 property
To: Ondrej Jirman <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_092035_092695_A3E440C9 
X-CRM114-Status: GOOD (  11.96  )
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
> Some PHYs require separate power supply for I/O pins in some modes
> of operation. Add phy-io-supply property, to allow enabling this
> power supply.

Perhaps since this is new, such phys should have *-supply in their nodes.

>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
