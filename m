Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DBAB7D79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQrY+sZxH5cxyw8G/7NAHsUVpInB5HVDwVX58GiF/Ww=; b=IxsNZiK/CahNFh
	9NLP77CPT2VP3w6j9/eDIunKAlAWa6xpSTwytpEk7PXimzD2wD+GnjUmO9GBa3Irj8bh4wy0sH8Mz
	49WP2nksp+szryRbNfaMxQx5D728J3xJGNHmyaRtjXQjAkekw0Qpn+rRsAX1He4D75ipJhDSq8rDK
	ugz56Yl/SW/+0cLd0IHBQ16hJAnZJev3VhQq8e3f5lxbcYJLd9NJXF1ZUjhg4IOCNWzXIyTITpv2+
	hAcTOXdiAh+my+54S3HGotnHGjwHHVM+9PYLbOjGOxU2j10meBvo7Tllja4WcLwfZZgv/WwkzIpwF
	GidwnVUnyZRIOVF+vsiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxyQ-00032I-OZ; Thu, 19 Sep 2019 15:03:59 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxwF-0002XU-Pg
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:01:45 +0000
Received: by mail-ed1-x544.google.com with SMTP id v8so3525623eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 08:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KzQTk6xzLzucmWYoRU1s1qEtj1rE5wSKjOBqxGDWi/o=;
 b=gFhPQZUtwgWrCpL+lfpRPt59XpuIEnB98c1kiyEq+ontzS1nT6THLM3v60XXSiiotI
 2hdM97Jp9Im9zb2prqtZ/Aqt5igaCx+De8KULA2DUqDHvZNCmqg7sY5NotIT7BO4ZVGZ
 NMXP0fwNtJF3kjd0+cx2ZH3Y0EuIbqYe/R/8WS74kFPM2RRv0U2rnGplh5k2BBbjVMSL
 AQNDV/6Ovn9dmPVN2mnJpyNLagnJRgjCfQRn8lVxn1yT47GHBHHR+Yb331ZtpumZ7oXx
 jRv77JQKQog4T53rFFKSYbM4Rs6GI674XoL6AR6MTapjm4AMv6R22A/Yfbwx4T6f6eXN
 /Isw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KzQTk6xzLzucmWYoRU1s1qEtj1rE5wSKjOBqxGDWi/o=;
 b=q6+igcdHAG6qIgxHKM0DwcG/nDp3tqGrE7Uy6rBBtRJMRfPxrssKk+461YwmncZ1vn
 r6gZST+MHLOtL7b1BNCCpqGh7fBoOL9Nd3cMKeQmSPaU9QL0q+FKHs1pwIBMscaAoFpk
 kbBMQbhiAb4+psypEHp9vI9hBUkQ93dhDWNIH+qyUrJDncxCx7NpxMCE8YXC7rmITDm4
 byVB4TiWAH0FWqCGuTyGRlT72g6g4x+yqJnWZKJyCx5bPXrh1y/eJaqwOvwVZvqcns1r
 7Ms192yFft8QKRmcexAAyOkj7kLe7siDqCpybTV95JUFZRZtQoDZKtJEzPzcZ1gjkdET
 GZzA==
X-Gm-Message-State: APjAAAWK1lHbq3VE2//Wcn5tEYav60fcRaSa4BYirrIVCL+RXOKDTtxy
 +ENn7JzhctJmtSYdzKD7sKWlWw==
X-Google-Smtp-Source: APXvYqy11szzvwjni4nk4Rtsyh7bSUzszKXPgiMJKzEOHUFSjeTYlwaY1Lk6k4T/GgI6xyRlGiG3Lw==
X-Received: by 2002:a50:d5c5:: with SMTP id g5mr16735289edj.57.1568905302153; 
 Thu, 19 Sep 2019 08:01:42 -0700 (PDT)
Received: from lophozonia ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id g8sm892232edm.82.2019.09.19.08.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 08:01:41 -0700 (PDT)
Date: Thu, 19 Sep 2019 17:01:39 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH 4/8] iommu/arm-smmu-v3: Add support for Substream IDs
Message-ID: <20190919150139.GC1013538@lophozonia>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-5-jean-philippe.brucker@arm.com>
 <af286d72-97d7-d106-40a8-edfcbe563c98@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af286d72-97d7-d106-40a8-edfcbe563c98@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_080143_908030_CE4BD029 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, robin.murphy@arm.com,
 joro@8bytes.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 05:31:53PM +0200, Auger Eric wrote:
> Hi Jean,
> 
> On 6/10/19 8:47 PM, Jean-Philippe Brucker wrote:
> >  	/*
> > -	 * We don't need to issue any invalidation here, as we'll invalidate
> > -	 * the STE when installing the new entry anyway.
> > +	 * This function handles the following cases:
> > +	 *
> > +	 * (1) Install primary CD, for normal DMA traffic (SSID = 0).
> > +	 * (2) Install a secondary CD, for SID+SSID traffic.
> > +	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
> > +	 *     CD, then invalidate the old entry and mappings.
> Can you explain when (3) does occur?

When sharing a process context with devices (SVA), we write in that
context descriptor the ASID allocated by the arch ASID allocator for
that process. But that ASID might already have been allocated locally by
the SMMU driver for a private context. As there is a single ASID space
per SMMU for both private and shared ASIDs, we reallocated the private
ASID and update it here. See
https://lore.kernel.org/linux-iommu/20180511190641.23008-25-jean-philippe.brucker@arm.com/

> > +	 * (4) Remove a secondary CD.
> >  	 */
> > -	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
> > +
> > +	if (!cdptr)
> > +		return -ENOMEM;
> Is that relevant? arm_smmu_get_cd_ptr() does not test ssid is within the
> cfg->s1cdmax range and always return smthg != NULL AFAIU.

It might return NULL with patch 5/8, when we can't allocate a 2nd-level
table. I can move the check over to that patch.

> > +	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &smmu_domain->s1_cfg.cd);
> cfg.cd

Right.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
