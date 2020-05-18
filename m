Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4E61D7EAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+zO/bWYe/5n1k7iQF02m1vMD6+kkBR4tsimii3J8CY=; b=LwGCWKmU5Z7vAy
	OfmD6acJH+xogvinnA55D/DxiTqM2BzhetEiKzqXliJR8qKKldd063rw4lM01fACNGSjfy/UgBk8I
	bkq1dRCSTkt5eELQTnzsBJ11QEUwqPgdvUhMtAVl5HeVWDikLc1K6fn/PYqpnP+Mw4iulbu6bPdru
	ZXaZ9ndiAd58IsEAegZu/jvYA4dyaDfa61p3JQzKC3DHdT9A4z+b5kPzS5R6G4h9Eyaud8A5D21vX
	jceaFdE+eUImkGTeCHiNF4MHXzPzgEzryZ6HixAwtEmasVYp7Jtdz6gM2E4teTQkiUVX7Fh+KxftF
	mlOkd5OH/q2R2PvCWL1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jail8-0006OI-G8; Mon, 18 May 2020 16:36:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiky-0006DL-HQ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:36:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id w7so12581534wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 09:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2gB71GDbYw4drdErrFCHDJu6OIFxLC1rGMVvbvndxDM=;
 b=PDn/PxtMfkLDgv/KDv9kB0no5kBMLuhS+qeMDcod8WbYLbhEgkIlgH2u0QFRzcPVOl
 q+awlo77fgxtG8/InLzpp4GGLQGpLlEiXok6uGcW/2hPLhtNyzDv65j8LEsb7LKb91FL
 /05873qUSxmeP3aP/CeuSoF2CSKGIasPqXcq6bkBNvEHYE6U+4ebU86gavemPyFrd8aX
 NIluOhSZEwzye8Yc+0X8snjsraF4P+pCEmcRIx5w7cws889GEJdb55p143NKDwnbn6Ye
 gpxe8iA+sJuxkM1jHcgB2EVidW60koXndSh/pSNwb8s8/rC/w5S5nOIRf80ahCi8J4/m
 AArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2gB71GDbYw4drdErrFCHDJu6OIFxLC1rGMVvbvndxDM=;
 b=L8oO6hr8/As7oNzEo53lwJ9HcVuQXt+FqGiZT8Vh7Uzdrm8dQM5q0gjJjimAt0ugXc
 zmgIaDgXqFrDoN39QjIbMBj29hfpOUvP7NB0rR9YV0hPo4a8VRnXAX4InuxKGwa1WTrl
 f62B8LkTnRo22/OhiQanmdHEal8Cw3ZwggXM9Mv6MoticUrJ7ouqZFm3SmjarFl65SVs
 6o8Q5efAVtKMbi/YBL/8fM1QTz+xeA+pWJq05HZOSB+ID1gpcTJfqTKPwTVTj0SGvMCP
 lwsuqKy5bATHJ5JBN3xPlhyvYTweKA7IFKWzLngjGKt5gxQ582+fPVswQ60uRl7ofbRS
 Rv4A==
X-Gm-Message-State: AOAM531ovAOn9jl6qLAhWbWUkT0SxzUaHebUEjT7HxsrkUm2UuUUQ9pc
 m77i9Oi4PN9UIi0gRTFb518Xew==
X-Google-Smtp-Source: ABdhPJyoblToVYDpynfOZzcoPNIcIPzA/+uGv6r9gM7IsrGshV+QeruKxRwI6mlqXy28BRkRGgWhgA==
X-Received: by 2002:adf:f5cb:: with SMTP id k11mr20827860wrp.300.1589819806321; 
 Mon, 18 May 2020 09:36:46 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 5sm143931wmz.16.2020.05.18.09.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 09:36:45 -0700 (PDT)
Date: Mon, 18 May 2020 18:36:36 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 0/4] PCI, iommu: Factor 'untrusted' check for ATS
 enablement
Message-ID: <20200518163636.GA1515149@myrica>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
 <20200515154351.GA6546@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515154351.GA6546@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_093648_613638_A8C12E3C 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ashok.raj@intel.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 alex.williamson@redhat.com, iommu@lists.linux-foundation.org,
 bhelgaas@google.com, baolu.lu@linux.intel.com, will@kernel.org,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 08:43:51AM -0700, Christoph Hellwig wrote:
> Can you please lift the untrusted flag into struct device?  It really
> isn't a PCI specific concept, and we should not have code poking into
> pci_dev all over the iommu code.

I suppose that could go in a separate series once other buses need it?
The only methods for setting this bit at the moment apply to PCI ports.
(ACPI ExternalFacingPort and dt external-facing properties declared by
firmware).

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
