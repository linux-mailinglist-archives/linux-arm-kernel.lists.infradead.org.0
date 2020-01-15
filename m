Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A26D13C9DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ/fA0dzhfsl7L+U5K0VdYVIQYjeSDNfFAuIHRWsPqw=; b=N0dT8hBgDwkZvI
	g5YSAj6tajQk2wlkByMMF4k2bArXCXneBxNdfkBi5dqCZLSU5qL+B2iW3TELg5YnRkxS9myPJhYkJ
	OXuTBPoPNbufY7Vg6KbGZ9LDUrZ5ZlCWt2Du6Yh2Bz30v3OSMCgoQiHRVsImDhcK51gJaEuIGjrRV
	yowrEUTJarbzUlaO/ThxgMztj8GPqHXCKAbi0X3KCbtK43wu+/XB4KIPpYXPBKVa4+GVYCIcDuS8T
	UMevlBw8V/s4PrEZAzzdjExPDrmeVFzMv0PfdNVyR9DVInP/v651h6xwJ2dgpJYKF4CRc1GMC8Hai
	jxj84L/YKOh8NF5TFX5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irllH-0003NQ-CZ; Wed, 15 Jan 2020 16:43:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irll0-0003Hk-Ln
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:43:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21A152081E;
 Wed, 15 Jan 2020 16:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579106582;
 bh=fJApyuntPyejoeMn12vz+APsEX7vQKt1nCchJ8JsFZM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fYFmh46g2DI//JufPVgq0BeHAGjhlNgl4fsN9XiOgjIAh5C+ueN3A2T8ZbKmWXxb6
 l2TMNhiqS5KrRTt2RqVVniFLr8drjLE29SSrEBJiR0g/pcNzx3Efig1LeBT5aaumqT
 4V+EC1XPv3qVsagsI/6A7sLA+1pd/hMbsNrLUlY8=
Date: Wed, 15 Jan 2020 16:42:56 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v5 00/13] iommu: Add PASID support to Arm SMMUv3
Message-ID: <20200115164255.GB30746@willie-the-truck>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_084302_740745_58F701D6 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 01:52:26PM +0100, Jean-Philippe Brucker wrote:
> Since v4 [1] I addressed some of Will's comment.

Thanks! I've tentatively managed to queue all of this apart from the last
patch, since that relies on some pasid symbols being exported from the PCI
core when building the driver as a module with PCI_PASID=y.

Please can you look at the rest of things here?:

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/updates

> Still missing and will be submitted as follow-up patches:
> * write STE.V with WRITE_ONCE() (patch 7)

I've hacked that one up myself.

> * batch submission of CD invalidation (patch 7)

That can be 5.7 material.

> * Remove WARN_ON_ONCE() in add_device() (patch 13)
>   Pending Robin's input.

I've written that one too, but we'll see what Robin says. The question now
is which commit do I tag in the branch above :)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
