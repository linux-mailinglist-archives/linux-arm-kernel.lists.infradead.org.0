Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5638AFBEFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 06:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IgL298rm0LIePjLowcefHwZSNx9twtEoEiFaO4eDONM=; b=UJTK3XIfGaPGUk6DQXcs30GoU
	fKdNXTusDYj7O2uwCsO4yGfd7a+3gauuzJoLw9XlEXWXxC//umwKqcdX0aWlxFZLFm/43MhUzRzzZ
	uVamoHagkRPXIqUNAwZ+UzNUoLclk9txQ0rstfonSdY56E6ql8PROFWjtY3/3J+edBJKSt7wyAQBb
	IbnIfG/KwM6ZCs7G+PnQcQZYdeVhODmtOWepKvlPz350PB1DoGU0Ajclw03GjZoYlqZfBmBKhhndg
	b7NNvkIavGcQ1W8CBdg52qNZUSb+o407ZgtHVj64nQdmNQUjLarzAx8kRcHuSNvi+paNTqRHivcB+
	tNzd87IBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7N2-00043Z-T9; Thu, 14 Nov 2019 05:08:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7Mt-00043G-Id
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 05:08:33 +0000
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C49F1205C9;
 Thu, 14 Nov 2019 05:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573708110;
 bh=bwDoBs1Gl7X6kr+VvLWmGBoPwoIr2qMGBpkJq35K1x0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=oP2extHTQUlymGuKHYc5HIla8CRurumrsbn+oG0uNtHazxGpSd3Oak/5IYj6pOQdX
 KGU6zsBBp82kB2G9cquR+DjnYRoOSwG54tzqCaNhuzcg9lbIOID2FB1PfnKDHSKsP2
 1wcjKT4GVc9de18GzwVY2KFn6AM6YhbBiGc6Z8tM=
Subject: Re: [PATCH v4 04/47] soc: fsl: qe: introduce qe_io{read,write}*
 wrappers
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-5-linux@rasmusvillemoes.dk>
 <CAOZdJXU35+G5CMrS3247mgMjQH7__MxP8wpW6yjn1_MLD-sGqw@mail.gmail.com>
 <e37d24c5-6d4f-c8bf-1c38-f3e8b8e85eeb@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Message-ID: <38d87cf8-5945-61d7-80a7-c8374cbe729b@kernel.org>
Date: Wed, 13 Nov 2019 23:08:28 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <e37d24c5-6d4f-c8bf-1c38-f3e8b8e85eeb@rasmusvillemoes.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_210831_632933_F5DC853F 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/12/19 1:14 AM, Rasmus Villemoes wrote:
> but that's because readl and writel by definition work on little-endian
> registers. I.e., on a BE platform, the readl and writel implementation
> must themselves contain a swab, so the above would end up doing two
> swabs on a BE platform.

Do you know whether the compiler optimizes-out the double swab?

> (On PPC, there's a separate definition of mmio_read32be, namely
> writel_be, which in turn does a out_be32, so on PPC that doesn't
> actually end up doing two swabs).
> 
> So ioread32be etc. have well-defined semantics: access a big-endian
> register and return the result in native endianness.

It seems weird that there aren't any cross-arch lightweight 
endian-specific I/O accessors.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
