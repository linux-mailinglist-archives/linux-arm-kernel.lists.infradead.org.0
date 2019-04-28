Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072FFB683
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvRFu7JQ0t0Hwb45IEtUsoH+BIKsXprl3LTZmwryu1A=; b=HFRP5r5Lgf0xnt
	HdAb1s7s8Wk4uVc7kmCxbIoVgj06GJrNxpcrp9MUh6YKMkLYY49DeZvb3s6MObi+CETK+LweFdSDi
	Tubw+BSt9fbqXiyKoDztxnTMdfEfdYu1OCAq0ezJZGMcehwTvqvlJE8DhUtAgLcGY2UWurlWk1WJG
	/XC5jNdVc8FxogqiWK3Z6TdhclN7bdBX7PtvuBcDPVugpWRrykLS+D7jDL+Sap3EfhXbyHqfffJXt
	UWpiElID/SO/sNcZhqfPQYIzjVt+qO7rbhIzeNJWGgYCCElhs5QwashPXcdth63ci2HuySrpelqp8
	R8yyH37bvq/KIFiVC5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqIm-00020Q-Ou; Sun, 28 Apr 2019 20:21:32 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGb-0007N4-GG
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:19 +0000
Received: by mail-lf1-x144.google.com with SMTP id u17so6361874lfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TKheEK4Mvlr1iGnrml0cmF12fi/Fi51zMsruPqmifK8=;
 b=FHqy2dH13C2cb811s+ebifSwbh2zzFy/E028zX15qmDhprvenKspklamsCMgcGJy12
 54X8JJD44Icg0GqL/6VmilO2aSTxYk+dTjpKUZB/FiTnoilDvvj9MTGbnUkiD2UtZsDA
 m9Bqzya9r3ghmX4pq3JK68Y4czwZpQ8jdmTAfEZvaDXwSr3VlBEtWYEMIzJ/+xLHSzbD
 85AKsyTnz7zwuy43jWhb6Vc1m8ruq4Upi5tF8audgsmP2eFH+tSet2ouNsQqK/iSdHyn
 jFiN8FraWh5ZCvUYQO9l8ayL4fhaEsK0hntsLrFGZzbjvT5L1yJ8Kl/yRgPvs502GC/0
 tDCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TKheEK4Mvlr1iGnrml0cmF12fi/Fi51zMsruPqmifK8=;
 b=Avyep6qBVKguTwMbhyKIUwgVX+1vO0QyLYFEamKvCxaR7Ne8EidpVVplux/+cSevvW
 4wKCQn2NSd95iz/8YZ0Yw2iCK420GKG/3cSAg0xjYBu6eZLCFNOoe6Ak19d6gsVNTgeD
 ozCreeGupGcrQZJdT0RajjhvOkc25C91Q1+5zE7PgkzWOY9jIVHbbEKtdKQmLlDjk0ol
 ALbNgM/18yIGIDzNlfdASwOlJNJvAmO+W/MuWoPnJVXsjF2L6JJaxd6A3U3D57nvqni9
 Ubi4hKsuDai9LPxlLOEVue5OWsxfgQ8Ebn0snwEHzuGsdb4DL2JMTEToXkAiAKUtuVB+
 IHKQ==
X-Gm-Message-State: APjAAAU2qe8x0xGeMFJFFHmA9RuGX9GsnpYwMOJ9/ec1HfbJTy6LyL6F
 Anx3zUkL36AFQpCASZe2O8otNw==
X-Google-Smtp-Source: APXvYqw+xkvTBDsZMcintk2dF+/MTmVgLca1WTLKcIw8qsfu3qHXt0oVSVTlbCP4D9CQz5sx+fj2uA==
X-Received: by 2002:a19:3f09:: with SMTP id m9mr29923580lfa.36.1556482755566; 
 Sun, 28 Apr 2019 13:19:15 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id j13sm3200859lfb.34.2019.04.28.13.19.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:14 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:16:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM64 Based SoC DT Updates for v5.2
Message-ID: <20190428191642.ifgz3fgmzrmfcnkt@localhost>
References: <cover.1554281697.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1554281697.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131917_580301_4BE1DD55 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 03, 2019 at 12:53:48PM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM64 based SoC DT updates for v5.2.
> 
> In keeping with similar early pull-requests for the past few release cycles
> I am sending this now as a number of patches have accumulated in this
> branch. I expect to send a follow-up pull-request closer to the usual rc6
> timing.
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm64-dt-for-v5.2
> 
> for you to fetch changes up to e3414b8c45afa5cdfb1ffd10f5334da3458c4aa5:
> 
>   arm64: dts: renesas: salvator-common: Add GPIO keys support (2019-03-27 13:02:12 +0100)

Thanks, merged!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
