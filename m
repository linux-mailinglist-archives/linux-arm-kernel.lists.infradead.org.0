Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F9E25A02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 23:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0V8EDT1QVcAWXPqKZoHyV7VsWS08AShScjJAHw3Xlw=; b=pX4qc1VTmqFvRf
	lyUZXe4peuvJMe6/G4LlHwbjMkQfvz0XqajC3Sui9BebNpD5K3sDJjy3OI2ZuowmUuVaitqAY58EX
	MtjXpIbyOLfdNIbnUv4/5Tz0QDOayhoEL2qYHSYLivuXccRLkSXqA071MZCFIkGsfA0y3gtZq31A9
	lpAzyGiuTYCKKH8VXABxupPT2IzZdzzQl31wcowW0Q8TRymVeZkWaKb47gCN5uwHsWwzfCMa2jLHO
	j/KcDbGPnceex7+c46FdeiYi78zJIsWvgTLnwyRGHL3vtD8N9eOn7cb1E2ywHJZD+dlctYRpiSNBG
	60OJBNk3irnOWmfrpeRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTCP6-0003fL-8m; Tue, 21 May 2019 21:34:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTCOy-0003dm-0I
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 21:34:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id gn7so4883548plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 14:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=n9ODtUCTlf7QzMg+EFi0fhULa1Hv1bN8saGVoynBnt8=;
 b=Y0wLmu+PpiLo7vUy+T1dLKysSylXSg7NwAOmGwX9MPYG07Y+1uOVcznI5UzVOu0hCF
 p2wF+V53lMgvx/uZ2rLt/OkiKtI0zDZRIR8kqkWYxre5gGeEgxBkUU0sFg0V0dkCJFmA
 Lu3AzdAwwDLllUxNxExJGK/YFL3iCRzH90A5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n9ODtUCTlf7QzMg+EFi0fhULa1Hv1bN8saGVoynBnt8=;
 b=rKa7LyrDMk0cGQ3qHGxaXHFgTEi/zNF9SZBRyZ2HJcQy19zZSYPw3SQ9+G6NaR81G+
 DN0AS+9wMBgxQ/WM++IkutkjwmYNeyR4XsrfNI10StUvoUSJBfmMAoXZcbD0NlJmII2s
 6TUNKgpdX3Fv96IFr33yHXgd3aEThHTXK7+W0w7ZTCW9Tm1ArHa4gB98EUhENnJlPx/l
 Pjp+nANulL5JEoMZmvYwSSy6CePqnnxDrOtFl3x3zzucIRUwjWMEZEtpq6PgpsuS2t26
 KVuPeQTUgqJ1glPLGPU9SSGwdN0mTZZgkxoHzcbmFrkuen3TR9/gLweVElODocWzsw1G
 UN4A==
X-Gm-Message-State: APjAAAXpnUulg3S/Ow7kuhEQgmgiaY13IbGT16GMXJYLiVL0uFiFQD92
 hu0nD9t9oo6wChb8DGKUDQu/6w==
X-Google-Smtp-Source: APXvYqzihHia+iUnsOd86KRdycld+FsIGTxqXQCnCFsb55jp0SddgA52ec+bov96FU2MF9EkB9uLWQ==
X-Received: by 2002:a17:902:21:: with SMTP id
 30mr69540871pla.302.1558474466758; 
 Tue, 21 May 2019 14:34:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id 1sm24868945pfn.165.2019.05.21.14.34.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 14:34:26 -0700 (PDT)
Date: Tue, 21 May 2019 14:34:25 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Add pin names for
 rk3288-veyron-minnie
Message-ID: <20190521213425.GJ40515@google.com>
References: <20190521203215.234898-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521203215.234898-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_143428_071685_7E6D985F 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Tue, May 21, 2019 at 01:32:14PM -0700, Douglas Anderson wrote:
> We can now use the "gpio-line-names" property to provide the names for
> all the pins on a board.  Let's use this to provide the names for all
> the pins on rk3288-veyron-minnie.
> 
> In general the names here come straight from the schematic.  That
> means even if the schematic name is weird / doesn't have consistent
> naming conventions / has typos I still haven't made any changes.
> 
> The exception here is for two pins: the recovery switch and the write
> protect detection pin.  These two pins need to have standardized names
> since crossystem (a Chrome OS tool) uses these names to query the
> pins.  In downstream kernels crossystem used an out-of-tree driver to
> do this but it has now been moved to the gpiod API and needs the
> standardized names.
> 
> It's expected that other rk3288-veyron boards will get similar patches
> shortly.
> 
> NOTE: I have sorted the "gpio" section to be next to the "pinctrl"
> section since it seems to logically make the most sense there.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
