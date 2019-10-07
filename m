Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B35CDA7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 05:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AWqnL/tMQEgZxZaRBENAW/QUFxmCr41Qi5k5x/m+iE=; b=ooFI+8tH2vUhlP
	0CdbaNKzTC2TkelUExcoPbOzBRd88TUB0IEC9yTtZqYY+gJhnFemjW5QXZBHrK4IHjEC07LgDRNfG
	+bPMA5aDYfU7m30T3uChVua81cB0GRYUilz8Ut4TAeEi1neFym2FHHO6StcVYbMNRwCfjqHzgwKe7
	JMgZMgrM3xZVQtNZzLnBUrAdHk5kHLsshveImCyOr/bYp3UwLpfjVdDcXnxuORnUI+UvzGq9stE8y
	3YFaFULFQ4Iy6aQ5L2gFZFprcl3u0aYX6sFQkbZl8q3p9atoxjAep/Y/qCUlFlqaxQ1oyaeBIPBIJ
	135RIFr7lKnv3gItJ9mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHJGT-0004t3-2J; Mon, 07 Oct 2019 03:00:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHJGM-0004sJ-Vl
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 03:00:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so7698555pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 20:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vTvh0FQZ/KhCJ68up9YEl9SX+BeG73ASVfHO5zvMDJM=;
 b=pnBW4+yNeJiOvFev/FBahaxuA/+IKA/Rf8nRcxzB4pKZONAC2XLm/hnyyDBsGjehcg
 wm8TGc/FQXnVFemowR75iS6+8TAVudcc/tBCLYGtCXx0I1phqvpnwlxx9bhiQ/VBNyDZ
 6MWPBECh8S8kw6mPxsNixJ8AblZckIusrtc3cmIfxg98IubDa+fy0ldWi3aulLmVn7eF
 GJ82B37gvl+J/1leoRKWvb0nnUSMCyyYRD9H1bCgrmtNCKMKyTljCRAoia6v2BdX0ReQ
 vO6yfijhIUUPCY2Dk/tRMTrIVZBp5+LUv+qtEd07neyox/ANflXgDb7m9wQf1nKId045
 OKsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=vTvh0FQZ/KhCJ68up9YEl9SX+BeG73ASVfHO5zvMDJM=;
 b=Gom/H4GHXXew6SOVn5XgYbE0nAcS5POI02RFkE2HZqV3if0a8NaD8PAE2H3oPoQk0E
 JZurA4AgRk+kQ5zVmP0So/31YlGQVYt+QnI/ARvf9tb2rwzm2yG9GEr0LprE+0ZfF5Te
 0E9QphP3zSUmm56aSFN1eZg9xOA+HXZZn4cKCzq4OmE7mcwUCU9UMyGR55v0FR4zeRkz
 3OcBha5E8MIlqgIL4s/mvk/OQKIt6M8B+PV679dzvtWliCywM96NmKr/dz8Rd2T4wBBb
 9nWr0CfmEz274Np5rI45y3nOPOGpdoz3dsWqQfyEQ4tucvsE3mpDoK6vMwQrKx7odG+H
 5MWQ==
X-Gm-Message-State: APjAAAUG/MkFsr9blLd3fm/6rl/4BGnbcmJv/HXWqXor+ga1TTeGbBtT
 uaXoav1AXMFtEuzWKOK0vMtkpQ==
X-Google-Smtp-Source: APXvYqw1T1sFm6H6Vjb3uGu/gG/MP1nBY1c5P92A6GhL0ICys7/bELhWv37NMbR6VjUTvd442kiViQ==
X-Received: by 2002:a17:90a:17cb:: with SMTP id
 q69mr30314340pja.135.1570417241029; 
 Sun, 06 Oct 2019 20:00:41 -0700 (PDT)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id u9sm11554379pjb.4.2019.10.06.20.00.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Oct 2019 20:00:40 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:04:38 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: Re: [PATCH 0/3] arm64: kexec_file: add kdump
Message-ID: <20191007030436.GW18778@linaro.org>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com, james.morse@arm.com,
 kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190912060150.10818-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912060150.10818-1-takahiro.akashi@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_200043_016027_22884114 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reminder.
This patch set is still applicable to v5.4-rc although there is one minor
conflict in a comment; It is trivial and can easily be fixed.

While this patch works on v5.4, we cannot read a generated core dump
file with crash command, even, of the latest v7.2.7. This is due to
a newly added 52-bit address support (and related changes in mm).
The issue, as a nature of kdump, does exist with *legacy*
(non-kexec_file_load-based) kdump, too.
(We will need a kernel patch as well as patches on crash to fix the issue
and some guys have already been working.)

So I'd like to request you to keep reviewing my patch.

Thanks,
-Takahiro Akashi


On Thu, Sep 12, 2019 at 03:01:47PM +0900, AKASHI Takahiro wrote:
> This is the last piece of my kexec_file_load implementation for arm64.
> It is now ready for being merged as some relevant patch to dtc/libfdt[1]
> has finally been integrated in v5.3-rc1.
> (Nothing changed since kexec_file v16[2] except adding Patch#1 and #2.)
> 
> Patch#1 and #2 are preliminary patches for libfdt component.
> Patch#3 is to add kdump support.
> 
> [1] commit 9bb9c6a110ea ("scripts/dtc: Update to upstream version
>     v1.5.0-23-g87963ee20693"), in particular
> 	7fcf8208b8a9 libfdt: add fdt_append_addrrange()
> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-November/612641.html
> 
> AKASHI Takahiro (3):
>   libfdt: define UINT32_MAX in libfdt_env.h
>   libfdt: include fdt_addresses.c
>   arm64: kexec_file: add crash dump support
> 
>  arch/arm64/include/asm/kexec.h         |   4 +
>  arch/arm64/kernel/kexec_image.c        |   4 -
>  arch/arm64/kernel/machine_kexec_file.c | 105 ++++++++++++++++++++++++-
>  include/linux/libfdt_env.h             |   3 +
>  lib/Makefile                           |   2 +-
>  lib/fdt_addresses.c                    |   2 +
>  6 files changed, 112 insertions(+), 8 deletions(-)
>  create mode 100644 lib/fdt_addresses.c
> 
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
