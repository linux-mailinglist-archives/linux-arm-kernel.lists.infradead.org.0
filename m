Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FBB1C6A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 12:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oz5aYmJ7rhqmUMhcijidkb59HT0+bZ2bSzTZdymxyDk=; b=ZfDQ3ZhJTAxVwS
	YEIBXR1RoqUmcrkROD/0uGHLaqernFG/+pOhbok19s0kaH7uGySAA6zqPy2mKJ9K1FxW1PcOirKwS
	yOJHd0E9kiMh0IqMqnNkLy+NMEe1OnvchxjtDrw6PEArBWikOjLSqDhXDmATmEL4Hj1DU15JfSWNr
	11w52vq5lNzOh0zPlKb5PmKYBq/6EkG+1m0vwqINktfvvsUtSevr+zx/xjg3ieo/kVdpR4oZkRp09
	pfwl4RXAFpK/EoTmMmU8HJYG9cBw9WF3ytyTyJAJ4UaqNyccoFxgi1vB1LDje9WPJsPsK7EYl+Wy9
	ESi9cd6iHeknGxl0gEeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUKt-0000oh-4K; Tue, 14 May 2019 10:07:03 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUKl-0000oH-Nh
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 10:06:57 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4E9x2a5140802;
 Tue, 14 May 2019 10:06:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=riAB10GmF3JQLurW/6kz3EsMdlw943oN7kVaiqQGf6Q=;
 b=hbhoxtjlfFNyf20MCt22LKsc6us8aHajvyEGA+Tl+eaLpBK40UVBugzb/hMq6fxtz9uW
 7Tqlr/cpZtDw4+SEIqxF5Hp2RUL0h0gsLO83jTUR0fBmhlvxm8taVpEy4WIcvAOwZaf6
 21sCijBkw9FgYya39TsHtW2ehlL/E2doou6oE+E6vUZ2GDM/DUBGowIu90iKBJFEMVjo
 5ijcEZzwPpU2QYaSFbWhZLDYBhrgYFG7OAmGtG3hyNvGPPiYDOX3NPbfrHvthOHiMwm8
 NinH9JepJbG6UmA6vKpyu6ckgiTuyXoZoNMIk1j7ewjDMIT79qmnARjhtD1yhN0jyOR/ 6g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2sdkwdn1fh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2019 10:06:50 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4EA4Oo0087838;
 Tue, 14 May 2019 10:04:49 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2se0tw2dkh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2019 10:04:49 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4EA4mjH026873;
 Tue, 14 May 2019 10:04:49 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 May 2019 03:04:48 -0700
Date: Tue, 14 May 2019 13:04:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: wens@csie.org
Subject: [bug report] ARM: sun9i: smp: Support CPU/cluster power down and
 hotplugging for cpu1~7
Message-ID: <20190514100442.GA31718@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905140073
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905140073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_030655_862750_C5858984 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Chen-Yu Tsai,

The patch 7cbea6327e76: "ARM: sun9i: smp: Support CPU/cluster power
down and hotplugging for cpu1~7" from Jan 17, 2018, leads to the
following static checker warning:

	arch/arm/mach-sunxi/mc_smp.c:581 sunxi_mc_smp_cpu_kill()
	error: scheduling with locks held: 'spin_lock:boot_lock'

arch/arm/mach-sunxi/mc_smp.c
   546          /* wait for CPU core to die and enter WFI */
   547          count = TIMEOUT_USEC / POLL_USEC;
   548          spin_lock_irq(&boot_lock);
                ^^^^^^^^^^^^^^^^^^^^^^^^^
Atomic context.

   549          for (tries = 0; tries < count; tries++) {
   550                  spin_unlock_irq(&boot_lock);
   551                  usleep_range(POLL_USEC / 2, POLL_USEC);
   552                  spin_lock_irq(&boot_lock);
   553  
   554                  /*
   555                   * If the user turns off a bunch of cores at the same
   556                   * time, the kernel might call cpu_kill before some of
   557                   * them are ready. This is because boot_lock serializes
   558                   * both cpu_die and cpu_kill callbacks. Either one could
   559                   * run first. We should wait for cpu_die to complete.
   560                   */
   561                  if (sunxi_mc_smp_cpu_table[cluster][cpu])
   562                          continue;
   563  
   564                  reg = readl(cpucfg_base + CPUCFG_CX_STATUS(cluster));
   565                  if (reg & CPUCFG_CX_STATUS_STANDBYWFI(cpu))
   566                          break;
   567          }
   568  
   569          if (tries >= count) {
   570                  ret = ETIMEDOUT;
   571                  goto out;
   572          }
   573  
   574          /* power down CPU core */
   575          sunxi_cpu_powerdown(cpu, cluster);
   576  
   577          if (!sunxi_mc_smp_cluster_is_down(cluster))
   578                  goto out;
   579  
   580          /* wait for cluster L2 WFI */
   581          ret = readl_poll_timeout(cpucfg_base + CPUCFG_CX_STATUS(cluster), reg,
   582                                   reg & CPUCFG_CX_STATUS_STANDBYWFIL2,
   583                                   POLL_USEC, TIMEOUT_USEC);
                                         ^^^^^^^^^
This is 100.  Use zero instead to avoid sleeping?

   584          if (ret) {
   585                  /*
   586                   * Ignore timeout on the cluster. Leaving the cluster on
   587                   * will not affect system execution, just use a bit more
   588                   * power. But returning an error here will only confuse
   589                   * the user as the CPU has already been shutdown.
   590                   */
   591                  ret = 0;
   592                  goto out;
   593          }
   594  
   595          /* Power down cluster */
   596          sunxi_cluster_powerdown(cluster);
   597  
   598  out:
   599          spin_unlock_irq(&boot_lock);
                                 ^^^^^^^^^
   600          pr_debug("%s: cluster %u cpu %u powerdown: %d\n",
   601                   __func__, cluster, cpu, ret);
   602          return !ret;
   603  }


regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
