Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94C71C1A51
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34iqRwhgt55WtII9oZ18b3OS5CUPVUNkt2b1DTy0Wyg=; b=DvINKpxkChQB7r
	8rKjpdJxtNEZy7a3y6IekutCjUmOgsBgVIPAUXNKjwrEf90pg4HIy0x4dr/1Z+vq63iDCYwxlsltx
	tX8C/S1ViEz14Ix+hUt9/YJtEWPAAFf/ARa3ziVPByVrh+hp8ixdxcCpGFKAvDFMqNmMaW536EwpK
	WWoiuFQaXMGLmxXz7HpDNPymwx4RCH2zfY43Cuo5qpA6MejtTT9imReee+zC/VGlnjmKZSvOktb7/
	VDE3NmZx5WcdyZndevAUvgA4xkeVVajL3hrC4ZQy7tutspa8V8U1TThPRBElWXaHc+J1gSUzIIRSp
	Tva/5mSuMp+iPQl7mfag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYAQ-0003G2-OL; Fri, 01 May 2020 16:05:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYAK-0003Eq-Hb
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:05:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B893530E;
 Fri,  1 May 2020 09:05:26 -0700 (PDT)
Received: from bogus (unknown [10.37.12.80])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A5BC3F68F;
 Fri,  1 May 2020 09:05:24 -0700 (PDT)
Date: Fri, 1 May 2020 17:05:21 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH 5/5] arm/arm64: smccc: Add ARCH_SOC_ID support
Message-ID: <20200501160521.GB24840@bogus>
References: <20200430114814.14116-1-sudeep.holla@arm.com>
 <20200430114814.14116-6-sudeep.holla@arm.com>
 <426ff8ab-9c13-4301-a91e-989c19c4ff58@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <426ff8ab-9c13-4301-a91e-989c19c4ff58@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_090528_625954_0049224B 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>,
 "harb@amperecomputing.com" <harb@amperecomputing.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 04:25:27PM +0100, John Garry wrote:
> On 30/04/2020 12:48, Sudeep Holla wrote:
> > +static int __init smccc_soc_init(void)
> > +{
> > +	struct device *dev;
> > +	int ret, soc_id_rev;
> > +	struct arm_smccc_res res;
> > +	static char soc_id_str[8], soc_id_rev_str[12];
> > +
> > +	if (arm_smccc_get_version() < ARM_SMCCC_VERSION_1_2)
> > +		return 0;
> > +
> > +	ret = smccc_soc_id_support_check();
> > +	if (ret)
> > +		return ret;
> > +
> > +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 0, &res);
> > +
> > +	ret = smccc_map_error_codes(res.a0);
> > +	if (ret)
> > +		return ret;
> > +
> > +	soc_id_version = res.a0;
> > +
> > +	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 1, &res);
> > +
> > +	ret = smccc_map_error_codes(res.a0);
> > +	if (ret)
> > +		return ret;
> > +
> > +	soc_id_rev = res.a0;
> > +
> > +	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> > +	if (!soc_dev_attr)
> > +		return -ENOMEM;
> > +
> > +	sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
> > +	sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
> > +
> > +	soc_dev_attr->soc_id = soc_id_str;
> > +	soc_dev_attr->revision = soc_id_rev_str;
> > +
> > +	soc_dev = soc_device_register(soc_dev_attr);
> > +	if (IS_ERR(soc_dev)) {
> > +		ret = PTR_ERR(soc_dev);
> > +		goto free_soc;
> > +	}
> > +
> > +	dev = soc_device_to_device(soc_dev);
> > +
>
> Just wondering, what about if the platform already had a SoC driver - now it
> could have another one, such that we may have multiple sysfs soc devices,
> right?
>

Yes I had a quick look at that.

1. Such platform has option not to implement this SOC_ID if it doesn't
   really require it.

2. If the firmware starts implementing it on some variants, then we can
   distinguish them with compatibles and blacklist them from the other
   SoC driver if having both is an issue

3. SoC bus layer supports adding multiple SoC ID driver and it may show
   up as /sys/devices/soc<n> which may or may not be fine. But this
   happens only if neither [1] nor [2] is done. I am happy to see if there's
   any solution for this. Any suggestions ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
