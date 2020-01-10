Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3E5136811
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:16:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkSaoAZHbfcyGm+hZlemfTipTtt7DVFwhrjgY86rnJk=; b=FU8YAUxAS8HAp8
	CPXm73psTG40bzCzBtRg8hkcKbxX1seQ3YjzmV9IuoymtaIXv86VTMVUTi4I1kl3KFKV85+9wJCX7
	/sNHCsDIAxITWTw8rIHEaIxvfW0c2bCQOHjw5+4W1AaC9NctdZnLyIpgw8DAJo1ADLfu6hvV7aYWC
	A8k7Y8ag75rr/dL+hkdsJf6St++wqeLBiKc3TS9a0lW4hvixP3yFaJFJ/yAfsXuB+2VrB2VYqacLN
	o9nM634ilOPYH8LvjEEcQzOkyNzkI0+e0EFPrULpLrz8dqMwSJmbN+F09JgUmhgusayhgJeKmvDVn
	IA8KjdPfy+SPDG+UGyQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoWb-0003Ii-VM; Fri, 10 Jan 2020 07:16:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoWU-0003HU-L3
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:16:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id b6so760065wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 23:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9OKjM0NiA29A1YJnbOkfMLLtP+OMdLBmVsUr4YFKYmI=;
 b=w/heI5CiX5CG06QP7Sv0cxrLLmnMMNh5cvAR7T4TCmnIz8Eg3fbiQMZwB2YUCUpzbx
 mmUosVo3fH6aOf6Aw9xKPmPZaT8+jdHft0aUNvd2tlXM5ANa9UjfFpFSb57+ymTYjG/2
 pmxgcgaIyHPJWXiJr293yDtYme/mtd7L/Ak/YuEKAWw/I7xuaRqZVe1bFAEd9cpRytTN
 8ysCaE+HPdU//NOzq5Yzx8gqKE6Qa7hl0Pjp7FgaKVgfeZQOTmnyBEh7OOHhgjv7kBn9
 PyVyqewx7EOuO4LrYCozQosfklyZ3gAuvuPuSG21SND9Z7ck4iaNLeZ0n3+gj/x48gi1
 MOxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9OKjM0NiA29A1YJnbOkfMLLtP+OMdLBmVsUr4YFKYmI=;
 b=JgpPnaY3hwQb6+r+a1NBzVsV+RMH5jneQ0hfWRGXBHA41YF+UHBujOPVKoxSPMRlwW
 VhuFaplMcSLm7pBjfjaqy0r5mqWv8L0KHL9tTFJGZILPJBASUDhahzWrFPgUm16q5Wb4
 CDYtJA/pNitU2mPQ1RtLqo/u56yteSM2T1f1eDrA82PsqGHUsDLXvfJ1N4XZMS2p3SQ1
 Z9rMyXUYsexrIoZbZ6bz1wC8uInhdfI3Sh036R8N3vBsXsS1kDJ7QWaRGWaXyOfUvtWj
 Ely66ALLOWkBCHkC3g2EPAEYmvAKaVzKWgv34HcPTG6SnmX0lpYDQPL+/nXrNDHdz0XK
 4E2A==
X-Gm-Message-State: APjAAAUpnu9Mehq5AQ17TuoOS8cd230wWn3ZdrSFKZPJhLiGzepXBFpy
 FZtaJ24jzgMk8WWndBXQdZylDw==
X-Google-Smtp-Source: APXvYqyrMC4qUZGMDa4vTDXPc+WMRe1Cedi+NXO2t/JRWGPthrCa8hHpKeJ8ml5/0kP4fhuDUvDeMQ==
X-Received: by 2002:a5d:65cf:: with SMTP id e15mr1802033wrw.126.1578640555220; 
 Thu, 09 Jan 2020 23:15:55 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id x17sm1129827wrt.74.2020.01.09.23.15.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 23:15:54 -0800 (PST)
Date: Fri, 10 Jan 2020 08:15:47 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 00/13] iommu: Add PASID support to Arm SMMUv3
Message-ID: <20200110071547.GA959441@myrica>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20200109143618.GA942461@myrica>
 <20200109144100.GD12236@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109144100.GD12236@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_231558_698952_6E15F737 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 guohanjun@huawei.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, sudeep.holla@arm.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 02:41:01PM +0000, Will Deacon wrote:
> On Thu, Jan 09, 2020 at 03:36:18PM +0100, Jean-Philippe Brucker wrote:
> > On Thu, Dec 19, 2019 at 05:30:20PM +0100, Jean-Philippe Brucker wrote:
> > > Add support for Substream ID and PASIDs to the SMMUv3 driver. Since v3
> > > [1], I added review and tested tags where appropriate and applied the
> > > suggested changes, shown in the diff below. Thanks all!
> > > 
> > > I'm testing using the zip accelerator on the Hisilicon KunPeng920 and
> > > Zhangfei's uacce module [2]. The full SVA support, which I'll send out
> > > early next year, is available on my branch sva/zip-devel at
> > > https://jpbrucker.net/git/linux/
> > 
> > Is there anything more I should do for the PASID support? Ideally I'd like
> > to get this in v5.6 so I can focus on the rest of the SVA work and on
> > performance improvements.
> 
> Apologies, I'm just behind with review what with the timing of the new
> year. You're on the list, but I was hoping to get Robin's TCR stuff dusted
> off so that Jordan doesn't have to depend on patches languishing on the
> mailing list and there's also the nvidia stuff to review as well.
> 
> Going as fast as I can!

No worries, I just wanted to check that it didn't slip through the cracks.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
