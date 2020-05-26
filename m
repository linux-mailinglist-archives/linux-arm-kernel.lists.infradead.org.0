Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF5D1E3108
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 23:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPeVMmwHXJuiS6tKo63e/WxJeD5Vv/GtZobxMrlNJZ4=; b=cHqU8CWwfaGUII
	OShnBZlofuX6Epo+pK56BYlEhX0V1VgPmyCSthr89luFf3NDuTIjWgqbU8zM0+iUBKwOO2W7iarky
	aD/rI02ZIMUXzhERBwpzJPM9zBB4/zwq1nfdvftzdBLOoYTx6wtmU+Nz8/ClSHPFtXa5a7kPeZExf
	kPvi8ewUs7QdYTYxMR54CPiiMXUVfpvUVpeS9rGuw3XPPVhWkxDZ2F0E9iwQrRi71UrqPxOjNCph/
	olQcaOJ4izBKOrLqZYmP4W225ifXEkEje5pK72kXDc/WGy0e658sj0oi3fl/xUddyyekhc9hn7r6p
	1PV9GP2QI5NewqpTNxWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgxh-0001hm-Of; Tue, 26 May 2020 21:18:13 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgxX-0001hO-7y; Tue, 26 May 2020 21:18:04 +0000
Received: by mail-io1-f68.google.com with SMTP id d7so23714715ioq.5;
 Tue, 26 May 2020 14:18:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lVVBuWO3qFEQRVDuoZfe9DGQFjStmCr4atb2ZbHcO8E=;
 b=iuI7131Oil4BH59VFHV2kfjmSJjDqDajkoIe6/8Xl0268LhZ0etWEtpbuWw35kGDWz
 mcvQeq0xp4yL6y1TddLDUXFM6vg06eVDPV7qXpnimqQueJ4UXzkQXkA1UVzS0koNPr/C
 YV804QvY4dtbbflNweBzLSz9D5PFqY+f3dyyrtfaenxU+uKqq78XgXsFzgQInJrA/+XV
 d5y34dC4SccIN2AgO47JpdjQp/nSWg12+FIV4DfXAdnmBkexBZc60QcBH1+OJmtRGSGX
 SxIbi3rk8jwVER76Z3XZE3q91AqTGQdTmy5Xp/KlRSUrLDvrUcdNgsuKyGU6HsFNB54b
 W+rw==
X-Gm-Message-State: AOAM533tN6w61Z+ZKhFuNZ7gCCBjHFRgW4Pu+TY9Xag8DLTXDtXDs9e9
 uGyjAX25cjb9Vh1P/iVIEw==
X-Google-Smtp-Source: ABdhPJwQrpel77itHrejAW3V1OCVBywOqev2wghw6aLmvMslUJY88azNYlGgJ1qYFsSmB5E2n/qkqA==
X-Received: by 2002:a6b:7017:: with SMTP id l23mr4256428ioc.140.1590527882382; 
 Tue, 26 May 2020 14:18:02 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id x22sm567394ill.9.2020.05.26.14.18.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 14:18:01 -0700 (PDT)
Received: (nullmailer pid 389955 invoked by uid 1000);
 Tue, 26 May 2020 21:18:00 -0000
Date: Tue, 26 May 2020 15:18:00 -0600
From: Rob Herring <robh@kernel.org>
To: chenzhou <chenzhou10@huawei.com>, James Morse <james.morse@arm.com>
Subject: Re: [PATCH v8 5/5] dt-bindings: chosen: Document
 linux,low-memory-range for arm64 kdump
Message-ID: <20200526211800.GA352001@bogus>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200521093805.64398-6-chenzhou10@huawei.com>
 <CAL_Jsq+EV02YBqEGoJrsJW8Y+g_GkB_LkTwWCxNCb3F+8MSdyw@mail.gmail.com>
 <a419602e-6a85-ca35-39de-b3c26d433199@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a419602e-6a85-ca35-39de-b3c26d433199@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_141803_285675_DF3F1C5C 
X-CRM114-Status: GOOD (  23.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: Simon Horman <horms@verge.net.au>, John.p.donnelly@oracle.com,
 Baoquan He <bhe@redhat.com>, Will Deacon <will@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, kexec@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 pkushwaha@marvell.com, dyoung@redhat.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:24:11AM +0800, chenzhou wrote:
> Hi Rob,

+James M (It's nice to Cc folks if you mention/quote them)


> On 2020/5/21 21:29, Rob Herring wrote:
> > On Thu, May 21, 2020 at 3:35 AM Chen Zhou <chenzhou10@huawei.com> wrote:
> >> Add documentation for DT property used by arm64 kdump:
> >> linux,low-memory-range.
> >> "linux,low-memory-range" is an another memory region used for crash
> >> dump kernel devices.
> >>
> >> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> >> ---
> >>  Documentation/devicetree/bindings/chosen.txt | 25 ++++++++++++++++++++
> >>  1 file changed, 25 insertions(+)
> > chosen is now a schema documented here[1].
> Ok, that is, i don't need to modify the doc in kernel, just create a pull request in github [1]?
> 
> >
> >> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> >> index 45e79172a646..bfe6fb6976e6 100644
> >> --- a/Documentation/devicetree/bindings/chosen.txt
> >> +++ b/Documentation/devicetree/bindings/chosen.txt
> >> @@ -103,6 +103,31 @@ While this property does not represent a real hardware, the address
> >>  and the size are expressed in #address-cells and #size-cells,
> >>  respectively, of the root node.
> >>
> >> +linux,low-memory-range
> >> +----------------------
> >> +This property (arm64 only) holds a base address and size, describing a
> >> +limited region below 4G. Similar to "linux,usable-memory-range", it is
> >> +an another memory range which may be considered available for use by the
> >> +kernel.
> > Why can't you just add a range to "linux,usable-memory-range"? It
> > shouldn't be hard to figure out which part is below 4G.
> I did like this in my previous version, such as v5. After discussed with James, i modified it to the current way.
> 
> We think the existing behavior should be unchanged, which helps with keeping compatibility with existing
> user-space and older kdump kernels.
> 
> The comments from James:
> > linux,usable-memory-range = <BASE1 SIZE1 [BASE2 SIZE2]>.
> Won't this break if your kdump kernel doesn't know what the extra parameters are?
> Or if it expects two ranges, but only gets one? These DT properties should be treated as
> ABI between kernel versions, we can't really change it like this.
> 
> I think the 'low' region is an optional-extra, that is never mapped by the first kernel. I
> think the simplest thing to do is to add an 'linux,low-memory-range' that we
> memblock_add() after memblock_cap_memory_range() has been called.
> If its missing, or the new kernel doesn't know what its for, everything keeps working.


I don't think there's a compatibility issue here though. The current 
kernel doesn't care if the property is longer than 1 base+size. It only 
checks if the size is less than 1 base+size. And yes, we can rely on 
that implementation detail. It's only an ABI if an existing user 
notices.

Now, if the low memory is listed first, then an older kdump kernel 
would get a different memory range. If that's a problem, then define 
that low memory goes last. 

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
