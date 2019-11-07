Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F958F31D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvCdoUrkBl3jFFxG4eDdQlp8n2xp3fwjI/ZWe1MUswo=; b=LeNi4SaD0hto6x
	nRGLI0BW/wmypkW2bOVU4HtFXMPJbEg/5kZWdrNj2fSqBsLavIDwPDjf5rw6eJywhrJsNiuQZBg/3
	a9Mfm2BXZRzwVY3WG5eX7IoW3eJX1DrwuNKD135xeZVkA0bf1sK0Wi19o1l0Dr/jloP3VxH3ce0JK
	9F88wEv4GRLZCodd40+g6LFNF6ZmcQwK+TB90r1AP6KrfGw2PRiSVjo6sNlNIHHSFQN+kOuVYb8CQ
	WYEpLYIjVBT3nrlXEG+5xtXga3EmzlvbNVVzB+jJwLubeweZDEPjrVAtyXoz/DOiH6vsRz8BYYeAc
	H+QfXkaMA6LknHwz68aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjBQ-0001Zz-Kv; Thu, 07 Nov 2019 14:54:48 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjBH-0001Y4-Eq
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:54:41 +0000
Received: from 79.184.254.83.ipv4.supernova.orange.pl (79.184.254.83) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id 2b552d6f1ba461aa; Thu, 7 Nov 2019 15:54:28 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
Date: Thu, 07 Nov 2019 15:54:28 +0100
Message-ID: <1768519.laKBN70clK@kreacher>
In-Reply-To: <20191018134656.00000f70@huawei.com>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <1895971.7mY3IlW731@kreacher> <20191018134656.00000f70@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_065439_660978_D1F01FF1 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-acpi@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Keith Busch <keith.busch@intel.com>, linux-mm@kvack.org,
 jglisse@redhat.com, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday, October 18, 2019 2:46:56 PM CET Jonathan Cameron wrote:
> On Fri, 18 Oct 2019 12:18:33 +0200
> "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
> 
> > On Friday, October 4, 2019 1:43:27 PM CEST Jonathan Cameron wrote:
> > > Generic Initiators are a new ACPI concept that allows for the
> > > description of proximity domains that contain a device which
> > > performs memory access (such as a network card) but neither
> > > host CPU nor Memory.
> > > 
> > > This patch has the parsing code and provides the infrastructure
> > > for an architecture to associate these new domains with their
> > > nearest memory processing node.
> > > 
> > > Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>  
> > 
> > This depends on the series from Dan at:
> > 
> > https://lore.kernel.org/linux-acpi/CAPcyv4gBSX58CWH4HZ28w0_cZRzJrhgdEFHa2g8KDqyv8aFqZQ@mail.gmail.com/T/#m1acce3ae8f29f680c0d95fd1e840e703949fbc48
> > 
> Hi Rafael,
> 
> Yes. Cover letter mentions it was rebased on v4 of that series.
> 
> > AFAICS, so please respin when that one hits the Linus' tree.
> 
> Sure, though that pushes it out another cycle and it's beginning to
> get a bit silly (just rebases since April).
> 
> I guess it can't be helped given the series hits several trees.

I've just applied the Dan's series and I can take patch [1/4] from this one,
but for the [2-3/4] I'd like to get some ACKs from the arm64 and x86 people
respectively.

Thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
