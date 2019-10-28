Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AAEE6A9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 02:59:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ja3QkZHEYCVxN4TGRy3wOYxbWVHdQxSr5IYLDnWI+dc=; b=LRhHfFyM0naOhm
	jsrMHGGjl+x4JiEaHKqt7rs3tmai9oKkz2T9jKxgkxTbiOD139R9qzElnykzM/Ev/LI4wgThvarXv
	SQ7vyL2Yr23goWPpvWpms1kq3b4Ujk9mTjfdDJTQFIQ2Ov8GopyTVFuSFAzDIvFVAr1BR1bwazwAW
	BRbtAqoyFckWW+4Jkq/C1reN6N7Q9RT/8S0RBHIGEz6Z62aO05+j0AfoZ+9SqEi/ODPQ1lTEL2AXM
	F+JmzxcdGUjYlp5gisZeQgZnsN9m5VITcCiyQnWuFDSBS5hzPfMcSRtGtfKvmmvQ+aNgz0EN5jEJH
	QPUqI9h3sbErPBOZ1fEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOuJl-0000iB-Ni; Mon, 28 Oct 2019 01:59:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOuJd-0000hd-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 01:59:30 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 478B120659;
 Mon, 28 Oct 2019 01:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572227967;
 bh=jqVh23h+CD77uK0OJQVCZmC8k+bmeYBTtr33TMiIZHo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OdoKlFz0S/FMSzY+z6ntg5+Jg25HpQsKdFJGUY+U/GSmkbEdjAWXPdfUC5eRx1Xi4
 haSkbLvbD5FagtLWO8gccV/k3rWlSxBod3xAyf5ooqwmLFVGQjaJgbmJpNA8QABgrO
 vargvpLJVxmN5FAeihkLik0gDENqrNLVU1niTyUc=
Date: Mon, 28 Oct 2019 09:59:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [shawnguo:imx/drivers 3/4] soc-imx8.c:undefined reference to
 `__arm_smccc_smc'
Message-ID: <20191028015909.GB16985@dragon>
References: <201910270058.bvI213X9%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201910270058.bvI213X9%lkp@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_185929_555379_D77047CA 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Leonard Crestez <leonard.crestez@nxp.com>, kbuild-all@lists.01.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 27, 2019 at 12:15:02AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git imx/drivers
> head:   426553bb2e352332919ae762e25f9e76c1f5c851
> commit: d544f9fbd28c3b5993dd193c0b4816f80788f9c3 [3/4] soc: imx8mq: Read SOC revision from TF-A
> config: arm-multi_v5_defconfig (attached as .config)
> compiler: arm-linux-gnueabi-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout d544f9fbd28c3b5993dd193c0b4816f80788f9c3
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/soc/imx/soc-imx8.o: In function `imx8mq_soc_revision':
> >> soc-imx8.c:(.init.text+0x14c): undefined reference to `__arm_smccc_smc'

I just took the commit out from imx/drivers branch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
