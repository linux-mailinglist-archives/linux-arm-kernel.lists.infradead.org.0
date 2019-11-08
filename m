Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A678DF5255
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:11:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FILf+4bC63iU+vw1G9VJ5ZTXXeaKScgXDMvHovlDIfA=; b=HUyKkH6S4ZwIAR
	Sor9a1WX/smIiH+1ZZSOVAAtVCvKE/veDpYDzJigl1VI5QUqft0pO6+3TbrhnB4yMakEt3LiaK9kh
	Yau5lyEOgCHMHItDbqxg1OVB6xj/oDj8ICqfA9blxA6P7SxuC1v25y576YpGyN3R5jP3TXJL/h+ry
	7/1HiLEzGnYlHuU2OTN87iZsOvMEPES+U9Fdv/g+/HrMdPmV9kPq5Rv8O/MQ0f7UyMT/eOsYuxkBO
	HfqY0wu8Ks6bBZi0EQLIX+jITxZefaP34zJIR7YT47chfXNhXof0D8rj68sEKRDiy5V8ts5Z65Bmv
	ym+w2WQi9hrr7lIRV34A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7nV-0004DJ-Q0; Fri, 08 Nov 2019 17:11:45 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7nN-0004Ca-Ub
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:11:39 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 6A97381A1;
 Fri,  8 Nov 2019 17:12:11 +0000 (UTC)
Date: Fri, 8 Nov 2019 09:11:32 -0800
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v3 07/12] omap: remove omap2_hsmmc_info in old hsmmc.[ch]
 and update Makefile
Message-ID: <20191108171132.GM5610@atomide.com>
References: <cover.1573122644.git.hns@goldelico.com>
 <c3e0a1392dd6d44fe8bde0161c508007f4abdd5f.1573122644.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3e0a1392dd6d44fe8bde0161c508007f4abdd5f.1573122644.git.hns@goldelico.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_091138_021627_2078025D 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 devicetree@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-wireless@vger.kernel.org, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, letux-kernel@openphoenux.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Kalle Valo <kvalo@codeaurora.org>, Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* H. Nikolaus Schaller <hns@goldelico.com> [191107 10:32]:
> There is a new driver in drivers/mmc/host/omap_hsmmc.c
> configured by CONFIG_MMC_OMAP_HS and the last user
> was the pdata-quirks for pandora.

Thanks for doing this:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
