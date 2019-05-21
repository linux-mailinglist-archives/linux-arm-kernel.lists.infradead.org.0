Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7916824B7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ACKuo/sOvl7LldtGO2Vv4CmbAIk/36ujisUG3Jt/JJM=; b=ESeSCtwxoXcv5vnfyfpJVWl0X
	nDZecj5H33NINHseEDowBy2WG9gN4m5vTRfHkQbw6GuySJSNY0PaLKW1TgWFGm3kDLjt5jSyOoevA
	W8buUJYewRX5lmP9YyJOUOsgZVUkFw2RrGUcVW/Tj5iQObxnkIQ30fYu2+bclG4PthOBImGVaNwmw
	KtxdZ8c/PKawGVzqDWxD0B7fPsP10bEqz+zruWvSN36xi6+kgza610j9Y45maJgpStPx39hvbuQVs
	uSPX/Idi5kjUS1meisSOoDCO2pSXI0Npw1uu8ZX/jYf0NfUi1oEvOg+dwHUHner/bBbAG8r6SBTbC
	+SDUsPxyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT13j-00036A-GD; Tue, 21 May 2019 09:27:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT13X-00035O-A3
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:27:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id 14so15198140ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 02:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5Xy6KpBMf4VElfSxI8JZgNkIn+5swVz4A7VXhYDp2D4=;
 b=gi0FnqEmcboPROS3aUYX2FmzKmldrXp2Xd53Cs+z0s80NF/1tJ+89FLSOmuykkWh0a
 Bseps+m7BHSnZFk5NVsRLKcGhVs10u9VBXuk7ZFWImQxcj/UfGSJbg6gJGqG3M6Eryu0
 +6VMdvaQODEdkEjm10eVWCg6HQioXvq/vhckhU8CXA37bZxImLyV9zUqEhECALNCOSWj
 Io7qmy3Kwb5wIloKJURrXpWb2PPdq2gW5p7a9/ShaO6loZBFBAo1n7iTGu7RKvdGnRAu
 5KIh2bLGig4OqmPNCI6RFNpRPS27XWQk6PKwqmubBBllN7izvBcvS8lnUx17EQ9e1BYP
 sbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5Xy6KpBMf4VElfSxI8JZgNkIn+5swVz4A7VXhYDp2D4=;
 b=Sz3gCgkUUOtJ79Cba/JHBDTKfiGFCnK/LEab0FGobqI6j7+EC2nTJddTLXffsA7HD6
 DL/f/NuNmq8Z6kNbhT0U85udjdufsXMpROG+CgyAlUeuQyVITGlj9+sEP0/lckR2OThE
 lqaTOtTt7NH5HSCWWI3M9h2457vw+DauzlcUWZ79H4aUVAuNj2nfVQalUW1uKn1oleLq
 /F9hbh1/qGkmAUSItRT1P/79/nZMi76UsZeWJ9q03iHjpyAAqIPimzuzZ9StwfRls48n
 x7G6F+SlKsfHZhjggiIkOl7zrog+yUTBErDOS2kvRh7RAEY7NAHjfmMRL8uxyAfgA8Rp
 eicA==
X-Gm-Message-State: APjAAAX0cdTAnTvUiCgDCpNCu8J37JJxKQRoeqeybwVDb6395CORzodE
 9YopbshR1A89YFjyuLYli9NCjQ==
X-Google-Smtp-Source: APXvYqz2W9cUR77wBpFQtxU/OEIMqFs1dqOYZh2m5bXIMOiU7pDh+NaARFsIcqKmxsWQZ0msZguFsQ==
X-Received: by 2002:a2e:60a:: with SMTP id 10mr3542802ljg.126.1558430852654;
 Tue, 21 May 2019 02:27:32 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.81.21])
 by smtp.gmail.com with ESMTPSA id u128sm1039382lja.23.2019.05.21.02.27.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 02:27:31 -0700 (PDT)
Subject: Re: [PATCH v5 2/6] net: stmmac: sun8i: force select external PHY when
 no internal one
To: megous@megous.com, linux-sunxi@googlegroups.com,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
References: <20190520235009.16734-1-megous@megous.com>
 <20190520235009.16734-3-megous@megous.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <4e031eeb-2819-a97f-73bf-af84b04aa7b2@cogentembedded.com>
Date: Tue, 21 May 2019 12:27:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520235009.16734-3-megous@megous.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_022735_563098_B5926CCB 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 21.05.2019 2:50, megous@megous.com wrote:

> From: Icenowy Zheng <icenowy@aosc.io>
> 
> The PHY selection bit also exists on SoCs without an internal PHY; if it's
> set to 1 (internal PHY, default value) then the MAC will not make use of
> any PHY such SoCs.
          ^ "on" or "with" missing?

> This problem appears when adapting for H6, which has no real internal PHY
> (the "internal PHY" on H6 is not on-die, but on a co-packaged AC200 chip,
> connected via RMII interface at GPIO bank A).
> 
> Force the PHY selection bit to 0 when the SOC doesn't have an internal PHY,
> to address the problem of a wrong default value.
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
