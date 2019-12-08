Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9E51163FD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 23:38:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmJeIUDQvnphjiBsGlWJ/Xt7I5BUfTPQZEBjPA0NUnw=; b=aPpmfozwxFVMar
	iGTJKapHDEWI5/hpg9zKpcLq0z9jr582YzEKbkGaNkhiyyjqwfr4ATJL/X+++EkHHFJ7hgAKnJAR9
	dJRvn5uz3TZtpsN+kV9TFyoxRi4CFyvQi7ZBo9QEU0niR9zepDvhfzI2QP0/9e1ZCVjezSFT/VaNS
	hEe77Huuj1CZZPbpE2scYKUPSF2e2AbqvMaqIgu/yrJNxG1T42uIogdBZFSnO7JXLD/UpUIKhQNil
	R4pdzg0RE/MkpvyaTmUmFZaK/klDNOeIsD2YSlf4wwJOc5LkwZBt5RG4RgIdPfIoYKZ9uYRixfIZl
	FONqB5A0V0nSibImbOMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie5C7-0005gK-GD; Sun, 08 Dec 2019 22:38:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie5C0-0005fg-8g
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Dec 2019 22:38:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id o9so4956486plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Dec 2019 14:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MnvBbRT5iVZH0+Nzu+hGknTgiT+FwnkKwwLBbL9Zn4g=;
 b=oJoEzkbGwyMIJYmVqOV2vuz/nVqn5wdKUiDyDWQnIBOMICxwbI9aDzJfCuB9Y5iz7A
 cYjrttcvemVXPD6YhJnYemHbQ/Naq7G9isQY0oR6+07H8S2b4eBvagZc9RclbtVo5Oxt
 EEtgMLcfs3J/3c7VT8SDTP1NT7EG5oWzUt6oghdywy2GuZgCnU0DBs9lHL3YueZxCnll
 opyw7vdw3nGJ0w3W/tQsa3eFJx47fu5QCfnzoGRI1NK5i0R/BNV9XbBvqda9vMcGJmJV
 RUEUm6WbjWXlqrwxY6MUbY7tVH+4k0/AzXb47fspet8I73nnbz2lmJO3yvHxVkHo66SO
 GwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=MnvBbRT5iVZH0+Nzu+hGknTgiT+FwnkKwwLBbL9Zn4g=;
 b=GykXNV868j9QRtbmcNnlq2wEh5LEmBjXaxmxhoNncBmfVy537ExNIaYwGcfawCF7iR
 liHyW4gxpdOt4va9MfU2CdX68CobRF26QeRK4XL11E4oDbLlHrsuduxDwqHFxSgsaxHn
 E0I1lHaikLZoJKvQZm75CD3mbItBP4yz1aawQu6b4hm+87k2vFJOlPFvi9oKPAas/JvN
 QwRoRTw8PGXSws94pGNbAXEcVx72FH1HdqO4lutEiEf52mCaiXuR5gbpWdUVi48rZPrI
 MoMvUniC1qhD+QwxRQxLRIoyuW2FPPLaEIbNFVF9VCFZ3bvJEYt+5Trv2lNdXDTD+9nA
 bu1A==
X-Gm-Message-State: APjAAAWyHK9De+pU9rFQR16oadaU37CXKPhmyW7P20oDgvW4T98QBnwa
 0bALaTwExGa9vWlUvJcD7Ms2k5uJ
X-Google-Smtp-Source: APXvYqyTH+955DDw+6USZnKhGT30ibfdBdfKpDWuHsUCEHkmZ+v1u36m47xK1OHv9GIbrg7P55OpWA==
X-Received: by 2002:a17:902:c58e:: with SMTP id
 p14mr26026826plx.202.1575844696307; 
 Sun, 08 Dec 2019 14:38:16 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id u2sm22210820pgc.19.2019.12.08.14.38.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 08 Dec 2019 14:38:15 -0800 (PST)
Date: Sun, 8 Dec 2019 14:38:14 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Michael Tretter <m.tretter@pengutronix.de>
Subject: Re: [PATCH 1/5] arm64: zynqmp: Add firmware DT node
Message-ID: <20191208223814.GA21260@roeck-us.net>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
 <20191018160735.15658-2-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018160735.15658-2-m.tretter@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_143820_330028_F4D96F80 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rajan Vaja <rajan.vaja@xilinx.com>, michal.simek@xilinx.com,
 qemu-devel@nongnu.org, Rajan Vaja <rajanv@xilinx.com>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 06:07:31PM +0200, Michael Tretter wrote:
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> Add firmware DT node in ZynqMP device tree. This node
> uses bindings as per new firmware interface driver.
> 
> Signed-off-by: Rajan Vaja <rajanv@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

With this patch applied in the mainline kernel, the qemu xlnx-zcu102
emulation crashes (see below). Any idea what it might take to get
qemu back to working ?

Thanks,
Guenter

---
[   30.719268] ------------[ cut here ]------------
[   30.719403] kernel BUG at arch/arm64/kernel/traps.c:406!
[   30.719971] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
[   30.720358] Modules linked in:
[   30.720741] CPU: 3 PID: 1 Comm: swapper/0 Not tainted 5.4.0-13331-g9455d25f4e3b #1
[   30.720852] Hardware name: ZynqMP ZCU102 Rev1.0 (DT)
[   30.721157] pstate: 00000005 (nzcv daif -PAN -UAO)
[   30.721261] pc : do_undefinstr+0x2f4/0x318
[   30.721336] lr : do_undefinstr+0x1fc/0x318
[   30.721410] sp : ffff80001003b930
[   30.721486] x29: ffff80001003b930 x28: ffff00007d178040
[   30.721597] x27: 0000000000000000 x26: ffff8000117d0514
[   30.721683] x25: ffff8000118c90d0 x24: 0000000000000000
[   30.721769] x23: 0000000040000005 x22: 00000000d4000003
[   30.721854] x21: ffff800011e1c850 x20: ffff80001003b990
[   30.721940] x19: ffff800011e0fa08 x18: 0000000000000001
[   30.722025] x17: ffff800010c0f1d8 x16: ffff800010c11fb8
[   30.722111] x15: ffffffffffffffff x14: ffffffffffffffff
[   30.722196] x13: 0000000000000018 x12: 0101010101010101
[   30.722281] x11: 0000000000000000 x10: 00000000628e21fa
[   30.722384] x9 : ffff00007d178858 x8 : ffff00007d178880
[   30.722471] x7 : ffff80001003b8b0 x6 : 0000000000000001
[   30.722560] x5 : 0000000000000001 x4 : 0000000000000001
[   30.722646] x3 : 0000000000000000 x2 : 00000000000174b1
[   30.722730] x1 : ffff00007d178040 x0 : 0000000040000005
[   30.722913] Call trace:
[   30.722993]  do_undefinstr+0x2f4/0x318
[   30.723070]  el1_sync_handler+0xb0/0x108
[   30.723138]  el1_sync+0x7c/0x100
[   30.723201]  __arm_smccc_smc+0x0/0x2c
[   30.723272]  zynqmp_pm_get_api_version.part.1+0x40/0x68
[   30.723352]  zynqmp_firmware_probe+0xbc/0x298

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
