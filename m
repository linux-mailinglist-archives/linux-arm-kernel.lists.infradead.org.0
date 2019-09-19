Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 680E5B7DB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NpoaoTiwjIQqpfUKGgzVUrWVTr/j133Ltst5IuMkKA=; b=dri9LlFy3j/89C
	WwoCbldslaPquVFmn2NXaa1Lj0PMq0Ue0vxiB4xdJZ6++E2NotAdgkW4vlLW2qtZsKLO8fEy03cxj
	jsa6ZPl35XOqamUEo0GPL22yWSqtjrle7+RN9Y5MPuhf3ht+4ysP9LKpHyqD0O0mpwmUonW3bwl5b
	1VI9B8ZfNmrWAOOrivn3CeQBiRmnFgTdcgkpf3wuzIxTGdgJ1DLGA7q+LqrfjPYc57i60fez9SGn6
	eUYTZwq8pFCiCXpVFL8LTwuwPdeklt/sZdX7ZzrqYsvTksJ3ppfBs6tCoTwtGoBb4Hbb80axWFj4r
	dSONBYfMVAwb2xL341Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAy4q-0007KS-Lk; Thu, 19 Sep 2019 15:10:36 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAy4M-0006qN-P0
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:10:08 +0000
Received: by mail-ed1-x544.google.com with SMTP id t3so3478231edw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 08:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AtJmx7YzvmNMJX7vvcIKkFLqCflOxxyrvK1PoirDPTw=;
 b=oP8A5i+95DshExg2j5Uy8V9cUWkT0LstsMnL2HErbO3Vbig4wntTV4m9mYDptkb17n
 DAQHzC8LQ2HHXAIlqY5oIicOzr1wdnGP8KPctTWRc8JkI8n/5S2+1EkzYZyn93b7xA1L
 NRMSQHt8iAoE7YAYXWfur0TQYTo8GWxJZe5JgQytR/3NugB/OyojB6PhG45vS5P5rCgU
 vIx+13MlRVX+3pbxQFpNkjMlKkilkbYM3IuJysA6VOviuAKnocL55IrKfuuCVLzkrQjJ
 X3ULAwILuiC2s4Vo0QyTdo9hMV7Jp7SwibWqDyGQH8nHWaysISxxH80tBDisIJEEM9WM
 HTiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AtJmx7YzvmNMJX7vvcIKkFLqCflOxxyrvK1PoirDPTw=;
 b=Z1jbLnENcwF0aDSRNFkmRbl9oc7JJudTO9lGprCufN2gphwJ5qzqB1MZH+oz2r5fvY
 I1LiYYLB5r1FrYRbsUPIZUJpBPYnweomWpr4QqpwHbf0JacSNA3b7u5ba5gn0hoSKFSm
 iq/m4NRGU+2+cMyiJdt+06Krh72AReuppN5i4N928IDgBmWwf1RhzuajNDb14msl6jno
 8y68xtiUDyc9qbroN9V2tBbLVShDu4thCSN5EZsz1+RA7Mt+pdmB+Jh9BtLbzPcNqqG0
 0gSR3ahBN9cuG567PzFzHNx+NRmGVWTdQEdDD9nTtNSMaFfefVcf3DNpBhdT50cINSO0
 TPeQ==
X-Gm-Message-State: APjAAAXmOcxDmiGL7u8cDxmExIEgn5kqf06pUW9jTuhHqjNh3+p5RRjy
 t0rkxbsVmk0DC50MSwBnpMZBSw==
X-Google-Smtp-Source: APXvYqxYxiZ2bVj5BdC3D15rlj8ekrnex1zF/A83CKnKWTrXRSvBVCzcdgefGE1QNSwyzfOfjt1OGw==
X-Received: by 2002:a17:906:244c:: with SMTP id
 a12mr14473110ejb.288.1568905805521; 
 Thu, 19 Sep 2019 08:10:05 -0700 (PDT)
Received: from lophozonia ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id j10sm1683364ede.59.2019.09.19.08.10.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 08:10:04 -0700 (PDT)
Date: Thu, 19 Sep 2019 17:10:02 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH 8/8] iommu/arm-smmu-v3: Add support for PCI PASID
Message-ID: <20190919151002.GF1013538@lophozonia>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-9-jean-philippe.brucker@arm.com>
 <b0e3d9a9-6085-b393-1982-3dd95bf5d100@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0e3d9a9-6085-b393-1982-3dd95bf5d100@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_081006_826799_38CAA906 
X-CRM114-Status: GOOD (  17.71  )
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
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, joro@8bytes.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 09:58:16AM +0200, Auger Eric wrote:
> > +	ret = pci_enable_pasid(pdev, features);
> > +	if (!ret)
> > +		master->ssid_bits = min_t(u8, ilog2(num_pasids),
> > +					  master->smmu->ssid_bits);
> I don't really get why this setting is conditional to the success of
> pci_enabled_pasid and not num_pasids > 0.

num_pasids only contains the value of the PCIe PASID capability. If
pci_enable_pasid() fails then we want to leave master->ssid_bits to 0 so
that we report to users that SVA and AUXD aren't supported.

> If it fails the ssid_bits is set to min(smmu->ssid_bits,
> fwspec->num_pasid_bits) anyway.
>
> > +	return ret;
> > +}
> > +
> > +static void arm_smmu_disable_pasid(struct arm_smmu_master *master)
> > +{
> > +	struct pci_dev *pdev;
> > +
> > +	if (!dev_is_pci(master->dev))
> > +		return;
> > +
> > +	pdev = to_pci_dev(master->dev);
> > +
> > +	if (!pdev->pasid_enabled)
> > +		return;
> > +
> > +	pci_disable_pasid(pdev);
> > +	master->ssid_bits = 0;
> in case of a platform device you leave the ssid_bits to a value != 0. Is
> that what you want?

Yes, this is only for PCI devices, there is no standard way of disabling
PASID in platform devices. We just take whatever the firmware gives us.

> > +}
> > +
> >  static void arm_smmu_detach_dev(struct arm_smmu_master *master)
> >  {
> >  	unsigned long flags;
> > @@ -2413,6 +2456,9 @@ static int arm_smmu_add_device(struct device *dev)
> >  
> >  	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
> >  
> > +	/* Note that PASID must be enabled before, and disabled after ATS */
> > +	arm_smmu_enable_pasid(master);
> In case the call fails, don't you want to handle the error and reset the
> ssid_bits?

This function fails if the device doesn't support PASID, and we leave
ssid_bits to 0. That said, I think it would be nicer to move the above
line (that deals with fwspec) into arm_smmu_enable_pasid()

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
