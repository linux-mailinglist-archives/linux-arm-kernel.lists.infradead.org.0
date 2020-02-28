Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F9B173A2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:44:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNkQySiZ430sd4fC+tZSW2XZrrocl+Ybv7GPjGu2vOA=; b=XTcxkiMbyzG2dQ
	17DXkWQ5T5a1C9vm6HdLMvKzBjNECEkSwAN0cCIDojr/2JFzASHI5P8yTq4zK9oPQOEl8jdWSrqha
	srvgo3HoODlS+ZFzLEZyM4IQLi+UallDIJ2jmlHS8GEvM+1LegfolaYHGAeSITYl6X3JKy2wC9s7w
	GWH1LakpxrKO++JmdfGXJ9hPiGkAA95d2q1YbOPKbL3fRwSFUlh5wKUzF+7VnSEpVbx9dK2LEK6k0
	uQREIWNsFA//9d4ithCpCGNQASoCUpQPp/spOXC1rH1/kU6c5XsJQs0TsQVcFjq2XFGeImK20VFBn
	mxlNxxtaAyf0/vTEE3cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gsf-0001dh-Hg; Fri, 28 Feb 2020 14:44:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gsP-0001Wj-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:44:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id m3so3478803wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 06:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EaNst+hWQycMu0KGsnv4CxZ9Si7qKvgKxC1mvggZU4w=;
 b=JCRrLIEo6Jpe8dHIBFGmuTXIFtETxczvLzWf5uy8Y4Rm9R7wgxKO+2afcz/GNnH0Y3
 q0tqjcxhgffbbsl10LWkrDKFYFGroNVipFdobpiY+ORfr6InAZrnVRnUUJdKxAKtACEM
 dTxklEFgeMyTkRclu9MCF6ibbvsenPwWRDYZLFrWvg+m8RzwfWoY6XELfqEtrbGkmQ5q
 TgpYmhbgZkm0bFXzLd85KOOeaNDPUJQuCrD90Ya9ovii8HTS+dVU1eWttG0owswwOm8u
 MFcNQWUAz9eoCClWH9QiIu0LftzF5ZzkomXsU1JPNJCynNEi1BYGHsYrU8xBnhT/OP6K
 8hMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EaNst+hWQycMu0KGsnv4CxZ9Si7qKvgKxC1mvggZU4w=;
 b=Xn38Yf+wFhe7GqTGFri0/+RVGZu/Tt2zAhTCtOx7RflD04obdYGgl0kzez2hO3RkWL
 FRLWmvdbi6I5y9J2OsXrnRVl12F/Mi2kmqeS/3xCpDlevxUNCz3ixI/xVfaSWgKUGrCW
 VI4wmf57JU21iKP9PS2ZGObwL1QZU5zA7jciPh9j4KwMSFQRXjb4UOQt1Scu1YCxMO/C
 K3UJqBHdEuTx+rbEME8HU/zjR9V8/bXAuK1l1A2E85ZzysRDkBc0rQxLiLznRLXjshjL
 HnballWeWylcK4Hgzzx9wzrTniWFAm4g3kczuTZnpdeYOugJc8nYf9Pecc0bq5FNQPwU
 b5wg==
X-Gm-Message-State: APjAAAUJWi01wVhAzrJu1aqj8chzXPWwMY0iNVgPcJRVNn8u5fY03vVM
 ScNouyXKFpL3ClBwhldHnLJhZA==
X-Google-Smtp-Source: APXvYqwmzNWF57lJGnnMPvJ7KLRmrlfEQjMUS3cUSNh6ONuPqWLfuhP1DtkFcJz13ydjNSUlBxXNAQ==
X-Received: by 2002:a7b:c4d0:: with SMTP id g16mr3359111wmk.3.1582901067287;
 Fri, 28 Feb 2020 06:44:27 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n11sm2001521wrq.40.2020.02.28.06.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 06:44:26 -0800 (PST)
Date: Fri, 28 Feb 2020 15:44:20 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
Subject: Re: [PATCH v4 06/26] iommu/sva: Register page fault handler
Message-ID: <20200228144420.GE2156@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-7-jean-philippe@linaro.org>
 <20200226113959.62621098@jacob-builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226113959.62621098@jacob-builder>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_064429_360297_10AA7FAB 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 yi.l.liu@intel.com, Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 11:39:59AM -0800, Jacob Pan wrote:
> > @@ -442,11 +444,20 @@ static void iommu_sva_unbind_locked(struct
> > iommu_bond *bond) 
> >  void iommu_sva_unbind_generic(struct iommu_sva *handle)
> >  {
> > +	int pasid;
> >  	struct iommu_param *param = handle->dev->iommu_param;
> >  
> >  	if (WARN_ON(!param))
> >  		return;
> >  
> > +	/*
> > +	 * Caller stopped the device from issuing PASIDs, now make
> > sure they are
> > +	 * out of the fault queue.
> > +	 */
> > +	pasid = iommu_sva_get_pasid_generic(handle);
> > +	if (pasid != IOMMU_PASID_INVALID)
> > +		iopf_queue_flush_dev(handle->dev, pasid);
> > +
> I have an ordering concern.
> The caller can only stop the device issuing page request but there will
> be in-flight request inside the IOMMU. If we flush here before clearing
> the PASID context, there might be new request coming in before the
> detach.

The goal of this flush is also to clear the IOMMU PRI queue. It calls the
IOMMU's flush() callback before flushing the workqueue. So when this
returns, there shouldn't be any more pending fault.

Thanks,
Jean

> How about detach first then flush? Then anything come after the detach
> would be faults. Flush will be clean.
> 
> >  	mutex_lock(&param->sva_lock);
> >  	mutex_lock(&iommu_sva_lock);
> >  	iommu_sva_unbind_locked(to_iommu_bond(handle));
> > @@ -484,6 +495,10 @@ int iommu_sva_enable(struct device *dev, struct
> > iommu_sva_param *sva_param) goto err_unlock;
> >  	}
> >  
> > +	ret = iommu_register_device_fault_handler(dev,
> > iommu_queue_iopf, dev);
> > +	if (ret)
> > +		goto err_unlock;
> > +
> >  	dev->iommu_param->sva_param = new_param;
> >  	mutex_unlock(&param->sva_lock);
> >  	return 0;
> > @@ -521,6 +536,7 @@ int iommu_sva_disable(struct device *dev)
> >  		goto out_unlock;
> >  	}
> >  
> > +	iommu_unregister_device_fault_handler(dev);
> >  	kfree(param->sva_param);
> >  	param->sva_param = NULL;
> >  out_unlock:
> 
> [Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
