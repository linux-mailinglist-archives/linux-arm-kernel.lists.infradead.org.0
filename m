Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DB72003FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlFAr0nHFDrxlwKgSzsAn1e6hJQNplsHWiQXbwK7Ya8=; b=FXKOP5CFXraoj1
	vuJTpOLAbFvyRJFcQQRSaAHO2gnH3+IUi5qlCgtNN2bkqt0OmlkgpBuDU+dcx9CJUyR2cVjJd4GzF
	Gp3mHksr6KcG2a/krJY+e1aNlMRAf/PK28D475Y9wj1/fJ5lGx2EoIvOdA3RLQp7mhPdGMZx702L9
	ZjhE7ygsmAWIjb1/buInJGD2brL1lrnSJozs+rFLRgXVuKPCasVFnqoLYDG99Wr9n+zlFVZUmFEhX
	A/IiShMgHXht+uaOoo8StWIXKORCi1djR4csy8+zHvMT+1PCjprS+pZUvQ+qZKcZTYVwICDTo08h2
	gNS0biWLparaE2XrrybA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCSb-0005Xj-12; Fri, 19 Jun 2020 08:33:17 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCSQ-0005Wt-MU
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:33:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id q22so1355528pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 01:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=DxLF1QSYdlhCh6NZL9lmn8uNXMfSoRVrgwAtr7oZT4g=;
 b=czFUd1Jfcxsr/gudLfab9c+CCTq3xnDtsEMHFd3r480lJ4fgsRGvMZQDDhTIPFxXrX
 cIxDj30f/Wk7M/+djM0hRt7UZ8DA0X5MD7qP6m6ddEKjqhzxGWuzCBV95HWA5BN+SbF2
 CuTiI6mPAfQUJoVB8yd+LKok9tIbAJj/vpMUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=DxLF1QSYdlhCh6NZL9lmn8uNXMfSoRVrgwAtr7oZT4g=;
 b=ZMgEKmrUAdkWLuqtdlT5RK/lLw46VYsxLCNM82fu2KQF/nVWJBK8ZCOB/0KzCe+N1s
 l4j57wGkMIFRI1HKWUwXWqnqQrOA90o0m/J5GxMreDkiLfyPTthMZVY/GhoLq7gzRz8I
 yLxt4YRPck0woZXYUcFH4G5dPRqKVDGifA8P/I8vpheSUqMx8bvtmA6VHrh9tha81xWo
 JnEdnfrOtHBwvBrYBTg9geuWN4/7bJ5rQeX3wfMsgBj4bYID+kDP9l1PFKWFuJn+dUqK
 jJ124bRTozUW3e9RlLRURLo+/IuBmlFPPVR3xei2gwlqNH7nHv0/F0wlQpCq7/GT+BO8
 UGZQ==
X-Gm-Message-State: AOAM533ypaB9TSaaQ54Zq3vXJ/MxOD0lmlwKLPjtXZRR40ia6mz3uJAt
 GxkFdEBsQ8Sd4LYESCeBWF5NQuensbU=
X-Google-Smtp-Source: ABdhPJxh9NkKuR5QgKNed2psurq5OoIwxIxtvYn54t0bYKHdssnhTLFQ5n/2YwUBvXXcSHO6doPqJg==
X-Received: by 2002:aa7:9acc:: with SMTP id x12mr7140195pfp.24.1592555586085; 
 Fri, 19 Jun 2020 01:33:06 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id a7sm4578348pjd.2.2020.06.19.01.33.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 01:33:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <8db25400-5a01-18f6-d362-af3ad229361a@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-7-alexandru.elisei@arm.com>
 <159242539231.62212.11549121838391298623@swboyd.mtv.corp.google.com>
 <8db25400-5a01-18f6-d362-af3ad229361a@arm.com>
Subject: Re: [PATCH v5 6/7] arm_pmu: Introduce pmu_irq_ops
From: Stephen Boyd <swboyd@chromium.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 01:33:04 -0700
Message-ID: <159255558463.62212.4785740630471861314@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_013306_737214_0AA36A9F 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 maz@kernel.org, Will Deacon <will.deacon@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandru Elisei (2020-06-18 03:51:24)
> Hi,
> 
> On 6/17/20 9:23 PM, Stephen Boyd wrote:
> > Quoting Alexandru Elisei (2020-06-17 04:38:50)
> >> diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> >> index df352b334ea7..17e5952d21e4 100644
> >> --- a/drivers/perf/arm_pmu.c
> >> +++ b/drivers/perf/arm_pmu.c
> >> @@ -26,8 +26,46 @@
> >>  
> >>  #include <asm/irq_regs.h>
> >>  
> >> +static int armpmu_count_irq_users(const int irq);
> >> +
> >> +struct pmu_irq_ops {
> >> +       void (*enable_pmuirq)(unsigned int irq);
> >> +       void (*disable_pmuirq)(unsigned int irq);
> >> +       void (*free_pmuirq)(unsigned int irq, int cpu, void __percpu *devid);
> > Does 'cpu' need to be signed?
> 
> I'm not sure what you mean. The cpu argument comes from
> drivers/perf/arm_pmu_platform.c::armpmu_free_irqs -> arpmu_free_irq, where is the
> iterator variable used by the macro for_each_cpu. The documentation for the macro
> states:
> 
> /**
> * for_each_cpu - iterate over every cpu in a mask
> * @cpu: the (optionally unsigned) integer iterator ^^^^^^^^^^^^^^^^^^^
> 
> I could write a patch to convert to an unsigned int, but it seems like unnecessary
> churn to me.

Ok. It would be nice to make it unsigned in the arm_pmu_platform.c file.
Not required for this patch series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
