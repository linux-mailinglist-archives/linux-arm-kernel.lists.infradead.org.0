Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC28F347C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 17:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWKxRnCh5WEcm1ZVD8qQ8YIJZu/1j2xbCWB5r4opaLQ=; b=tzN1kHXpk8/xQO
	RvAhXJ7qPsVKV60Gz6B1O/fGeL1TNLkLJyvCw8FM8Xn8PajNMbzUJgyaYl2ZnV8w36WTM9mEuvaQy
	1NEyElhfUb6zwvG0jqTMs0M6UGQEoBd2TGWt0Tr3gHBzPMDgY5hLBWM3Z4jWWg/7SYcknm1eAJ3Ds
	AK/OHgL8+k+7jI+TXy5SmI/1FdWvB8R0jPny/MFwJV0UEuOUlYxNYkbfYpoXsnw8BS7esqLQNWhj8
	29uZ12ZBcY17NwHicn9zOCR0Y7HKVAqCq44LiGM0HLZRgLyZZ3l2gm6tR6sqxH8AnyZTndtGOv+pv
	E7AhOR4B9U0mhKIqyyfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSkSu-00039F-Gb; Thu, 07 Nov 2019 16:16:56 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSkSn-00038c-Di
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 16:16:50 +0000
Received: by mail-lj1-x242.google.com with SMTP id e9so2890172ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 08:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H7kVd9FarYpVpIKscAjqYl6LRrnKSeFeSP0krGXflic=;
 b=rN6LrlHSKT2qOQK5ltr/br77qUF9yv79uygmhFo59z/vq0k9ViIIZikZtCuEiH0D9O
 Nu6V4QMAQ3F9Wq9d/aBstjFh86Oifi0mzmY1jz07EoMcuIiofNEksrlvwyzCVAdBsEIM
 FWzgH1QVhoH8vEBpmj4yDgDbmTCbMqx/sBsCu9r3pWhAtlrOQTngMvPamSxYakdQNa8r
 3h7iMATyaMX4+1z002syjAofPeYqQK4+whpnFgpUjuhI7HJumenh8erI73xIqmziAx1N
 S+gqWwgVgnHyB5JBwZ5hoYdxLGOyh+inXFbGkGBX15DCKmTb6+sQTB4aZUXNKT2AlkJl
 E3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H7kVd9FarYpVpIKscAjqYl6LRrnKSeFeSP0krGXflic=;
 b=FjYbvUiCk157+AuJMZ2yw6pgxG4hYjTa0u4F0huNf+gyVcO8J1bzaE698sZOJrtMCL
 7ILszHp7WGClNP18NBe34H/Y73EOU0st95EHkHfFotDaNDkqppRZJqtZbwVVpjjRStcQ
 7M1gOCx9DBliA/lspZSvSZI7nOkkf8t7kJpcsUtPSh/5G9wTNcnNc9zPUvp2fv48gldJ
 uz4vi6yIc0KDcO/yx0ACC2RUjpLQxxb5QPuRGfv/b7ipem6nKCLiCsWaStAIUy8+N5Fd
 Lna88QW5fye6i8cyOQXwCXKRpCrJxUAXuiy77mhcmRCjUfef6mJ7SBctfAYXvYHEbbIV
 FFEA==
X-Gm-Message-State: APjAAAW/jpX4OOlxYgeRKC0bDqJlqgPXgm88RdPa0Fx0SvFWHZeUPQ/9
 CiZwfDiTWHzwP4KoDrWGJHl+Vw==
X-Google-Smtp-Source: APXvYqzEarZA7i5yNLQDKnCZ6UdjoZrknJdst/e11rKs7LKIEVTzKZbJlEp2WGsGfTZOPtQx8Dn0dA==
X-Received: by 2002:a2e:998a:: with SMTP id w10mr3111225lji.66.1573143406950; 
 Thu, 07 Nov 2019 08:16:46 -0800 (PST)
Received: from jax (h-48-81.A175.priv.bahnhof.se. [94.254.48.81])
 by smtp.gmail.com with ESMTPSA id f3sm3263212lfp.0.2019.11.07.08.16.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 07 Nov 2019 08:16:46 -0800 (PST)
Date: Thu, 7 Nov 2019 17:16:44 +0100
From: Jens Wiklander <jens.wiklander@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL] tee subsys fixes for v5.4
Message-ID: <20191107161644.GA8304@jax>
References: <20191107121159.GA9301@jax>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107121159.GA9301@jax>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_081649_526091_7C62145D 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Nov 07, 2019 at 01:11:59PM +0100, Jens Wiklander wrote:
> Hello arm-soc maintainers,
> 
> Please pull these OP-TEE driver fixes. There's one user-after-free issue if
> in the error handling path when the OP-TEE driver is initializing. There's
> also one fix to to register dynamically allocated shared memory needed by
> kernel clients communicating with secure world via memory references.
> 
> If you think it's too late for v5.4 please queue it for v5.5 instead.

Please ignore this pull request.

"tee: optee: Fix dynamic shm pool allocations" is not good without other
patches, which are not included here.

Sorry about the mess.

Thanks,
Jens

> 
> Thanks,
> Jens
> 
> The following changes since commit 4f5cafb5cb8471e54afdc9054d973535614f7675:
> 
>   Linux 5.4-rc3 (2019-10-13 16:37:36 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.linaro.org/people/jens.wiklander/linux-tee.git tags/tee-fixes-for-v5.4
> 
> for you to fetch changes up to 61435a63b15233428088ccb0ad34e19fc00416c9:
> 
>   tee: optee: fix device enumeration error handling (2019-11-07 12:07:44 +0100)
> 
> ----------------------------------------------------------------
> Two OP-TE driver fixes:
> - Add proper cleanup on optee_enumerate_devices() failure
> - Make sure to register kernel allocations of dynamic shared memory
> 
> ----------------------------------------------------------------
> Jens Wiklander (1):
>       tee: optee: fix device enumeration error handling
> 
> Sumit Garg (1):
>       tee: optee: Fix dynamic shm pool allocations
> 
>  drivers/tee/optee/core.c     | 20 ++++++++++++--------
>  drivers/tee/optee/shm_pool.c | 12 +++++++++++-
>  2 files changed, 23 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
