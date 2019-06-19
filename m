Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282BD4BA45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XyetqVjyKLooK3CAiZ0ajLssjjDJLcL5IlRKyarCE4=; b=lZqAerdoTkWZR/
	fP6qBvTp/SaqGhy4TTL+Ifqh9L01GNR6X3bRM3r+Ft5S9ORLmynDUGuHte99yJ8zkBbH4cFKWqHqV
	0cwRy6GYY9jpR+LaZnyrlaZ5iUPngvq10rdC1yJ9ouuK7vpwJySpo/OAkqW9bvMMFESWLIoV+vcTj
	K9C1/Q9coUp22sqX3kCPpiGBR4TXyqj5xNkWeDpCzYQaH/EVNWjtXxEAk51jlVDMYtTXkRDH3zDb9
	KaHMznZE99bM3KLrApCS54EyQi30DNHsZdFjBV03bU9MeqVv68UPezAomkccFNwlB1vfdRvxAqMXA
	+OO6kkpk/LZA87tjeSWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaq2-0001pG-Os; Wed, 19 Jun 2019 13:41:22 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdanx-0007YZ-9h
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:14 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so3299359ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ucx3vBIr9v/KB3jQduDgpxTSJPXoyxluhkSPQYUaMPk=;
 b=CzBA7UNWneOhTeb3OKYUCJhJgZdwuoQTqvhbTiQVLI4lJdIQKi+uTQ9bQkjfCtgQum
 yO7nGDnc3RWR3P7wxoJW+XR1p9Rt+T7IhBr3jkeMAtknV3JrxRKh8VqSSHC1i5TZyCto
 IKpeAQ+RrklnJvOzfNn0ayKHXMsiH+EtmXPo2KLeRhGbtJSEk1rer3Pbh7dsTflTVAjv
 avnSzd55cdDF9lcMMuoQ3T6DcLwJDqWcLnhVVFjrJENgmut+Op1VBz3bm4DyEBsuiizc
 R2wB2GR/gczzTucTclUgW9LEWQhMfiL0rWxwrOQ1rpQDev9k+Regtxacu51ZxuPaU+M0
 X1NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ucx3vBIr9v/KB3jQduDgpxTSJPXoyxluhkSPQYUaMPk=;
 b=QkkP7K/kKLejiRaXrUzpraUgJwcCTTJC31xU87IH8q/Ay8RZkSJml8P0pbgGK0Do0t
 MeNhCWhXXEMCAbkE5KdOQCfpkDRfd7Uo4edp/UZ7g2HsUeXpcA+7mwV8w2c1047PfS6E
 g4Pmz4it8cjNowKmSCvHH3svTVRg8gmvAp6t17p6bo5mLKYW7RryNZwjZ57sjUnOH1Wc
 Xu7Qtk6mfwK0OFqKKU5ukxbQJl/uxscXwBMhc43IXadD6bO/8NeuNH1sKM5pHQvO3kAv
 jQ0/6KDfR8nfsIISFAaaC4LmfojqzRRQSMHrO9qd6gar1pnCxPQN5lIYm//nQ8wPk5jv
 /JmA==
X-Gm-Message-State: APjAAAXX9E3VskNEExpPDf1PXoA8xvD5pxdW75do8zwYFI2hi4aPD3vR
 l9MYXLSihTsjXsSKvv4/vVxCzA==
X-Google-Smtp-Source: APXvYqzF6ftEwUF4UOu1qXVU1V1XOYc21DNc7IRBvfAs1yExyq55IblUzGnKvFPbDSQCpEgy9/eqKA==
X-Received: by 2002:a2e:8ed2:: with SMTP id e18mr20245561ljl.235.1560951551146; 
 Wed, 19 Jun 2019 06:39:11 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 2sm624474lji.94.2019.06.19.06.39.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:09 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:25:09 -0700
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 2/6] Broadcom devicetree-arm64 changes for 5.3
Message-ID: <20190619132509.ax3ze24jgsypicgv@localhost>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
 <20190612025028.13118-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612025028.13118-2-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063913_366822_B73A6923 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arnd@arndb.de, Scott Branden <scott.branden@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>, khilman@kernel.org,
 Pramod Kumar <pramod.kumar@broadcom.com>, arm@kernel.org,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <ray.jui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 07:50:24PM -0700, Florian Fainelli wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/devicetree-arm64
> 
> for you to fetch changes up to f8526c2d99ca87ccbc0a3da00555d6d08e25d058:
> 
>   arm64: dts: Stingray: Add NIC i2c device node (2019-05-20 09:31:35 -0700)
> 
> ----------------------------------------------------------------
> This pull request contains Broadcom ARM64-based SoCs Device Tree changes
> for 5.3, please pull the following:
> 
> - Pramod adds the Device Tree nodes for thermal support on Stingray
> 
> - Srinath adds the Device Tree nodes for both XHCI (host) and BDC
>   (device) modes
> 
> - Rayagonda adds the Device Tree node for slave I2C operation when
>   Stingray operates as a SmartNIC

Olof merges this branch to arm/dt. Olof thanks Florian.


:-)

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
