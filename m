Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8DEE87B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDpGlRzIQRoHBB67KQ7eP54zRlDAmixxh6uXMX724mM=; b=qs8zHg1MdBIIZC
	6TiIYSVZsABEoS3kQ2g8r9nc8HdwDPjF9OMagrKbu1fvSkTERpjNHm5k8DJ/4M5QvLY3BLbl3e9JY
	CAAzPoqqXoJ/HsGXLSMt7hGLXzajWOfuh24FpOCP0pEkUvQHHilJx0nSMlHNy0WeqDVQhyM+fSDuy
	WJqNidHot3VFKUxAK+6fKqejiGGpoAVg9azPs+nlDD6/3K3W8WSUBYMAXFVL5TtUz5+xuMdcBNThz
	f6s/BjVSu2CMByDpXRXFZAbCKgCV/Te/0IviLUKY58+6oufp2jNxI99yftruyPnOL2Bn86RzQP9Tj
	fn2pKYbcP8/uoPhjEz2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9oo-0008Vs-IA; Mon, 29 Apr 2019 17:11:54 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lK-0003Pe-Qy
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id t11so8457914lfl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6/qit5vhsKsOhS3puXN0ZuQiaarztOsHnZ94NO25DvU=;
 b=jduis7s7XVYcqC7bsRDJn6WuitMgsbmzP6xnA1V3YlB16Sp3p84NnfaADCbNvbw80R
 1pIxfOci9Ftfm536TYR1cIDiaNgXEbwWjMw27DwA+U+v/yTPoPbt5oAAFtysufkkl1Tw
 4dktnnAlCwV4qyv6RsE0QtXscYyIQBvOGgsgI8Qps7WFOdL7aXpdtPK0rEEi/v2lPbKQ
 O6GRiZAMB5clBhm8IQsOccbucT9jqHvgTCctEIL6qYOVw8BFfYQn2sLOHcYBPp8LE4NB
 g7rx230O5GylGs7jCJQEmwEKPfuwv+SV6Aye4K1kA1p2hACpQ5cnEXPZW00B2BQ+eDUf
 Mpgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6/qit5vhsKsOhS3puXN0ZuQiaarztOsHnZ94NO25DvU=;
 b=mvvX/6HbOjK6esjmZ+0RHHmiA2jMLlduoToQ/zpUddkY/U/YMYiw2OE9QjFznQEb2G
 3Q9Q9+mMN9rm+pazh3jA60Df6+QXmvE0I+Gm1j/hj8PoYvmebEbTZoae4zo8Y+SvZgQD
 oNC2Md+hA5zXh57wqTbjFd8YmcZOgLEfF+t0EvzlBDQxXIgN6Ji5MwhF2/1NorCRe1Sk
 UtOk7bSugVGXbb2+S/bH0SEd7/YrIesYHkxpE9RLcJRblYsLynVIaikMwr0gkkfe6sEb
 MvHNbn/N7OfFfotQoz+2g7JVJWYKjyZQw7ES8VlQWKuIkqcUz911uMcgqDH+Ejngyyjm
 n6YA==
X-Gm-Message-State: APjAAAXT7gCrwmbBDo9gZKtyTrVIfQl6HEoE7kdtjaE91qPdCOywiSVZ
 GN6JMzzl3anQb8xikfaYWQOIFVjZWeR9mg==
X-Google-Smtp-Source: APXvYqxrJZ1fp30TumvbFTarxn7TLA98ToE//I3yhSVBJxD/yHE434Mt3o0dZVjCll+TtZGYuI0Kiw==
X-Received: by 2002:a19:4f19:: with SMTP id d25mr23636578lfb.124.1556557697270; 
 Mon, 29 Apr 2019 10:08:17 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r26sm4739591lfa.62.2019.04.29.10.08.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:15 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:56:11 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 3/5] Rockchip driver updates for 5.2
Message-ID: <20190429165611.kziga6dzsgqi6sib@localhost>
References: <3379363.gjmLGbHmEH@phil>
 <1986142.cTRxNIxTfU@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1986142.cTRxNIxTfU@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100819_726909_3F98E67F 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 07:58:37PM +0200, Heiko Stuebner wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-drivers-1
> 
> for you to fetch changes up to bbdc00a7de24cc90315b1775fb74841373fe12f7:
> 
>   soc: rockchip: Set the proper PWM for rk3288 (2019-04-11 13:40:32 +0200)
> 
> ----------------------------------------------------------------
> Select correct pwm solution by default.
> 
> ----------------------------------------------------------------
> Douglas Anderson (1):
>       soc: rockchip: Set the proper PWM for rk3288

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
