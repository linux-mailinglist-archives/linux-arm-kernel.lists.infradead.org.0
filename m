Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB94DCA3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdFS9i595fqNItCewa7mymvSfEy2+aFrgZi9FvKD92A=; b=tUlGCoKhcMWiTI
	5mYVUJZadvVFj7u2xqbXN7fFE68okl/UL3VxVvxb6VcLAnVvDNxazClloUP+An4z7KDp11LMWHmTV
	Hnoe46T4Hvw5ZD18t5/47s6vi6OpVPukzYE0E+Mb4H0D/Ealo+sAJWaXYFAOSoBRz2A7h3nbimuHw
	Tfm29ZLfIFt0txlwIrV1m1CpV2BYuPGRw/o5Lw7+UVrSUBYQYXw9YSvfTRE5DVj4b+Qb+h52IihSc
	KLkREkktftHwd7CR5769iocc74OopVdkrghuiwhTBpHpZLsKl7B4pOjNq85K6dG88bhWzb5JHhh2r
	uEIRiMGue3MXTBRWDxFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUk1-0004Dc-Hg; Fri, 18 Oct 2019 16:04:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUjp-0004CV-3k
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:04:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id f22so6625306wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Yc/ESgAECZFZFTl6VRSyrtsk401b5UBT2U4wK4t3Xg8=;
 b=GZOZIsJp6efqo33qitUnH5+hoiujQW5tjyGLqMwZL8Ci8opGSflROmREeaZ/qTwHpz
 IPwlviGDRDESd5aTdKL+H4u9smqnim0zNVsOCR+Tny5Dmk9I8SfwIPsf6r9hMwVcLlv2
 m0GvxJXvU8rZxw9DLJGncGn7euxXas/moBvLPYVm2fyItuJ2nbCboH3O3JItDGRFkiRt
 2qf94qHECOxmvaydzT2/99i7AneXTm1Y6/P4lf+Sjytj9SYUmk3yUAkJRG/95RtbqDsg
 RbckDBLEj+DQx9Q/qvsD0LFOQADTXPesLzMC0p2c3a/S3tWDcY2MGA7TjYwgLNXoA9ul
 gCLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yc/ESgAECZFZFTl6VRSyrtsk401b5UBT2U4wK4t3Xg8=;
 b=MEU/izzoldRCH1g5DQJizsr4xNEDT07pfB3dYV99TgsZ/JintYeiCgQL/BDHFcv5bF
 mUYee6ExtY4ml2b5mLYVo9s2N0ilc0yCpcYg1FaVS/j420fqqbuADuBgE4OG5y6uN3hG
 SjjGfw+foYTFbIg9ijp6HDs8ueu9sVAGNM9UXSQEntAACi5aIu49RINYPSob6NErjPF2
 3hqIlwF8mGGnd50cT4/4hgT0REUQefZ+rqDjKSh2ZsEykcS3IrG8F994rojuTH8M8oyj
 CO3EGDNjKme+2ptUQFAkmt693ZHqIUvQPHigjQrM3v8hIx2yXRB3gGsiMOGU/VIImNeo
 259A==
X-Gm-Message-State: APjAAAX4uFErnbjR9csKEyGA0/wpRkNBINkXzbk9TmQpqyZ6RGa+nJvm
 h6OVirovwHhWPQJW1vQR31IklA==
X-Google-Smtp-Source: APXvYqwtDbGUo784uN0YShVP0F5YD9wvytRqbKRWisGJiiC2UoG4WYTgx/6R+3jhOU45zbrA14u+uw==
X-Received: by 2002:a1c:804d:: with SMTP id b74mr8423828wmd.170.1571414662644; 
 Fri, 18 Oct 2019 09:04:22 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id r2sm5875238wrm.3.2019.10.18.09.04.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 09:04:21 -0700 (PDT)
Date: Fri, 18 Oct 2019 17:04:19 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/2] mfd: mfd-core: Allocate reference counting memory
 directly to the platform device
Message-ID: <20191018160419.rm2ogvh3k3jdx3tn@holly.lan>
References: <20191018122647.3849-1-lee.jones@linaro.org>
 <20191018122647.3849-2-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018122647.3849-2-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_090425_161282_CBB9B06B 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 01:26:46PM +0100, Lee Jones wrote:
> MFD provides reference counting (for the 2 consumers who actually use it!)
> via mfd_cell's 'usage_count' member.  However, since MFD cells become
> read-only (const), MFD needs to allocate writable memory and assign it to
> 'usage_count' before first registration.  It currently does this by
> allocating enough memory for all requested child devices (yes, even disabled
> ones - but we'll get to that) and assigning the base pointer plus sub-device
> index to each device in the cell.
> 
> The difficulty comes when trying to free that memory.  During the removal of
> the parent device, MFD unregisters each child device, keeping a tally on the
> lowest memory location pointed to by a child device's 'usage_count'.  Once
> all of the children are unregistered, the lowest memory location must be the
> base address of the previously allocated array, right?
> 
> Well yes, until we try to honour the disabling of devices via Device Tree
> for instance.  If the first child device in the provided batch is disabled,
> simply skipping registration (and consequentially deregistration) will mean
> that the first device's 'usage_count' pointer will not be accounted for when
> attempting to find the base.  In which case, MFD will assume the first non-
> disabled 'usage_count' pointer is the base and subsequently attempt to
> erroneously free it.
> 
> We can avoid all of this hoop jumping by simply allocating memory to each
> single child device before it is considered read-only.  We can then free
> it on a per-device basis during deregistration.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/mfd-core.c | 42 ++++++++++++++++++------------------------
>  1 file changed, 18 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
> index 23276a80e3b4..eafdadd58e8b 100644
> --- a/drivers/mfd/mfd-core.c
> +++ b/drivers/mfd/mfd-core.c
> @@ -404,7 +398,7 @@ int mfd_clone_cell(const char *cell, const char **clones, size_t n_clones)
>  		cell_entry.name = clones[i];
>  		/* don't give up if a single call fails; just report error */
>  		if (mfd_add_device(pdev->dev.parent, -1, &cell_entry,
> -				   cell_entry.usage_count, NULL, 0, NULL))
> +				   NULL, 0, NULL))

I think this change is broken.

Cloned cells are supposed to share the same reference counter as their
template and this change results in each clone having its own counter.
That means the "the 2 consumers who actually use it" will both end up
calling cs5535_mfd_res_enable() (and whichever loses the race will fail
to probe).

To be honest it might be easier to move the request_region() into
cs5535_mfd_probe() and rip out the entire reference counting mechanism
since at that point it would be unused (the other callers of
mfd_cell_enable() look safe w/o a counter).


Daniel.

>  			dev_err(dev, "failed to create platform device '%s'\n",
>  					clones[i]);
>  	}
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
