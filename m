Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443601F7A9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 17:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJcdIzhlMfSNSMFnQu9rZfyVOmU7sMMZoejz2Jftk3Q=; b=QT1DUxNoBEvXWi
	/+ZhmklgxHLKfNRSa6FoR+x6OJCh7WG3zMXTJhnoqC9hrgUaNcp+Az1vU7K+DRmTkm1Ut+6EpEE/I
	cj3nO/NzCOArJwe0RKrBPdoqoR4Lm0Pa2MbnCVD++mpSHfxJW0YteIzD8ZXCuw3CnlQHP0+SnINHl
	SBKVTCyxBP1WCWdqBk1ow4xPSnXnswIRWQLNOfm5cZ/dmevSlIlejnIBdftqPbwen6Hb03+3T2vTq
	qXxBsBhU9FcdASLO5Zt8C/qtsgylH0Sgus8T0qL34eXpjf7yweusA7aISbfU0+RkGiTON8aJzR4cS
	kYNpcMEHa8QGjQjffUUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjlT3-00070u-MM; Fri, 12 Jun 2020 15:19:41 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjlSw-0006zl-2j
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 15:19:35 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 1ED59E4CC8;
 Fri, 12 Jun 2020 11:19:30 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=22t9Ut8LGNPQZcuwBoygY9sFDBQ=; b=ch+G5F
 f+rL9Y26JkM0TLDTfVupXzFMDulMjp1sMBUdGKFMmjp1modPgIygeyoZTyVOuRw+
 fAuBoAQA+HW7pEcZbxOFf4Dghu2GwFStiVqRRRR3Q8O6UK3MSddf8ZTSVi45wdPK
 /tknsJa6jpntcZs4/0B54vnBDPDs0lG8k5Qso=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 1609AE4CC7;
 Fri, 12 Jun 2020 11:19:30 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=+j2zvxY3yyACYmz62lMN5mkK3euzNoR2JXP7LPUWCaA=;
 b=v5jS8qjxtE91zh+Qiqg4lLx/8UpHSwhsar4xdmNNdFLRGtCwuesR9hp4v2lgfr+ll9ZTtCwf8AN6/HgHuXA2zK9L8ITkZ6F2455mW1BwgExJK+QV1xJsoYm/cGlhr4iSM6jEV/K36ENBr7MQ3cqJMoLFd3dgAtYHEZXMvAR3AN4=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id DCCC5E4CC3;
 Fri, 12 Jun 2020 11:19:25 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 011CC2DA0AF0;
 Fri, 12 Jun 2020 11:19:23 -0400 (EDT)
Date: Fri, 12 Jun 2020 11:19:23 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [RFC 0/3] ARM: copy_{from,to}_user() for vmsplit 4g/4g
In-Reply-To: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
Message-ID: <nycvar.YSQ.7.77.849.2006121117250.3341460@knanqh.ubzr>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
X-Pobox-Relay-ID: 1A10A78E-ACC0-11EA-AF12-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_081934_173733_34027C47 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jun 2020, afzal mohammed wrote:

> Performance wise, results are not encouraging, 'dd' on tmpfs results,
> 
> ARM Cortex-A8, BeagleBone White (256MiB RAM):
> w/o series - ~29.5 MB/s
> w/ series - ~20.5 MB/s
> w/ series & highmem disabled - ~21.2 MB/s
> 
> On Cortex-A15(2GiB RAM) in QEMU:
> w/o series - ~4 MB/s
> w/ series - ~2.6 MB/s
> 
> Roughly a one-third drop in performance. Disabling highmem improves
> performance only slightly.

Could you compare with CONFIG_UACCESS_WITH_MEMCPY as well?


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
