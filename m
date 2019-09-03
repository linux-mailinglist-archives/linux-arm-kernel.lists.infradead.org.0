Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748BAA606C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awyYB+TBjgO12uG7EBxabIvMbWjHgZOI1LKkKjwNxNo=; b=J/9i60xql+6H69
	wuLlulO94vy0qZ0oKQo47z4kWQyKVQSLwEpHPV+e3/g+bJsnDdVTzsuSUOntvgVuA0fUOKCDxZlSd
	K8BG9LtxLic/GdRGlNq2U96L4HsmJMxv3hnFnSgIE8xzvBL8NVhI24SQ8sX1KDThFZYGGBkpMhckU
	Ivx6cRr9HMZqNCII6VL3lI3WMzTrZfwy0HFRb8amLQvvmSWuhghoC4bMfFVHGGGXsuj4TuT0BQmlq
	TpoQS+3K6cerdhbcgE39Aq47FDpybE2YtPfJl54WlXCxpdevTf/vgPfHH96s7CUQIkQvQjDGBLeQi
	CI4uohQOoFH5+B5PnA6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i519y-0003Zn-Q9; Tue, 03 Sep 2019 05:15:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i519q-0003ZA-MM
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:15:12 +0000
Received: by mail-pf1-x443.google.com with SMTP id 205so7572905pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 22:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZeFgyFIHCDtxRARd0KAjIBoFG6zEBmwoBwDcSrmUBO4=;
 b=qK+fUm3oO9zpLsBqRCJYOE3M5fwIde5pU3QD3Vy+RaQP3i6XutK1x1jCr48WwiEstL
 lSJ2/xGIH3I31pkalrf/j5bcB1HEHxk7WlL8zT7kFkpdozhKoR1Q5Rybzg2Js4mGPEF4
 /DfF9MXYfamdhrcUxaTztedS75OfQHzJjSBq5QtfdfsBRbenHcvrdK7NPGc6fSVZ5Ufe
 7ku/DiLD62PLmH5wOh+E/aFfJ1FHR8VDryYWQkxv5eYXGrfkeRPW+8S71rQtRHmT/W89
 793w4QnOurZU0CLIxiTm7vnDdKTgOPv75Ho/ocZQNDmn1e82BvLwXPrestXCOs+kFpGi
 eFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZeFgyFIHCDtxRARd0KAjIBoFG6zEBmwoBwDcSrmUBO4=;
 b=q8HNAWvLIhaBnKC6+RELJoOs6/K4OcLUv9rUk79OFMNc05YO4mWfxksCVYDd1491Qe
 AT3UpbeoGUrKv4ZqcZTqGBljR4hsP6fc+lBYh5ku2Kv3mMCQFEnX2xCgNcPy5WCBiAMZ
 4fSsJQ6dP7C5e0yWcBKk9M1+i7zbdgxSNfzxTII+uPNsfxrvn+KySewbjdejRj8/wtIn
 zEbc516/wPxtR9KcLT93/hP0k2GDiI3H+P1IIli9yWdXFdlG8FAk7DIb/RaToaLGutLD
 NvliCKj56ooaiN8Qyz0xd2beJZk0W8xlUkvf+GrI5r1z6ySPHSk2wCNC3GLNvgEf7acX
 ykVQ==
X-Gm-Message-State: APjAAAX3UBnFa5dtfvlyeBEF0yeZn6q5Gw47e1hX9QlarB9SbthaeX4h
 vNgdDUC3XQWqev1FskxjevrlYQ==
X-Google-Smtp-Source: APXvYqyHtSrm5YyZjYXdqdq+0yUaF32Axr3lTT0vASucA20PnjDHcHbH8EMoHDj2RHxLBsIEORzYSQ==
X-Received: by 2002:a63:d90f:: with SMTP id r15mr28309557pgg.259.1567487708752; 
 Mon, 02 Sep 2019 22:15:08 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e9sm20604854pja.17.2019.09.02.22.15.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 22:15:07 -0700 (PDT)
Date: Tue, 3 Sep 2019 10:45:05 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH ARM64 v4.4 V3 44/44] arm64: futex: Mask __user pointers
 prior to dereference
Message-ID: <20190903051505.yere5kimi42e24v7@vireshk-i7>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <965d727955b4a45ac1f12e67c6a433110ef94871.1567077734.git.viresh.kumar@linaro.org>
 <20190830094249.GL46475@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830094249.GL46475@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_221510_765061_65776FC0 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-08-19, 10:42, Mark Rutland wrote:
> On Thu, Aug 29, 2019 at 05:04:29PM +0530, Viresh Kumar wrote:
> > From: Will Deacon <will.deacon@arm.com>
> > 
> > commit 91b2d3442f6a44dce875670d702af22737ad5eff upstream.
> > 
> > The arm64 futex code has some explicit dereferencing of user pointers
> > where performing atomic operations in response to a futex command. This
> > patch uses masking to limit any speculative futex operations to within
> > the user address space.
> > 
> > Signed-off-by: Will Deacon <will.deacon@arm.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> This would have made more sense immediately following patch 11, as in
> mainline and the v4.9 backport. Having things applied in the same order
> makes it much easier to compare and verify.

Ahh, indeed the order was that way in the arm64/kpti branch, but not
in the stable branch where it got applied at the end and I followed
that order :(

Fixed the ordering now. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
