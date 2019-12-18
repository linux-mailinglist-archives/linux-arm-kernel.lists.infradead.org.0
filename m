Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3516124CC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZN8qt+4fpPRSaK0MeTT4wCgqQlwFUvrI180oM22giI=; b=sXHPQCinV95avQ
	WB5CR4VY0yMuzjcw4iJ4363VlBLbiiIUhxS8rlZNOFUb8garnpAU8kAx8b9jwp+OvSIhcfixrAGNk
	cfK8cqMuAW2ZfffCZepb6dFLsAtHitPYBeC6Add7qCqRjVMjdxK6FuHBDehTi0yNhDz2L10dDU8zY
	qnlrQI9f1ZMxm3l2/gTsYJ2x2VXclBGhvs1mli6DEhLu0D7LxvVMJqRky3y0k6Dh5wu7aflEQOzW4
	jFXrDFSPhNDbSe+zMMbEpuweBFg2Z4Wf+cJ2HxfpRXewt1imFvGGu1jqAmB68x2VXvvMLS8JftSw7
	Vf+tP0Qj4GdWYQ5X1GFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbsd-0000DW-DA; Wed, 18 Dec 2019 16:08:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbsP-0000D4-Eb
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:08:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id 20so2393637wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 08:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=o5X12+OnlTrR6hQB7btD1TwyQhH770WeXItNc7qt5zA=;
 b=vGdwPfRl1Ha9VhwGDZb29pGKHmrCLBjEh/aU/lWfjiA+Es/jr7ZphzP4HzPPmjTJx+
 JSehVhXPNzXdOHN1KvgmcYfeFj+EOqqLkQfTn7w+aSzsmY9sA/Phabc6P4xORTt9/1CX
 ZeJvajjFb7Aa2pPQS2rmj8CC2WfmH3g8R6Icy6BCtWh0myJTrzSd94GfQGUovkp6jd2B
 rT+HoiZRDI9Poe0mNpRZQO9dQfwLmHSchdxzCs4OzzEO+QNZJtdaxkDjf9S6U0pGGXCC
 uBxrbddT9q0O1xSpIKLYhBMvxSFqGMIVi9YEcXDMHetlYODSFxx8S1+dGvzAMam0zV9q
 MZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=o5X12+OnlTrR6hQB7btD1TwyQhH770WeXItNc7qt5zA=;
 b=tLNsagelgBSHGo8mKhdzchL5z0jxpEy5pdVFCN7UlYpsmtFjJNlKeGJyvGFhGk30r6
 cqp/30fesnQxFAVisoq//X44sQOlYNXorN6FEgFinaDfATpAPy1nlQ88PRGlauvkGkoo
 3zYL17RJMg8VySSVlLP7oNIFLUXV2M0wiRN8N7yyuOTLt/ArWQmYHaqV574PRWLVbuCu
 q+dVugWpmsIZJGN1rSlO8fpiqrSqVgaGnFJdnyaPbmN5ucHhPaAStwNZ5iPtYky5mHQV
 EpGxnhkObSyZ/mDQ5dDzgkudOsFuGzOEBWFxfyfay2dxF1gT8BqsxhEweFyLvgpCNzga
 XMFw==
X-Gm-Message-State: APjAAAW1nfsS5mlOL8IibdMtXelpaNU8dFWhj2eX42lQI4C3PtHXTCrm
 m5m1teZwPP1bp12VmivqbN7VlshSI2k=
X-Google-Smtp-Source: APXvYqzGNVeQ/R7JR9UNdXnpKZSm9sCG7ntxjETJuNIvtVXZ9l8S+gdw6OnN9egWqIdDF5D4ZyEZUA==
X-Received: by 2002:a05:600c:22c8:: with SMTP id
 8mr3940980wmg.178.1576685320145; 
 Wed, 18 Dec 2019 08:08:40 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id c5sm2949884wmb.9.2019.12.18.08.08.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:08:39 -0800 (PST)
Date: Wed, 18 Dec 2019 17:08:34 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v3 08/13] iommu/arm-smmu-v3: Propate ssid_bits
Message-ID: <20191218160834.GG2371701@myrica>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-9-jean-philippe@linaro.org>
 <466bbc57-79d4-274c-67bc-4ed591da9968@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <466bbc57-79d4-274c-67bc-4ed591da9968@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_080841_493444_95B13E1A 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, robin.murphy@arm.com, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 06:07:26PM +0100, Auger Eric wrote:
> Hi Jean,
> 
> On 12/9/19 7:05 PM, Jean-Philippe Brucker wrote:
> 
> s/Propate/Propagate in the commit title.
> > Now that we support substream IDs, initialize s1cdmax with the number of
> > SSID bits supported by a master and the SMMU.
> > 
> > Context descriptor tables are allocated once for the first master
> > attached to a domain. Therefore attaching multiple devices with
> > different SSID sizes is tricky, and we currently don't support it.
> > 
> > As a future improvement it would be nice to at least support attaching a
> > SSID-capable device to a domain that isn't using SSID, by reallocating
> > the SSID table.
> Isn't that use case relevant (I mean using both devices in a non SSID
> use case). For platform devices you can work this around with FW but for
> PCI devices?

Normally each device gets its own domain. Especially since PASID is a PCI
Express capability, I expect them to be properly isolated with ACS, each
with its own IOMMU group. So I don't think this is too relevant for the
moment, it would be a quirk for a broken system.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
