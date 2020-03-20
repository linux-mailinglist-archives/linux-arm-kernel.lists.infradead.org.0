Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1B418D6A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:16:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3X36P8CMzVhF3/9GNxQ3HYz1KxQ/irfcP0+yW1kNGXg=; b=SSqT+oxm1U77LY
	PasbItNdG+uEf5T4c88cB5q5pl/IUVsV8JIu/Ailb4CR5A6ZXXABUOpz/6+/qUKwW9MUAyaREZJ1J
	w7MBTvPjMvbXpn5y3dvMBCDR92OxfhSXAuL6dEi/AQ/MPWKTvbZMc384JOywzEuRrHURCZo65Rkbw
	oiBdGJoQdaKFTTk3zQ0inNk+sVyl3AMXSuSZC2z/8TTxDWnJfScI/MnP4JHTNFtj4XXvvkbuARXcU
	pvYEWw6PyYK7eh+uiSlLFVvmuCMfpHMaGVHyOf9PklPZApWyeGYxvT2Rm2F2gYa/vJJ9oHek0Jvl3
	i+opNi+gZBCs+A69EECg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMBr-0003k7-Ob; Fri, 20 Mar 2020 18:16:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMBi-0003je-A7
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:16:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9EA81FB;
 Fri, 20 Mar 2020 11:16:03 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64E413F305;
 Fri, 20 Mar 2020 11:16:03 -0700 (PDT)
Date: Fri, 20 Mar 2020 18:16:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 3/3] arm64: use mov_q instead of literal ldr
Message-ID: <20200320181600.GE7448@mbp>
References: <20200304093631.191200-3-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304093631.191200-3-remi@remlab.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_111606_396941_482F1F06 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 11:36:31AM +0200, R=E9mi Denis-Courmont wrote:
> From: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
> =

> In practice, this requires only 2 instructions, or even only 1 for
> the idmap_pg_dir size (with 4 or 64 KiB pages). Only the MAIR values
> needed more than 2 instructions and it was already converted to mov_q
> by 95b3f74bec203804658e17f86fe20755bb8abcb9.
> =

> Signed-off-by: Remi Denis-Courmont <remi.denis.courmont@huawei.com>

Queued for 5.7. Thanks.

-- =

Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
