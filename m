Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DADA188D5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 19:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3jKTHba91pO03mRQaq9XtI46wXxXrmjaulX+7Uqg/I=; b=LOn2JKqcJ9AO5F
	aTcig4jvgm7GBcMTP8uVOFuwzPDpb+tALCRpOfxc0ZLqkqdxnpTNwO3Or1eWEPjQPtZoyh+hwt+tC
	GgKBqPR7JNvmTufX91qynpRJhyD8AYx4qXg7IA+j+D9RyoiT8e44lQ2ZSlrk004VoragwUujktHKS
	wQgsix9nsmC08tmN+GAd3+1Fy0zJfBLwKwF8JAhqSshpdIJU6xBTt0yzLS370ND3rkFg67zJyT9FG
	6Jn3OFrVm3iMQKrrJYcB+aLWIz8tDi0QaIYwrqMlalYTtYcFmTSV0ts1eV88SKLPhTLkvaxEiqfPq
	0fxJV3Xrjh5xnnOHJcdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEH93-0003dH-DF; Tue, 17 Mar 2020 18:40:53 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEH8r-0003ce-PU
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 18:40:43 +0000
Received: by mail-qt1-x843.google.com with SMTP id h16so18395266qtr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 11:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VHKB5MBsrQc8nrjB6tUnlbV1kL4bZZjV/ANQdFM3zDk=;
 b=GYgmJC/1qoccDCyGB3v9AgtNVsE4IcW54DliKpkiU/8qcWTDdff956/y0JBhF6CoW+
 2AF3nNaAMz/neObEUtK5PPJVt6C6RgI8Mamly3muAOZNRXY+QQdadXK48Ee6KpqLHE8+
 2sRqltqPMbyl/9ocejJDj+1YnNKrMgk9wHeYF4k8oNhl0PT7yNA63RmZF0oQYwdNe+IK
 br+N+cfXCWnuHi3IfnIquqLO6xf4ZdjNCFFB2q07lTxjelyugkvRGj5+dyLWtOvVZ5hD
 xdec7OKSTTgRyouKPD5VyOUCJvSrHDwna0Y1VSUzlbHpyFDnaETsTzcMXknVS9MfUmor
 9n+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VHKB5MBsrQc8nrjB6tUnlbV1kL4bZZjV/ANQdFM3zDk=;
 b=Kd10ykcPHarwk4LGZmQaPzgse3MNkGfsABStpM4i5dTP20CT1AmdQ6OcMBwNi+x96i
 SVB92uGb5QYTTk9gBvFHbR3Gb5fXl+PUi5+XojN/36Kcp+kV4MYYin9pc0aCWMZyMbvJ
 SgWFUenNJyW5UdX7MFVvbxXH7YPfx9xudUivHOHqD8CIZvWdNgGLt/1avH+9QR9aTzrH
 e7kexH7iHrjchX/VrxCEGmWCImfeI0iY/HRsIul9lHEzJq5c8KqUCM9ScPxng40h43vy
 j3Dlx+RtP/KUjBPygKqSMwlU2mbF1h6mzK/HTN6YxIAnBzgEhCPpqk/CvMzZ7Nz2fCzv
 w2xQ==
X-Gm-Message-State: ANhLgQ0HoY8krANtfNMYTq6TapWjAJUHiCK20yIqym7k28m1mdsBAuZ+
 OvyYv2o7guGGsCOZXBS/yzJACg==
X-Google-Smtp-Source: ADFU+vugAiZdEw2sEZSIbJEAWeyFz2UbVwFEy00ld5KQjtHya0UyHyqsGI1Bsave1cDjhm+ecny+gg==
X-Received: by 2002:ac8:7b54:: with SMTP id m20mr566590qtu.92.1584470440664;
 Tue, 17 Mar 2020 11:40:40 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id 199sm2417617qkm.7.2020.03.17.11.40.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 17 Mar 2020 11:40:40 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1jEH8p-00016b-OY; Tue, 17 Mar 2020 15:40:39 -0300
Date: Tue, 17 Mar 2020 15:40:39 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200317184039.GV20941@ziepe.ca>
References: <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
 <20200228144844.GQ31668@ziepe.ca> <20200228150427.GF2156@myrica>
 <20200228151339.GS31668@ziepe.ca> <20200306095614.GA50020@myrica>
 <20200306130919.GJ31668@ziepe.ca>
 <20200316154659.GA18704@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316154659.GA18704@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_114041_826519_332A6964 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 kevin.tian@intel.com, Dimitri Sivanich <sivanich@sgi.com>,
 catalin.marinas@arm.com, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 will@kernel.org, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, zhangfei.gao@linaro.org,
 Andrew Morton <akpm@linux-foundation.org>, robin.murphy@arm.com,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 08:46:59AM -0700, Christoph Hellwig wrote:
> On Fri, Mar 06, 2020 at 09:09:19AM -0400, Jason Gunthorpe wrote:
> > This is why release must do invalidate all - but it doesn't need to do
> > any more - as no SPTE can be established without a mmget() - and
> > mmget() is no longer possible past release.
> 
> Maybe we should rename the release method to invalidate_all?

It is a better name. The function it must also fence future access if
the mirror is not using mmget(), and stop using the pgd/etc pointer if
the page tables are accessed directly.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
