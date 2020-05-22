Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699A91DEDF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 19:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZKJucGP7z0/eJzTL8cVSgquFCC0NTjUaJrFhuNMGxE=; b=j/gvH/uPa0mTk2
	FqfThQyEXl4rMYFu9w3ekn8bMBN/GYlXiLzJKAa3bDxaE+zbb2K00B1/rqWBOi9pfvV/CQZEFi/CP
	c0hP8ZdpD4KcT8CTJXy+wTAg9XBgv7TUxqJLvp5mgo2ftQmxwzLp4tx22dXjGv8A32fhaNd6Z34yz
	HGTkCBMXLEX743G5rOelQ+nOxVNKUUFO0ZTfjheAHXXV/FJOFmpNNzd8XJlmgbQt1bQ7wSC/kkGVP
	ZiUmsSiPeYGsIOp/Cf56+elaRmHbzheQlWJlcSFG2eAY6tp7leNlm1EQlb1jpvNlEBvENO1hgG9Mk
	Y4MnCNXi0ozikiQspscw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBFR-0001gm-50; Fri, 22 May 2020 17:14:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBFH-0001fl-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 17:14:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32AE855D;
 Fri, 22 May 2020 10:14:05 -0700 (PDT)
Received: from bogus (unknown [10.37.12.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4BF493F305;
 Fri, 22 May 2020 10:14:02 -0700 (PDT)
Date: Fri, 22 May 2020 18:13:59 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/2] firmware: smccc: Add ARCH_SOC_ID support
Message-ID: <20200522171359.GB18810@bogus>
References: <20200522124951.35776-1-sudeep.holla@arm.com>
 <20200522124951.35776-3-sudeep.holla@arm.com>
 <CAK8P3a1t6BrB_Gti138VDRbmaiR_TjwR9d6qMstLBFDWxZ1kjQ@mail.gmail.com>
 <20200522165422.GA18810@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522165422.GA18810@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_101407_979450_41C9E121 
X-CRM114-Status: GOOD (  27.83  )
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
 Francois Ozog <francois.ozog@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jose.Marinho@arm.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 05:54:22PM +0100, Sudeep Holla wrote:
> (+ Jose (SMCCC Spec author))
> 
> On Fri, May 22, 2020 at 04:46:12PM +0200, Arnd Bergmann wrote:
> > On Fri, May 22, 2020 at 2:50 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > +
> > > +       soc_id_rev = res.a0;
> > > +
> > > +       soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> > > +       if (!soc_dev_attr)
> > > +               return -ENOMEM;
> > > +
> > > +       sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
> > > +       sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
> > > +       sprintf(soc_id_jep106_id_str, "0x%02x%02x",
> > > +               JEP106_BANK_CONT_CODE(soc_id_version),
> > > +               JEP106_ID_CODE(soc_id_version));
> > > +
> > > +       soc_dev_attr->soc_id = soc_id_str;
> > > +       soc_dev_attr->revision = soc_id_rev_str;
> > > +       soc_dev_attr->jep106_id = soc_id_jep106_id_str;
> >
> > Ok, let me try to understand how this maps the 64-bit ID into the
> > six strings in user space:
> >
> > For a chip that identifies as
> >
> > JEP106_BANK_CONT_CODE = 12
> > JEP106_ID_CODE = 34
> > IMP_DEF_SOC_ID = 5678
> > soc_id_rev = 9abcdef0
> >
> > the normal sysfs attributes contain these strings:
> >
> > machine = ""
> > family = ""
> > revision = "0x9abcdef0
> > serial_number = ""
> > soc_id = "0x5678"
> >
> > and the new attribute is
> >
> > jep106_identification_code = "0x1234"
> >
> > This still looks like a rather poorly designed interface to me, with a
> > number of downsides:
> >
> > - Nothing in those strings identifies the numbers as using jep106
> >   numbers rather than some something else that might use strings
> >   with hexadecimal numbers.
> >
> 
> Not sure if I understand your concerns completely here.
> 
> Anyways I wanted to clarify that the jep106 encoding is applicable only
> for manufacturer's id and not for SoC ID or revision. Not sure if that
> changes anything about your concerns.
> 
> > - I think we should have something unique in "family" just because
> >   existing scripts can use that as the primary indentifier
> >
> 
> I agree with your idea of combining attributes, not sure exactly which
> ones yet.
> 
> > - It seems odd that there is no way to read the serial number through
> >   the same interface and publish it the usual way.
> 
> Valid concern and I will pass this to interface authors.
> 
> >   Francois Ozog
> >   recently asked for a generic way to find out a serial number for
> >   inventory management, and this would be the obvious place to have it.
> 
> Agreed, but not sure what author(s) have to say. I have cc-ed one of them.
> 
> >   It can of course be added later when the next revision of the spec
> >   is there, it just seems like a surprising omission.
> >
> 
> Yes, definitely. Good to get feedback.
> 
> > How about making the contents:
> >
> > machine = "" /* could be a future addition, but board specific */
[...]
> > serial_number = "0xfedcba987654321" /* to be implemented later */

OK more thoughts and few points I missed earlier. The SoC infrastructure
is more wider than the SoC itself IMO. The machine and serial_number
are beyond the SoC and this SMCCC SOC_ID confined itself to SoC for
simple reason that it is part of SoC vendor firmware which could be
used across various machines/boards/platforms.

I wonder now that rather than adding this as a SoC sysfs driver on it's
own, does it make sense to keep it as library which existing drivers
can use. Or we need to standardise the machine level interface that may
like outside SoC firmware and use both to have a generic SoC sysfs driver.

Sorry, I am just writing as I am thinking and may be talking garbage.

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
