Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C904BA58
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2zAswivVyHv0pGLZSzslZkKzqVW2s01HaiaOYUlOzQ=; b=sK7YTsiW4YJwgR
	3CeRdRXSsTKkuchZHDD1x1wi7QwJ7K5ElrrgE6GF0IsZAl0YheA60JriTXQUD5ty9OG67fZ3A5EmS
	tcbrlxy1PG1lsEtarLoWO+uW92xssSVMFl9AB7yTccCfiGrItxQyJ0Y23MFWpEIycCbCdJM6sAVj+
	j63utMy1UaKlX1QWp/+HM5RP8ebWfE3Jts8OApmd6CDPZlDfG2yf7vdri6DPOfhOc6Axl+B43c/0e
	TXoduhQbBfWMQL0mUSJruZ2PDK1SSuaNx5+jilB5Yh2zxIthtoEfty1/Gd8pfQ0xVIHXiHfE1BMG1
	9zLIPpDFGn4owLEvMHcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdarX-0003Wx-CY; Wed, 19 Jun 2019 13:42:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaoB-0007mj-Jp
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:30 +0000
Received: by mail-lj1-x244.google.com with SMTP id h10so3342496ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6cfr75PYkhImaJ7XOt+alqHVOPI9CGIlZsta+QO7igY=;
 b=dzHlcp2kPtqUwK7RKt17G4fCyMp2t4QnmB+R6Yv3tJqRPYeM95AHtoDHKDGiTPMctE
 ROU/eGEffj1je2EHsz31XEeq4XjwEKcY8dwXxw2nlk/gjXBuYrqXkQ5gJtQOssdXZnGm
 f1YzHWINmTS1JU3snNzv5DeRk+Uj57kgTGVizRzIBLLXin1od4ENGyE4csKlkPUyP4dp
 UO7hq6BKNn/1z02tuSQYSo3X710up3NZdi+VNkCNDzPfNX3GV1snTY+WOlwlCQTdKsWu
 u9GVdUiBMp2kCSfIVMA9NTDYL7CMGuYIhLQOWkEJ79dBDXD2UWCT7bp54aDO8WfxtqYa
 s3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6cfr75PYkhImaJ7XOt+alqHVOPI9CGIlZsta+QO7igY=;
 b=DP8udiCVRfaV4PmRh7odEh+jgkBf+Jmbtq8JzjMiCs5J5TSxrdcvPFYng2sK5gUtlx
 cCDX1aNp87wPQAPCEyLn0pI7eQzEXZo3I2mtCySXoD6jj+KlSXZGE8WTuYZ13zbU63ID
 dV9UwCR3bju2/xPyyWgiww9tSWfUUDHhHzCRv0iZkh4BA/q4Y/4Vl/iIpgBD/Q1iBH8A
 6+T9rRI7QUP2GG9Q3hN9XyVPLDUMvVKmppwgKuzbcFSm+VsOrGD3c/s0jOS9UHyOdg5l
 r0fj9Kw3n2yYkOc52efdH8h1YkqbhCbmWl5WAjsMKavmRqBA0S1UMAPV6r6TIz2bv43R
 z8AA==
X-Gm-Message-State: APjAAAU7fmti5ew+9qFMWGJt3kc/T5m0mHUNhhmNvjicigpB4lcBghVf
 duOQlKsf9hJ31g9pq/Ng35OrRQ==
X-Google-Smtp-Source: APXvYqyM+xKsJN4hrNkIs4PZgKa4NSAJKmOKIioVA3ZIzdG5pPcie9Dvw/8TrUd+UPjWP3b6FDEy7g==
X-Received: by 2002:a2e:89ca:: with SMTP id c10mr7510192ljk.106.1560951565271; 
 Wed, 19 Jun 2019 06:39:25 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h22sm3111044ljj.105.2019.06.19.06.39.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:24 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:35:38 -0700
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 1/6] Broadcom devicetree changes for 5.3
Message-ID: <20190619133538.64htegz3xepd2mu7@localhost>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612025028.13118-1-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063927_853410_FE0C7E31 
X-CRM114-Status: GOOD (  17.07  )
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
Cc: linux-arm-kernel@lists.infradead.org, arm@kernel.org, arnd@arndb.de,
 Kevin Hilman <khilman@kernel.org>, Eric Anholt <eric@anholt.net>,
 Lukas Wunner <lukas@wunner.de>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 07:50:23PM -0700, Florian Fainelli wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/devicetree
> 
> for you to fetch changes up to 34b1441452e550169b4d3647a4f851d9332d4b76:
> 
>   ARM: dts: BCM5301X: Fix most DTC W=1 warnings (2019-06-11 15:07:56 -0700)
> 
> ----------------------------------------------------------------
> This pull request contain Broadcom ARM-based SoCs Device Tree changes
> for 5.3 please pull the following:
> 
> - Lukas enables DMA support for the BCM2835 (Raspberry Pi) SPI
>   controller
> 
> - Florian fixes a number of dtc W=1 warnings in the Broadcom DTS files
>   and provides a fix for devices failing to boot after the removal of
>   skelton.dtsi (that commit has been submitted as a separate fix)
> 
> ----------------------------------------------------------------
> Florian Fainelli (9):
>       Merge tag 'tags/bcm2835-dt-next-2019-06-01' into devicetree/next
>       ARM: dts: bcm: Add missing device_type = "memory" property
>       ARM: dts: Fix BCM7445 DTC warnings
>       ARM: dts: Cygnus: Fix most DTC W=1 warnings
>       ARM: dts: bcm-mobile: Fix most DTC W=1 warnings
>       ARM: dts: BCM53573: Fix DTC W=1 warnings
>       ARM: dts: BCM63xx: Fix DTC W=1 warnings
>       ARM: dts: NSP: Fix the bulk of W=1 DTC warnings
>       ARM: dts: BCM5301X: Fix most DTC W=1 warnings
> 
> Lukas Wunner (1):
>       ARM: bcm283x: Enable DMA support for SPI controller

Something went wrong here. I merged your pull request for the missing
device_type that had commit e8bd76dccd79 for that patch.

Here you have the same patch here as 0e9e8c404ec2. While git normally handles
this alright, in this case the warning removals changes the line above so you
get a merge conflict for every file and that's a lot to fix up.

Would you mind rebuilding this branch on top of your fixes to keep that patch
at the same commit?


Thanks,


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
