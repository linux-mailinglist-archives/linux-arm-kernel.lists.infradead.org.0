Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C935E3BC6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 21:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfERhfAYqF1k8xyRmnT1Op7jBObqh3piRB1+sCzvBxE=; b=sXiTjr+E5J2RU0
	bKvfJ8bsANhtkfNd1vMiJkoc21sDGqjoW7wzHxsQ8hrZD/Agtg7F/Jm6xe/IBsIeZEc1rMvxONfW2
	Id6F4PfgtjN/bNIBvoJQ8YjlWPAt29s+nKOD8BBbtQ6ScbddGlBLw8fC8hMBM1rx69GQlwFVxOEDB
	kRyXH6I+JNov5ZCwmic/bYuH/rdFtxJ1qA3J5Q/ICHubFBt4JBKiZMsZvQmtVIm/VamO+p1ZnC6KQ
	ad/lJCcx2UzJVx8TRfUPJg7HPwKwVFoHRXiqBYTwJrXWuXfcNBl7+9l2UbloCT2M43R4lYAu+swfr
	Xzmde1L9clmK5FDmm7Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPby-0002Lw-EA; Mon, 10 Jun 2019 19:05:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haPbk-0002Lc-To
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 19:05:30 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81CFD207E0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 19:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560193528;
 bh=cOW8s/VNjz5sOUaoGt0xllYK4pDMxQHNLdqEQWRROOU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YRBv6Qib4JrcChVXt7vJGBYCBimV0Z81MvXdciZgBKZRyeokB4P+LP1knHVGXNKuq
 YZ/NL5olKHnzo2vNBnuPHWdh0dkYqO4oUA4uOYoKEXDtJzHv15Chy8sSi0HIF45R6C
 ORjwtB0APFirgLUa+bGp1fz5QPiPnIVuSv+yR6NU=
Received: by mail-qt1-f170.google.com with SMTP id h21so11655604qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 12:05:28 -0700 (PDT)
X-Gm-Message-State: APjAAAUAX1A1susJYddDcysqYsIRPXLAJhKqxaqMsNbIm8khQ+4EG+v2
 4xkxLOiLjPcIePAyaU6g4fbybKJMwJXgSan1SQ==
X-Google-Smtp-Source: APXvYqzNFAFskotptWmZSp0y4dGXTAqiAx1e+KFLMaVcOIEt50adCoQmksEswgcUSdBQTvIorzTZl1RZS8CHwOD4XHs=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr33361222qve.148.1560193527816; 
 Mon, 10 Jun 2019 12:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <b5c46cff5b59d021634be143cf559c597f0a0e1f.1560158667.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <b5c46cff5b59d021634be143cf559c597f0a0e1f.1560158667.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 13:05:16 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+0DY8aZ0Gz_x+_QObJhuym7eMAf_OO7fQGiW==U4uPzQ@mail.gmail.com>
Message-ID: <CAL_Jsq+0DY8aZ0Gz_x+_QObJhuym7eMAf_OO7fQGiW==U4uPzQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/11] dt-bindings: net: Add a YAML schemas for the
 generic PHY options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_120528_979398_6584991F 
X-CRM114-Status: GOOD (  14.78  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 3:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The networking PHYs have a number of available device tree properties that
> can be used in their device tree node. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Add missing compatible options
>   - add missing phy speeds
>   - Fix the maintainers entry
>   - Add a custom select clause to make it validate all phy nodes, and not
>     just the ones with a compatible
> ---
>  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 179 +++++++++-
>  Documentation/devicetree/bindings/net/phy.txt           |  80 +----
>  2 files changed, 180 insertions(+), 79 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/ethernet-phy.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
