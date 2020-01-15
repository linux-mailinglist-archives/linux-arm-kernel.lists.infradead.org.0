Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3C613CC21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 19:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4W3WbfNO+h6Asm/etzm/CV9+WPAUs5jsBbwYO1uGIm0=; b=NjzYPSz+pMSfoF
	3iWLfUyuMr6lJMZTqVR8rl1vSEI9A+Y3Pb0BMJJEB5fMLHdSgn/avmd/KHuU42numSP5utjVvzPvu
	nyBDliF7mUKTjXOUmoPrKEHH4FUr5TFx/g1+m8eZsO4Pk18BmRZ2v+rUBmyrpCgydBJkP6YhPo1nR
	jI77kJxu0dH8tWFSnAkeaTRqZhJAy5u6J6p6jTdN+7i5rJs6aW/4dnDAQQD7SXxKQGwfdnZJHXp0l
	qKe+pDZeuz4/Mn/8g9k13sfcfTcjqqvkyJauWdPtEsF6TFOdJp6qE3tFPgl3pP77u7j+JT5gck8BT
	+0J6Y4aEKA6YLVEc4hZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnQn-0007Vg-B4; Wed, 15 Jan 2020 18:30:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnQY-0006LD-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 18:30:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so1046821wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 10:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vx9ZI/rGscUUGCBc0iWif4TA6oe6ecIt71Ef+bzf57U=;
 b=JEN7pX6UGwBqBgRVeU46B89XGheqHUrF69+1A6TQGYjtGYTBLYkKWY2orOVSw8hS/V
 yx7E/7T+8HwIqvdg6/rD8ch2BDnEbEBkwzGS0jNSiN7xOdZTWJCGNpH00b6FmjajImRM
 Y0Cq723LUX5rNaaq68rFRJpBzri8ZTJCpfZZXzuZlACIyqy276ntAuLB5rebtF6KpuK0
 VXsLW7MtFmYWfFQNZ8guFJVTMh0WdkoUrDalt/20pf7BJAKsa7gxBb/6aEtY5v52u+FS
 rJOoE27gKx2D97bW1kHpVoBosfK/GPlAyGR5lt0nUOtflXGNm7+DRO/mgm/UQ7iD4uHu
 TMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vx9ZI/rGscUUGCBc0iWif4TA6oe6ecIt71Ef+bzf57U=;
 b=ffkfycbZrTQbvZOveEQLwv5mhvmSBeafoFdAl2gbebulwoNM7xVrvY5LziqbuN5A6M
 2tbqQBLv3Cu9DhjX7ofdEvB3A8YmVxq20+Jfn0jyGqeBn/oalXDwzOyKPljvs8hk/qGk
 j+cp+QTpKNens8CYMhfok/485/AOc3YJzjjqQdPIUJRsvLeDfnfGyqtCUr2QDJQCJDBT
 q30JMr6ni9c898NxpyEhhDpXdI6vpP0gX1gWHaGYGiv8xNnTiVO3Dkx4goRnuv7Uw6sG
 Go9zxvFZtoxKWEWpT+iCrPIu57NdTGN/TZNnnUjFGz+mYQO9SGfR4bLDOGcCK3xF04qh
 gs6Q==
X-Gm-Message-State: APjAAAXVpJRYO1cemVhwvhjmlwCW8Wkv3WLvwEGV40VoNUydbavCIdUH
 a+TBrqZEqdzoCCb1iSse1kAQkg==
X-Google-Smtp-Source: APXvYqy8nNtvTuOB8AddkrK/wK0uuvgD1wX9xlx2WFGLj57TQXbAf34VislU15LMhdhXKyk0wQaang==
X-Received: by 2002:a05:600c:21da:: with SMTP id
 x26mr1338398wmj.4.1579113001084; 
 Wed, 15 Jan 2020 10:30:01 -0800 (PST)
Received: from myrica ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id u8sm913472wmm.15.2020.01.15.10.29.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 10:30:00 -0800 (PST)
Date: Wed, 15 Jan 2020 19:29:55 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 00/13] iommu: Add PASID support to Arm SMMUv3
Message-ID: <20200115182955.GA152753@myrica>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
 <20200115164255.GB30746@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115164255.GB30746@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_103002_816417_5AE83F40 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 04:42:56PM +0000, Will Deacon wrote:
> On Wed, Jan 15, 2020 at 01:52:26PM +0100, Jean-Philippe Brucker wrote:
> > Since v4 [1] I addressed some of Will's comment.
> 
> Thanks! I've tentatively managed to queue all of this apart from the last
> patch, since that relies on some pasid symbols being exported from the PCI
> core when building the driver as a module with PCI_PASID=y.
> 
> Please can you look at the rest of things here?:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/updates

Sorry for the delay, I had to rebase and rework the SVA patchset a little
in order to test. Your changes look good to me and run fine on the
hisilicon KunPeng920 (although I haven't tried building as a module yet,
I'll do that next).

Thanks,
Jean

> 
> > Still missing and will be submitted as follow-up patches:
> > * write STE.V with WRITE_ONCE() (patch 7)
> 
> I've hacked that one up myself.
> 
> > * batch submission of CD invalidation (patch 7)
> 
> That can be 5.7 material.
> 
> > * Remove WARN_ON_ONCE() in add_device() (patch 13)
> >   Pending Robin's input.
> 
> I've written that one too, but we'll see what Robin says. The question now
> is which commit do I tag in the branch above :)
> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
