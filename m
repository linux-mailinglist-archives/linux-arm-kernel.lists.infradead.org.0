Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABD2F7652
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:23:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYpOBWtehpDiB5JXf8ZXxTwWlc6YA6S7igeF8W3PeSs=; b=AQx+CKk0Jbgpjn
	yTtL1Ur5cfXHp7rEPBTFLpmusuYp1sIgig79djCiKjuSE7+Qm+4otYUFK8ocqdv86Xfm+oPOmXrw7
	bDc3chDi7UsmwiNQiCyJqoUbsSpAN4e5ozrl0QwfcBDC2R8SL+VHxzO4HqTg5byuqdJPyn3fggp/f
	Mcjj7O/5+Jj4nFjmHcqmrF/uV13K7JT7ntL7D1E4Zw1y3CTFACNiLB9nWLIzzIdwXl/p/KGZt60ME
	eld9AcLH4BzeFIQz5g3EF13kqzhnGQjYF+0AwpOlYpfjbWHBIUmNbSgExKrarJ05IA0igV5vY/HuA
	2ws8j0Ml7xv0yshqQgkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAbe-0000ss-PL; Mon, 11 Nov 2019 14:23:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAbU-0000sW-Os
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:23:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id c22so13419194wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 06:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QhApH+e+i1QGjMyLyS0RlzrYEikz1jJglxVHu07q3w0=;
 b=Rjx1UwaCBW1rE0eMUFcg/MO/zhXAlW1fiGdqMrr493J7PHC3rRC11Hzq2kgf0EJEqK
 TajBAFbNmyn6iiEtjb7PVgsi7QMdjGHQdxvlW9YZqfm3D4X7aVALVYsfec//hz3W2ieT
 zxxs151ehHtsvrylhaKFlSx0lxoFVXdxlXValihzN2TjNsSfazyu8jjLdTg0hKkYUZ3K
 RQJGjHW6WtcUfkUikinuH13LbrAPhwecSnkv9Ic30ORfkYqxx/LboNzB/sOPCRqGsNAf
 5sD5jJUBSK5c5dAylA8wb7qYUQpYj/xWGWR8i9s/XplykSH9BB7XFnARx0g+FPpigAz9
 yAmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QhApH+e+i1QGjMyLyS0RlzrYEikz1jJglxVHu07q3w0=;
 b=Fe3P+AEHkczan2lAen+o06mI76yIgUbJ4JX4Q02czZ6Gdi+/7R0Q8k9EszXVZsjNnt
 ZBl6SN3EApVzqnl0K/58T7LmMMXJzp1O/Ol1OfaiMXlC0nWiBolMs1DQ9V53B9eUWjzb
 rC9n0ECvTSOBmm3oTuiUwfw9kZOvQqUlub9QHSzZZgcp4k9aZyiRHQiEyZL6FCK2gB7h
 pAlzymLR7vpt1HFaYX/KDaAFpEULqQxupQ7lZ9Yt/6H9TSH2nIBDZw/58NoWJdw10NQ5
 Pl2E5wI4ebbq3ZaV29RM774LuUmX7u5yoiF92nRj3tlmY98d4/M0jy8NXDJY9E70r3GH
 8gEA==
X-Gm-Message-State: APjAAAXPm8rOEPKwTUHkyS5cjpnXS/bEJQoZ0uaXf5U7uVXeULB41JWq
 415JIKO6dZ/RN1cUXjhTrHkbaQ==
X-Google-Smtp-Source: APXvYqzlKqn/z/qlkyc8kfzKpiMoqvEhMc93VYH6no07llV4Ze4AbBRWFrOgSZTRuLAk9Ukd0pheOA==
X-Received: by 2002:a1c:98c5:: with SMTP id
 a188mr20837159wme.133.1573482219172; 
 Mon, 11 Nov 2019 06:23:39 -0800 (PST)
Received: from lophozonia (xdsl-188-155-204-106.adslplus.ch. [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id n23sm15692840wmc.18.2019.11.11.06.23.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 06:23:38 -0800 (PST)
Date: Mon, 11 Nov 2019 15:23:36 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH 1/2] iommu/arm-smmu-v3: Don't display an error when IRQ
 lines are missing
Message-ID: <20191111142336.GC4132491@lophozonia>
References: <20191111111721.4145919-1-jean-philippe@linaro.org>
 <d0dfd82d-dcec-010c-6a69-c8f2b15f5c7a@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d0dfd82d-dcec-010c-6a69-c8f2b15f5c7a@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_062340_808081_57F827D4 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: will@kernel.org, iommu@lists.linux-foundation.org, robin.murphy@arm.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On Mon, Nov 11, 2019 at 11:52:38AM +0000, John Garry wrote:
> On 11/11/2019 11:17, Jean-Philippe Brucker wrote:
> > Since commit 7723f4c5ecdb ("driver core: platform: Add an error message
> > to platform_get_irq*()"), platform_get_irq_byname() displays an error
> > when the IRQ isn't found. Since the SMMUv3 driver uses that function to
> > query which interrupt method is available, the message is now displayed
> > during boot for any SMMUv3 that doesn't implement the combined
> > interrupt, or that implements MSIs.
> > 
> > [   20.700337] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ combined not found
> > [   20.706508] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ eventq not found
> > [   20.712503] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ priq not found
> > [   20.718325] arm-smmu-v3 arm-smmu-v3.7.auto: IRQ gerror not found
> > 
> > Use platform_get_irq_byname_optional() to avoid displaying a spurious
> > error.
> > 
> > Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> 
> That stops a nuisance:
> Tested-by: John Garry <john.garry@huawei.com>

Thanks

> However, I will say though that the combined irq seems necessary for TX2,
> which is not warned about being missing now.

I don't think we warned about this before commit 7723f4c5ecdb either.
There are some warnings later in arm_smmu_setup_irqs() if the firmware
didn't describe any wiring at all, but we don't check whether the TX2 does
have the combined interrupt. Personally I wouldn't tie this to one SMMU
implementation because it would prevent from supporting a (hypothetical)
platform that integrates the same SMMU but "fixes" the IRQ lines.

> Finally, A cover letter would have been handy to mention that the new API
> was only introduced after rc1

Oh, I didn't even notice that, I thought it was introduced by rc1. I'll
add a cover if I send a v2.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
