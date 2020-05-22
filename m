Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46D51DEDFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 19:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbmYbUVcnz5xDk+T450SrEz/U1C3IqnrKDHNL8veQqs=; b=jvsLt0z02lCd/+
	XA04j1OmMMyRl43rUK0g2Et/Cu//n8FQhW8tHnVqVePULuA3LyxBk7OaGc3nl19ARTLrosVE75QSm
	O2BZWGeYI2kUhf0bHij8lNgCU1zPux9gorRc8YLCXep5UQkbjst7Xf44MTGtUDMEzGjSA5TGf7AEp
	ffFpZk3ddMiPtweoWdMOEF/dGs2IwASGI8dEjSrXCUkdpLTrc4hXTgnaBUH5eM7WUANIDg8+tnoSG
	1oB+jtxHpN3LNvozxPReFcWw2+DqZPWRFwWjA19G/+GeO4csHMMP2EzlSsU4xqIlYeIM+/PTdyWHI
	QzHtkPa1otBslopLfl4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBGU-00041A-RL; Fri, 22 May 2020 17:15:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBGF-0002xy-6r
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 17:15:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id s8so10860247wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 10:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=09cuiPopIOJ5aAQOSJRwjVEJJoZ5ZgmUzhsRLgEZpY0=;
 b=r/uep0uuJQLYx20aHcrEbEpO3MMibL4LPe/jFDu4IN2wSG9yqX5PXP245RsG//+TO/
 Cocvp89LCLIPNNYlc6OykX8uBrz6LwI+ReTQvzxRSOMOey16m0EEisxn2tx5VunYYTPP
 1jbBQZtV83OTjzCQnsh+N53ProKGcWMS8TGEyyuf7fSKcAfptwIo5LRCJv+avtpmP8L4
 hw0ACBaOW0MFC/hnBrM5W8WeEfd600mle588Ys+xGLVDUUVJWDPhAxhlT3jyUMO8ckJo
 0HWO5mb4UdgvRrUcQTNZ8YcozyhK/90aBnlFS7/6rR61MKaYkOxfcqk8kWjHK77a+8sz
 MR9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=09cuiPopIOJ5aAQOSJRwjVEJJoZ5ZgmUzhsRLgEZpY0=;
 b=TMD21ZbA0ew8uhYt1yP8+Q++JzLgidlea2tZR9BRdTCjAt1k+odGE9YVtqvVa1TxR6
 7VWyApQxXpBq+UdxHswJC5nvYszcciQUqrnt5JCIeSeR+RJNC6cvvdaFI0KNamq00XLw
 t2Q0oq+6p59RebRWexzKG8Yt79SgJi+2iKy2aeOFSQqFHq4fA+bt+qDGjTl/2XTEk08e
 d+7gZ9JFaGeEBYHyAULQP94euBrumndKUnB5smMcQzqy9J83H91dURtfRFX9YFvweMMZ
 KYUWun12Q0xHzFlWZdy/Ajz7jVbacLoCpZiQ/g/iya6WhGfoNqjyryBSDvBBWVRCeZgB
 whyg==
X-Gm-Message-State: AOAM532NTC0RcEc91ev/WS0ZGln526UuwHP4kD25RkF0QDSvFAnkU0jB
 ycvNCCzvUtNsM81suqsX2Q5BnZG4k5I=
X-Google-Smtp-Source: ABdhPJyxZ7kAMuA18QTw/krT1LaT+RyS8m/xIWMdni16UN7OYLdnQFqzGTPLW06K+87Eh9MIsX4pmw==
X-Received: by 2002:a5d:49c5:: with SMTP id t5mr4331584wrs.18.1590167705375;
 Fri, 22 May 2020 10:15:05 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id h74sm10394613wrh.76.2020.05.22.10.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 10:15:04 -0700 (PDT)
Date: Fri, 22 May 2020 19:14:52 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Xiang Zheng <zhengxiang9@huawei.com>
Subject: Re: [RFC] Use SMMU HTTU for DMA dirty page tracking
Message-ID: <20200522171452.GC3453945@myrica>
References: <b926ec0b-fe87-0792-c41d-acad56c656a4@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b926ec0b-fe87-0792-c41d-acad56c656a4@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_101507_309337_8F86F6D6 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, maz@kernel.org,
 iommu@lists.linux-foundation.org, wangzhou1@hisilicon.com,
 James Morse <james.morse@arm.com>, julien.thierry.kdev@gmail.com,
 prime.zeng@hisilicon.com, Wang Haibin <wanghaibin.wang@huawei.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, May 19, 2020 at 05:42:55PM +0800, Xiang Zheng wrote:
> Hi all,
> 
> Is there any plan for enabling SMMU HTTU?

Not outside of SVA, as far as I know.

> I have seen the patch locates in the SVA series patch, which adds
> support for HTTU:
>     https://www.spinics.net/lists/arm-kernel/msg798694.html
> 
> HTTU reduces the number of access faults on SMMU fault queue
> (permission faults also benifit from it).
> 
> Besides reducing the faults, HTTU also helps to track dirty pages for
> device DMA. Is it feasible to utilize HTTU to get dirty pages on device
> DMA during VFIO live migration?

As you know there is a VFIO interface for this under discussion:
https://lore.kernel.org/kvm/1589781397-28368-1-git-send-email-kwankhede@nvidia.com/
It doesn't implement an internal API to communicate with the IOMMU driver
about dirty pages.

> If SMMU can track dirty pages, devices are not required to implement
> additional dirty pages tracking to support VFIO live migration.

It seems feasible, though tracking it in the device might be more
efficient. I might have misunderstood but I think for live migration of
the Intel NIC they trap guest accesses to the device and introspect its
state to figure out which pages it is accessing.

With HTTU I suppose (without much knowledge about live migration) that
you'd need several new interfaces to the IOMMU drivers:

* A way for VFIO to query HTTU support in the SMMU. There are some
  discussions about communicating more IOMMU capabilities through VFIO but
  no implementation yet. When HTTU isn't supported the DIRTY_PAGES bitmap
  would report all pages as they do now.

* VFIO_IOMMU_DIRTY_PAGES_FLAG_START/STOP would clear the dirty bit
  for all VFIO mappings (which is going to take some time). There is a
  walker in io-pgtable for iova_to_phys() which could be extended. I
  suppose it's also possible to atomically switch the HA and HD bits in
  context descriptors.

* VFIO_IOMMU_DIRTY_PAGES_FLAG_GET_BITMAP would query the dirty bit for all
  VFIO mappings.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
