Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1674B143A30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=k+IyHKHxLZENL2bPblO2Hv1NHYPV9+Vx+PJUwK5hLmg=; b=aAsbNRSymQRM85
	7FRSGj0+xwFIaXD1QwCrMqOh/7MH5M0fede5GGY88JqiSqdKxnypwDcxgBnvjAaNWi2GM5SlUwUm1
	Ew5XhVYJTJOm1R1L1CU6Q5//q/5tmuYNVzICP4Qrwu6M6fPYfxuPXD8qjELJpkXWZAo7peJk8+ozm
	JZN38SgaC3+/nEk94EYNn3dwbxRvpW0xMUP+7LjFJRSQ1IAy32W9xbwxc26O/RRiec+hSWatA0xC/
	RbbA6S4oPbifJtjRKm4A1vsKl/kkKoaNYmDlIeBBy6PRDX3LPw+a79n0j2iovXX0CpOpjGP+CkGc7
	oE4ha/oa+EOYk77pDMNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqLz-0004nL-OY; Tue, 21 Jan 2020 10:01:47 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqLl-0004mI-6B; Tue, 21 Jan 2020 10:01:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D01F9AD3A;
 Tue, 21 Jan 2020 10:01:29 +0000 (UTC)
In-Reply-To: <C00VV4QDHC2Q.20QYUR6KOPB8G@pride>
Date: Mon, 20 Jan 2020 21:01:23 +0100
Subject: Re: [PATCH] ARM: dts: bcm2711: Use bcm2711 compatible for sdhci
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Stephen Brennan" <stephen@brennan.io>
Message-Id: <C00VWYLKZXHQ.2H1VAQ79Y4KCC@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020133_381109_C6941541 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On Mon Jan 20, 2020 at 11:59 AM, Stephen Brennan wrote:
> Hi Nicolas,
>
> You're right, this patch doesn't work (it doesn't even touch the correct
> device tree node). My bad.
>
> > Your UHS class 1 card should work out of the box using the current
> > kernel version.
>
> I've been debugging an issue (reproduced on today's linux-next) in which
> my
> UHS class 1 card's partitions don't show up in `/dev`. For example, if I
> do
> `ls /dev | grep mmc`, I get just one result, "mmcblk1". I thought my
> patch
> fixed the issue, but it turns out that the issue is sporadic: on some
> boots, the issue manifests. On others, the partitions appear in /dev as
> normal. When I tested this patch, the issue had sporadically
> disappeared,
> leading me to believe the patch was effective.

Have you been playing with different device-trees? notably with the
Raspberry Pi foundation ones. Your mmc numbers could change, which might
be confusing.

If 100% sure it's failing, i.e. nothing happens for the mmc device after
seeing:

	mmc1: SDHCI controller on fe340000.emmc2 [fe340000.emmc2] using ADMA

I suggest enabling some extra debug options. Build the kernel with
DYNAMIC_DEBUG enabled and add dyndbg="module sdhci +mfp; module mmc_core
+mfp" to your kernel command line. It'll be extremely verbose for the
working case, but we can compare both and try to find something fishy.

Note that I use two UHS class 1 cards myself without issue.

> Sorry for the noise!

On the contrary, the more we are the better :)

Regards,
Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
