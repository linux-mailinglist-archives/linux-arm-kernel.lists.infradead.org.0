Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E625EDBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 22:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jP++UGRnphVVprkHSo29pdyIkbCr4ARLKaVUEY8WLQI=; b=jD/qOJK691IbbR
	PFXDfUX83Uk2uGQArPGfKxff0+lZ8CTfU3sjcZyPXRjswvFCKjnQECJ8QOinKILiPSH/P7u8mEvmq
	BE7uLRvNNuOXAtEJ7gsOkYRYyM27kTlE+beVZ/CGm39ALQuwLSlbkkPtaGy9G9w0b2xVxTf6K10A3
	HJoyR+4f6rkekzMuLJv7S4bbJ5SmEKju94j9xSlgzGHJ9AXRNTC2oKRfTdIyn5zMs/2/xPeTbimtm
	SVUSkv0vTlbqYLLejfLg+WFJJ/e5FGwNNtQBuV8RDZrMj5P8iFvKNCgopZZuCmd6WBkDPvmnunp0c
	GpmRF1uTNxE/vjXf+YOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1him4J-0000S8-24; Wed, 03 Jul 2019 20:41:31 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1him49-0000RD-Rt
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:41:23 +0000
Received: by mail-qt1-x841.google.com with SMTP id n11so5645359qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 13:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=7UrgCJh7ynybyKVyA1NdfWdn/54CS6hsmMgsbu19Pro=;
 b=1xNP2ViByzwg7pUQH7ecLseKnc6Kf20ns0UGpDVoStT7GQGvwmwE6SJ0k1iU5yGYP1
 YkAGhrv0HN2QIN8wQn6mXjkbKkeU5iP2vQLDN2W3vBP0GIuM0QWyFHyFz6ZvUz/PtGTu
 LbFashhUsq2OaHMk3U4qMxU16BQ81vhjqjqPqmmr29MJZE1diWeHz5ZEjXmgySm2Zcwl
 vEonLtxm9XIuu8gCqbEbILaGG75AS6iF8/PterCoeKr5wJQYNeLwGrDFJEKOPk6IN3/W
 Do59BlnuM6zXZnfMXtx78p5hoPPsg3DnI2cUOWPuIIvurACVL6MnBqrNQuyXjnrggF21
 sFAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=7UrgCJh7ynybyKVyA1NdfWdn/54CS6hsmMgsbu19Pro=;
 b=HNA0E1iq5uDrSInQR53MVQ0cqF32OAVpwsJGWKMGrdsBh4FhnWkd3zK7231MCrBLND
 57Rfav056jFx4BK+H1Jg7MYT5xBoFx8pj8puJBl2doGIchKnQHEvH1IojwX7IuO8BGfr
 wSRh3XFaH+13PcfZX5tRSg8ADWs0f15rpO2nXPEuByZo9TIDnDt1D/0FQZg9efF1Z1Si
 XtAfoNa+nVWHpCVh66Jo+ovc4BeB2RKfxGASZvdNCPQEvrHPqotrh5yrepe5HKc8DQMA
 LGLt443ssR9Dx8OE4XBOBXEPkdb4VVDxYLVN3Av7vL5QWTmQBDgp7Sz64AegitkzAtF5
 sREQ==
X-Gm-Message-State: APjAAAU2bY79JTCiLmn6hw3+ILGFFcxozxaI4phUUu4ygtMl0N+aRWrl
 dFNT3fc42lXfFXmOU4UInMwHHuRTI1s=
X-Google-Smtp-Source: APXvYqyNeh/RKaf68L+vXqVqLoLkpZavQ2W3Xnd/iPV5JNOmdb39n5515aLelaTUJXaJbjErhrpkTg==
X-Received: by 2002:aed:2fa7:: with SMTP id m36mr33207887qtd.344.1562186477682; 
 Wed, 03 Jul 2019 13:41:17 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id y20sm1452439qka.14.2019.07.03.13.41.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 13:41:17 -0700 (PDT)
Date: Wed, 3 Jul 2019 13:41:13 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 1/3] net: stmmac: Implement RX Coalesce Frames
 setting
Message-ID: <20190703134113.0e256b33@cakuba.netronome.com>
In-Reply-To: <003df660052f33891ab74ee79c5f1272b72bde54.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <003df660052f33891ab74ee79c5f1272b72bde54.1562149883.git.joabreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_134121_905653_FF5DD11B 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  3 Jul 2019 12:37:48 +0200, Jose Abreu wrote:
> Add support for coalescing RX path by specifying number of frames which
> don't need to have interrupt on completion bit set.
> 
> This is only available when RX Watchdog is enabled.
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>
> Cc: Joao Pinto <jpinto@synopsys.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Chen-Yu Tsai <wens@csie.org>

Acked-by: Jakub Kicinski <jakub.kicinski@netronome.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
