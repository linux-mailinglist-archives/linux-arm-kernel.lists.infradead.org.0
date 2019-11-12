Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D178F96A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:08:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/d3z6oitnnhFwexRoRRBhPExr+/TsQCajLWRqtphJVc=; b=c5Sqw/d64UPv3+
	myochlqEZjwS4AOkejmLoW1P5erpxcajaiNgpDqb8SHBKJjSS/SDajhbVvZPbMoiq0XXbj3tiTprf
	KHl9jZIKe6Qhq67stIp3LiYlpUG4Jihl6ojwDdPbRLqqT00YjilvgkJCuqpguOPWEzqvofxqLhaCY
	JHNjQ0AO754vSG4O5s4xef/Hi1CAIonwXyHB5J2bMo8oVqs9G36Ji4Y94NqhqNDu2k4qSUZZLlNeo
	qlpy7EoayzHBawI2rpdplKXMUN0kdq5jqq6nFkvmXK9YjSXwX7d3X6cts5Ha8b38UiuJwk6pF0mSw
	2jZFKGGltbasK2TucUsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZeH-0005hA-NP; Tue, 12 Nov 2019 17:08:13 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZe8-0005gK-1h
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:08:06 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5A1FB471603A22B30AD3;
 Wed, 13 Nov 2019 01:07:50 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 13 Nov 2019
 01:07:43 +0800
Date: Tue, 12 Nov 2019 17:07:34 +0000
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
Message-ID: <20191112170734.0000621a@huawei.com>
In-Reply-To: <1768519.laKBN70clK@kreacher>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <1895971.7mY3IlW731@kreacher> <20191018134656.00000f70@huawei.com>
 <1768519.laKBN70clK@kreacher>
Organization: Huawei
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_090804_259752_6E45E56F 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ingo Molnar <mingo@kernel.org>, lorenzo.pieralisi@arm.com,
 linux-acpi@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Keith Busch <keith.busch@intel.com>, linux-mm@kvack.org,
 jglisse@redhat.com, guohanjun@huawei.com,
 Andrew Morton <akpm@linux-foundation.org>, will@kernel.org, Dan
 Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 Nov 2019 15:54:28 +0100
"Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:

> On Friday, October 18, 2019 2:46:56 PM CET Jonathan Cameron wrote:
> > On Fri, 18 Oct 2019 12:18:33 +0200
> > "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
> >   
> > > On Friday, October 4, 2019 1:43:27 PM CEST Jonathan Cameron wrote:  
> > > > Generic Initiators are a new ACPI concept that allows for the
> > > > description of proximity domains that contain a device which
> > > > performs memory access (such as a network card) but neither
> > > > host CPU nor Memory.
> > > > 
> > > > This patch has the parsing code and provides the infrastructure
> > > > for an architecture to associate these new domains with their
> > > > nearest memory processing node.
> > > > 
> > > > Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>    
> > > 
> > > This depends on the series from Dan at:
> > > 
> > > https://lore.kernel.org/linux-acpi/CAPcyv4gBSX58CWH4HZ28w0_cZRzJrhgdEFHa2g8KDqyv8aFqZQ@mail.gmail.com/T/#m1acce3ae8f29f680c0d95fd1e840e703949fbc48
> > >   
> > Hi Rafael,
> > 
> > Yes. Cover letter mentions it was rebased on v4 of that series.
> >   
> > > AFAICS, so please respin when that one hits the Linus' tree.  
> > 
> > Sure, though that pushes it out another cycle and it's beginning to
> > get a bit silly (just rebases since April).
> > 
> > I guess it can't be helped given the series hits several trees.  
> 
> I've just applied the Dan's series and I can take patch [1/4] from this one,
> but for the [2-3/4] I'd like to get some ACKs from the arm64 and x86 people
> respectively.

Thanks Rafael!

Absolutely understood on the need for Acks.

For ARM let us try a few more CCs

+CC Will, Lorenzo, Hanjun.

Also Ingo on basis of showing a passing interest in the x86 patch
previously.  Otherwise I think we have the x86 people most like to
comment already cc'd.

https://patchwork.kernel.org/cover/11174247/ has the full series.

I'd appreciate anyone who has time taking a look at these.  The
actual actions in the architectures are very simple, but I may well
be missing some subtlety.

> 
> Thanks!
> 
Thanks,

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
