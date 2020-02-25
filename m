Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8382416BD3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+9RJKNsJACcOo49PUP4/Ox3kWGVlXruQzaowdpaur4=; b=t8Y1Q/DDFvT+uO
	AQSD0M0sMNBHMd9vOfhWiaBG2QXiyirDTV0XOhmZPlyHh+V7jvQUUbaQubzOcJk6CXdnTWzNNkBnh
	fX05mHoHap7VKOkKe0cJQKekkcrRlW0ZRD0SRHx576rXioUby1RT8ojDBkQlMRKPsmni8mkidkQQY
	o80MZB5sbMlQcDd1z3xuFcmtJgjc7k3ZnBKmxwQc5G+oPkgyYRDV0IX6UpsB3xxW7IjwP9EIQlRZ7
	AFsvDzGrUEnN+UI6i+SSNAhIpy8+ErqwQTsNvlYOLygpOVpjMsGkmGxQ06rcqH+jCOg6ocqoEhSTE
	UXP8AwzhvaTmNNm5b2mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WTP-0000iG-0Z; Tue, 25 Feb 2020 09:25:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WT2-0000Zg-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:25:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id t14so2323268wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 01:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xXjKrsLdZZ8wwVwaLKEsCAigMvn6xhJRvLjeY9bym8I=;
 b=xSQI/AECo2FF/n1rzar450UsJu6LS++K752YYamCvDgC3gmDDtm//+VyDKm1Kbo2U6
 UGZi3S+eGAsV0JhiWc2Y+ce9bAn+BhCUIiuI6B59vwHIUTq6SUXNmlTzd15+Ahi5vRFG
 ukAPDmTylaGIN6SKk9F1PWSiE0RSVvcWjauHpIV3567yMuNz7dwqRHqE/6rGd5/HRMTP
 eH8jduDDQ5OHpK9lVCEJlTuHYN+7fQfK4nUzE+8LOZ/Mm/LwrJnTJ2SDMtvUVs3fepv6
 tBSVxhhsDR+XbgoksqEMbEYIIMKi+cx4SZ96EM24GLhZV/KdTnpP6eY2JcEYDfuCgCzQ
 cgpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xXjKrsLdZZ8wwVwaLKEsCAigMvn6xhJRvLjeY9bym8I=;
 b=uBBpprEI5r/saZMA4ODMXpp8e42c+HeYaCzj6hawnmzyA43ZECvRTk4zPZoLYVfvVJ
 aTFsWPjK1ce3nXF2u13kD8nPhb0WNJ71j+vStvePmB96NqNZY7ki8KXFMVwKZ4//7UX2
 s5bSEhrVansQ3LNYnTP3zEQGKQtcNz4FfH3/fu3EZx53hj19vVmFhfMi7+4bvc3kn1Dk
 +DeNRDWndfRytbfikpW3LAsk/iEDYZs+sBoU9+DZBpz2uRGpAfIpB5O1ynsa8bVG+Ut3
 BTY+tIAXFE+gpig7yqvzl9RgXWyW5MtLPHCnL9ZHDX2J9f/5w5MOeLFo2EOaMB27uDkJ
 9JQA==
X-Gm-Message-State: APjAAAUY0SxQY1UcAtpsI3Lru7O8qnJVJfLFMSxVUA6T/A6wo0giBaMo
 wYHUoZGHtj+OYsh85iyyBvgTMg==
X-Google-Smtp-Source: APXvYqyRPbcxq+DpGxqy4QJ4Y+9sIc/9udtBlHtjdqBZpekzFx+Ms4VTHLdlkurRNx5P5V2Nn5l0Xg==
X-Received: by 2002:a7b:c204:: with SMTP id x4mr4229923wmi.20.1582622727153;
 Tue, 25 Feb 2020 01:25:27 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x21sm3115712wmi.30.2020.02.25.01.25.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 01:25:26 -0800 (PST)
Date: Tue, 25 Feb 2020 10:25:19 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Xu Zaibo <xuzaibo@huawei.com>
Subject: Re: [PATCH v4 03/26] iommu: Add a page fault handler
Message-ID: <20200225092519.GC375953@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-4-jean-philippe@linaro.org>
 <cb8b5a85-7f1a-8eb7-85bd-db2f553f066d@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb8b5a85-7f1a-8eb7-85bd-db2f553f066d@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_012528_641057_0F77E40C 
X-CRM114-Status: GOOD (  12.99  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 will@kernel.org, Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-pci@vger.kernel.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zaibo,

On Tue, Feb 25, 2020 at 11:30:05AM +0800, Xu Zaibo wrote:
> > +struct iopf_queue *
> > +iopf_queue_alloc(const char *name, iopf_queue_flush_t flush, void *cookie)
> > +{
> > +	struct iopf_queue *queue;
> > +
> > +	queue = kzalloc(sizeof(*queue), GFP_KERNEL);
> > +	if (!queue)
> > +		return NULL;
> > +
> > +	/*
> > +	 * The WQ is unordered because the low-level handler enqueues faults by
> > +	 * group. PRI requests within a group have to be ordered, but once
> > +	 * that's dealt with, the high-level function can handle groups out of
> > +	 * order.
> > +	 */
> > +	queue->wq = alloc_workqueue("iopf_queue/%s", WQ_UNBOUND, 0, name);
> Should this workqueue use 'WQ_HIGHPRI | WQ_UNBOUND' or some flags like this
> to decrease the unexpected
> latency of I/O PageFault here? Or maybe, workqueue will show an uncontrolled
> latency, even in a busy system.

I'll investigate the effect of these flags. So far I've only run on
completely idle systems but it would be interesting to add some
workqueue-heavy load in my tests.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
