Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20D9EFB21
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhcLxh+11ntJeaPZsph/QCKaj90W6/RcT9A5t3RtwtY=; b=A3308g/OA8JdGT
	4amBta3ZYs/qT6ji3m885vnmjKatBspw3CJcfivKC+eSDhBW3cwDrmGGC/B4QpdTp0l24ae17NwoH
	kXVaudvFXZIv9s4917OTnmLWjmW4CNNlfkKxi9mjShjjyeRVjiW9yvlSMiMqmWZyYAt2colvF9gwo
	zZrXT3CCG5yRKKTyfu0uvkQcPVto7jk9nKDc52p2mSm3AXx5+M37fMUNnz4G0PPQKbrp61wvdrWrT
	vA2LtRnQguX5OzdAJbeSrK5eLoB4HjVfgtSFoQG5ivBApGZnvDew6O6sxlH3CvMO7RZ087qDYCfX2
	bMit1WhlQ7hZdVqi9gPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRw4w-0002qX-MF; Tue, 05 Nov 2019 10:28:50 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRw4p-0002q6-PQ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:28:45 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 7914B20050;
 Tue,  5 Nov 2019 11:28:42 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 677841FF3E;
 Tue,  5 Nov 2019 11:28:42 +0100 (CET)
Subject: Re: [PATCH] clk: imx: pll14xx: initialize flags to 0
To: Peng Fan <peng.fan@nxp.com>
References: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
 <5fc2dfd6-ae59-6af8-0423-ddc8e0b4f78f@free.fr>
 <AM0PR04MB4481010CA9D3672F55208092887E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <b6eb44dd-253a-9c85-92dd-dcf1f545e4ec@free.fr>
Date: Tue, 5 Nov 2019 11:28:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <AM0PR04MB4481010CA9D3672F55208092887E0@AM0PR04MB4481.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Nov  5 11:28:42 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_022843_971963_575688FA 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/11/2019 11:04, Peng Fan wrote:

> The patch was initially try to address what [1] did.
> In [1], static was discarded and moved to a common place.
> So I thought flags should be initialized as 0.

A small additional (pedantic) note :-)

Actually, in your case, imx_1443x_pll has "static storage duration".

The "static" keyword ("storage-class specifier") merely limits the
symbol's visibility outside a compilation unit.

Basically, static => "static storage duration"
But the reverse is not true, see 6.2.4p3

https://port70.net/~nsz/c/c11/n1570.html#6.2.4
6.2.4 Storage durations of objects

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
