Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330A417920C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrCGxBVuRiRc/n/o7cW1+Q7q/H3Co1e4wQE0ROv+FKA=; b=NRGAOD2SiviAsS
	MBGsqhqmxi7FMh0+T7s2Bs+C2u1ldIwFk4jLHk5DSnJY076CEF7Mit8tfhLuUzu42OXhS2OefFzCy
	/iYxgte2eAFbeLktI4voKVSnIfY+ScYxA/UrnM+kusZqOtv3ZCXfuXU6i0oEHxBRs10NUSkgUsv+C
	h1PV4jQhZ+Uiith1oetwwGogRIaYe2/3kpy9/EA91uyf9Ac9FVHU4R8jR0WRhGK2z81Mda39v8RMP
	wcDZT5Ujqo562TwMEjREbnoNEdp+4nk40QM+QOYu3hc715pKfzSjgNzFAj8xqFXoAjaRf6esWHcEV
	tAPB4kykOt2XRFlRJV/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Ujp-0007bH-Hq; Wed, 04 Mar 2020 14:11:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Uje-0007Yb-UC
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:10:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so2588420wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 06:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7HwHHOirHwI1c4j5Tv3u9lHj4prOjYmBbBNbHrFitZg=;
 b=Q/6/YBabh+3hoAX2lwxr9pv+BA6F8RdNG6tLtX1bg/aislj9n8Gmj4CeXizdPlqgft
 CmQpjJEBAbscYl1+fBWSTwIw3Q+wl4TrDmjZJrl5wmkDlW6cEO2OLALqUjnUpgfw44/u
 XRD2SH+U+3LGbzsauCnxCczIwaG31q4mtJq6cN5NZdMgXdtdPJRXNnmjCr+94tPg+lLA
 KHTfh6h5pCiaaBcIZl39MWPMll42zzUvIORJenCDE9jzUv9vXF8eUanvdU7aIzACWArf
 8xEZxTj5/LYzGeCYId9/Id5fwR1H6KylI5CO0NUUG2UMvrQ0U4LwsnJmTGCM23qHOhp1
 tgUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7HwHHOirHwI1c4j5Tv3u9lHj4prOjYmBbBNbHrFitZg=;
 b=sMR3yUCNbE/XBvryrznpW4olcOWRDtAqMLx21uIGH+zgh6Hz+sGjhjGNqrQdgGxqII
 q+ARRtRQQHbK/kS2xW9j9kzensXkEs1eCgQC/67WFWpIrsQ8L/QyX0yNiBPXcOmjSdY0
 arJiH7uZ1aCCRuM+T7Bb5PMXRsTgt0XXn2bHou9iro2hIgplR0FgiQR1bdwBwMYe7CKY
 dNQycvc8yVnA5oMFCICO1QrGRWxx2yRKBrJNS39c+E/2RQRAAYOk/zF4hmlVRQgoPzOo
 iEXxQlJKgpY9n+yFsyIXB8FIIBpJV5qPBRTXzQ01YQ28Mf4dc3jK32xW10uj/cUwC9B3
 G50g==
X-Gm-Message-State: ANhLgQ3VUlBzwN9B9YbcIxTkLXpnsqKSlSVkW3MOCE4kj4qzAacx4DCl
 VEijknBbuMJ4LaUHGu45hNVUkw==
X-Google-Smtp-Source: ADFU+vtjRZ/ieGhvG1dNL4yvCidxtjrzWvostamf6vAXdMbRNS014Ivp7HqYWw4uSzXl8u6GytSgWA==
X-Received: by 2002:a5d:698a:: with SMTP id g10mr4347543wru.155.1583331052514; 
 Wed, 04 Mar 2020 06:10:52 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id t124sm4805947wmg.13.2020.03.04.06.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 06:10:52 -0800 (PST)
Date: Wed, 4 Mar 2020 15:10:45 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v4 07/26] arm64: mm: Pin down ASIDs for sharing mm with
 devices
Message-ID: <20200304141045.GD646000@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-8-jean-philippe@linaro.org>
 <20200227174351.00004d0d@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227174351.00004d0d@Huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_061056_420839_3FD8BA70 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-pci@vger.kernel.org, joro@8bytes.org, robin.murphy@arm.com,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 yi.l.liu@intel.com, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 05:43:51PM +0000, Jonathan Cameron wrote:
> On Mon, 24 Feb 2020 19:23:42 +0100
> Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> 
> > From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> > 
> > To enable address space sharing with the IOMMU, introduce mm_context_get()
> > and mm_context_put(), that pin down a context and ensure that it will keep
> > its ASID after a rollover. Export the symbols to let the modular SMMUv3
> > driver use them.
> > 
> > Pinning is necessary because a device constantly needs a valid ASID,
> > unlike tasks that only require one when running. Without pinning, we would
> > need to notify the IOMMU when we're about to use a new ASID for a task,
> > and it would get complicated when a new task is assigned a shared ASID.
> > Consider the following scenario with no ASID pinned:
> > 
> > 1. Task t1 is running on CPUx with shared ASID (gen=1, asid=1)
> > 2. Task t2 is scheduled on CPUx, gets ASID (1, 2)
> > 3. Task tn is scheduled on CPUy, a rollover occurs, tn gets ASID (2, 1)
> >    We would now have to immediately generate a new ASID for t1, notify
> >    the IOMMU, and finally enable task tn. We are holding the lock during
> >    all that time, since we can't afford having another CPU trigger a
> >    rollover. The IOMMU issues invalidation commands that can take tens of
> >    milliseconds.
> > 
> > It gets needlessly complicated. All we wanted to do was schedule task tn,
> > that has no business with the IOMMU. By letting the IOMMU pin tasks when
> > needed, we avoid stalling the slow path, and let the pinning fail when
> > we're out of shareable ASIDs.
> > 
> > After a rollover, the allocator expects at least one ASID to be available
> > in addition to the reserved ones (one per CPU). So (NR_ASIDS - NR_CPUS -
> > 1) is the maximum number of ASIDs that can be shared with the IOMMU.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> A few more trivial points.

I'll fix those, thanks

Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
