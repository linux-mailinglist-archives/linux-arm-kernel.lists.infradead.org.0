Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77228DC7F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 16:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNrWrdrENUiFtDVS+Hw+Tck4+hZSX57jdM5xkpTIFmk=; b=WF7ewx1HmKRzs6
	qaFmVCUUw17fnIeG6AlYUyHINIOWap3A8tdx33QKXbFL91T52gHTlxy+eqgEgQRPGtkpahCsjWQbb
	o92gAR5bOzsvQnSt3eG0KQZBbj7PEvlQNvs1//4+SogLrU3O0uyKA1G/C0LJJoJkTY2eEySI0XE+K
	Gmhhm8EIVw38CSLIyJ1G83XKleHVJne76M4Pgy6LRV4DMSOQogyUp7Z6kuIPxmyc/v4Tg4x/cT5UG
	pCwuiEwkoRAKdhgxUNHjt3duGthhIv+o2WWbQGFxvS8NEKtGh43/YtGy1U4Ux31YvHILTt/bbsg7R
	cbZ0y58MNDKLg+q/xStA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLThf-0006wj-AC; Fri, 18 Oct 2019 14:58:07 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLThX-0006w2-Mm
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 14:58:01 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 39607809F;
 Fri, 18 Oct 2019 14:58:31 +0000 (UTC)
Date: Fri, 18 Oct 2019 07:57:53 -0700
From: Tony Lindgren <tony@atomide.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] ARM: OMAP2+: Make some functions static
Message-ID: <20191018145753.GO5610@atomide.com>
References: <20191018120701.29364-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018120701.29364-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_075759_780638_7233F848 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org,
 khilman@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* YueHaibing <yuehaibing@huawei.com> [191018 12:08]:
> Fix sparse warnings:
> 
> arch/arm/mach-omap2/pmic-cpcap.c:29:15: warning: symbol 'omap_cpcap_vsel_to_uv' was not declared. Should it be static?
> arch/arm/mach-omap2/pmic-cpcap.c:43:15: warning: symbol 'omap_cpcap_uv_to_vsel' was not declared. Should it be static?
> arch/arm/mach-omap2/pmic-cpcap.c:93:15: warning: symbol 'omap_max8952_vsel_to_uv' was not declared. Should it be static?
> arch/arm/mach-omap2/pmic-cpcap.c:107:15: warning: symbol 'omap_max8952_uv_to_vsel' was not declared. Should it be static?
> arch/arm/mach-omap2/pmic-cpcap.c:140:15: warning: symbol 'omap_fan535503_vsel_to_uv' was not declared. Should it be static?
> arch/arm/mach-omap2/pmic-cpcap.c:155:15: warning: symbol 'omap_fan535508_vsel_to_uv' was not declared. Should it be static?
> arch/arm/mach-omap2/pmic-cpcap.c:173:15: warning: symbol 'omap_fan535503_uv_to_vsel' was not declared. Should it be static?
> arch/arm/mach-omap2/pmic-cpcap.c:192:15: warning: symbol 'omap_fan535508_uv_to_vsel' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Thanks applying into omap-for-v5.5/pm.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
