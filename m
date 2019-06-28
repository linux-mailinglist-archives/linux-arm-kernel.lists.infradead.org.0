Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54466595C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 10:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZZ+4Pdy+IAf7UpvVTmS7rITXmrKpXtwjS/gIsVhPRs=; b=GUw/tVA4uVLSoU
	JODfs8uLo+cMnKOxvCiEghQDsFz2J+byDr/MwTqIcREXSf8nbtAHBhTsdsgNM9Wo87Ffk1nojez3p
	FcMj8DnIqm/iD9RWiaUJzIOfQToi22H8waN6Ao53KZM5wEgzn328EmMwmOuhNO/8LeEWXBgPR1CFp
	/79QOhUfCZFTEfD5f9ie4fhR8dLig2KroUIyYw5/jr9N5RAfkIZqlgT/bFKLyybDBs/4dn/RVaX03
	Y4brAJ95tbhGMSboVwrykwsjFLoQNt8s9HPLGTgdjKISrT/fsxsD8Dk0eoaFMsm2/BNsljNM7LR2z
	tik+dBPzNqoN+QZI1S/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglxw-0008A3-VR; Fri, 28 Jun 2019 08:10:40 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglxe-00087T-DH
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 08:10:23 +0000
Received: by mail-pl1-x630.google.com with SMTP id 9so2035302ple.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 01:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LfL+SMDCP2yL7DUrc3d9J+tz1gsvJJcjWlP9YcvNMw8=;
 b=rCX7eHggUhlL6YbMpxMLPLK16vLGJHwfyzETJnnRzuq3S2o7wlT5YCvF0gkNGK8TYG
 V80A513g0IE4XGN09BTD+b/VICh4RPr3l1jRhNgtocqnAUe7dqiF8guYbsV6YZnVtGoA
 Sur+2tXSQd8P1hxdXjVCsIkUZ3sWbVTh/1QLrdvi/w1suHlxqPZHAQv08D9B0vaj9MXo
 Olgv9dtB05FN+TjpJxIVbPn2v5j2h+EAGIMpUyF2cUfKOb/OKH5Z7qlZlt82Tzep4pa0
 oskbNRo6idIlnsVnoA8UP3SZ4iML8SQy/QGYzYz+yWkOW9mvJO+9YtlyUXRPySgmABR+
 G3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LfL+SMDCP2yL7DUrc3d9J+tz1gsvJJcjWlP9YcvNMw8=;
 b=jwRBaDToNe71IeUe/+EWVFJcDA6r+0igOruRM4KLumRA+nAseWbqrgTfOIzbAatWme
 +Qtpy6mxJs6xbS0XYA0yl+x57F4iZlSmYAUiVutHbNzW2vt3+2RptG+1np9242R0Eh+i
 b6ZHRrcgsFuQ5Jh61HOzpMQ0qFBpg/QeBZWyUg2XWjuTjY7XQE2eKc1MQvIwamlrRgwf
 Cky/2SmoR2KngnZdzMsxTwkb+Y+sHTxO8B+a58XhufcnsUNvHoS/fJ23PBzbl3fKQZVG
 jXuUMD7PyFIXl5EAegOCzfnTTd1sx/Pj9Hv5Dke5zWSXZ5p/5aWppf8US0MOusC8NSY4
 mKLA==
X-Gm-Message-State: APjAAAU7SR/J204aGbk59nKFCMiWroRHpNJT3nFUuWsq/uZlWezMRiJ2
 8btMxWQH21CrwFHMZwpBvmU=
X-Google-Smtp-Source: APXvYqxMOVu0N9WaPkdLuXzlZvVe/NznPWOtBwC/VMPpqGK291L8aB08U9S08adT1f3cWNGnJdguMA==
X-Received: by 2002:a17:902:5a2:: with SMTP id f31mr383300plf.72.1561709420265; 
 Fri, 28 Jun 2019 01:10:20 -0700 (PDT)
Received: from Asurada (c-98-248-47-108.hsd1.ca.comcast.net. [98.248.47.108])
 by smtp.gmail.com with ESMTPSA id
 n89sm13742921pjc.0.2019.06.28.01.10.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 01:10:19 -0700 (PDT)
Date: Fri, 28 Jun 2019 01:10:07 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: Why doesn't arm-smmu (v2) driver take VA_BITS into consideration?
Message-ID: <20190628081006.GA6628@Asurada>
References: <20190627001932.GA27343@Asurada-Nvidia.nvidia.com>
 <20190627102640.2pzgiro3gq3ont5s@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627102640.2pzgiro3gq3ont5s@willie-the-truck>
User-Agent: Mutt/1.5.22 (2013-10-16)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_011022_472447_E47C750F 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: will.deacon@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Thu, Jun 27, 2019 at 11:26:40AM +0100, Will Deacon wrote:
> On Wed, Jun 26, 2019 at 05:19:33PM -0700, Nicolin Chen wrote:
> > I am using an Soc that contains arm-smmu v2 engines. I found that
> > the arm-smmu driver reads GR_ID2 register and defines ias and oas
> > of each domain based on the corresponding fields of that GR_ID2.
> > 
> > Using my platform for example, it gets 48-bit for all ias and oas,
> > being translated from those fields so I got these 2 stages:
> >         Stage-1: 48-bit VA -> 48-bit IPA
> >         Stage-2: 48-bit IPA -> 48-bit PA
> > 
> > Then the code does below to configure aperture_end to 48-bit:
> >  914         domain->geometry.aperture_end = (1UL << ias) - 1;
> > 
> > However, my system configures VA_BITS to 39. So aperture_end==48
> > is a mismatch comparing to VA_BITS_39. Although the aperture_end
> > is supposed to cap IOVA allocation, this 48-bit cap won't really
> > do the job at all.
> 
> What actually goes wrong, though? IOVAs should only be handed over to
> devices, so VA_BITS doesn't strictly matter. It's the DMA masks that are
> important.

Ah..that's true. I think I misunderstood one of my situations here.

> > I saw that arm-smmu-v3 driver takes VA_BITS into consideration:
> >  1765         switch (smmu_domain->stage) {
> >  1766         case ARM_SMMU_DOMAIN_S1:
> >  1767                 ias = (smmu->features & ARM_SMMU_FEAT_VAX) ?
> >  1768                 ias = min_t(unsigned long, ias, VA_BITS);
> > 
> > So I am wondering if it is intentionally designed so by ignoring
> > VA_BITS? Would you please help me understand this a bit?
> 
> I think it's simply that SMMUv3 doesn't provide an ID field to tell you
> what to use, so we chose to go with VA_BITS since it's what we're using
> on the CPU.

I see. Thanks for explaining!

Nicolin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
