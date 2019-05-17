Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF64321C8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 19:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oto25RvhRRXp4gPcKR9l5YIUrc1nx1q90Rt4vn3Z2yg=; b=h572OaBUmwfs5v
	PMf9FImHiuMmZY3aod9JQMvXdGOKquU8x3PMKouXukT0OWhXby/+Ic4Iw4jVHCsC11cMQypboYzOR
	xLHENvqKHT5TtZY0C4IDev0YpJKkt27qx4EIxDBCatp468NSjDcGY+fFpDw6mfTDKntkzmLOPBF1l
	ufZ9LxsJ8TvEk23b8SGu1PdBC7YeeL3ek6ETTWoy/DQvqgB0qAfy0NmKQzXwBwGe59rlbxmdaEqGT
	TcvEdg2Lt8EkwSai+JJ+UumwpKKxN82x3PabTh8DvkpQMunCBbDcv+FgAbvnI7VHSGpy2mwtsEFuQ
	2uosveWAqxL8w5sNJjpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRgl3-0005PI-4Y; Fri, 17 May 2019 17:35:01 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRgkv-0005Oe-Cp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 17:34:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id g3so4011421pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 10:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EQJ+i6iyywaiyvPH5Ae01aI539IGazdRX+wyFdAqzQ8=;
 b=aanZSxafrgKwxWZXR9j39vx1sCu33cNvgPcDwT6PxgjwJRrkJcbhwxhh51PE7RY2mz
 AY5Iycj6ZTO24RiG3PvHwStotGD451nVBIT6sjLw6Ynr4Ou4WW/nHdGQxnBOVgBrZ5wt
 ozAo5veCyhAikOq+8aWu4Ey164M3K+n2/Wa+P9oxiTOfyjTCPDn4hdKDtmWCFA86qyo1
 Axb84Btin+aZNsep3wfDD5JVAmugrkNPhN/KuwEUOBZq2kj1b2YI8MshZNcuDk1JxQjf
 NjjY5tUquuwM1gJhMUS6g7ErT/4PZfCb0DdUm/Ng7BhHzt3u3Jsd4i59RFgcck4Z4OUL
 UBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EQJ+i6iyywaiyvPH5Ae01aI539IGazdRX+wyFdAqzQ8=;
 b=mJPnE/mDZTpl2PxpUxd0z16M3vWy0wqUZTVoWt4sMgLg2cq+qEyLGTojyQgwOErJli
 dD9aq4m6q2HYz/w7B1yH8IjLcqp8iSHrEBAEaCYp2g3Bv0HJKjetbH3AZ6nRv9CV9TzS
 odg5KYmERie/4axGqMW8OPl63nrzM5QxnvAYsjg8q5ZTMvxu6QKaJQE9DsDJAU+JaAy7
 NIfzDKQXRpTEz6bkU9f4/K4//T45ExCi6NH+4A0tqFzSUlQZ8RjNFWgPzK26wnYCgCWp
 hO/WGCeiKDteHWoZWP0q4R3C9rtgaGBH0XUYICJapEKiBdKY8swN6RdPxidLR+BBUzmm
 8TxQ==
X-Gm-Message-State: APjAAAXWVdUtWGUaFxYHWvGvXEOB2crWlWlWYBH+bmZNXoHd607nEbvI
 9caqTdsZROcUAaIJnvmng7YemA==
X-Google-Smtp-Source: APXvYqwAR5v9g9Pj7oAhKsdMTbRAYpj8+edIonWgSGveknrjHzEQSgArD/o7pgLUsetiE0m+QRPAzw==
X-Received: by 2002:aa7:8e59:: with SMTP id d25mr61042439pfr.24.1558114492292; 
 Fri, 17 May 2019 10:34:52 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id p16sm26875608pfq.153.2019.05.17.10.34.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 10:34:51 -0700 (PDT)
Date: Fri, 17 May 2019 10:35:14 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [RFC/PATCH 0/5] Read-only memremap() proposal
Message-ID: <20190517173514.GM2085@tuxbook-pro>
References: <20190517164746.110786-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_103453_441684_553D3AB0 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 17 May 09:47 PDT 2019, Stephen Boyd wrote:

> This patch series implements a read-only version of memremap() via
> a new MEMREMAP_RO flag. If this is passed in the mapping call, we'll
> try to map the memory region as read-only if it doesn't intersect
> with an existing mapping. Otherwise, we'll try to fallback to other
> flags to try to map the memory that way.
> 
> The main use case I have is to map the command-db memory region on
> Qualcomm devices with a read-only mapping. It's already a const marked
> pointer and the API returns const pointers as well, so this series makes
> sure that even stray writes can't modify the memory. To get there we
> introduce a devm version of memremap() for a reserved memory region, add
> a memremap() flag, and implement support for that flag on arm64.
> 

I have a few places where the first patch will be useful, and the rest
looks good.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Cc: Evan Green <evgreen@chromium.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> 
> Stephen Boyd (5):
>   reserved_mem: Add a devm_memremap_reserved_mem() API
>   soc: qcom: cmd-db: Migrate to devm_memremap_reserved_mem()
>   memremap: Add support for read-only memory mappings
>   arm64: Add support for arch_memremap_ro()
>   soc: qcom: cmd-db: Map with read-only mappings
> 
>  arch/arm64/include/asm/io.h     |  1 +
>  drivers/of/of_reserved_mem.c    | 45 +++++++++++++++++++++++++++++++++
>  drivers/soc/qcom/cmd-db.c       | 14 +++-------
>  include/linux/io.h              |  1 +
>  include/linux/of_reserved_mem.h |  6 +++++
>  kernel/iomem.c                  | 15 +++++++++--
>  6 files changed, 70 insertions(+), 12 deletions(-)
> 
> 
> base-commit: 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b
> prerequisite-patch-id: 62119e27c0c0686e02f0cb55c296b878fb7f5e47
> prerequisite-patch-id: bda32cfc1733c245ae3f141d7c27b18e4adcc628
> prerequisite-patch-id: b8f8097161bd15e87d54dcfbfa67b9ca1abc7204
> -- 
> Sent by a computer through tubes
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
