Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 623FEB0CD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlipExXvH9UFfX5Mhnxv135ziANDMLrwE0y5/KdVZMo=; b=SEWKJLVsBtIt3r
	+KCgnabsWFZp8CHWpdpxm58i9DIrq+3q2Yi/BmD6kQKYpSnojxbGqxEcbkZdExF027F3RTUC3akLj
	UayT8wOvjrhSg9BJIRrhZ/TL49Li/pFm6c9jA3DKtZYYvSR9LDJlGnwgr3xzH4o3yq/PUSOvxB8pm
	ALxf9xaN0wwiJ7rysKATQqPnu2BtFoWxGszqI0+spKZdJtvbLJC98nr2OIY/qUtgNWGqiBF1aJrqP
	ky2LONft9nGBqAponZ9vQE+hmP5ySPiWuP8jo0e9RSha/c5sds2g79QS2YvaOlPiV/DbfnMdplBUW
	JpJKoWKr44CsYTBz3Puw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8MHv-0000XD-6y; Thu, 12 Sep 2019 10:25:19 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MH5-0000Wq-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:24:28 +0000
Received: by mail-ed1-x541.google.com with SMTP id c20so14450888eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 03:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+mmfaBX0Np9W/b7Q5MqD32lbNina1cQ/FOr9Xbx+2SA=;
 b=rjY82Sy3etyc/lURHAAH5Zl+/VTkVL1QfiSGIjGFzaoW/tFRFM+zEYupBdTECALHrG
 yPnD/zet+9v/0zbzm/E5VjxIC4kHBGoI6fG6y3ZudVWE1Fqr5jUEFHOhmpHGUgJBjFLR
 Pp4qZYYyCBsVXmvAX8dVxq7xFDjWJd+exfdSoleHOrbAKfryXx1FyZtARD7dR7tAJFzo
 JrefYLyjWx+Ptmb0NQyHMPY02QIUK5RaU1NoX/BBPIIVc7yZpU9xVdpA7vqiSPpdXXbt
 d5OJ8VA03djK7lmxCv6oPg+S+/UFNoBoSlbJXwZ5azlQ2uo9F1xXDa4+5x33RZHpoQkO
 TV/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+mmfaBX0Np9W/b7Q5MqD32lbNina1cQ/FOr9Xbx+2SA=;
 b=lpIMbmO8EXYlMYBTQqICJJqbnFr5Ui0lXV3BtuzeXBqgS35ZFeHaH/x8lxhukQFY4q
 KD0jgsO2Whqc9LE9tm0vsqFii7/lffnayRyI2VcwFWL7JIdrSBB4sHrUa/YoIjjJg4UA
 33GfpkY2k5uk2bOgVZauhV74jVAtdDaSLOsC25nv1IHoH1m6XPDIubDqgLhbVGBwYLoR
 fRE7SswK0UoDlnSzw/8k3IblIsgUodDT71AOM9UDn2zOjALIQYI+8nW/qfi7Zq9FdvhN
 fI3BnQc/e0xTFDIS1heI+D/1BOb5OZsXdKzwc3qlzdjk1b/KVZ+0vjxF6/QsJpzNFxWV
 GrHw==
X-Gm-Message-State: APjAAAUJ14QGVTfHUxOqQ2BhbMUgIy8+rM6qRGLsHOjP/s1ilDJ1rdIF
 KQOdp5BEjRzfkoptVNoN/t3BiQ==
X-Google-Smtp-Source: APXvYqxqQuNiTjkjaC8Hs02PHF+LHAOwtw4KJLDqhBlQ3F6XmLygJAqZUw/cEZVOIq4hY2vxi9be2Q==
X-Received: by 2002:a50:8961:: with SMTP id f30mr40528236edf.144.1568283865271; 
 Thu, 12 Sep 2019 03:24:25 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id qt5sm2710889ejb.11.2019.09.12.03.24.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 03:24:24 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 04633100B4A; Thu, 12 Sep 2019 13:24:26 +0300 (+03)
Date: Thu, 12 Sep 2019 13:24:25 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v9 0/8] stg mail -e --version=v9 \
Message-ID: <20190912102425.wzhhe6ygfgg64sma@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190910124209.GY2063@dhcp22.suse.cz>
 <CAKgT0Udr6nYQFTRzxLbXk41SiJ-pcT_bmN1j1YR4deCwdTOaUQ@mail.gmail.com>
 <20190910144713.GF2063@dhcp22.suse.cz>
 <CAKgT0UdB4qp3vFGrYEs=FwSXKpBEQ7zo7DV55nJRO2C-KCEOrw@mail.gmail.com>
 <20190910175213.GD4023@dhcp22.suse.cz>
 <1d7de9f9f4074f67c567dbb4cc1497503d739e30.camel@linux.intel.com>
 <20190911113619.GP4023@dhcp22.suse.cz>
 <CAKgT0UfOp1c+ov=3pBD72EkSB9Vm7mG5G6zJj4=j=UH7zCgg2Q@mail.gmail.com>
 <20190912091925.GM4023@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912091925.GM4023@dhcp22.suse.cz>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_032427_546938_2FDE9120 
X-CRM114-Status: GOOD (  21.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, "Michael S. Tsirkin" <mst@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexander Duyck <alexander.duyck@gmail.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, Mel Gorman <mgorman@suse.de>,
 ying.huang@intel.com, Rik van Riel <riel@surriel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>,
 Nitesh Narayan Lal <nitesh@redhat.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 11:19:25AM +0200, Michal Hocko wrote:
> On Wed 11-09-19 08:12:03, Alexander Duyck wrote:
> > On Wed, Sep 11, 2019 at 4:36 AM Michal Hocko <mhocko@kernel.org> wrote:
> > >
> > > On Tue 10-09-19 14:23:40, Alexander Duyck wrote:
> > > [...]
> > > > We don't put any limitations on the allocator other then that it needs to
> > > > clean up the metadata on allocation, and that it cannot allocate a page
> > > > that is in the process of being reported since we pulled it from the
> > > > free_list. If the page is a "Reported" page then it decrements the
> > > > reported_pages count for the free_area and makes sure the page doesn't
> > > > exist in the "Boundary" array pointer value, if it does it moves the
> > > > "Boundary" since it is pulling the page.
> > >
> > > This is still a non-trivial limitation on the page allocation from an
> > > external code IMHO. I cannot give any explicit reason why an ordering on
> > > the free list might matter (well except for page shuffling which uses it
> > > to make physical memory pattern allocation more random) but the
> > > architecture seems hacky and dubious to be honest. It shoulds like the
> > > whole interface has been developed around a very particular and single
> > > purpose optimization.
> > 
> > How is this any different then the code that moves a page that will
> > likely be merged to the tail though?
> 
> I guess you are referring to the page shuffling. If that is the case
> then this is an integral part of the allocator for a reason and it is
> very well obvious in the code including the consequences. I do not
> really like an idea of hiding similar constrains behind a generic
> looking feature which is completely detached from the allocator and so
> any future change of the allocator might subtly break it.

I don't necessary follow why shuffling is more integral to page allocator
than reporting would be. It's next to shutffle.c under mm/ and integrated
in a simillar way.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
