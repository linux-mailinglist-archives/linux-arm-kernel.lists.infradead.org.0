Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A18A3AF10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 08:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjaG83d5rkuFiFFKCMxv5z/x0zLwncjY5TijXIePLJI=; b=RpZVrnqYczQ8om
	QGYayyOD2aY3+sf8gZiEEZsFJBKXGzkrSeIcP7Zcm6KH3/azJF7d+HhSK6ljvixR8yjUIyanjVdSt
	cTlp3MV73uN4X6zey4oN/quO16R+VmLPDIQiUz7kkMWOWj91BQnKnt/nqhqCDvRNhdIQvpFZ/IUbu
	4EAAg11756zbfdMIhk69Jk7xWADOD2t0auG4UB43AUw2sXTo7vrT12yzYmXfXvKxzL9BrBmZNyH+b
	7KloUxKpaNzauiSd5B0cG2F7tFcZVFXqTuEqypF6gq4EQJ/rdedT+bwOztETV6Y4piV+iXddLVkud
	LWe2kjPt765AN+sAFInA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haE0J-0002CT-Rk; Mon, 10 Jun 2019 06:42:03 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haE07-0002Bt-QN
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 06:41:53 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 39169807E;
 Mon, 10 Jun 2019 06:42:09 +0000 (UTC)
Date: Sun, 9 Jun 2019 23:41:45 -0700
From: Tony Lindgren <tony@atomide.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 257 boots: 11 failed, 229 passed with 16
 offline, 1 conflict (next-20190604)
Message-ID: <20190610064145.GS5447@atomide.com>
References: <5cf685d0.1c69fb81.e3d89.43ae@mx.google.com>
 <20190604160018.GI2456@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604160018.GI2456@sirena.org.uk>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_234151_898916_280B84D7 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Kevin Hilman <khilman@baylibre.com>, linux-omap@vger.kernel.org,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Mark Brown <broonie@kernel.org> [190604 16:00]:
> On Tue, Jun 04, 2019 at 07:53:04AM -0700, kernelci.org bot wrote:
> 
> Today's -next fails to boot omap2plus_defconfig on Beagle XM:
> 
> >     omap2plus_defconfig:
> >         gcc-8:
> >           omap3-beagle-xm:
> >               lab-baylibre: failing since 1 day (last pass: next-20190531 - first fail: next-20190603)
> 
> The boot fails silently with no output after the bootloader:
> 
>     https://kernelci.org/boot/id/5cf655fc59b5149acad51504/
> 
> which isn't much to go on, it does seem to have been OK in
> multi_v7_defconfig though.

Thanks for the report, adding Kevin to Cc. I think this is the same
board that seems to have started randomly failing?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
