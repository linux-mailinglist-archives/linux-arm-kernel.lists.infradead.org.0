Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EA3161660
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaqGuSUTRip3Z3MQZ2ZUgFgdytfdyJq+rAq7GfmOWrI=; b=u/64ISKXqShsOF
	yLwEli6zxZvzaJWUiajxHG+kHnpXPSM1fCx83trkBdYjuaoNetfhsaosIMJN/iREB015v03q797wx
	P4UDLJUGI9bYlkrKoLgjrT2i9r5s2+EtbNEgUky8qOjnOMLgK+VhYcgZUqWeVykiPstbUxm1o7fV3
	hTk+KsVrv/OgIq8QcaVHm9zIJCYW5msjS1HpjxiyKiPs8FY20ShFGJMyRxX1ZNNoX7XfsBpvDqQf8
	Vf+c0E5OaUciXVW9FjpVzUgEzTxSoSAKXuNTAZBD6O/TURY7x5cTHLqUIKFgz5d16oNJpsEJ/jZbF
	i1MFrsZqfzafPSjkIdTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iVe-0002E2-CC; Mon, 17 Feb 2020 15:40:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iVU-0002Df-7I
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:40:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id m16so20246295wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 07:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uBL44HTwPsTzK1hTlXHwrWPFvRz4I8cxeuhUA7nfr3s=;
 b=QUNDlRjh2O+ooQ41KWBChztMd4j9tV2M8HiE6TDGhh6KZcCXQYdQmMqHkRy/oPre/d
 E+T64sT8TUAqvGZCkZWcpAPXMK/psI/SMbqtUXH8WD/97O+XqMwt7rE0VgfYpg4SGCTu
 72DvsxmGQ2FHB1KOF86wT5RUdwe9l5E14uXBkwlKILpzWF5nOlDot/mlGYQpzffkiZng
 dV1PcmwTrlY7TdA4Y7kgPv5XUqhxhLqt6oG02ccYRx64/bgjYrAaemMkV8MHRgYP/RlA
 RNsfj1wDY4F+M6s4FATLU+2N+UfYeGwZGxIXM15btV8V9U0AnPqJn9J60Be6mPZjxKkb
 OLhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uBL44HTwPsTzK1hTlXHwrWPFvRz4I8cxeuhUA7nfr3s=;
 b=niV+0mBgI3M0z+CrDOQb51wM5KSH4aSGYOzqzXjWO6oAESkT3XOKcGIyl+6ijg8KEN
 9W0X2dGHvvpK0XxyAcTpyrC11pRZ2gscRBxYQ1XCyrR+7H/35o7tHa8RNvX86okcCnKb
 l1YcT5B3eBhjEc26Oqd1K0/MaQQtcRw/VqPMhlcdmBODrldVuN40FUZhQ30sxZ3umcNB
 Ox2JYu5Y2KXjL5KNxKpBsNagwD/EwvBlJ3ipYjm68yh2xqLgAR7B2ww7Xtfxl7JPiBch
 6yYckw4TAm3GnVcDcRkJasTLqrBgwCIhjUXqvlXiZcJEDLupsTbrhnDzC/8w4F738iIP
 xlGA==
X-Gm-Message-State: APjAAAU/hakz+bpywGRAunKgM+Xq5Njjkx9gHtx1BBr/wISpa+fGrHO6
 VUXVQEhmP8nTLD7W1Nd9Ko6GCA==
X-Google-Smtp-Source: APXvYqyK3wvWFPYLO6Oneazyxhd5g+tje1jkIBunochJVdUjHRcEMjjKDjk9tOFHPoHKB9Cr5dnXww==
X-Received: by 2002:adf:f109:: with SMTP id r9mr22236398wro.406.1581954021861; 
 Mon, 17 Feb 2020 07:40:21 -0800 (PST)
Received: from myrica ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id v131sm1106010wme.23.2020.02.17.07.40.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 07:40:21 -0800 (PST)
Date: Mon, 17 Feb 2020 16:40:12 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 02/11] PCI: Add ats_supported host bridge flag
Message-ID: <20200217154012.GD1650092@myrica>
References: <20200213165049.508908-3-jean-philippe@linaro.org>
 <20200215211047.GA124796@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200215211047.GA124796@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_074024_268204_BA53F54C 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 liviu.dudau@arm.com, guohanjun@huawei.com, frowand.list@gmail.com,
 lorenzo.pieralisi@arm.com, corbet@lwn.net, will@kernel.org, joro@8bytes.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, dwmw2@infradead.org,
 rjw@rjwysocki.net, iommu@lists.linux-foundation.org, sudeep.holla@arm.com,
 baolu.lu@linux.intel.com, robin.murphy@arm.com, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 15, 2020 at 03:10:47PM -0600, Bjorn Helgaas wrote:
> On Thu, Feb 13, 2020 at 05:50:40PM +0100, Jean-Philippe Brucker wrote:
> > Each vendor has their own way of describing whether a host bridge
> > supports ATS.  The Intel and AMD ACPI tables selectively enable or
> > disable ATS per device or sub-tree, while Arm has a single bit for each
> > host bridge.  For those that need it, add an ats_supported bit to the
> > host bridge structure.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >  drivers/pci/probe.c | 7 +++++++
> >  include/linux/pci.h | 1 +
> >  2 files changed, 8 insertions(+)
> > 
> > diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> > index 512cb4312ddd..75c0a25af44e 100644
> > --- a/drivers/pci/probe.c
> > +++ b/drivers/pci/probe.c
> > @@ -598,6 +598,13 @@ static void pci_init_host_bridge(struct pci_host_bridge *bridge)
> >  	bridge->native_shpc_hotplug = 1;
> >  	bridge->native_pme = 1;
> >  	bridge->native_ltr = 1;
> > +
> > +	/*
> > +	 * Some systems may disable ATS at the host bridge (ACPI IORT,
> > +	 * device-tree), other filter it with a smaller granularity (ACPI DMAR
> > +	 * and IVRS).
> > +	 */
> > +	bridge->ats_supported = 1;
> 
> The cover letter says it's important to enable ATS only if the host
> bridge supports it.  From the other patches, it looks like we learn if
> the host bridge supports ATS from either a DT "ats-supported" property
> or an ACPI IORT table.  If that's the case, shouldn't the default here
> be "ATS is *not* supported"?

The ACPI IVRS table (AMD) doesn't have a property for the host bridge, it
can only deselect ATS for a sub-range of devices. Similarly the DMAR table
(Intel) declares that ATS is supported either by the whole PCIe domain or
for sub-ranges of devices. I selected ats_supported at the bridge by
default since IVRS needs it and DMAR has its own fine-grained ATS support
configuration.

I'm still not sure this is the right approach, given that the
ats_supported bridge property doesn't exactly correspond to a firmware
property on all platforms. Maybe the device-tree implementation should
follow the IORT one where each device carries a fwspec property stating
"root-complex supports ATS". But it isn't nice either so I tried a cleaner
implementation (as discussed with Robin back on the ATS-with-SMMUv3 series
[1]).

Thanks,
Jean

[1] https://lore.kernel.org/linux-iommu/c10c7adb-c7f6-f8c6-05cc-f4f143427a2d@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
