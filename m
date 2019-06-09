Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6712D3AC7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 01:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+HWcjQ89sp5VhNyc3EBK+GxBBKEmy//3LXllNQd/5E=; b=kwDwh7lMek5wla
	fdwTvXWHA48deyJMhOYmx3LqWz84bwgoVqYVWm1PTKEkIh1bIXvn0k9qoO1ZdVTkAVXmWOBL3F2u8
	z9zHVIxpjKscRVFkP9WQ6UicTg4Kkqe+H/SrED3wv8MGX4vSCdZYAT24/tbTiPJ2MdmMNUMmnmhnl
	wBDStYCME0oKuaJ+xxnsJsaoc1einRYYuXrRhvdJ0gQUb++Bq63ibVVfinxcmgSQMKkwSdOl352BE
	xJt/9ia57V0BvabiIouNM6v3pzgDIbYwdwuOkkVG/Md2XYNcLkoimFVWxA+2Hrz9rMIsYi0YAirnz
	l1mUYKMtuPO0h5kJTwWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha7UQ-0008D6-No; Sun, 09 Jun 2019 23:44:42 +0000
Received: from chill.innovation.ch ([2001:470:1:5ba:222:15ff:fecf:4ca5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha7UI-0008Cm-Ar
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 23:44:35 +0000
Date: Sun, 9 Jun 2019 16:44:27 -0700
DKIM-Filter: OpenDKIM Filter v2.10.3 chill.innovation.ch 9AE26640134
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=innovation.ch;
 s=default; t=1560123867;
 bh=ANHQkXMvHNXcU33vNeXl0bkJnCxtdn+016CmezBUMIk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dDgP2GehsA5TCdzYC+SZQsOwxy0QkTU27vMqeUB62ipzo1alidjlf1i9tl55dZabi
 KGPsKiYP3JoaNBW1iy+EKAKXMRkq+NtHeGIFI7qYkpPORJS8rsyef7fu8zmwTPJ4es
 IToByZJmMiYsdnmSnTQvFixf4XUeR6UGA/f2DnI4MXAlsS7QuLbp/R2ba6xDrVUs4z
 ++eSCviRnOoD7bDTPMNbobdebX4H/fKCvp45ux+bHV7ac0asnyH6EYRgswp9tYQVq9
 dtY8hgXrkcGPuPUD9MREyIeKQZVz7M0fsikt9yDM0qdzEoPGF3YbqxVL7OGVIYJ8oB
 U2c9NC/InOHMA==
From: "Life is hard, and then you die" <ronald@innovation.ch>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2] spi/acpi: enumerate all SPI slaves in the namespace
Message-ID: <20190609234427.GA16597@innovation.ch>
References: <20190530111634.32209-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530111634.32209-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_164434_383297_4A05D561 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lukas Wunner <lukas@wunner.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org,
 andy.shevchenko@gmail.com, broonie@kernel.org,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, masahisa.kojima@linaro.org,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu, May 30, 2019 at 01:16:34PM +0200, Ard Biesheuvel wrote:
> Currently, the ACPI enumeration that takes place when registering a
> SPI master only considers immediate child devices in the ACPI namespace,
> rather than checking the ResourceSource field in the SpiSerialBus()
> resource descriptor.
> 
> This is incorrect: SPI slaves could reside anywhere in the ACPI
> namespace, and so we should enumerate the entire namespace and look for
> any device that refers to the newly registered SPI master in its
> resource descriptor.
> 
> So refactor the existing code and use a lookup structure so that
> allocating the SPI device structure is deferred until we have identified
> the device as an actual child of the controller. This approach is
> loosely based on the way the I2C subsystem handles ACPI enumeration.
> 
> Note that Apple x86 hardware does not rely on SpiSerialBus() resources
> in _CRS but uses nested devices below the controller's device node in
> the ACPI namespace, with a special set of device properties. This means
> we have to take care to only parse those properties for device nodes
> that are direct children of the controller node.
> 
> Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
> Cc: linux-spi@vger.kernel.org
> Cc: broonie@kernel.org
> Cc: andy.shevchenko@gmail.com
> Cc: masahisa.kojima@linaro.org
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Jarkko Nikula <jarkko.nikula@linux.intel.com>
> Cc: linux-acpi@vger.kernel.org
> Cc: Lukas Wunner <lukas@wunner.de>
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/spi/spi.c | 103 ++++++++++++++------
>  1 file changed, 72 insertions(+), 31 deletions(-)
[snip]

FYI, I tested this on a MacBook Pro where the (SPI) keyboard driver
depends on those special device properties, and verified this patch
doesn't break anything there.


  Cheers,

  Ronald


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
