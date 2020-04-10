Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A009B1A3E62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 04:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5T+/xDH56ZC9Wuha2ysbGSg+lq1Q/meSQ6vOCLVIcPE=; b=YI6Y+9RLuygHZA
	A/TAmYVRU20z7Wbf6HB4Mc4tu0k9Si5rkqqQHhZ1EFcCc8FsuNDPmOugBG7pmC5mKt54MHEja0EnB
	pgUTSpHIyte4K8Xhnv+4sn4YKMVRK/PQF7W5wG75dimnFvBY3IZhymJZ2WOyy8He6XfU83eRreTtc
	qphebBWtIsc70PAXWs1tOrdObghwXeJ+VmmVZVkPwhhWokeAngIAdK07L4+gKzDJKh67y9/vGUMDg
	wuhiAtN5LOA2xXqiHFCjYtpj6COBDCl7RqsVpBHxtTfl6xtrfoTppay/vZQrnqQtrWV3lvLKRiAfq
	fGVVzY9/sgII8dn6td7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjZJ-0002Sx-Dl; Fri, 10 Apr 2020 02:38:57 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjZC-0002Sa-DE
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 02:38:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id v2so215970plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 19:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cm3qEVUblIBWQEP7R8pxH+eUa0WNyfWiM9J7eM+Fwmk=;
 b=AVSNgz0eR/mu36t1jtB1pHxzPsuhsLJ5Dgmcn/9c7jPOTV+CNdcyL0zkXP7nLHQzQV
 A10fzku8OWDIGvjGdvgdeH+jWjXzrllDIeVhKdprzXhQynX714rs3Td/tjGR+coEL5Aw
 9O9rN2XFZJ5QvZNpH7rO2zchnfDG/1aaYCeqb4UwllljqxtOrpvrRcKDBEk9COBYQQFO
 1jJAN0Hms3ovic+Bal9KAkQ1W5BRhoTGfKl7mwDWNfIHMcC8IP7152Er0GK1ixcZQijG
 71dIgnkhRybaZPDMrOAJ7jaWMDsjZpbv/oC14bGuigw82SaeZ2oRTYvVKah0eRNKXHb0
 NEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cm3qEVUblIBWQEP7R8pxH+eUa0WNyfWiM9J7eM+Fwmk=;
 b=a/hBa3HS0LxKnkOLKpnsic4faAYollqA9irQMsF5xgPhuKFSjSrQFpGzrHCt1d9434
 qq5U8q/fLMgsFleWo6kKCG2kiv6XX/DjLRe/2WhHid892CgiP57Sk6+AMIi3lbKFyHSI
 Nnx4SAkOvpVz41/UfRywKKTwg5kh/+eXt7hcShbU4OuX71Y5dO30eQQD22EbAKUjztHq
 PZWrs9lYpp02UnB8VmGwf8/oo98N+8FEjWzzr76f8fNeT049HGfvCa7C9+yoUwDeew9G
 OP/6aZnfBxSLO+Lu8xeiUriHHSxPjhtB3at/popVD8UmEXxBPlvtjpneeMKQTBHZfUdX
 GW5w==
X-Gm-Message-State: AGi0Pua4m333lQ0Ndgu6HWJ0aHPAFHuNO+QN2yqXWzktC59+GpFaNdir
 KQf5EgGTAleabK1Az4v9ioo=
X-Google-Smtp-Source: APiQypJUNzW2Kf/YisQ7Gm6MjGoHraf0uboGBOm6Ai9D7kmeIiXDGo0t/+GLEITvv65wjz5MhoeSGg==
X-Received: by 2002:a17:90a:628c:: with SMTP id
 d12mr2775900pjj.53.1586486329072; 
 Thu, 09 Apr 2020 19:38:49 -0700 (PDT)
Received: from localhost (181.56.30.125.dy.iij4u.or.jp. [125.30.56.181])
 by smtp.gmail.com with ESMTPSA id f4sm456109pjm.9.2020.04.09.19.38.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 19:38:48 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Fri, 10 Apr 2020 11:38:45 +0900
To: Minchan Kim <minchan@kernel.org>
Subject: Re: [PATCH 10/28] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200410023845.GA2354@jagdpanzerIV.localdomain>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <20200409160826.GC247701@google.com>
 <20200409165030.GG20713@hirez.programming.kicks-ass.net>
 <20200409170813.GD247701@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409170813.GD247701@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_193850_471255_FAE72158 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hyperv@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Christoph Hellwig <hch@lst.de>,
 David Airlie <airlied@linux.ie>, Laura Abbott <labbott@redhat.com>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 sergey.senozhatsky@gmail.com, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (20/04/09 10:08), Minchan Kim wrote:
> > > Even though I don't know how many usecase we have using zsmalloc as
> > > module(I heard only once by dumb reason), it could affect existing
> > > users. Thus, please include concrete explanation in the patch to
> > > justify when the complain occurs.
> > 
> > The justification is 'we can unexport functions that have no sane reason
> > of being exported in the first place'.
> > 
> > The Changelog pretty much says that.
> 
> Okay, I hope there is no affected user since this patch.
> If there are someone, they need to provide sane reason why they want
> to have zsmalloc as module.

I'm one of those who use zsmalloc as a module - mainly because I use zram
as a compressing general purpose block device, not as a swap device.
I create zram0, mkfs, mount, checkout and compile code, once done -
umount, rmmod. This reduces the number of writes to SSD. Some people use
tmpfs, but zram device(-s) can be much larger in size. That's a niche use
case and I'm not against the patch.

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
