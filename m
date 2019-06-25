Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A435533D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJqKgZpvyOV+JIu4f5dm5ml56lhVpduIO/cOAxzry9w=; b=PYIg8gwbzKAcGq
	sutSKTwXkmcNc3uCzwN3j+yZIDcsCHUYklzHZuuseIRHVu7MkYZAFAh028vOnbcktP9DJ0YNfntM7
	QW946etO72B0GhOl6PCZkRCR2XATyvteDsTzqpa+6ApAX1Ha2fBerDB/WMOgBV3lF7cTiBsrMfrz1
	uLV7FZTD132U6dyEYA2I1nXvXt/pyOJqUSmQq3Ok7wX7Ld78XrsiMJt4Py3VC3INppN+0qFNlKZ4C
	6jbEfSD3GmdEXQIzaGSgnoAIgMAPwl7UTPKgMWErDgeTSt/aVBDXl1FSPV6xq3CSpdSDoB2iDN2wV
	2XbMkqz8HaDmbMccRRGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnGD-0004LO-AZ; Tue, 25 Jun 2019 15:21:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnFY-00041S-Hb
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:20:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BE622B;
 Tue, 25 Jun 2019 08:20:46 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF9493F718;
 Tue, 25 Jun 2019 08:20:44 -0700 (PDT)
Date: Tue, 25 Jun 2019 16:20:38 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
Message-ID: <20190625152029.GA2308@e107155-lin>
References: <20190614223158.49575-1-jeremy.linton@arm.com>
 <20190614223158.49575-2-jeremy.linton@arm.com>
 <667f95c0-5aa9-f460-a49a-e6dfefc027d8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <667f95c0-5aa9-f460-a49a-e6dfefc027d8@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_082048_709398_B60668A5 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: rjw@rjwysocki.net, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:34:51PM +0100, Valentin Schneider wrote:
> Hi Jeremy,
>
> Few nits below.
>
> Also, I had a look at the other PPTT processor flags that were introduced
> in 6.3, and the only other one being used is ACPI_LEAF_NODE in
> acpi_pptt_leaf_node(). However that one already has a handle on the table
> header, so the check_acpi_cpu_flag() isn't of much help there.
>
> I don't believe the other existing flags will benefit from the helper since
> they are more about describing the PPTT tree, but I think it doesn't hurt
> to keep it around for potential future flags.
>
> On 14/06/2019 23:31, Jeremy Linton wrote:
> [...]
> > @@ -517,6 +517,43 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
> >  	return retval;
> >  }
> >
> > +/**
> > + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
> > + * @cpu: Kernel logical CPU number
> > + * @rev: The PPTT revision defining the flag
> > + * @flag: The flag itself

How about the "the processor structure flag being examined" ?

> > + *
> > + * Check the node representing a CPU for a given flag.
> > + *
> > + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
> > + *	   the table revision isn't new enough.
> > + * Otherwise returns flag value
> > + */
>
> Nit: strictly speaking we're not returning the flag value but its mask
> applied to the flags field. I don't think anyone will care about getting
> the actual flag value, but it should be made obvious in the doc:
>

I agree with that. I am also fine if you want to change the code to
return 0 or 1 based on the flag value. It then aligns well with comment
under acpi_pptt_cpu_is_thread. Either way, we just need consistency.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
