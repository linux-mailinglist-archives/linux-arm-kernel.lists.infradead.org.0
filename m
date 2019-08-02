Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C727F4B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 12:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sh/qQ7zZRViUokY+f1qfCTmH9TmNYypSLONWlEMizRE=; b=S2mcoOXmZWrQEx
	l59wzhTRVHTJ73+LwbGsXhJWYk0MlsGtoH5hlzfi92KahOCXV3uI2cDjDUGD3EfUl/PGLGB8L+Elx
	KmqZcNTO0ROSsuIhj+q2Ph3DoMp1vTk1WjkATEumo+reRP/j2SGsyg++rstUa1uuzfha6zwK41Voz
	da8YBxT/mgMc2OWJL5W5c2f0qp+faH61ZwYrt5nyp4Lywd9u4WPqDjeLeIVMd6BusL3qnEC0alN+u
	6SmM3AIisXwYMHOU+lVRgc0C3nbvaFlQpVd1UWPkzVMwoE2uaDDT3OTRmjq2gQFf1wlzHZ5W30dz5
	PTmES0qpEgIAPFRuGQgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htUUc-0000Oq-6b; Fri, 02 Aug 2019 10:08:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htUUO-0000Mm-Vc
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 10:08:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C9EB344;
 Fri,  2 Aug 2019 03:08:39 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B1D323F71F; Fri,  2 Aug 2019 03:08:37 -0700 (PDT)
Date: Fri, 2 Aug 2019 11:08:35 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Hansen <dave.hansen@intel.com>
Subject: Re: [PATCH v6 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Message-ID: <20190802100835.GA4175@arrakis.emea.arm.com>
References: <cover.1563904656.git.andreyknvl@google.com>
 <20190725135044.24381-1-vincenzo.frascino@arm.com>
 <20190725135044.24381-2-vincenzo.frascino@arm.com>
 <b74e7ce7-d58a-68a0-2f28-6648ec6302c0@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b74e7ce7-d58a-68a0-2f28-6648ec6302c0@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_030845_062727_B207A2C6 
X-CRM114-Status: GOOD (  12.09  )
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On Wed, Jul 31, 2019 at 09:43:46AM -0700, Dave Hansen wrote:
> On 7/25/19 6:50 AM, Vincenzo Frascino wrote:
> > With the relaxed ABI proposed through this document, it is now possible
> > to pass tagged pointers to the syscalls, when these pointers are in
> > memory ranges obtained by an anonymous (MAP_ANONYMOUS) mmap().
> 
> I don't see a lot of description of why this restriction is necessary.
> What's the problem with supporting MAP_SHARED?

We could support MAP_SHARED | MAP_ANONYMOUS (and based on some internal
discussions, this would be fine with the hardware memory tagging as
well). What we don't want in the ABI is to support file mmap() for
top-byte-ignore (or MTE). If you see a use-case, please let us know.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
