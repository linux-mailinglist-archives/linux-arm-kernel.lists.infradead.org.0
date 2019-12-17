Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 740D5123021
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 16:21:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQCr9nDocPtL0X3B1KlFuKKOeEYxFkgEL9Yjl4gSrCs=; b=lQdbld/XGoM1dJ
	QbdK47Wr0SJvgUO8JaKCefTNe5dlnqxIUEsnuEA6pPuA2EZXw1AXGZNmDBDc48/0FkC6GavOKe0tX
	vue5yWpJ4fIhTajebP01nyY7MnHs/HDKu7FXrJcbTnpN5G142wU8FrQQKdT/08PWCyjbodbmhCAiE
	lCw3uMBOdElT/0gLCI67slpoiAMgvmzqFCRgvRnN0KbI+7fPgqOgJr+mkO4nZLRHMK/61d0oivivF
	3tad63oMEZ/EUlL23VtqxG84crAgkBH31I4khV/uCLy716zE5eJupzh720l2uk/E7vUQCnUe6WH9j
	3AggxD8Vim3FJLu6XMJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihEfL-0004Dz-8x; Tue, 17 Dec 2019 15:21:39 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihEfC-0004CS-Hk
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 15:21:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so11737829wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 07:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/U6kIWQCRrt5t46RzQq83Cexhdp96mlj0bDDsvo61J0=;
 b=zYpxZTb+W4CafynX/GjHKf3cPY+ZcFMKhPepfPIsR2ENTx1vIn6Qcj+OWPPMn78rvn
 8ndC9NFyie5drvYpo3BgXxap1zVlvHUw7Tp3zeqOCom9nhTtk8XnZ9PVVeWp59fjML+q
 md0iB6uixCMDeJAQvm1Dy741/FBYwIxlVuhB4OvmccJdlNQ5C5VG1/1pEAyRS8Rui4Cz
 Q8V633DYjfwnqDBdCv2Jzz/Bum12yws5o8/xTlLHVliu03pI/CGDZc0wgx/5bhQYaVhX
 JKeGrk+H7oFKNRtKza+FurEMK4Rh4OJWVScTuxx5EVgA/01UT5CgEcldpppYf1h/nVID
 rKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/U6kIWQCRrt5t46RzQq83Cexhdp96mlj0bDDsvo61J0=;
 b=QG0rG5h/gLSk47jJrMTGtBnynJtU+GiUdjbs0snUEvWVuNC24xBMhVB4LSd/XDcR8G
 wovSCc8wzYjMbxOZgTdYjOU+zLn1bzekbancxSQSCgFZrEoo5kpf5UbUPQwOVqRSOIJL
 LTG9PGaiMlMeqSaVTclxDl+HmMZZkxAKtalAdP27NxmKa8mej4/gBHUf1AaE81oWe88p
 k4K+NNLeFEm326BFnZPtMuaIbgrN0+1M6nKt5eaReD1sq5jwk0prK3TvcMPLzy+Q6ehp
 U5NFoHsb/fLqSqfMGfdaeHiidtfJYPmYiHbMvJ5e73wCGp/9gshH6rtstlDsv3PRsBcw
 OoXg==
X-Gm-Message-State: APjAAAUpeLMuj0nGtlQmyTv3ia8C1KzYxiC2mhE2PHDyCy580E/uGUI5
 HOZcu6d9qzrO90f9T9RzIZpdmQ==
X-Google-Smtp-Source: APXvYqxGZpcrEU2hF1yXvjy3TQGwn9Ed0+ek9wFSXQ/mi7LzOCYo9KI6i5ueC9DEOAbG9y2v+MiMeg==
X-Received: by 2002:adf:de84:: with SMTP id w4mr35905632wrl.97.1576596087819; 
 Tue, 17 Dec 2019 07:21:27 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id s16sm25985278wrn.78.2019.12.17.07.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 07:21:27 -0800 (PST)
Date: Tue, 17 Dec 2019 16:21:08 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v3 03/13] iommu/arm-smmu-v3: Support platform SSID
Message-ID: <20191217152108.GB2305883@myrica>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-4-jean-philippe@linaro.org>
 <e5b9a017-585a-5425-77bd-be40b86010e6@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5b9a017-585a-5425-77bd-be40b86010e6@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_072130_596600_80D2E2A6 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Eric,

On Tue, Dec 17, 2019 at 12:05:18PM +0100, Auger Eric wrote:
> > +		fwspec = dev_iommu_fwspec_get(dev);
> > +		if (!err && fwspec)
> > +			of_property_read_u32(master_np, "pasid-num-bits",
> > +					     &fwspec->num_pasid_bits);
> > +	}
> This patch dedicates to platform devices however I fail to understand,
> at that stage, how/when do you retrieve/store the same max capability
> for PCI devices?

For PCI devices, the max capability is only described by the PCIe PASID
capability, not by firmware. Patch 13 deals with PCI by setting
masted->ssid_bits from the PASID capability directly, ignoring
fwspec->num_pasid_bits.

> Besides,
> 
> Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks!
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
