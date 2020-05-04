Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4FC1C3D4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ma+9Mq6M1985tAGuqMC2x0/QOsoILHWkRNDv7q7ZTI=; b=AviLSTLIXDZGNe
	tQW9ueqX4rviiqfBq8J1Nzok89c7rGlVlGWL2MYWPyusBVr1Qktvldz1FJ0vOtOR2NkeIl5bz+Sk8
	HZ8iCfwX5jzL7xrOjCEbXN07nqivq5Vtd42wo/hc7bEK6noV/t0kv5decYNMQDu+WeuU2S2KbI0XI
	EEQCp26+MWJ/gv9Uu1VpaWX+WRQdw94cupNSwlP7jbguyrUnLJFyubLblVlKBeVvTs6Cpvpg5HAI6
	WKgSYOMwZjArb8Q0WpaMn2fpJV8b1vmcSamLGqo1LPT9JyRlW1YHYzQz8KXMZSKc6TYaZBTlWX1Wr
	BG6/Hpny1bCqifnQyQqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcG7-00045Z-1P; Mon, 04 May 2020 14:39:51 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcG0-00044i-6E
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:39:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id v4so177843wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 07:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=w4t0U+D/kp+A2G6So+DAelHTG97Zr7f3qIlp9fzkip4=;
 b=VT6A3yuhts/Sup1Aaf3TlojcaThJY4hOWcMYKaz7xPgexle4/kuynbkV7mgcUoEEbw
 Gn/CW2sYLNgTZA45X9XgPW8JrJWgoeIRF3BPeDrgJPKkGIcPRKop0Gyla7rJZz4Ol5w0
 2lpW0x79AXvLKOlbwqjWSR7H42s53C2/AzDy/RZEYO8aimi5hqvmtvnptqLq1VKbO7a3
 hJy0881ArJOTDVsdeKrk0ixZzwswHqdRYytNWMCWIzu3HYx7Dg6+cxeyEeodVUIodnze
 KcHOc3sN/muaK/jcXS+hiuhM9+aCpMI9of01BChv2AdZ+UxLwm0J0i0JNuUhT5jFaKLt
 cvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=w4t0U+D/kp+A2G6So+DAelHTG97Zr7f3qIlp9fzkip4=;
 b=oeRJHKwIJIkJBLlMxgo8BJpNPqKrxwiMur8MtVIzGraEJlY7sd1HVxhRFDXRlRgcz/
 3EOkeYR5sLn3lr7yhaMuRt0idIKbtT+LGO8jHOx5bNbZIk2i1Z/RTtFH5+bm9Cs5JM7R
 8j8rxzheyu05NETXcflIXdREFFTA7XQS2US+BhJSHxilH40M2G4ocwlS6y1/t0u9fFuu
 iL0JObaicEkXFPx/FEhPhdHzNEGRPc0MlwO75ZgEbOk4Y5Ea4xLPDdb1TW74mk3ePrpU
 21/6jicZ6X2PPxofIHgtzDhXtf0kRej2xGVSwDlI9p7gfii3QCHbC7VzWeSTg+eca1mF
 jVBA==
X-Gm-Message-State: AGi0PuYpONC5KdZB2vm8YUc+HaC4XlJzGhwoqSaXYRErLvEwDv8hl6NE
 /BHTm/BoFxG4TiIYW8NZNYt4bQ==
X-Google-Smtp-Source: APiQypI2F7wsUGonQC0TZFKc5uxhIN4f0OL+bxJR0Xwpj7YciVqjrvdRQtQdeeCKgcaZ8I7mLJ+60A==
X-Received: by 2002:a1c:1d92:: with SMTP id d140mr14822175wmd.67.1588603182395; 
 Mon, 04 May 2020 07:39:42 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id p190sm14130168wmp.38.2020.05.04.07.39.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 07:39:41 -0700 (PDT)
Date: Mon, 4 May 2020 16:39:32 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
Subject: Re: [PATCH v6 02/25] iommu/ioasid: Add ioasid references
Message-ID: <20200504143932.GC170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-3-jean-philippe@linaro.org>
 <20200430113931.0fbf7a37@jacob-builder>
 <20200430134842.74e596b8@jacob-builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430134842.74e596b8@jacob-builder>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_073944_237363_91AD51B9 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com, jgg@ziepe.ca,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, fenghua.yu@intel.com, hch@infradead.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 01:48:42PM -0700, Jacob Pan wrote:
> On Thu, 30 Apr 2020 11:39:31 -0700
> Jacob Pan <jacob.jun.pan@linux.intel.com> wrote:
> 
> > > -void ioasid_free(ioasid_t ioasid)
> > > +bool ioasid_free(ioasid_t ioasid)
> > >  {
> Sorry I missed this in the last reply.
> 
> I think free needs to be unconditional since there is not a good way to
> fail it.
> 
> Also can we have more symmetric APIs, seems we don't have ioasid_put()
> in this patchset.

Yes I was thinking of renaming ioasid_free() to ioasid_put() but got lazy. 

> How about?
> ioasid_alloc()
> ioasid_free(); //drop reference, mark inactive, but not reclaimed if
> 		refcount is not zero.
> ioasid_get() // returns err if the ioasid is marked inactive by
> 		ioasid_free()

How does the caller know that the ioasid is in active/inactive state, and
not freed/reallocated?

> ioasid_put();// drop reference, reclaim if refcount is 0.

I'll add ioasid_put() for now. I'd like to avoid introducing the inactive
state in this patch, so shall I change the calls in the Intel driver to
ioasid_put(), and not introduce a new ioasid_free() for the moment?

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
