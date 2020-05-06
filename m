Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC7C1C6E1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbgx/2mDIsqs4W2EgGCGRCa06ZJBGer2oqNBgf/Gujc=; b=GcDYpa9adGgopX
	NiqFISb75y086P/3eVZdEdoOwilIyiqEb92E/LykVHYE0lZQgqjmqwhdL8VmL+KODqsYXx/gXpbAw
	QFxmL+IZ2DkbW7Xz00ettMaEXQ0ZZDahNZJ7pjpPYmO+vgE1VkRJ1XcfX1NBRsjrQEO3yF4mDs4Ox
	z2D9oXMIYVEICvfZ9L168nZ+BEaHnQCeyIx2ObF+/p7kCIhRYIjbZui4LH+yZiJ6c5eSTzeSJof35
	1Ue36Uqt5hBjBUYVmvp2726mwHgeI6DJSkEvwQTON0H6QXq9+Bymp0blWe1Zh2X3X9aOw3lRZUS1N
	WyH7XJoOxGJaBSY8YEKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWH1W-0003Zf-02; Wed, 06 May 2020 10:11:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWH1O-0003ZG-Nd
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:11:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id g12so1948893wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 03:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CZGxVEINRFfXco4KoTv4rMN52n6V3TJRcAbrE28fW9I=;
 b=gV9RfLluzH10SNhxg/ntUX82VqQaIDxo5hreeCRlMY9MSi58DD1Rdv8yrkNnxMUNdc
 lqqVgDIDm3KKLgwIIfqxX9p7vAryeLm1fKw2t1OPaSbqw8YrMfm1wrFSJ7BawFFe5mII
 XVVAXr9hAmR1dSQMhxBFiMv+jFhDF5JgqnK8YOlezXRMvHPp7CiEqnjwQJeUJc8TTebd
 xyl4YYbHvzEgaYk8eLDwc8AsaW5okMx3l4dFvMInLPONGXPKs4yAL1bV1he8DCSqr8sv
 7DlRNJpYJsXkdlD8kNP0c6Uo5Q58EVfFd0/sng6OXjXzWFH9lZOn8SHyFXSXYRRuDR80
 Esfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CZGxVEINRFfXco4KoTv4rMN52n6V3TJRcAbrE28fW9I=;
 b=gDGaBuOCzpN+qpZVHa2fBWU99TuR3adBdSUHnc3piIQKHbKt6iTriNvWdPd8CeI0+q
 5YiMZAsS58mLRCJrcAuYZYRy4LOnaZtokRJb4i7u7URA9qWGxvGu/G9kFrAtC0DyrKeA
 cLTtE1qWkXAt4MWhJfDYUYKMQHghO5w/WKHzjLRUAmetwXwa/HbLrSu8ttqt4KNl1JGO
 OInKKjZF30Syi8FcYXYLiD8sVUFd/7WTiqv+WqF0A13YCGmUUT2K561G2JllihG2nsHR
 edjQat1JGN2e5BOdJ4ES1++0+JouIr8pq1RKHiyQJmmtiW1x+20y9+/qulskwlv4CgUx
 4g/w==
X-Gm-Message-State: AGi0PubrRCVyX27f4vKVebwdiIdt/LNR8oNpvdAAiCGCcRd0AXGfaVRJ
 p/xFo/3oOjfpADEisXZauoZbe/SqNlgPkA==
X-Google-Smtp-Source: APiQypID1DXJTOWcDNEDu4jVNP7gVAm/OBszOGtJjHaEN3aiIon6FlVQi2/8ZdUD+TQYi0xLYGD29A==
X-Received: by 2002:a7b:ce88:: with SMTP id q8mr3737522wmj.161.1588759880879; 
 Wed, 06 May 2020 03:11:20 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id q8sm2109623wrp.58.2020.05.06.03.11.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 03:11:19 -0700 (PDT)
Date: Wed, 6 May 2020 11:11:15 +0100
From: Andrew Scull <ascull@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 05/26] arm64: Document SW reserved PTE/PMD bits in
 Stage-2 descriptors
Message-ID: <20200506101115.GF237572@google.com>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-6-maz@kernel.org>
 <20200505155916.GB237572@google.com>
 <8b399c95ca1393e63cc1077ede8a45f6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b399c95ca1393e63cc1077ede8a45f6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_031122_793731_C5590ED7 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kvm@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 kvmarm@lists.cs.columbia.edu, George Cherian <gcherian@marvell.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 10:39:59AM +0100, Marc Zyngier wrote:
> Hi Andrew,
> 
> On 2020-05-05 16:59, Andrew Scull wrote:
> > On Wed, Apr 22, 2020 at 01:00:29PM +0100, Marc Zyngier wrote:
> > > Advertise bits [58:55] as reserved for SW in the S2 descriptors.
> > > 
> > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > > ---
> > >  arch/arm64/include/asm/pgtable-hwdef.h | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > 
> > > diff --git a/arch/arm64/include/asm/pgtable-hwdef.h
> > > b/arch/arm64/include/asm/pgtable-hwdef.h
> > > index 6bf5e650da788..7eab0d23cdb52 100644
> > > --- a/arch/arm64/include/asm/pgtable-hwdef.h
> > > +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> > > @@ -177,10 +177,12 @@
> > >  #define PTE_S2_RDONLY		(_AT(pteval_t, 1) << 6)   /* HAP[2:1] */
> > >  #define PTE_S2_RDWR		(_AT(pteval_t, 3) << 6)   /* HAP[2:1] */
> > >  #define PTE_S2_XN		(_AT(pteval_t, 2) << 53)  /* XN[1:0] */
> > > +#define PTE_S2_SW_RESVD		(_AT(pteval_t, 15) << 55) /* Reserved for
> > > SW */
> > > 
> > >  #define PMD_S2_RDONLY		(_AT(pmdval_t, 1) << 6)   /* HAP[2:1] */
> > >  #define PMD_S2_RDWR		(_AT(pmdval_t, 3) << 6)   /* HAP[2:1] */
> > >  #define PMD_S2_XN		(_AT(pmdval_t, 2) << 53)  /* XN[1:0] */
> > > +#define PMD_S2_SW_RESVD		(_AT(pmdval_t, 15) << 55) /* Reserved for
> > > SW */
> > > 
> > >  #define PUD_S2_RDONLY		(_AT(pudval_t, 1) << 6)   /* HAP[2:1] */
> > >  #define PUD_S2_RDWR		(_AT(pudval_t, 3) << 6)   /* HAP[2:1] */
> > > --
> > > 2.26.1
> > > 
> > > _______________________________________________
> > > kvmarm mailing list
> > > kvmarm@lists.cs.columbia.edu
> > > https://lists.cs.columbia.edu/mailman/listinfo/kvmarm
> > 
> > This is consistent with "Attribute fields in stage 1 VMSAv8-64 Block and
> > Page descriptors"
> 
> Do you mean "stage 2" instead? The reserved bits are the same, but I want
> to be sure we have looked at the same thing (ARM DDI 0487F.a, D5-2603).

My turn for the copy-paste bug, yes "Attribute fields in stage 2
VMSAv8-64 Block and Page descriptors". And conviniently the same bits
are reserved for SW in both.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
