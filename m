Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1110C139DD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 01:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tY6673mRClV2266ZjkUAVSunDsLXNRm4BnyxRReayYo=; b=iDgCWb6WYJkXav
	W2afvZoeg7L77ZjQIIoNQ3nVM8t8azz06SveRcd3PVrCYgtV6DA554o18CMNM06xIAPir4YMqC+dm
	QUQssiMlghhzr0PwBTlJwXQ/7G6i5pA0SJrAt+S3E1qG8JiHU3yEaehClKQi6raov919bOWLVhL3/
	lulH+cKLFybxQDJF7v9zuaAmv4237h+5oQF+LxdRTnJClZq/p1wxwuZq6U2yJaiRt7Vf38WQd3bxZ
	xEYVhOB08syUZz0gAgBm2pipms7AI4FATz5SFSU5WpwxUDZ3xVA60ErE+H5Pe6PFmsm/hFXYOeHxe
	M2RcQRtZzU1y79wijitw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9oe-0007Ei-QR; Tue, 14 Jan 2020 00:12:16 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9oN-0007AQ-Ui
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 00:12:01 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n96so4873172pjc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 16:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YszI0U18pHqA+Y3QA9OqnxsfwdnvOec+C4YDrgbYg80=;
 b=L1hYEJgKHWr/Gyj0fmCj7zWsybXM9yORn6pBPtcxw9h9s5Yc5uArF4pWiVeuaFNJh7
 bOs01G47TpIetL9Cm8U/+cR5pzygAPrZMi0vBO1wMFgujDbKFJ22wHFjmelcJuhTmW4X
 BslhLglhFFClkDef6TUGLTFzZSANH83yE8R3N7XECv4QWqwCGbk32JT1DUl0/snxiND/
 0QqZB6DUK59jjjySpgRm0l/IRe5Q7qi9yFoQQ9L7IgYfLHoJYaAdliaIj6+4BjrWXttw
 MXZSqAp05ZG1ov8wVSmIa883+mziVqos9f58MCtbquB/HmY8Kgq3wNtRljjWXu9bTX2U
 cvqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YszI0U18pHqA+Y3QA9OqnxsfwdnvOec+C4YDrgbYg80=;
 b=r2ck90/uCwZpZdu86+84NhLJs4RqXnPVnHtjnd2oXy0KyBNsxGatTsuGcek/uIltFn
 GF2yfiklF2gPEl8ykH+wVw0j7w2gOu9lPtVrHHn/id7CYObGOXsKYTvT2C8dk0F6s3kB
 LjZXPPMA1Qxfcqoci7hiw5kHmWXoUyywk4rd7ntdFtqeqtFOpCWRyVQHh9wELwIpe7TT
 9hqEgyThIoJ8uRaayjw77yr1GP57vmj3TlGVAcH5HKyiE4EShyEEIa2Hgg2XGOZeNcnz
 dJZuhxmlUN1Z+2fTnZI+muQFqYKXs/CqXqnEaLC1RyX4+xjy4E/T63/NRN4cVDLbyU98
 PbaA==
X-Gm-Message-State: APjAAAUo8vENuXDgzqHr5PYiOsw0rFtMpX+VGuSdRZ2byfVJSu8HUN/S
 lYHWnj0n4mqmD2/oXDZyX/nCqA==
X-Google-Smtp-Source: APXvYqxx7U9QSEOfywuAVGzjNyUg0PYvYeG8HS4oMuifbJvLl3PcMnddxE7pxUtrCTCrnOSPk2maZQ==
X-Received: by 2002:a17:902:6501:: with SMTP id
 b1mr17177997plk.121.1578960719070; 
 Mon, 13 Jan 2020 16:11:59 -0800 (PST)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 12sm15676997pfn.177.2020.01.13.16.11.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 16:11:58 -0800 (PST)
Date: Mon, 13 Jan 2020 16:11:55 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Saravana Kannan <saravanak@google.com>
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
Message-ID: <20200114001155.GJ1214176@minitux>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200111045639.210486-1-saravanak@google.com>
 <20200113140751.GA2436168@ulmo>
 <CAGETcx8YAXOdr1__gTCT2xCPq47Cg9vGj+5HJ_ZLzy4mHxU2xA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGETcx8YAXOdr1__gTCT2xCPq47Cg9vGj+5HJ_ZLzy4mHxU2xA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_161200_007821_1490998C 
X-CRM114-Status: GOOD (  27.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Android Kernel Team <kernel-team@android.com>,
 Patrick Daly <pdaly@codeaurora.org>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Rob Clark <robdclark@gmail.com>,
 iommu@lists.linux-foundation.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Pratik Patel <pratikp@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 13 Jan 14:01 PST 2020, Saravana Kannan wrote:

> I added everyone from the other thread, but somehow managed to miss
> the Bjorn who sent the emails! Fixing that now.
> 

Thanks for looping me in Saravana.

> On Mon, Jan 13, 2020 at 6:07 AM Thierry Reding <thierry.reding@gmail.com> wrote:
> >
> > On Fri, Jan 10, 2020 at 08:56:39PM -0800, Saravana Kannan wrote:
[..]
> > In the case where you're trying to inherit the bootloader configuration
> > of the SMMU, how do you solve the problem of passing the page tables to
> > the kernel? You must have some way of reserving that memory in order to
> > prevent the kernel from reusing it.
> 
> Maybe "inherit" makes it sound a lot more complicated than it is?
> Bjorn will know the details of what the bootloader sets up. But
> AFAICT, it looks like a simple "bypass"/identity mapping too. I don't
> think it actually sets up page tables.
> 

In the Qualcomm case we have a number of stream mappings installed when
the bootloader jumps to the OS, each one with SMR/S2CR referring to a CB
with SMMU_CBn_SCTLR.M not set.

As such the relevant hardware is able to access (without translation)
DDR even with SMMU_CR0.USFCFG being set.

The one case where this causes issues is that upon attaching a device to
a context we'll set SMMU_CBn_SCTLR.M, so until we actually have a
translation installed we do get faults - the difference is that these
are not picked up as fatal faults by the secure firmware, so they are
simply reported in Linux.

[..]
> > > > One option that I can think of would be to create an early identity
> > > > domain for each master and inherit it when that master is attached to
> > > > the domain later on, but that seems rather complicated from an book-
> > > > keeping point of view and tricky because we need to be careful not to
> > > > map regions twice, etc.
> > > >
> > > > Any good ideas on how to solve this? It'd also be interesting to see if
> > > > there's a more generic way of doing this. I know that something like
> > > > this isn't necessary on earlier Tegra SoCs with the custom Tegra SMMU
> > > > because translations are only enabled when the devices are attached to a
> > > > domain.
> > >
> > > Good foresight. As [1] shows, identity mapping doesn't solve it in a
> > > generic way.
> >
> > I think your [1] is a special case of identity mappings where the
> > mappings are already active. If you pass the information about the
> > mappings via memory-region properties, then you should be able to
> > reconstruct the identity mapping in the kernel before switching the
> > SMMU over to the new mapping for a seamless transition.
> 
> Ok, makes sense. But I don't have the full details here. So I'll let
> Bjorn comment here.
> 

It might be possible that we can install page tables and setup 1:1
mappings for the necessary resources, but it's not all devices with a
memory-region and a iommu context defined that should have this.

I will have to discuss this in more detail with the Qualcomm engineers.

PS. One detail that I did notice while distilling the downstream patches
is that unused mappings must have SMMU_S2CRx.CBNDX = 255 or I get odd
crashes when the display (CBNDX = 0) is active. I've yet to conclude
why this is.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
