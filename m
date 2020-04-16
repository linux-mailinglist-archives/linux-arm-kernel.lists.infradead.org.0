Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A231ABBC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7HyFxvFeQflr62+vNY0TAIlLslty/9lsQev1diLDtY=; b=XSRzJ284cf0i4x
	/CfPHEkOzWPyldWQasjIJqI2Qm727UtT4v5pYz8oVacls4C3RdjK69vBmSUMWaiHu3Uc22YP0e4MP
	2z9KYj42bIyXops8rbvDdYSbDijZwf4lAl6ZdPp+aDrp/ZJCN7B7uBLljLjRxbXRhqvkwR02py50l
	AsqDyJmgPt2izKNt27izqtv+qPYwqyjITvTRo7bIP9V4zkZWeTZtHFNanrIPiZCPPfmo73RE+guh8
	2Ng8zkLklzrHtXVdygbCjsCcHODDYmcapOgCxsobieBNxuQWV+McW5oYhGaDSDdCH5VUt/mDXVwao
	L8YO9fvZeZypO7U0zsVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0Hu-0004QE-3C; Thu, 16 Apr 2020 08:54:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0Hl-0004Pv-F9
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:54:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id d17so3812188wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZEfcdbyCoFlwcBaVZ+sf0k9hPs9ies0vbK3IcfLzskw=;
 b=LLp5LveCwz1C/4FgavId+LAMO+lPQeQAh5i6g/dwBkd5KRmxdDAOZ9/FDSM6LaE2DO
 Td6D1PD2vfJMUfU418BKIvqN2n542k0/GOSD1zFfk3KEg6YVnVpiYcQElgtfTWfhW1Hc
 pyRHcoAoIzLIeqmthE1eiaqNblTBPZh2QK//NuiYOH4m49CJlMjlge+Af8W0dLnPXfDM
 TI6i6FGWr2uL3dkWfiES2q+uTGrtmI8VH2eWwpnuQoWS1aDfIKdtLlIrcAMs/dkatob5
 C2RU6qFiWHenxSdOpD61IuhKr0PagtaYgwqeoLijcAccCZ9r8LhwudjqfQNZwoQRmc4d
 jdrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZEfcdbyCoFlwcBaVZ+sf0k9hPs9ies0vbK3IcfLzskw=;
 b=Y1z7ehOHsgADl2eWxugV2OUW+spPT0DjSPWF245YOWuftMteYD6+5Xg5u2h54MXIeF
 g7OcFCA1dSjI7gjBCTMlUVI1139ppyoZe9BZM4aEoD0Ofg9yLe6476kxEDr7yVXt5kzr
 K4n9hJ7jvD+YzyMxuHAI44b2PZtKQapLLK4aQddAgR72EFK6v1kcnl/61324nh94c0/n
 bsJ+Ti2j/8yBTmNXVxVeRPcRdPuj6Ch7w+qUKnsXCxEBmjCzZiCm6S9L2uSEgkZ20Hp0
 U7k0S9WU2asREwq9HPpUMpGYk/+8U3yJuxmBt7hwKSptEjQeeQoKaQZ9lc9XHMJbN3fb
 /Kfg==
X-Gm-Message-State: AGi0PuYGEFN+VRcSJSZS1nijnpuIcPF2aQiYqXTypLPzVGF6FZh9/KIJ
 Pu6EJXZyIUoV0f9O3o2bBcDoaQ==
X-Google-Smtp-Source: APiQypL1oyr16FXQx+dkfWQBU6EhMLZhnOgOJbCMSB0gnYSQVADLx4g3CAzdUNtaCRw76OTkBu7LoA==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr34790010wru.203.1587027251542; 
 Thu, 16 Apr 2020 01:54:11 -0700 (PDT)
Received: from myrica ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id u7sm3027041wmg.41.2020.04.16.01.54.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 01:54:11 -0700 (PDT)
Date: Thu, 16 Apr 2020 10:54:02 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200416085402.GB1286150@myrica>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416072852.GA32000@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_015413_537319_BBDB15FB 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 12:28:52AM -0700, Christoph Hellwig wrote:
> > +	rcu_read_lock();
> > +	hlist_for_each_entry_rcu(bond, &io_mm->devices, mm_node)
> > +		io_mm->ops->invalidate(bond->sva.dev, io_mm->pasid, io_mm->ctx,
> > +				       start, end - start);
> > +	rcu_read_unlock();
> > +}
> 
> What is the reason that the devices don't register their own notifiers?
> This kinds of multiplexing is always rather messy, and you do it for
> all the methods.

This sends TLB and ATC invalidations through the IOMMU, it doesn't go
through device drivers

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
