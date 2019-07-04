Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94915F9BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqafFTfkmWK/35gna4ZWovKUQd6fAD/xCSG5D+p6uj4=; b=bPGTLOPlojVBJZ
	2yjA8caJClhXIwA1gzTKmoiGlne+O+hpVtHYrceJvJ82fViGI0kq1bUiMM1iL0n1p3gtcGPpVa8TB
	c97rpL1GPd7GTWrQoLkLovNG1oCziIqbBc2gHc5YyV9DKQ+PAEe7KeK/HjpZvcWyPNx84yFNHdYKt
	WDWYxovOK+y3DdFSjPRXzD06MX6FHiVQTf3N443a7TQmjtcmCEyvAZ40ccFkpMVHRh1kq0JzGbBYb
	Z29uUKd5c8PArAwziyrH/nRjoQLlHRLwYNYLyvs7RJnCotYOgmENzicBsPGKYig/8xpQ3eZQMkFCr
	r7e0ou6EIFxEK2RHX1zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2PK-0006Ms-AH; Thu, 04 Jul 2019 14:08:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2OW-0005qO-KR
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:07:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so6309862ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 07:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Kj1x8IFnuBK6ev5K60Y42PoI/WzWOZCFAcszDhR0liI=;
 b=JtAsm1rBm/ojEyGe6v9N+WyV4TCeYdWZpGff35S7iVTTBUAGF85qRyDGj5//OdXJlH
 9cRpn+XSDaztOO+NPCn9uiugVwwM4xKT0Xr9krl1S7iquQAyYrw4HG2FVVq93bKtH0Sr
 cyb1mXMA1r3ivyxAX1B0psR3OMdXPmeZSbE2TOxYs/XBYl2/1L+OytdHAT0i3ZzPZyFI
 k27mgjYIBk9Nppf6ClaNJHjzOxeACX+Z1iL1J+OE8xnMKtNlkKVfpd679w2VGFoLzefX
 zq3cENsZN4CsmpgmtA3ZjwHcGHqC09rlSu0ecWmIY19hQ544g0GJoG4vIoBYaOlMZj3u
 jFVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Kj1x8IFnuBK6ev5K60Y42PoI/WzWOZCFAcszDhR0liI=;
 b=eFKwOh8o0iOTFuxDNQsRHqTO4FnHA4ty9FdbNw2oFjUtV8SAAYg1DvR9F3kJzBsV3u
 KoUbTq0yTHg1tV2hU6KMInvVDjrtny5WhMwE7JlUiIxNlAGH3yBWoGfqH/Qpgn6hRYw2
 eWRUC/cN9pIyK0+/zQMpV069l9iNFZr5U5Yx9uwSTLQ4FvXLFhDh0HEH8gX+8gCXy2gB
 H4y6VM3XwQ+e5P3clu5p4hoHs/nPBlkcFqCZWaFgN5o7cUm7nQTUWxJy31aTHmOIqKf0
 jGEnkAagKmBpSwnJOt7osL78TGoqq/AlgWl0+uWJN1XXFCCeHUegD1Nqa1kAuxexgYb8
 AELQ==
X-Gm-Message-State: APjAAAVhWwh8XdSiHIDEDzfuv3BNZi/p2dA9GfPz3O3AdNWVRXNUebr+
 WouKRmQg1oD497RMuhta20liuQ==
X-Google-Smtp-Source: APXvYqz7IgO3mcsMwiirUW4rRBp2r13jTnNFkvKGbvbS7RQS/ZpA8HrIQ8uJvmY7wzY8NPUuSxB5vw==
X-Received: by 2002:a2e:654d:: with SMTP id z74mr25008799ljb.111.1562249247325; 
 Thu, 04 Jul 2019 07:07:27 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f1sm1136982ljk.86.2019.07.04.07.07.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 07:07:26 -0700 (PDT)
Date: Thu, 4 Jul 2019 07:05:35 -0700
From: Olof Johansson <olof@lixom.net>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: Reset controller changes for v5.3
Message-ID: <20190704140535.hnmynkexdamazc3z@localhost>
References: <1562236632.6641.14.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562236632.6641.14.camel@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_070728_689341_E9F852D5 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: arm@kernel.org, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 12:37:12PM +0200, Philipp Zabel wrote:
> Dear arm-soc maintainers,
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.pengutronix.de/git/pza/linux.git tags/reset-for-v5.3
> 
> for you to fetch changes up to b108ad53bb65c19ae8e2d9c7fc0d052b3d9c153b:
> 
>   dt-bindings: reset: imx7: Fix the spelling of 'indices' (2019-07-01 17:08:13 +0200)
> 
> ----------------------------------------------------------------
> Reset controller changes for v5.3
> 
> This tag adds support for the Bitmain BM1880 reset controller to the
> reset-simple driver and fixes a spelling mistake in the i.MX7 reset
> controller binding document.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
