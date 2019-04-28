Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6DFB693
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qu+czIZBYIpYO5rR2P3aa5iWGlc84kXCBhrsfE7M8TY=; b=EambS8LnJvu4fL
	ix5zdQgiQpIFR1o2SZo73DSDQCV/oMqDg4P1O43kOmWjya0v4vfRS7wZJKJCc2FyK3hacUNPYjbKE
	y2i1n6CSoiAkakU9QRzh2NOyHbYrfKyScPr2YRUWy3M2io2sXWTwDUQnGs4dGeQW6+yfQqvYtqyYF
	l5tTFG0/a6Z/nPAPNFn6jgU9gMFyyBO/S9oSU6GMPhVbOy6CIbPvDw2RGCAqFsRO4R8bYG2NtvUHX
	XfeAh5KQoA4pDjCMdPUKqC5Om9L/+3kYYnbA6DtxjHJb1gXgPlfTgblWALnFwkbsn0i4qY16Qnygc
	9e394t960jkn4Brz6DZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqLZ-0005wc-Ce; Sun, 28 Apr 2019 20:24:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqHB-00083I-7l
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:54 +0000
Received: by mail-lf1-x142.google.com with SMTP id i68so6201015lfi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wXlwvh7xlArwJplOsmjDl9OYr7vTwvsSMvreHuXNHdE=;
 b=01n8TZWWih0zik14cqmmKIixqlZIX8isrULDLXZWIsceYmHjpyzEYCSF0REGgW8xkA
 yXgaUeOoMgg1YDIGF+FelvQC14QUsmsjTGI5TzeZMQbxigX54LWEMHusGICJd5yUtNZX
 ScugRgH9TGPH7x5e083TYLkan7WWaFYSbepFexADrdtSlG5imY94UCtm5v7DnNCaEbMF
 c/FhC6KznKtRCRbRbfLStvVlrZczHCcdLQ3sxxBLP4JGv3R6JLsr6TspKi+V8F8DpBi+
 Qt55axY4ylfYMJ/E0ODR0fZyKzxbqBhZ/17BlO3bWGWkGWP6rxLNlLPvYOXPINH7QmMO
 ySrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wXlwvh7xlArwJplOsmjDl9OYr7vTwvsSMvreHuXNHdE=;
 b=gg4+J01rCxyopd2qqI2Ox9JsYGQo9+MYTA9TyzsCuJ8DXwntt6Mcp+AFbR2I70Ax+5
 +7KTEgpmixuiENSIqIgnIAYYIgMrqC9BZOa8ek1RkW+Drg+KKVwlbHHMwxZh6TTP87hK
 s1q15Svwj5/pK49aEMslkpJac4o3NbFDXpOKnymFPGRo3lqkAPENnDHufc/9DLLKjbAo
 pwTeNmWyYZ4FSnenSTHrxdC+e7hnB4u0Zq6qoMx+RP+aK6XW0OrveSjTPOOC1S8cjWZJ
 7JKmoDbD2rXqcLxWOfK6zX61ygRfiKkbp+pYpu4RsMqiq1gWY12lRtO02qNe7ad9jTfv
 cmPg==
X-Gm-Message-State: APjAAAU6bYbdEI2PGudqiK96iGcpeuQfTZhpPBsguI/2IESbhakcSyyM
 G0cdwrvaFIR9fhRguyLgeD+C2H/fMjnsuQ==
X-Google-Smtp-Source: APXvYqwUYm7sW6yKQWYZhYANKQVY9mny5ptZyvpA2mExl8zaL6xVYp5Vci05KxPsGQaVj2VyKQWQjg==
X-Received: by 2002:ac2:5107:: with SMTP id q7mr30167963lfb.162.1556482791718; 
 Sun, 28 Apr 2019 13:19:51 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l3sm1052140ljj.2.2019.04.28.13.19.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:50 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:42:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner H3/H5 DT changes for 5.2
Message-ID: <20190428194240.hj6grx3gdhwk55lx@localhost>
References: <20190419115342.gghklvpdnwutfx5n@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190419115342.gghklvpdnwutfx5n@flea>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131953_328976_47E914C5 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 01:53:42PM +0200, Maxime Ripard wrote:
> Hi Arnd, Olof,
> 
> Please pull the following changes for the next merge window.
> 
> Thanks!
> Maxime
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-h3-h5-for-5.2
> 
> for you to fetch changes up to 7aaee3d11689aee0f23f7bf4f6d7b4015bcdb467:
> 
>   ARM: dts: sun8i: mapleboard: Remove cd-inverted (2019-04-17 16:57:48 +0200)
> 
> ----------------------------------------------------------------
> Allwinner H3/H5 changes for 5.2
> 
> Our usual bunch of changes shared between arm and arm64, the most notable
> one being:
>   - Fix of improper usage of DT bindings, thanks to the DT validation
>   - Add the SID for the H3 and H5
>   - New board: RerVision H3-DVK

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
