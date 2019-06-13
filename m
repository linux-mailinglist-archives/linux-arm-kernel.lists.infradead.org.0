Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0AE435A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iLezxXLdqeNJcD7SmKyJP6/6sSM57U8X92vfZ4O53jQ=; b=o6TxitKK47mzAkLNUS+7DNaZC
	lnImlMZe3XblAV/jq7TZ84tP2yv466jOPZvCeJYsR818+odf+VIiEoRokcIn4NGph6Iw3zOKLI3Dm
	V3notugm73KB6dQHe3dZtM11L+W9XZxBmt5oZIDTRmP7KSj7uwpns8kunYh8hzZb4kKQsWYkRBaga
	jF8KH7W6mEy4euOGQHXl2hKEm3NvykFip8sq62ucAAzVNMNgGKuC3L9OPZRVFAv6ptmhUYeTR82cL
	EBAswKQLQ9Kibs7zoH4NrsRQlq54hWFWTvItXndL3f42KI4DdnRY3aI4ZEyx3FQfTPE+Y6TFKtij5
	x/CvvSm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbOA7-0000PR-15; Thu, 13 Jun 2019 11:44:59 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbO9r-0000LI-PO
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:44:45 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5DBicC6024758;
 Thu, 13 Jun 2019 06:44:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560426278;
 bh=psE2nLKFZ7+ZSmRi6W3Pe5WwZKhIgktMnMPfPYYhhDk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=pB9SNiMmPebb5nLUAZhoW7drbf6Ts7NdExHKZiRDKDJe3s0urT1mcH57a9GQ23TSR
 bYv3zpY1Vjubt/ABjr30Fr0RTx7ybow+e8SAbyzbLEMeBsWKApvNLCGfvo+41DImRD
 Pk6VcbA3DZBBymCPijBE+ILE94CU+WSpHx82leDY=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5DBicce021345
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 Jun 2019 06:44:38 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 13
 Jun 2019 06:44:38 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 13 Jun 2019 06:44:38 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5DBiaQM021417;
 Thu, 13 Jun 2019 06:44:37 -0500
Subject: Re: [bug report] soc: ti: pm33xx: AM437X: Add rtc_only with ddr in
 self-refresh support
To: Dan Carpenter <dan.carpenter@oracle.com>, Dave Gerlach <d-gerlach@ti.com>
References: <20190612113623.GA24020@mwanda>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <627167de-1d28-7d7e-dbf2-9f9c02641b22@ti.com>
Date: Thu, 13 Jun 2019 17:15:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190612113623.GA24020@mwanda>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_044443_956850_7EF27E0D 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/06/19 5:06 PM, Dan Carpenter wrote:
> Hello Keerthy,
> 
> The patch 5a99ae0092fe: "soc: ti: pm33xx: AM437X: Add rtc_only with
> ddr in self-refresh support" from Apr 3, 2019, leads to the following
> static checker warnings:

Thanks Dan. I will post a patch to fix these.

> 
> drivers/soc/ti/pm33xx.c:254 am33xx_pm_begin() warn: 'nvmem' is an error pointer or valid
> drivers/soc/ti/pm33xx.c:293 am33xx_pm_end() warn: curly braces intended?
> drivers/soc/ti/pm33xx.c:417 am33xx_pm_rtc_setup() warn: 'nvmem' is an error pointer or valid
> 
> drivers/soc/ti/pm33xx.c
>     247  static int am33xx_pm_begin(suspend_state_t state)
>     248  {
>     249          int ret = -EINVAL;
>     250          struct nvmem_device *nvmem;
>     251
>     252          if (state == PM_SUSPEND_MEM && pm_ops->check_off_mode_enable()) {
>     253                  nvmem = devm_nvmem_device_get(&omap_rtc->dev,
>     254                                                "omap_rtc_scratch0");
>     255                  if (nvmem)
>                              ^^^^^
> This should be if (!IS_ERR(nvmem)).
> 
>     256                          nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4, 4,
>     257                                             (void *)&rtc_magic_val);
>     258                  rtc_only_idle = 1;
>     259          } else {
>     260                  rtc_only_idle = 0;
>     261          }
>     262
>     263          switch (state) {
>     264          case PM_SUSPEND_MEM:
>     265                  ret = m3_ipc->ops->prepare_low_power(m3_ipc, WKUP_M3_DEEPSLEEP);
>     266                  break;
>     267          case PM_SUSPEND_STANDBY:
>     268                  ret = m3_ipc->ops->prepare_low_power(m3_ipc, WKUP_M3_STANDBY);
>     269                  break;
>     270          }
>     271
>     272          return ret;
>     273  }
>     274
>     275  static void am33xx_pm_end(void)
>     276  {
>     277          u32 val = 0;
>     278          struct nvmem_device *nvmem;
>     279
>     280          nvmem = devm_nvmem_device_get(&omap_rtc->dev, "omap_rtc_scratch0");
> 
> Does this need error handling?
> 
>     281          m3_ipc->ops->finish_low_power(m3_ipc);
>     282          if (rtc_only_idle) {
>     283                  if (retrigger_irq)
> 
> We need curly braces for this if statement.
> 
>     284                          /*
>     285                           * 32 bits of Interrupt Set-Pending correspond to 32
>     286                           * 32 interrupts. Compute the bit offset of the
>     287                           * Interrupt and set that particular bit
>     288                           * Compute the register offset by dividing interrupt
>     289                           * number by 32 and mutiplying by 4
>     290                           */
>     291                          writel_relaxed(1 << (retrigger_irq & 31),
>     292                                         gic_dist_base + GIC_INT_SET_PENDING_BASE
>     293                                         + retrigger_irq / 32 * 4);
>     294                          nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4, 4,
>     295                                             (void *)&val);
>     296          }
>     297
>     298          rtc_only_idle = 0;
>     299  }
> 
> [ snip ]
> 
>     401  static int am33xx_pm_rtc_setup(void)
>     402  {
>     403          struct device_node *np;
>     404          unsigned long val = 0;
>     405          struct nvmem_device *nvmem;
>     406
>     407          np = of_find_node_by_name(NULL, "rtc");
>     408
>     409          if (of_device_is_available(np)) {
>     410                  omap_rtc = rtc_class_open("rtc0");
>     411                  if (!omap_rtc) {
>     412                          pr_warn("PM: rtc0 not available");
>     413                          return -EPROBE_DEFER;
>     414                  }
>     415
>     416                  nvmem = devm_nvmem_device_get(&omap_rtc->dev,
>     417                                                "omap_rtc_scratch0");
>     418                  if (nvmem) {
> 
> if (!IS_ERR(nvmem)) {
> 
>     419                          nvmem_device_read(nvmem, RTC_SCRATCH_MAGIC_REG * 4,
>     420                                            4, (void *)&rtc_magic_val);
>     421                          if ((rtc_magic_val & 0xffff) != RTC_REG_BOOT_MAGIC)
>     422                                  pr_warn("PM: bootloader does not support rtc-only!\n");
>     423
>     424                          nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4,
>     425                                             4, (void *)&val);
>     426                          val = pm_sram->resume_address;
>     427                          nvmem_device_write(nvmem, RTC_SCRATCH_RESUME_REG * 4,
>     428                                             4, (void *)&val);
>     429                  }
>     430          } else {
>     431                  pr_warn("PM: no-rtc available, rtc-only mode disabled.\n");
>     432          }
>     433
>     434          return 0;
>     435  }
> 
> regards,
> dan carpenter
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
