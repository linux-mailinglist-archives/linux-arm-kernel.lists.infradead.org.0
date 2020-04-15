Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FB91A9A41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKDEIIPzpUegL1OR0/gQhvVTNZuP11+2BGX72R88b50=; b=HlPq4Qpm+eQVlu
	miSa2urqm+JDkALbYV/jb/+qa/MxFsR5lntSXA4MhWp9xuOBPYJQL6m89Im+Cg/OvLlsEz1tg/Ljj
	e0iuG/TuQIX90Ju+3GONtqgMXjV1OS686Lb+Z7gYYqkK0dgkAEZSYJuwWo9hSBnp4VIPVDkgPg2ci
	50/9iJlynumFSjan/EXtk5AVVgxhFLlJjUIwxL+CcrumKVEt/kEhg+i/WUH5sqe9UUgca3dlgY/B5
	M8A+GUzsrkwAOMHdzV+pQqX92l+e/IUkgyIpA9lCPtSu78HcQPjjtIBlmeQmc0frluOcsqvFC9BVA
	rRkisxxpDM65N+nXbWXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOf5r-0006IP-6F; Wed, 15 Apr 2020 10:16:31 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf5j-0006HY-Qe
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:16:25 +0000
Received: by mail-wm1-f67.google.com with SMTP id x4so16750383wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 03:16:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6RF4WufMmMDOeU7tEnVUbEzApfb4RzYUUgBLy7xNXoc=;
 b=RwSyT6YkJVqyVu6IuzcORJvhhiqRmyyjh8WBMA01nliJLZi8ZVpEpqmVsovVPpK6qw
 RtXdqv9YVX4dBjea8SSE22O68Bp4yo9cyF/UXnm74lZyjcnjBnM25cn+bKTuRWoKZjVn
 JmTYyjqKvrJyFQyF3KE46LEiMWtzcJs9J+IHKOFEDiRgUelLb6CHd5GAMWt+Y7Z6ROmv
 vQm9ZMC1tg8Zm8zHlew8kZsGzK0qUZHyY+fTivz8jynvv1u58faNeSLn+YD9X3ejGCZW
 5JANJiNZdoitrILom1De7pbOlxy4LkxLy6T+b7N1AQjHXYp5dM+ldAiqOpLmY81PQ/63
 znNA==
X-Gm-Message-State: AGi0PuYMeAxBUGUqlIr3KYJhc+/N4kYI4/Kh1JErel02Dpb2sXc5TTM4
 z2D8tqRK5LTHMR8sHlRWjBc=
X-Google-Smtp-Source: APiQypKwwZOSZo6TKJ0VX0uh/VRxb42E0lr4O+D1OO7/WfRpILKWx7YwVM17KF5oioj4FCitYR+BbA==
X-Received: by 2002:a1c:5ac4:: with SMTP id o187mr4704758wmb.79.1586945781247; 
 Wed, 15 Apr 2020 03:16:21 -0700 (PDT)
Received: from localhost (ip-37-188-180-223.eurotel.cz. [37.188.180.223])
 by smtp.gmail.com with ESMTPSA id h137sm17223451wme.0.2020.04.15.03.16.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 03:16:20 -0700 (PDT)
Date: Wed, 15 Apr 2020 12:16:18 +0200
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH 0/2] arm64/hotplug: Process MEM_OFFLINE and
 MEM_CANCEL_OFFLINE events
Message-ID: <20200415101618.GD4629@dhcp22.suse.cz>
References: <1586932784-16315-1-git-send-email-anshuman.khandual@arm.com>
 <31ce355b-abf7-ac3b-a5b4-ae1b0a52fb3c@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31ce355b-abf7-ac3b-a5b4-ae1b0a52fb3c@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_031623_859753_916CEF53 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, Yu Zhao <yuzhao@google.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, catalin.marinas@arm.com,
 Steve Capper <steve.capper@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Thomas Gleixner <tglx@linutronix.de>,
 Hsin-Yi Wang <hsinyi@chromium.org>, akpm@linux-foundation.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 15-04-20 09:35:33, David Hildenbrand wrote:
> On 15.04.20 08:39, Anshuman Khandual wrote:
> > This series improves arm64 memory event notifier (hot remove) robustness by
> > enabling it to detect potential problems (if any) in the future. But first
> > it enumerates memory isolation failure reasons that can be sent across a
> > notifier. This series does not go beyond arm64 to explore if these failure
> > reason codes could be used in other existing registered memory notifiers.
> > Please do let me know if there is any other potential use cases, will be
> > happy to incorporate next time around. Also should we add similar failure
> > reasons for online_pages() as well ?
> > 
> > This series has been tested on arm64, boot tested on x86 and build tested
> > on multiple other platforms.
> > 
> 
> I'm sorry, but I have to nack this series. Why?
> 
> 1. A hotplug notifier should not have to bother why offlining failed. He
> received a MEM_GOING_OFFLINE, followed by a MEM_CANCEL_OFFLINE. That's
> all he really has to know. Undo what you've done, end of story.
> 
> 2. Patch 2 just introduces dead code that should never happen unless
> something is horribly broken in the core (memory offlined although
> nacked from notifier). And, it (for *whatever reason*) thinks it's okay
> to bail out if another noYtifier canceled offlining hotplugged memory.
> 
> I fail to see the benefit for core changes and

Agreed! If arm64 wants to check and report early bootmem memory
offlining then just do it. There is no reason to add a whole machinery
for that. Cancel notifier is indeed only supposed to restore the state
before GOING_OFFLINE.

>  4 files changed, 99 insertions(+), 13 deletions(-)

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
