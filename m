Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00036E853
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGHC6NrBuBfdTtPVZX19KYNugVClClJttGbE4F6dgLE=; b=MoA1yuf1537Bkm
	gDdnhTQY26pX+P9R4gJINKOJFxvwLMKj+WFsq9XQLspFzfhoWyjpGDK0jmQC9HMlDFRAdtYlOmPUM
	3/SupDRQECUd6P5vfsfq7TFqK9jNn7YBYBJOm0uw2OE205j3Duwb8MvC6DMDzGoUmHFEfvUvnwfFJ
	YCp2WNjf6/uSgCrla2KSTM23VNgzSj0t6QBHcIo18jiUN2cVtVuuF7FBaevTEZwGjErivjnl3VsDP
	zlxN1+zoDYBUbg61k69F/pccLB+KIBL8kSwHTANKLRYWjx197U/VNIfQeSZECW7qiai2c9BjSboA3
	Q1y4Oy3QiYSAwgUQ6oXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9kg-0002Wg-Fd; Mon, 29 Apr 2019 17:07:38 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9kY-0002Vz-Ci
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:07:31 +0000
Received: by mail-lf1-x133.google.com with SMTP id d12so8578494lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KCCgXiAsZbuN4MXBv/2NOgKl0pkcTsFbGSrEQgxns7w=;
 b=Ook2nuHvq9NBshRpt7WHs25c6pbRgVr9jMI2r48LwNuytBrxXk8pjEHr+2PshHz1w/
 B+Zt8SNBF6zA+Am7kzMEBkUgaLUui1Lto0GMBz5bVc769zgbW7b9npRmIEsdVvTkNdcE
 pSr4238XkFdC/mdrGnYf781uQjWGI1JOrkQIPfeZftTk8BhecJicr22pLZxm0lWnCE+c
 UpPoBcFv0XVXalJ1yFYH9ZHik2b6PoMmZLyolaKJwSbN+maR8FuuciIZXhLkme89lE3/
 kXIuKjfgvuD9/dNd0JUbFAaqzJs7eIhaS/COu51UyexTq3MAJbVgis9AJWn+co/z9DwQ
 eSEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KCCgXiAsZbuN4MXBv/2NOgKl0pkcTsFbGSrEQgxns7w=;
 b=my224VotMz9RpleqH5DD/VJ2uDCwceI6Ph0ieZsDlw4zWJa932rD9e1bNi4OuQi78h
 iTT4kfxiWQwBSubDQIk7uz3QSdDPAfpgPpqkjETDvWzImYwL9U4tUJPKz8A85RkiwSLk
 38u2ZVKny8RjtzPwCLtE8zmCBUhUbQkCREj+v2XZvBQiuAWKJaRHC9ov5/E2mAHTuwj5
 HTLXdox/PDcLeu4yCaCy/Ou6dMTMW7L+YYOQtUyCJpLiW+SToTLrckAT7/n68aOcaNaX
 D/Mr1zWlaLiwFFY+fHj4EPUmiDDZ8j5jZr5VHlFzOSdY0Fd+ocPlDmHX+QFyiDcgYOEO
 1eaQ==
X-Gm-Message-State: APjAAAXK9I69cA0eUqZX5N9tKzoCrAFleJPqeSQ7O3XRXqb9SqH/gGM5
 OOmzcq/VA08Pgkb9IIHUdLVeGQ==
X-Google-Smtp-Source: APXvYqxGtFt3P2yi0kaLCqo+BHb9uWq7xlPA3OZg8JQVIRb3EdDC8w+mHGP1lXMoqFtiYQfT2qNNoA==
X-Received: by 2002:a19:f703:: with SMTP id z3mr33153960lfe.119.1556557648047; 
 Mon, 29 Apr 2019 10:07:28 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u22sm1006325lji.40.2019.04.29.10.07.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:26 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:24:25 -0700
From: Olof Johansson <olof@lixom.net>
To: Vladimir Zapolskiy <vz@mleia.com>
Subject: Re: [GIT PULL] ARM: lpc32xx: NXP LPC32xx platform changes for 5.2
Message-ID: <20190429162425.ucljavusmqto2yrf@localhost>
References: <c8bd765c-9178-1438-566e-bed535ae8fe3@mleia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8bd765c-9178-1438-566e-bed535ae8fe3@mleia.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100730_435745_2D820446 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:133 listed in]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@baylibre.com>,
 arm@kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 20, 2019 at 11:37:20PM +0300, Vladimir Zapolskiy wrote:
> Hi Arnd, Olof and Kevin,
> 
> please consider to pull the updates to NXP LPC32xx platform files, work on
> cleaning up the platform data has been continued.
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/vzapolskiy/linux-lpc32xx tags/lpc32xx-soc-for-5.2
> 
> for you to fetch changes up to e861cfbed091b195eab34874c4af0f85d5388a52:
> 
>   ARM: lpc32xx: use SPDX license identifier (2019-04-19 22:59:30 +0300)
> 
> ----------------------------------------------------------------
> ARM: lpc32xx: platform updates for v5.2
> 
> Here are the changes for ARM NXP LPC32xx platform files:
> 
> * removed TEST_CLK_SEL setup out of common clock framework control,
> * unnecessary header files are removed from inclusion,
> * registration of SSP0 and SSP1 is removed as done through device tree,
> * switched the main platform file to SPDX license identifier.
> 
> ----------------------------------------------------------------
> Alexandre Belloni (1):
>       ARM: lpc32xx: stop overwriting TEST_CLK_SEL
> 
> Vladimir Zapolskiy (3):
>       ARM: lpc32xx: remove redundant included headers
>       ARM: lpc32xx: remove platform data of SSP0 and SSP1 controllers
>       ARM: lpc32xx: use SPDX license identifier

Thanks, merged.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
