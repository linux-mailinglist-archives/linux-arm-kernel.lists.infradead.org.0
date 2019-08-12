Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1431D8996A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eKDpcO03Hr+nqexeuzrwIyJt6YPNdUVvAcRTeFfh2I=; b=EmWmJOimi0PCBR
	FmE/vgheWG0d+rSjV14Y8P6UkWoP7BniP0SbSV7V2BkgSIDH4HEn0qfAsD24Ihppe+vFxlDg3FtK0
	osxZQNOgm5NoKKLvQL9mcoLjvpDWfPUmQI81F4Av35DQc7gDigIL8ulKN+VO2pVNplDOI3fs230/R
	1YGaTvYOW1saFcYX3xsZpn30ZLzwSfASs8QRAJUHifVhZDzZpgUicc9DZxrsonEBYTKfB7LpyD8ba
	DNRoCC8e1rgKLpe6Ej2xH040BvkK00e1v/SngeICM6vtDs9zKKxd/cA6zMWx1JeQmFQKgBBgzvVrV
	RZ4Iu29xVYmYzEf9eOGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6I4-0003tR-4m; Mon, 12 Aug 2019 09:06:56 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6HY-0003iP-4V
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:06:25 +0000
Received: by mail-ot1-f65.google.com with SMTP id e12so11932697otp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 02:06:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x19ChHEK+QrPCdfn+G+WLWoNlUCMAyNSIQtu2ElbpEA=;
 b=gkUhpjQUhlNwCaBSs/OdLJ45cqOg/ma/NcGP5uwjW08m9lFr/R8xULep4XUcZ/Vfzc
 Bt1i55pTDrLj7MF0NxApNjk9Apbf8dUPrecDdtHCdaC887WnHAIiaxXyO6eYrwZxk5wP
 afwNBMxPNMZdeWSeudRzcE1vo5/npJilHpJAF8sB1iqazDeofhRVos6J69R7rL3sYD+K
 nP9AVb0czBHhAVgsimqakJk6k/CHmXx2avoKqXcFtpWzvvJzbJjVc+4w0LTlCP5o980F
 eR9f5EgaYwR3nKevAz8o+Wks/0dMvri1mT0xb49IjM9To7V9jXOia2SogOcYiLu0lDW1
 MxSA==
X-Gm-Message-State: APjAAAWK0Q425NAYXOEDNl1GmZFbK5C5fvyUb6cgR8xcF+nnfuWx75J9
 KT+HYlaLPGv3WMYC68Wmku0BehvPqKa1mEoErIg=
X-Google-Smtp-Source: APXvYqzTPadKV6Ij0+vOMMpDmj6fU7T+0JhiwrApaCxWOX83Y7pnLXk0S1OfrsJijSklWmlrPJix60RQ5g1xEIcm0Cg=
X-Received: by 2002:a9d:12d1:: with SMTP id g75mr2750867otg.189.1565600782477; 
 Mon, 12 Aug 2019 02:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190808204007.30110-1-jeremy.linton@arm.com>
 <20190808204007.30110-2-jeremy.linton@arm.com>
 <20190808222518.5q4fhd2tvs4lb6aw@rric.localdomain>
In-Reply-To: <20190808222518.5q4fhd2tvs4lb6aw@rric.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 12 Aug 2019 11:06:07 +0200
Message-ID: <CAJZ5v0imn0X=M38LJcwe76gfLafWGU+MgyGd=NuKAeDtNZ+1DQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Robert Richter <rrichter@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_020624_203189_54E90CDA 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "rric@kernel.org" <rric@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, Jeremy Linton <jeremy.linton@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 12:25 AM Robert Richter <rrichter@marvell.com> wrote:
>
> On 08.08.19 15:40:06, Jeremy Linton wrote:
> > ACPI 6.3 adds a flag to the CPU node to indicate whether
> > the given PE is a thread. Add a function to return that
> > information for a given linux logical CPU.
> >
> > Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> > Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/acpi/pptt.c  | 53 +++++++++++++++++++++++++++++++++++++++++++-
> >  include/linux/acpi.h |  5 +++++
> >  2 files changed, 57 insertions(+), 1 deletion(-)
>
> Reviewed-by: Robert Richter <rrichter@marvell.com>

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

and please push it through ARM64 along with the second patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
