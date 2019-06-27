Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFAB57C8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ucVj6+eiJt6OLFt39/KGAStnBojvbxzGtbz9eI9vppA=; b=Qr/kIG8FGGAgxh
	HpoMmCBw2ebMbinG8otCxZcQf3ZxlhNprNr7aCgOIU6ak3MqTSR/7cH0F9pX5CbCnllkaP9maWp9i
	MeWvATxUvZIyRrPBgB52WADBJUzi0YrvtmJmFeFNfLgSYIHPz+uE1IJe7V7a9zt/bzapG1JHXTyE8
	c+R6h8f0ASsIHiK8IBN2usITuHXgQPMm0iwzOoYsWr3kAF8gVFsdB7TA7rpAt6OzxvdzYYboUZDUp
	tSBI5chs8NvIfK6L3Nn8BR0z1alO9/zQ8EW75dp5FSPl9sAwDkBU2MwXRIJkxFDltDfoybfumcNnq
	uTdnCEOzu5hV7mCIpG/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOId-0000gb-Is; Thu, 27 Jun 2019 06:54:27 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8v-0006KM-IV
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GfJc2ajujVawLCByCj+H9cINRtMIXGa6xpk49dY44QQ=; b=R0BqIo1V4ejpfYDqu2HONEuA1d
 VE8YL5LI3TYw/G2zgFWA9hVwRp4Aj9CKhqneqFRYMknnVrnryl87IrFY9owzy2PiJJ3whSaWwj2V8
 8pToJ5TgwXRqFmQb1S6Fv1uq/wkGGxaXt5wPkYZg1xuelu2ZN1THawv8lXiyV5GWTRdepVnyKzffS
 DXj3uHmtsnLmkbMdIK28x87YOjQMdnwOaGY61jtQ2YrzVVhVJIkMVkgS27ui+hpPNlP35uWv2ad+H
 Ug8rGIIEqHRD3+flLmtY056FI4MgeYRBZ62M9Wkc5QB7MZ3TTLQXtum8mc6wgfTVlgkLXNMFbqPQM
 aWwgr+Vw==;
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIAB-0003oE-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 00:21:20 +0000
Received: by mail-pg1-x52b.google.com with SMTP id c70so12257pga.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 17:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=GfJc2ajujVawLCByCj+H9cINRtMIXGa6xpk49dY44QQ=;
 b=gVeRu/G/qdwTDUvQr5nokzvkVg8Bf4PoE0PIG2uw9GJCd4F8LM33pkHgjvdZMdYaxI
 WDJUS+YcY+ey5gy+kd8NerGx6zzaD5ELFWxDav7+aOohF6SwRGMZ1xP+D1q5UPPqhVGH
 IMOmJvKNs7gGGTzLCMXCSu38FIBbEu3hIdtiWQ5EsOqjWuPtSZfDQlm/pfNRkv1XyEbt
 65sJ0/ruqnOsxdtEMqD5sG+rze9w7lS8os1YbtugijANmkZh8xVd+m7JL9TNg6YkwC8O
 PD4zdp4t7n4mT/Sj1toEQxiD8B8xCOiKoDBe8ob1Z4vqjS50maxTI2uCJaMZmzosBSG3
 MtnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=GfJc2ajujVawLCByCj+H9cINRtMIXGa6xpk49dY44QQ=;
 b=iyW+TSRqOO9n7ByyPhlPK3RNR/iZ7bZrkUV7RhBGUQ3uxriBfulxwFO0K0GPicJ9G9
 o8KGwtlyNSOwAYKJIWkS4pNFPOF36Uvxve2LpmqbbtCIjn/6Ssk4eCHWNDhwOWHATlD0
 XUOP8incLkRtl1pDoOKQD7t8M84v3gHT5yVQdiZTB6fHecu4SDWVS6+g9Lr3H2TROvHz
 IE0glaOH6bssl8AMFmt1/GlVNNjy6hY7SSn9KNtd40W2fRnmib3nAUyDd9c/Ln6Vuoeg
 GWCi4BhdsHn+tfXNNcfC/PUDKZWCS293+/ezy8XvWce6YGLJmR836tlMAw460PmoSXmb
 JhfA==
X-Gm-Message-State: APjAAAUww4n6qgjEB+eNi1a56sUcFS/90D9X+qkY6BWbpz2qsKPVxNcH
 OCaxVGyRG82l72EHNnChIPs=
X-Google-Smtp-Source: APXvYqzhT7K8fu2vmgEIWUMWr/NvXLnKXR5oMUxxd3Oe52SpThuTRSgmH+bdGJvHDixiOQmjSgP1ZA==
X-Received: by 2002:a63:5b0e:: with SMTP id p14mr694174pgb.353.1561594753937; 
 Wed, 26 Jun 2019 17:19:13 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id t13sm4085759pjo.13.2019.06.26.17.19.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 17:19:13 -0700 (PDT)
Date: Wed, 26 Jun 2019 17:19:33 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: robin.murphy@arm.com, will.deacon@arm.com
Subject: Why doesn't arm-smmu (v2) driver take VA_BITS into consideration?
Message-ID: <20190627001932.GA27343@Asurada-Nvidia.nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Will/Robin,

I am using an Soc that contains arm-smmu v2 engines. I found that
the arm-smmu driver reads GR_ID2 register and defines ias and oas
of each domain based on the corresponding fields of that GR_ID2.

Using my platform for example, it gets 48-bit for all ias and oas,
being translated from those fields so I got these 2 stages:
        Stage-1: 48-bit VA -> 48-bit IPA
        Stage-2: 48-bit IPA -> 48-bit PA

Then the code does below to configure aperture_end to 48-bit:
 914         domain->geometry.aperture_end = (1UL << ias) - 1;

However, my system configures VA_BITS to 39. So aperture_end==48
is a mismatch comparing to VA_BITS_39. Although the aperture_end
is supposed to cap IOVA allocation, this 48-bit cap won't really
do the job at all.

I saw that arm-smmu-v3 driver takes VA_BITS into consideration:
 1765         switch (smmu_domain->stage) {
 1766         case ARM_SMMU_DOMAIN_S1:
 1767                 ias = (smmu->features & ARM_SMMU_FEAT_VAX) ?
 1768                 ias = min_t(unsigned long, ias, VA_BITS);

So I am wondering if it is intentionally designed so by ignoring
VA_BITS? Would you please help me understand this a bit?

Thank you
Nicolin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
