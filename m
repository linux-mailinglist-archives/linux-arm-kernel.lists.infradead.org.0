Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99C334267
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIHXyHf5SpBUs3ZTPsQ7FbmtiP0ZpAxAZ5Xf5rXOPbo=; b=fPM74ktgHxv3uz
	ssnaRHfKh4Rft4aunZljJIykRiYFOsHAeQxhg5K9MSBiEJeqlbPGfFVAaXtZMjJPhFQJPbgnGSk4p
	83VJtPgHwOttAPN+39uAWLLI8QK9JIdYGW18YygReAwzeHmax8e22eZ/Idj9a+9aU/tGAeeF6gRBH
	tfuwnVF+WL/3AImdGAolla+/CjKMDpBnTyZI53s8Bly4h5Tv9yr6nPqInrOPr7BXfnauCJaAIOVvW
	lncmsROs5hElYJ3oiv5qB5yHRMrP9yqBZI7lvYncOn4TiufFL5R8+MLJ6JM2ejczkqJoxBrogA8Wx
	OVJ4TCUtiT8GuJQjks+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5FJ-0006Ei-Bh; Tue, 04 Jun 2019 08:56:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5EU-0005IN-LL
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:55:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id 20so9967749pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kx5q7zCTFKw0j3QN1oqE8pZnZTP9To8Le7W99DKm2LU=;
 b=sW4SdT2R95XIX+vXafemro3dM2V7gCnY1WEO1ChuJw8577FfF4rpJTWX3J2hPWsmiw
 b15JXnIO87kszDkbXvD9vAIkC9jcBM/+CZdeQeK64Dili6fANlVoIrxtnTODhCmQaosz
 ZrjP9hAEmTn5YbHldzcM7oZW+ufKWM2emARh/YhJkOag4U+xO/+uS0WFmSLd9i8MNg/e
 WWUyHYR2R9bUxhOGAymLg4gqZMSc01/zfU9c5fUJQoQhTJXQPpwh2ABhYsBOrDJ67hEX
 YxLddJ/KMmCzeJO8Wd67wtIPVoFogIEfgAWggKTgK12LnKB7X7XfxzQdPQxjlpFB7N4p
 UEXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kx5q7zCTFKw0j3QN1oqE8pZnZTP9To8Le7W99DKm2LU=;
 b=Kquin/1WUQS+rxSqxl0heBxWq/7dd+l6X9jrKjVt+ysKwzWD/MXoD2b/URaASToxm5
 HVcqrnNSP0BQL80H0c8uu7Dj8PXsv4VZ9kYaJ/TWf/xJ49lMJhmtzYaqZ0WrvSgS7E+e
 MoUGBW6Sfj2shYMtKI2PlWGJt6K8LchumDjVNC94uY8ZWP6Hq1a3bx0n5j81P4pEGvGQ
 gdDI77cam0CojBOWslUkDif5MZRFcbtm+tjyXVwHXE/Jko4NyEtCFtopaVRll9ehsrXx
 UasywdBPhnlLPliDK7nJ5mPJw04LVBb32hLSs31k1GYGC/MYvku5XWZZZnhGY40EUYzT
 d91A==
X-Gm-Message-State: APjAAAXXkp6Qlj1hHHBrHBPbBpJYNxfxZa564ybigclGdOfCclQLOziy
 qyfHjkagnHpf6jlo2KOw4cueJg==
X-Google-Smtp-Source: APXvYqxAVFtSOCZX5AfZ+92Sy7EAVfXddvBIiq0QZdyyoPKzviGrJnwpdWBBPBjPOpg361VTnR4AkA==
X-Received: by 2002:a17:90a:bf84:: with SMTP id
 d4mr34814181pjs.124.1559638549661; 
 Tue, 04 Jun 2019 01:55:49 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id l23sm18420974pgh.68.2019.06.04.01.55.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 01:55:47 -0700 (PDT)
Date: Tue, 4 Jun 2019 14:25:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] KVM: arm64: Drop 'const' from argument of vq_present()
Message-ID: <20190604085545.hsmxfqkpt2cbrhtw@vireshk-i7>
References: <699121e5c938c6f4b7b14a7e2648fa15af590a4a.1559623368.git.viresh.kumar@linaro.org>
 <20190604084349.prnnvjvjaeuhsmgs@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604084349.prnnvjvjaeuhsmgs@mbp>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_015551_391124_2361FC4D 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Julien Thierry <julien.thierry@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, James Morse <james.morse@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-06-19, 09:43, Catalin Marinas wrote:
> On Tue, Jun 04, 2019 at 10:13:19AM +0530, Viresh Kumar wrote:
> > We currently get following compilation warning:
> > 
> > arch/arm64/kvm/guest.c: In function 'set_sve_vls':
> > arch/arm64/kvm/guest.c:262:18: warning: passing argument 1 of 'vq_present' from incompatible pointer type
> > arch/arm64/kvm/guest.c:212:13: note: expected 'const u64 (* const)[8]' but argument is of type 'u64 (*)[8]'
> 
> Since the vq_present() function does not modify the vqs array, I don't
> understand why this warning. Compiler bug?

Probably yes. Also marking array argument to functions as const is a
right thing to do, to declare that the function wouldn't change the
array values.

I tried a recent toolchain and this doesn't happen anymore.

Sorry for the noise.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
