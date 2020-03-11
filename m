Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8666F1816CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WESmPqjsyxW0do83mtpTG/hgIHhIpsFmQ2J01O9eTrs=; b=WzeRb1n6Q0YC/f
	FCeWbzSMyJ3WQRKKLKlNjVhw81xHwtGpN3VsXFcmwBqPJRJUlRzqYQzwNJ8vK5eWlAHSurt3SWjYD
	NEs9wfyi2kc6OaaYwiry4KT++n3E6ywvN2WCM0znZL579cRpNdFmFfawLaZQ4/On0xL/QY/AehTJV
	ldNQ91P77ZWTQL/E90YcHrJYoZA9dnNCa/k5rgOg8NGkzPLMvpd2vfHhpgYx4OifsbZe/XJ0r6Zo2
	6VTbqma8vVHy07H33bvvh7QyvgaYEHxIsfvALMptNiQR8hI6BggaxF4Z5Ip/ieHQusv7ASx7ccs7l
	SDpBUAV0UcvhyJLKtqlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzW5-00088o-Iy; Wed, 11 Mar 2020 11:27:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzVy-00087l-8Z
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:27:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9ABAB1FB;
 Wed, 11 Mar 2020 04:27:03 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D09383F6CF; Wed, 11 Mar 2020 04:27:02 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:27:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Hoan Tran <hoan@os.amperecomputing.com>
Subject: Re: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for
 NUMA
Message-ID: <20200311112700.GD3216816@arrakis.emea.arm.com>
References: <1580759714-4614-1-git-send-email-Hoan@os.amperecomputing.com>
 <20200206102340.GA17074@willie-the-truck>
 <c85dbc06-a72b-9c98-fe41-b25069114b2f@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c85dbc06-a72b-9c98-fe41-b25069114b2f@os.amperecomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_042706_340692_C931F3FC 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: patches@os.amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 12:01:19PM -0800, Hoan Tran wrote:
> Hi Will,
> 
> On 2/6/20 2:23 AM, Will Deacon wrote:
> > On Mon, Feb 03, 2020 at 11:55:14AM -0800, Hoan Tran wrote:
> > > Some NUMA nodes have memory ranges that span other nodes.
> > > Even though a pfn is valid and between a node's start and end pfns,
> > > it may not reside on that node.
> > > 
> > > This patch enables NODES_SPAN_OTHER_NODES config for NUMA to support
> > > this type of NUMA layout.
> > > 
> > > Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
> > > ---
> > >   arch/arm64/Kconfig | 7 +++++++
> > >   1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > index e688dfa..939d28f 100644
> > > --- a/arch/arm64/Kconfig
> > > +++ b/arch/arm64/Kconfig
> > > @@ -959,6 +959,13 @@ config NEED_PER_CPU_EMBED_FIRST_CHUNK
> > >   config HOLES_IN_ZONE
> > >   	def_bool y
> > > +# Some NUMA nodes have memory ranges that span other nodes.
> > > +# Even though a pfn is valid and between a node's start and end pfns,
> > > +# it may not reside on that node.
> > > +config NODES_SPAN_OTHER_NODES
> > > +	def_bool y
> > > +	depends on ACPI_NUMA
> > > +
> > 
> > I thought we agreed to do this in the core code?
> > 
> > https://lore.kernel.org/lkml/1562887528-5896-1-git-send-email-Hoan@os.amperecomputing.com
> 
> Yes, but it looks like Thomas didn't agree to apply this patch into
> x86.
> 
> https://lore.kernel.org/lkml/alpine.DEB.2.21.1907152042110.1767@nanos.tec.linutronix.de/

Was it a clear statement that such change will not make it to x86 or a
request for improving the patch or the description? I'd suggest you
update the x86 patch comment to include the rationale as per your reply
to Thomas and post a new version of the generic series. If Thomas (or
the mm folk) reject it again, we'll revisit the arm64-specific thread.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
