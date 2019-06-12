Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937914241D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4UfPxhTMZDhpwpqrideQ5l4XV//tUY0+5rwhESLcOLI=; b=Vxfr7XzWUwmgYc
	P+FM0V061Up8UoK0N2HvOVoqy07LavP6H602Tt+jRu4J1kKJKyeP7nFIzdhgH7h22x3KcfKTyd+oo
	2e2LILgMmHF4VUtrbW6qXyY7RVLRCPyEP1OQQ+PixasdZZehCXUGx1BBRv3MG4GznOTQ4Ha0wUYPZ
	SWP7rktv+QGud7cKsxg629g+W09oTCvefvKUzHqY62mfaZe9uONtUv7RK/4VMi/UyzlEZsx9MI+47
	J3bDFw9it3/Cb/urHBBSZUfd1EGROxpw+GMJwKn1Od+WHlvJGF5lkqDrJgdULOkEhLGhczMARl8dg
	mmKpnatmbD8/3Rz6JK+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1Ye-0002ay-Vj; Wed, 12 Jun 2019 11:36:49 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1YR-0002Zt-A3
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:36:37 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5CBSi1w095710;
 Wed, 12 Jun 2019 11:36:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=SdZpTIwnjOS7aueCoW6tmHDHwEBzUG1YgGyEAoHCo8Q=;
 b=peErrbpkDxYO8knWnVJkN+t+KlTEF6AMSxMZAl89VkVvdFTuFuxKIfG9eSXKi/hKKhND
 4AQtob2B60urgGq7Me+OX/HKUUpUbx7sWp4zY0TLPw/kke7cd6cQ62zUYUG2KzomSuNH
 UYNbHuFzZJlTknuJ5M1gKVP6H0VASS6RRK9LBc6QHHWQ1B2unrPqYBUPqSMS9ndGOnQ5
 VroRIuErRnH8z5OCWw1mvfqcfqTipkyi+jQKw+6LFKnh2+Tp000aFwnk1RAflt76EUXX
 K2sRD6VDwVFEZHGXVMZEOxhRkTRKkCNGAA4wSgthqhOpRBaSBjGDpfE8HEgx1UzA++NC Cg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 2t02hetxab-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 11:36:32 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5CBZ48c095515;
 Wed, 12 Jun 2019 11:36:32 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2t04hyvkgg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 11:36:32 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5CBaUoL007561;
 Wed, 12 Jun 2019 11:36:30 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Jun 2019 04:36:29 -0700
Date: Wed, 12 Jun 2019 14:36:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: j-keerthy@ti.com, Dave Gerlach <d-gerlach@ti.com>
Subject: [bug report] soc: ti: pm33xx: AM437X: Add rtc_only with ddr in
 self-refresh support
Message-ID: <20190612113623.GA24020@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=402
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906120080
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=444 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906120080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_043635_443039_F1E6614F 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Keerthy,

The patch 5a99ae0092fe: "soc: ti: pm33xx: AM437X: Add rtc_only with
ddr in self-refresh support" from Apr 3, 2019, leads to the following
static checker warnings:

drivers/soc/ti/pm33xx.c:254 am33xx_pm_begin() warn: 'nvmem' is an error pointer or valid
drivers/soc/ti/pm33xx.c:293 am33xx_pm_end() warn: curly braces intended?
drivers/soc/ti/pm33xx.c:417 am33xx_pm_rtc_setup() warn: 'nvmem' is an error pointer or valid

drivers/soc/ti/pm33xx.c
   247  static int am33xx_pm_begin(suspend_state_t state)
   248  {
   249          int ret = -EINVAL;
   250          struct nvmem_device *nvmem;
   251  
   252          if (state == PM_SUSPEND_MEM && pm_ops->check_off_mode_enable()) {
   253                  nvmem = devm_nvmem_device_get(&omap_rtc->dev,
   254                                                "omap_rtc_scratch0");
   255                  if (nvmem)
                            ^^^^^
This should be if (!IS_ERR(nvmem)).

   256                          nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4, 4,
   257                                             (void *)&rtc_magic_val);
   258                  rtc_only_idle = 1;
   259          } else {
   260                  rtc_only_idle = 0;
   261          }
   262  
   263          switch (state) {
   264          case PM_SUSPEND_MEM:
   265                  ret = m3_ipc->ops->prepare_low_power(m3_ipc, WKUP_M3_DEEPSLEEP);
   266                  break;
   267          case PM_SUSPEND_STANDBY:
   268                  ret = m3_ipc->ops->prepare_low_power(m3_ipc, WKUP_M3_STANDBY);
   269                  break;
   270          }
   271  
   272          return ret;
   273  }
   274  
   275  static void am33xx_pm_end(void)
   276  {
   277          u32 val = 0;
   278          struct nvmem_device *nvmem;
   279  
   280          nvmem = devm_nvmem_device_get(&omap_rtc->dev, "omap_rtc_scratch0");

Does this need error handling?

   281          m3_ipc->ops->finish_low_power(m3_ipc);
   282          if (rtc_only_idle) {
   283                  if (retrigger_irq)

We need curly braces for this if statement.

   284                          /*
   285                           * 32 bits of Interrupt Set-Pending correspond to 32
   286                           * 32 interrupts. Compute the bit offset of the
   287                           * Interrupt and set that particular bit
   288                           * Compute the register offset by dividing interrupt
   289                           * number by 32 and mutiplying by 4
   290                           */
   291                          writel_relaxed(1 << (retrigger_irq & 31),
   292                                         gic_dist_base + GIC_INT_SET_PENDING_BASE
   293                                         + retrigger_irq / 32 * 4);
   294                          nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4, 4,
   295                                             (void *)&val);
   296          }
   297  
   298          rtc_only_idle = 0;
   299  }

[ snip ]

   401  static int am33xx_pm_rtc_setup(void)
   402  {
   403          struct device_node *np;
   404          unsigned long val = 0;
   405          struct nvmem_device *nvmem;
   406  
   407          np = of_find_node_by_name(NULL, "rtc");
   408  
   409          if (of_device_is_available(np)) {
   410                  omap_rtc = rtc_class_open("rtc0");
   411                  if (!omap_rtc) {
   412                          pr_warn("PM: rtc0 not available");
   413                          return -EPROBE_DEFER;
   414                  }
   415  
   416                  nvmem = devm_nvmem_device_get(&omap_rtc->dev,
   417                                                "omap_rtc_scratch0");
   418                  if (nvmem) {

if (!IS_ERR(nvmem)) {

   419                          nvmem_device_read(nvmem, RTC_SCRATCH_MAGIC_REG * 4,
   420                                            4, (void *)&rtc_magic_val);
   421                          if ((rtc_magic_val & 0xffff) != RTC_REG_BOOT_MAGIC)
   422                                  pr_warn("PM: bootloader does not support rtc-only!\n");
   423  
   424                          nvmem_device_write(nvmem, RTC_SCRATCH_MAGIC_REG * 4,
   425                                             4, (void *)&val);
   426                          val = pm_sram->resume_address;
   427                          nvmem_device_write(nvmem, RTC_SCRATCH_RESUME_REG * 4,
   428                                             4, (void *)&val);
   429                  }
   430          } else {
   431                  pr_warn("PM: no-rtc available, rtc-only mode disabled.\n");
   432          }
   433  
   434          return 0;
   435  }

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
