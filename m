Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A43A2D046
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 22:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e43yoRXtTKOxyn1DbAePdqnyUkFu7BE+aEgjI/WkfkA=; b=NO50ejI9+oV+Fa
	Lm8Rpma35N/2q2JzFgA2/RQ0iMmH/OMpYJyQMmNN/c3gQ26i/SL/iQOIrTj0W9+GPZiDL/GNGfP2x
	Blfc4VFQxKgyo+TXSx80F7ggII+A5AUvoVpff26bFjARcErei508j+EOj+/CW4sIwYI5brR6bof3h
	bN7xeeV7Vi0/mCAybBdxHsB7Pg6LKfuxXPPy/vKtvkpvMr1OPZ8NIPcc5Ne819umc83v/8FXUvE27
	lzcqdvQe5Ax3ru3jSqxgU02FAyjKxaPlcC1ihGWpwdtxvhMJDJpErHHhgRSca4c401tS6xrapWTJZ
	NzN5FbVL/vQKj8lGtHWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVijO-0000PJ-Q6; Tue, 28 May 2019 20:29:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVijF-0000Nv-PX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 20:29:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id j2so8357pfe.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 13:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CH0uDuCm1IZlUutTSqd9yHCBwqxTh5kY/MOarp++qiU=;
 b=Ba1Cm97vb6ARxJQgfFXGjdotGsHAP99t/791OfuTEFhQFlnonFvYATsLPtmM952cBb
 ajhyIOeCIEH27PBz35HtzQmv3gJxOblUx4CDV+xaaHSLjF9wB9h5iRcgoBr1N3KZ0TQ7
 DALG2D46yz9XpmIQQwMbvthZxrRnlJkstuZII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CH0uDuCm1IZlUutTSqd9yHCBwqxTh5kY/MOarp++qiU=;
 b=igw2eQ3rjqptEVa2Okjv/5P/s8U3zTDRvC+6A9lhbungdb6vodov7p8lNXzHCWmPSD
 JZqb6ePvzMlwumOEyGgg45V+zBpgCqTFWXSRaP+hJjKDymoHd/OQ0vFPu7G2AFQjL1vt
 nFSw4ArjG2PZallA8KQBfbTD6yHNYF6W0qyxr/xqp40yCoVEiq4dVWpo6XeRE2r4p470
 38DIQrlNC0ye5baFozC1YV/C4P4pBc0N38ptJQGh6NHCvSyLexkcTTOTrbo2rJ0SkBm/
 IKed8fAwi96xXKWyvY+TiIzdEk+zBXMeL3eR7oJAUy4nQGNRciFzA7q/TEJTF+NzHaPq
 LuOg==
X-Gm-Message-State: APjAAAV9PS3Ndki9HxPtrreRhfCXoTh4mMz6L/tZUntAQXjxlPnxh+uU
 i5ggS/+Rz5fEuJTUruKnGElwtQ==
X-Google-Smtp-Source: APXvYqyJR8ErjR2+NyhyJOJUsta+0OAa1/KNcVcMUt+b3JS9GeD6tSPYwwARr6LFNFDtWBcPhMCA2w==
X-Received: by 2002:a63:ff23:: with SMTP id
 k35mr103694764pgi.139.1559075388740; 
 Tue, 28 May 2019 13:29:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id f29sm23276944pfq.11.2019.05.28.13.29.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 13:29:47 -0700 (PDT)
Date: Tue, 28 May 2019 13:29:47 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Add pin names for rk3288-veyron jaq, 
 mickey, speedy
Message-ID: <20190528202947.GL40515@google.com>
References: <20190524233309.45420-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524233309.45420-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_132949_855462_1EFB33E8 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, ryandcase@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 04:33:09PM -0700, Douglas Anderson wrote:
> This is like commit 0ca87bd5baa6 ("ARM: dts: rockchip: Add pin names
> for rk3288-veyron-jerry") and commit ca3516b32cd9 ("ARM: dts:
> rockchip: Add pin names for rk3288-veyron-minnie") but for 3 more
> veyron boards.
> 
> A few notes:
> - While there is most certainly duplication between all the veyron
>   boards, it still feels like it is sane to just have each board have
>   a full list of its pin names.  The format of "gpio-line-names" does
>   not lend itself to one-off overriding and besides it seems sane to
>   more fully match schematic names.  Also note that the extra
>   duplication here is only in source code and is unlikely to ever
>   change (since these boards are shipped).  Duplication in the .dtb
>   files is unavoidable.
> - veyron-jaq and veyron-mighty are very closely related and so I have
>   shared a single list for them both with comments on how they are
>   different.  This is just a typo fix on one of the boards, a possible
>   missing signal on one of the boards (or perhaps I was never given
>   the most recent schematics?) and dealing with the fact that one of
>   the two boards has full sized SD.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
