Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A986849CCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITCOd8sr9TlbVOCdcwnCL3S6z916ah/HlSIWW6L0duE=; b=KPLvmOdHGuMIOU
	ZusZY9DTDZ4q3RbNVlp6atERrudrUxwzuUimZxrhiFvO8btghWg3dPZHGbbvRLMW+HmyEVfQjRhdD
	C5QiE01nmij1B4dtBtkijzUYxh43C4aLFycjCFqCrazOF2QGX6ORdTh/rDFqX9oWySLzEzwBVCsA8
	QnsVLJ+s8ZhIkldMHMiBd9b1SZ+6+8XWJSHRAgFtb5/q6wpKXA+J+aTHTyf8kn6vleenOHz65VqS3
	4uMm5MxGyRMsHd3Mn4ZV6BaZRKFdCvoOHiqHENgvJGbuW7VcwowGOQ8Fa9lTAyf5C85ULYsfglQEI
	XtgXjU5Vt8Ei1f3wm0jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdABy-0004yY-V1; Tue, 18 Jun 2019 09:14:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdABp-0004xy-Bz
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:14:06 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BB13206BA;
 Tue, 18 Jun 2019 09:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560849244;
 bh=G5n7tQEA4D7IaVaj+n+intnIJiU7vvwx1xThRaNy7Nc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1AE0dKeXOphrd0NEoeC0kvijNE5Z3yzzZaSZ+0GwZF/SIAzx9uT2NX9XnsXG3ogcj
 fzvhWN9nY3ncNjYjwlBe42xt7Ro2jBIaXnuq2wX6uSretwiO9qwiZvVSRD/RhgOnNT
 B0GLmfhS0LDLFiXbe1ARbwhGxQnwLiPB/9vzspXw=
Date: Tue, 18 Jun 2019 17:13:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 1/2] soc: imx8: Fix potential kernel dump in error path
Message-ID: <20190618091309.GL29881@dragon>
References: <20190614080748.32997-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614080748.32997-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_021405_429455_4A1A2EDA 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: abel.vesa@nxp.com, viresh.kumar@linaro.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 04:07:47PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> When SoC's revision value is 0, SoC driver will print out
> "unknown" in sysfs's revision node, this "unknown" is a
> static string which can NOT be freed, this will caused below
> kernel dump in later error path which calls kfree:
> 
> kernel BUG at mm/slub.c:3942!
> Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
> Modules linked in:
> CPU: 2 PID: 1 Comm: swapper/0 Not tainted 5.2.0-rc4-next-20190611-00023-g705146c-dirty #2197
> Hardware name: NXP i.MX8MQ EVK (DT)
> pstate: 60000005 (nZCv daif -PAN -UAO)
> pc : kfree+0x170/0x1b0
> lr : imx8_soc_init+0xc0/0xe4
> sp : ffff00001003bd10
> x29: ffff00001003bd10 x28: ffff00001121e0a0
> x27: ffff000011482000 x26: ffff00001117068c
> x25: ffff00001121e100 x24: ffff000011482000
> x23: ffff000010fe2b58 x22: ffff0000111b9ab0
> x21: ffff8000bd9dfba0 x20: ffff0000111b9b70
> x19: ffff7e000043f880 x18: 0000000000001000
> x17: ffff000010d05fa0 x16: ffff0000122e0000
> x15: 0140000000000000 x14: 0000000030360000
> x13: ffff8000b94b5bb0 x12: 0000000000000038
> x11: ffffffffffffffff x10: ffffffffffffffff
> x9 : 0000000000000003 x8 : ffff8000b9488147
> x7 : ffff00001003bc00 x6 : 0000000000000000
> x5 : 0000000000000003 x4 : 0000000000000003
> x3 : 0000000000000003 x2 : b8793acd604edf00
> x1 : ffff7e000043f880 x0 : ffff7e000043f888
> Call trace:
>  kfree+0x170/0x1b0
>  imx8_soc_init+0xc0/0xe4
>  do_one_initcall+0x58/0x1b8
>  kernel_init_freeable+0x1cc/0x288
>  kernel_init+0x10/0x100
>  ret_from_fork+0x10/0x18
> 
> This patch fixes this potential kernel dump when a chip's
> revision is "unknown", it is done by checking whether the
> revision space can be freed.
> 
> Fixes: a7e26f356ca1 ("soc: imx: Add generic i.MX8 SoC driver")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
