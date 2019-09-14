Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35206B2BDC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 17:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+ubaW9yxsFb/AWLzke1YyJOLkzk8IH6guROc3ywQio=; b=E1UunTfmsgeUjA
	n62NuXFatshPsoPbS9TcjxT/nXTTsNfI/PWiQ8gBGJrwTtYrUDlX7CuqICPb5F+ahL5AtWvX7PxBo
	AIGhLHBPfU2uZx175LXiPXsQaqqOilElfN/meC/4S+i7Hjno5lGxnrgvAXfAWXCYnfcl22heRoYkV
	mOFMVZIiJcpD5R3lu9I6tWwtjB7sNaZTTofg8qJf0o2KwWb780LC24QA7egYkWz3FEoz/Dv6H+q/G
	MJvyaoyn/NUBCGONAZHm+fX1wwHYdsyvWN0fu4Zb+yDIQ00MhSsOuI2QjGSAbNS97bnbIm0htDm1H
	HA8s+hrOh+yvkCOGn5kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i99w1-0002gy-Ay; Sat, 14 Sep 2019 15:26:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i99vo-0002gI-II
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 15:25:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id 205so19892064pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Sep 2019 08:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=h+ybOgPBdbmgnuqXjRrYZvQSWICvx+jC8gaIu6wXEOA=;
 b=vOYsGPAyZpkVOY+nRiXzF96qBLgnTZ28L+QyZ4t5Q1tK2Old+HBi4/qPnWyAZ3vPMX
 8oaBj4muk9qQGCj8nzyHnIMV4au+ieHO9lXEUdpgrqWk5GLkBzi9UEaHrrDRO2MkZAwV
 qkJI/2kMb8kL4ISkWfcaDcRM2wMytHsycvt7dzjj2ULlvKAPcBoKRsY/OhlVw5eSdYG6
 KF5hgSFFJ2n9V2R3HiyzZwU8NZEAH+tUtasmjkGvmEtnfyyXYf3ckoPwA6ns2fzhEdrz
 6Q9yQK5WGb76E4d3R3RdPbsgPXBfzJLopPTc5O25EulQpJOmO9rFWCQ6TnwWghBbRoDV
 CZ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=h+ybOgPBdbmgnuqXjRrYZvQSWICvx+jC8gaIu6wXEOA=;
 b=Dv0z2XQv5UFlZuGmpj7yrmvMkroSy7/uGvntjh/I/JVtjeis+dy7k2QBr0cFTBVgjx
 xnQMiD+oIZ9UGjWC/99e8wmjELpF48AUw8o6je+eqDqLTKow+EvvoMBhS87mljmyBvLA
 av32J66Hlh6i8NnKcfxbpt9TWdD3+c4T0bA6HLwu6Pl32jt5zP6K6+elOhVWtJt/vuKr
 zgLExUgvci1N/uSZc8zJc1FwrKd0/6m2mW+Su97lK+zY9Klr4+cC7CyGmMRAwtSD/cV/
 lZcQmYNxJq1oPMfJaxlsm3xSJYcDgmhnNA6Fn7wugAInU+rEavCPOtCy94bU1vtBY//f
 GIJQ==
X-Gm-Message-State: APjAAAXyFL4TiIpnOfgc/UL4BEXB0JjpSmGR/oka8GM6FQBubFU5ct+3
 BM+kyPoRZAJBNcgjDNVMEnpq+r57
X-Google-Smtp-Source: APXvYqymogWDolBNczo2kKGqCE0LvOI9iMDUyqNgRBjbZKJeFny0oVpcdX0aY8yvQrvFNUwH4BROGQ==
X-Received: by 2002:a63:89c8:: with SMTP id v191mr349331pgd.395.1568474747250; 
 Sat, 14 Sep 2019 08:25:47 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a18sm26574996pgl.44.2019.09.14.08.25.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Sep 2019 08:25:46 -0700 (PDT)
Date: Sat, 14 Sep 2019 08:25:44 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
Message-ID: <20190914152544.GA17499@roeck-us.net>
References: <20170130110512.6943-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170130110512.6943-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_082548_633722_0EBB70F4 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 30, 2017 at 12:05:06PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Hi everyone,
> 
> This small series is preparatory work for a series that I'm working on
> which attempts to establish a formal framework for system restart and
> power off.
> 
> Guenter has done a lot of good work in this area, but it never got
> merged. I think this set is a valuable addition to the kernel because
> it converts all odd providers to the established mechanism for restart.
> 
> Since this is stretched across both 32-bit and 64-bit ARM, as well as
> PSCI, and given the SoC/board level of functionality, I think it might
> make sense to take this through the ARM SoC tree in order to simplify
> the interdependencies. But it should also be possible to take patches
> 1-4 via their respective trees this cycle and patches 5-6 through the
> ARM and arm64 trees for the next cycle, if that's preferred.
> 

We tried this twice now, and it seems to go nowhere. What does it take
to get it applied ?

Guenter

> Thanks,
> Thierry
> 
> Guenter Roeck (6):
>   ARM: prima2: Register with kernel restart handler
>   ARM: xen: Register with kernel restart handler
>   drivers: firmware: psci: Register with kernel restart handler
>   ARM: Register with kernel restart handler
>   ARM64: Remove arm_pm_restart()
>   ARM: Remove arm_pm_restart()
> 
>  arch/arm/include/asm/system_misc.h   |  1 -
>  arch/arm/kernel/reboot.c             |  6 +-----
>  arch/arm/kernel/setup.c              | 20 ++++++++++++++++++--
>  arch/arm/mach-prima2/rstc.c          | 11 +++++++++--
>  arch/arm/xen/enlighten.c             | 13 +++++++++++--
>  arch/arm64/include/asm/system_misc.h |  2 --
>  arch/arm64/kernel/process.c          |  7 +------
>  drivers/firmware/psci.c              | 11 +++++++++--
>  8 files changed, 49 insertions(+), 22 deletions(-)
> 
> -- 
> 2.11.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
