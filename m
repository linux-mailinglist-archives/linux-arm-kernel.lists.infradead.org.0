Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC4013AD1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xL1QqHYcmuoymCi2JevjPF865sbbA2QhhcTKoMzKq6k=; b=Jt6tuVTiZznNW1
	rR8nj1dANXMway5ibR7FB8tO4NbMzacEidujs/2Q63+DxfekcxNJ2iBAGill6aeIQ1bp4zD+Lml5w
	kbCu2aIlXPkllhArAHXYHz0MgiC62lVq5hbXdOSmrRKouGRGLC5rTjB9F6bh5qnaLPj8zeQb58JgS
	r44DzpkyOng9tO8ENDfRa6mhW0Sqr9kyZhAkLfLUACSVgN+yldXYCWS7KdX2c5yvt2LAFWz+1jqZQ
	Zc2y2N0FJbF9p9wsES0P24GeqPbodPcmEBacUYI1EzJ8lGh8QJtMWyPTKQcqjbYx8bGGlZ1ut2UPW
	AYJ72qMXlZ6Ya4gSUvdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNme-000663-Oo; Tue, 14 Jan 2020 15:07:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNmT-000653-Bi
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:07:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so12514025wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 07:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1LO+o2liqei6dOj4tGd2yyWf59KLYzNggmwA3IlFMvg=;
 b=VaQmMXSeGJjA5ZfjvqpKmYtlwdf6Euog7KwKOqwpaKdNgl4qxhZXUDWxgZhFeFlh76
 6XbwBqkhmlDlNq2FO02wfrvLWEMGnaM6A6YXiAcbih9JmaDpUH5q3hQIMJKOiTQbR5Dx
 J1731CLg0tfFTJ+0+9VJScXTx1MgwbOceUGEp6OnNe3nPpF9wwz6EiWfb/UdtLxYEiK1
 DB+YTkj0oROCBXEVcnx6a9wf9gH4k2tutyDO30MsYlcLpJeiSNHjUze8eXOy1013k6VZ
 pBQ/JTuJw6E4GTo32rxtvMFMGnURC1/azsNspW7lAMUiTBCZOl3I2aP27XWxBWGS+wG4
 3eqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1LO+o2liqei6dOj4tGd2yyWf59KLYzNggmwA3IlFMvg=;
 b=is5AQP7kwaINgx2OPdKa546Zo/OztQX+rDEEB/ce0v/1Caa9Y1D/WSZMFryTQ+datm
 cB6Z52vRsV71dCC6Lm94qKuKNGiHnEn8x7TJ5E7Yygm26CMgfi5SLZhQBSsc/ucVBLqP
 GDUL/MnOW82uDvwz1FBPYBEW9V3FX1437p/JY0yVvH7yCc5cCM/GHQIN2f8oeR6CVrOl
 ExjaT+PdT3IBqM3HwoMvqnaU3ht73DlhkqPemc9lAO6dj2dN8ku9pkI/OmWo46g1TRSy
 6b1iA1GPu2tp0wKwNEFBx2HiFL+NAit5IXjLcFlcp/NZ9cpsKbr2YC5VUxW+Zh+1auE/
 bXJA==
X-Gm-Message-State: APjAAAXWvhH6x7fKg2taGL0osOg+PJPGi4pW1PJTOiwTcIjo+eu4l1ji
 oYV1SUKULLXgTreFNcRspng=
X-Google-Smtp-Source: APXvYqzVuGEDmJd7nEVOmzbMFhwmZKqUffjufxViIM3/GgxAoq/HIv3D0/dxucVGqCV5re3Nn97LVg==
X-Received: by 2002:adf:f606:: with SMTP id t6mr24938904wrp.85.1579014415886; 
 Tue, 14 Jan 2020 07:06:55 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id c17sm19929654wrr.87.2020.01.14.07.06.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 07:06:54 -0800 (PST)
Date: Tue, 14 Jan 2020 16:06:52 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] ARM: dts: sun8i: a83t: Fix incorrect clk and reset
 macros for EMAC device
Message-ID: <20200114150652.GA32269@Red>
References: <20200114094252.8908-1-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114094252.8908-1-wens@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_070657_429484_5D0640C6 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 05:42:52PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> When the raw numbers used for clk and reset indices in the EMAC device
> node were converted to the new macros, the order of the clk and reset
> properties was overlooked, and thus the incorrect macros were used.
> This results in the EMAC being non-responsive, as well as an oops due
> to incorrect usage of the reset control.
> 
> Correct the macro types, and also reorder the clk and reset properties
> to match all the other device nodes.
> 
> Fixes: 765866edb16a ("ARM: dts: sunxi: Use macros for references to CCU clocks")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
> 
> Error on my part. Hope no one was affected for too long.
> 

Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>

I saw this today and with this patch the board is back normal.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
