Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD251C4006
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0zynXiiFey+o/PanVcohi1nWETkyYkta9VwakDQQHk=; b=jV+g/jRr6QOmfn
	sgZ3f5KGxSvznAQ1+NvNaiBTS+VFvC2NciC31NCeSvZUHR2cOBerDsjeUrmVkafUx2j6OQfJo+hBT
	14kroON0nLY2w+7L0PZl5Eg40KXsTU6eJchp2TPTMdF6QA3Rq1u9KzmvJU/JYUU9PMeQQk9bdkeW6
	H+Cga5P1kmUqwnWfWtNH+Rcbn9TKuOGdyKD3nCd7ItR42XHZ2iyxoK3oygkmNZofgA1T0vgX5IXxA
	61PC5/VQWgilq3Wi386Vn8d44jTfuysqKVOSbPhXS7A4iaKFznw/81D9seu5ZElyWVJpYHjtIRglO
	A02DCaGkDBfZbYp8UKyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVe4i-0008D4-FC; Mon, 04 May 2020 16:36:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVe4b-0008By-VM
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:36:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id x18so21769967wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Kl5xt2RTiHls+O1+Q0mo8BGBZHrI/nlz87XckVdCL1g=;
 b=ie+B2GQn0xE9JMPS6WF8xSO2Nb3Bq/Z6k2tntw6DutFeL6B9N4DPWVklfbNH4FnjaN
 t/FdSJpizjKhO8r7qWYTVIfj5tsh0Pyre46+FgQl/czQpS77eCKBAx7l0fXzqe5oMoJN
 srD+3dXDSZ1b8gDIeuMqWa8VuGSbuKmcgrBbHkW2D7hnwsTKJTes6Tw8OLdAyIdx9DsB
 hoEzpcXksJ2R6iwRnxlq1Hy4FZn4zTesCpGIx+6colQIPrKfNOCzGL8j1llscgSmy5B/
 5cauF3xMhaLP0b+LA+EjuCFSF43vHxSqLu21aoJ22r7LNEmYy0ZayKBxq3kGlHDl94a6
 bpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Kl5xt2RTiHls+O1+Q0mo8BGBZHrI/nlz87XckVdCL1g=;
 b=tAnzY0rKY3tYJ+AQoaVGyQbLYoJz9jsFNehFuXCipf1CeGMlHgVoPwzzZ3HEaYgxIS
 Qjr20dtFRLuBKx5p9BnT8qV1QL0BVGm1PosKpG0ZhPovjPcCEqs/1ZOrtgbIy+S6eGFJ
 17b0C5aCfce7GNG8BVx+263MyDCVnP6NcgozoJWynun/Kg2wnJUkA+RogclH6YQo1Kfy
 tv5ckP0fJaWLFEJj627aIDhceDiDeInw1UGxGBL0bJb9UWSkrNRmd+j4+aMCr5VUCS0x
 AGhTkVRsrzLnfpd8Ta8LoVGb3P1X7DDGYhSlZyy7ogv02XVMQU3/iG1eT3RQyXAm/oyF
 m7mQ==
X-Gm-Message-State: AGi0PuaMQQ0vfEWkH52z03szNQVXU2q1mxjwDgpiLD4y7xLyMYQHmqTH
 yNALI/iR0nKTJI67J4EYUPMjUQ==
X-Google-Smtp-Source: APiQypLd6vuo0MczRTSEBPfkSN84zUGhA14hWPmpa6tAN+ckf2g+Pmwwtmh//IwEutIpZVdWAHOW4g==
X-Received: by 2002:a05:6000:10c4:: with SMTP id
 b4mr20516301wrx.203.1588610164479; 
 Mon, 04 May 2020 09:36:04 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id z1sm13717417wmf.15.2020.05.04.09.36.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:36:03 -0700 (PDT)
Date: Mon, 4 May 2020 18:35:53 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: [PATCH v6 19/25] iommu/arm-smmu-v3: Add support for Hardware
 Translation Table Update
Message-ID: <20200504163553.GI170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-20-jean-philippe@linaro.org>
 <CAJ2QiJLUxiJRnxQmO3O_48ZcTtNwziCWT6i2SJdAruDi+KGEFw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJLUxiJRnxQmO3O_48ZcTtNwziCWT6i2SJdAruDi+KGEFw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_093606_009252_86E243FB 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: fenghua.yu@intel.com, linux-pci@vger.kernel.org, xuzaibo@huawei.com,
 linux-mm@kvack.org, Will Deacon <will@kernel.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>, joro@8bytes.org,
 hch@infradead.org, jgg@ziepe.ca, tanmay@marvell.com,
 Catalin Marinas <catalin.marinas@arm.com>, zhangfei.gao@linaro.org,
 devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, Jonathan.Cameron@huawei.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 felix.kuehling@amd.com, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, May 04, 2020 at 07:54:03PM +0530, Prabhakar Kushwaha wrote:
> Dear Jean,
> 
> On Thu, Apr 30, 2020 at 8:11 PM Jean-Philippe Brucker
> <jean-philippe@linaro.org> wrote:
> >
> > If the SMMU supports it and the kernel was built with HTTU support, enable
> 
> is there any framework/config for HTTU which must be enabled to use this patch?
> 
> 
> > We can enable HTTU even if CPUs don't support it, because the kernel
> > always checks for HW dirty bit and updates the PTE flags atomically.
> >
> I believe, this statement is valid in context of this patch-set only.
> 
> One cannot use code snipped to test HTTU because exiting
> io-pgtable-arm.c driver doesn't have framework to leverage HTTU
> benfits. It by-default sets AF=1 and does not set DBM.

Right, this patch only sets the hardware access and dirty flags for SVA
(page tables shared with the CPU through iommu_bind*()), it doesn't enable
anything for iommu_map/unmap(). Although I remember discussing it for VM
migration, I don't know of any effort to use hardware access/dirty bits
outside of SVA.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
