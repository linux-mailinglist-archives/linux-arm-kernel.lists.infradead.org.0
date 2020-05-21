Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643AA1DC755
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cH844nfVMzHdZoDualeYPuA0M+td5V9aKIHO3axg2CQ=; b=nc1EFk4pCpd4ZQ
	Be5ibCc5IJcw8Oj6Sk8j5CgW5wGbsSU7BDXTZtPAtnRKIFT4XHqRKDhg5Mt86sopvd+dt8OFg9Cvg
	gi9LUnHufTFY+7oXd2NBdQgxZJ5CjIoWTaIF3E+y3A9KkM4jUO+w8yIL19CMCLK1+ppsirUG8/KwS
	LQZ3KKn/Rk8sIvkA6AlOQXIzDoSMmMBIdb9tRJU6HXRu68rJYdZ7ZNmFIhcIY2/FamGA/6c/Ax3nD
	GeKGdqp8ykp6e0gd8uJO8ctx0cItQPjjtweUQm0UvfIqJI40HPxT7+G5BaATw/LX/9kh+646rCSsg
	prParlfdsBAcXDgQlEFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfJK-00021C-UO; Thu, 21 May 2020 07:08:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfIv-0001qZ-8i
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 07:07:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4DCBD6E;
 Thu, 21 May 2020 00:07:43 -0700 (PDT)
Received: from bogus (unknown [10.37.12.114])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAF093F52E;
 Thu, 21 May 2020 00:07:40 -0700 (PDT)
Date: Thu, 21 May 2020 08:07:38 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v4 7/7] firmware: smccc: Add ARCH_SOC_ID support
Message-ID: <20200521061228.GA1131@bogus>
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <20200518091222.27467-8-sudeep.holla@arm.com>
 <CAK8P3a20R+H6m5GZj2_0w3s-xF+J_qSVrQH8EjyQXe6+9WTYxw@mail.gmail.com>
 <20200518115546.GB16262@bogus>
 <CAK8P3a3bOEL5wYFc1Fjg1vAT51NumzO0iUSroHQLSUt8WpZL7g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3bOEL5wYFc1Fjg1vAT51NumzO0iUSroHQLSUt8WpZL7g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_000745_397394_CB5B6023 
X-CRM114-Status: GOOD (  22.18  )
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
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 11:51:47PM +0200, Arnd Bergmann wrote:
> On Mon, May 18, 2020 at 1:55 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, May 18, 2020 at 11:30:21AM +0200, Arnd Bergmann wrote:
> > > On Mon, May 18, 2020 at 11:12 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > > +static ssize_t
> > > > +jep106_cont_bank_code_show(struct device *dev, struct device_attribute *attr,
> > > > +                          char *buf)
> > > > +{
> > > > +       return sprintf(buf, "0x%02x\n", JEP106_BANK_CONT_CODE(soc_id_version));
> > > > +}
> > > > +
> > > > +static DEVICE_ATTR_RO(jep106_cont_bank_code);
> > > > +
> > > > +static ssize_t
> > > > +jep106_identification_code_show(struct device *dev,
> > > > +                               struct device_attribute *attr, char *buf)
> > > > +{
> > > > +       return sprintf(buf, "0x%02x\n", JEP106_ID_CODE(soc_id_version));
> > > > +}
> > >
> > > I think we should try hard to avoid nonstandard attributes for the soc device.
> > >
> >
> > I agree with that in general but this is bit different for below mentioned
> > reason.
> >
> > > Did you run into a problem with finding one of the existing attributes
> > > that can be used to hold the fields?
> > >
> >
> > Not really! The 2 JEP106 codes can be used to derive the manufacturer which
> > could match one of the existing attributes. However doing so might require
> > importing the huge JEP106 list as it needs to be maintained and updated
> > in the kernel. Also that approach will have the compatibility issue and
> > that is the reason for introducing these attributes representing raw
> > values for userspace.
>
> I was thinking they codes could just be part of the normal strings rather
> than get translated. Can you give an example what they would look like
> with your current code?
>

Sure. Couple of example:
Cont Code   Identifier       Manufacturer
0		0x1		AMD
0		0x0e		Freescale (Motorola)
4		0x3b		ARM

I initially thought of value like "jep106-0-1" for AMD "jep-4-3b" for
ARM,..etc for the standard attribute family or machine. But I was not
convinced fully on that approach as it will be deviation from normal
values in those attributes. Further this represents the vendor name
rather than the family or machine.

> If  you think they should be standard attributes, how about adding them
> to the default list, and hardcoding them in the other soc device drivers
> based on the information we have available there?
>

That may be possible, I can take a look at the existing drivers and
check if that is feasible(which I think should be). Thanks for that
suggestion.

--
Regards,
Sudeep

[1] https://github.com/skottler/memtest86/blob/master/jedec_id.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
