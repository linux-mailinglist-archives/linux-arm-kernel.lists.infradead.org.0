Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2190124CA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:07:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7BhX1vc+hk6W2MiTXCCkFSmjY27Z6+Sf6vOOKniVfg=; b=If4gINVnL1IalH
	xNUFgXAw5Fio1wYdbgJ1GmLyYMFcb1hxQO56wheKmOtGoVyImeC7tuQwK/sYoWqnKcHENwMbZRMyU
	DPh2Qraty5tHPZq2dkSNmUieG2Qse1sW4sqG6bVci3EnWPGQKvOfOa9F5BS5kgtVNh70ToqGvGX6O
	4JkKp7AV1xHwFsk6ohzq3NtrpD5Wte3QVqG3I9uQwYzhhO4m2PB+f1aOBap8HECAwqmYSJeDtObA6
	H47vK1HdvRPlKRjnkOLlv2bli9rpxIXgFpn75shIR3MTnttuS3O0gP5aESUnNBou6LCmzJpHfmVmL
	/+e2ae5lQRR/hX99wuPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbqt-00082y-3M; Wed, 18 Dec 2019 16:07:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbqj-000821-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:06:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so2893211wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 08:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ilGmQzgVpyz5+GgzhiMi4TnzxPgEeCNgmk38TMF+kZE=;
 b=C1i8TT0BKaZyqPij7EJiWtjjPH+4RB1V0a/wUUSe/JhD9Oslbx/1Q6XBpUW4q/UXah
 aoe7twq2cCcWk0bOOJ8Gb45nCWzluMIaHz3zLYW62oA0JAIGE4LCdpdOofh0hHYbNncr
 7MRGFnhVHQ4QYKCyBPZDcJ+yuntrIOsJELzFkUuNbHJ5GH97ieyD4Hx/gV1FrVok8xPE
 jNC4iIRl7+jgHUADTihavmD3bgyz/hMLa6NPMD4z0NlctNZH0ccJcgj2fU8QyAbECLao
 R/3/iPqI0xBufIyVNwBG7j7oOgv1rd4/DaFeC9pHElsyRmZy3qcm5xpPdim14xbF4VWO
 YKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ilGmQzgVpyz5+GgzhiMi4TnzxPgEeCNgmk38TMF+kZE=;
 b=eGAvPTBwhAYdP60u2Tj5zoYfDAFso9WbYnb4SaCGAUgCiQVPy1zN9KSYlRIyrlbCWx
 EQeG7/yP6h2Nxehm3iuhIMCxw6fbgxTf46GciTgbBMpyE2Rdj74E2wbmX8otfP9welB0
 NnbXh7I8BvIkh+NRxRntMxBiGQ949DBlbncE4hwm6aGJw+iTRzXwn/3W6A4lZWkDMGFJ
 /EJCGTeJRu+2o2wlLw3sdR1Gw0HKw0x87d9ywYhveG4zFm086/05vpdc6LO1L4/tiw5u
 6EB25tJuJMaJ/nGwZ0FcG17D7PcHXh/jNoyE7QJt4rR45ICO74jso9OzHsFqV//9dwhw
 Oj2Q==
X-Gm-Message-State: APjAAAVTJS47sd8ZwjhIgyDrNN6Q7HGv5oDl1mvYPlBHdsFz19WRBPto
 Uu/8/8pVyenVtma9NjUeS+WBiQ==
X-Google-Smtp-Source: APXvYqzlJfnzBPNvhgPh9GCf337cLxDV4nJ7SDFk/WvYc0UpuKM/kTPeUg6Rln8M6dK6UBAz2n6nYw==
X-Received: by 2002:a5d:4dc9:: with SMTP id f9mr3435991wru.297.1576685214969; 
 Wed, 18 Dec 2019 08:06:54 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id d14sm3236857wru.9.2019.12.18.08.06.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:06:54 -0800 (PST)
Date: Wed, 18 Dec 2019 17:06:49 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v3 03/13] iommu/arm-smmu-v3: Support platform SSID
Message-ID: <20191218160649.GE2371701@myrica>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-4-jean-philippe@linaro.org>
 <06c57de4-cfca-f95f-ac06-ab6f49a028a3@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06c57de4-cfca-f95f-ac06-ab6f49a028a3@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_080657_257032_C6A63ACC 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Wed, Dec 18, 2019 at 11:17:40AM +0100, Auger Eric wrote:
> Hi Jean,
> 
> On 12/9/19 7:05 PM, Jean-Philippe Brucker wrote:
> > For platform devices that support SubstreamID (SSID), firmware provides
> > the number of supported SSID bits. Restrict it to what the SMMU supports
> > and cache it into master->ssid_bits, which will also be used for PCI
> > PASID.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> the title of the patch does not really explain what it actually does. At
> this stage we are far from supporting SSIDs ;-) Same for 04?

Alright I'll make this "Parse PASID devicetree property of platform
devices" and "Parse SSID property of named component node"

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
