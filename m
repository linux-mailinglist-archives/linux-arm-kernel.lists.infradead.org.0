Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE811D7800
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGrCXtnhjW5LLE0krXfC7FZ/olb0smjIASENyEFjR/o=; b=Px3HshzpMk5ITH
	4NDsZiFcAB2jCAGUv2ys+X9Sfs8mk/Cxk+aXm1bWMMRsV8bmiIldruXAjHggOUj4EIlJDZ+uge818
	6PwTjYvE3IZ4jeDYDrciRHuhhdQuyapSZU3hzaIIxJDOdo+tOQovjKGTZVMH6t1gTJ8KkFvXFzU2y
	B0XL6aUeYGf9HV1+ViHR7VYP8YW+q3I/tsfuUaLrhuAW2GFuOuEpy7cXDULGFazqvwdbcmMO1O1mr
	Q9n8JqmqH7h11fUAH1r2mCsGsA0Y3sSUhdj7znUFeeMDU2jvyX6SJrWgKawH7gJ1S0esM4+B2EslY
	UlJoLOueluSxmshgcyqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaeNI-0001v6-TH; Mon, 18 May 2020 11:56:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaeN6-0001tp-2X
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 11:55:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D392D106F;
 Mon, 18 May 2020 04:55:50 -0700 (PDT)
Received: from bogus (unknown [10.37.12.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 328D33F305;
 Mon, 18 May 2020 04:55:49 -0700 (PDT)
Date: Mon, 18 May 2020 12:55:46 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v4 7/7] firmware: smccc: Add ARCH_SOC_ID support
Message-ID: <20200518115546.GB16262@bogus>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <20200518091222.27467-8-sudeep.holla@arm.com>
 <CAK8P3a20R+H6m5GZj2_0w3s-xF+J_qSVrQH8EjyQXe6+9WTYxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a20R+H6m5GZj2_0w3s-xF+J_qSVrQH8EjyQXe6+9WTYxw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_045552_160045_F300B26B 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 11:30:21AM +0200, Arnd Bergmann wrote:
> On Mon, May 18, 2020 at 11:12 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> > +static ssize_t
> > +jep106_cont_bank_code_show(struct device *dev, struct device_attribute *attr,
> > +                          char *buf)
> > +{
> > +       return sprintf(buf, "0x%02x\n", JEP106_BANK_CONT_CODE(soc_id_version));
> > +}
> > +
> > +static DEVICE_ATTR_RO(jep106_cont_bank_code);
> > +
> > +static ssize_t
> > +jep106_identification_code_show(struct device *dev,
> > +                               struct device_attribute *attr, char *buf)
> > +{
> > +       return sprintf(buf, "0x%02x\n", JEP106_ID_CODE(soc_id_version));
> > +}
>
> I think we should try hard to avoid nonstandard attributes for the soc device.
>

I agree with that in general but this is bit different for below mentioned
reason.

> Did you run into a problem with finding one of the existing attributes
> that can be used to hold the fields?
>

Not really! The 2 JEP106 codes can be used to derive the manufacturer which
could match one of the existing attributes. However doing so might require
importing the huge JEP106 list as it needs to be maintained and updated
in the kernel. Also that approach will have the compatibility issue and
that is the reason for introducing these attributes representing raw
values for userspace.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
