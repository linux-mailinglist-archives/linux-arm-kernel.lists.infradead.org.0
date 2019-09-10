Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFFCAED95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkxHhdJlof5QDAmmlCZs3bVKWMfaMGQjvD0nvGeWM9g=; b=YursDBLUL+fyBo
	6EdvL59cysmdFcFdjYZXzQc/jfkCKasB+XcqZ8gg1BDX9zATh2xn6JN8yOyJjajFSc3BfaUsHM/96
	sDHw+g/xrQvjDVFHTh0lwCQ1liKnecrI/pBG5LrLk5JnsCaAkn9q0se7T/+8OrThqZNOK+5M3qUoj
	vN2F8Gq8TBjyX95WK0P+zXzSFhaBlhu5mNw6aFEw5xxOkAgtv3o9T3dNISYEQabgvpxLWv/P9Oe1I
	B8uwCgnL/wMgo8oKYogg8Ammhv/xepQFs6VnWwfdNq46pS7W1W1FjpXwlJesE9YCygI9CmXd1w/7z
	dBllxMyEg2cU+hO6aclg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hQI-00067B-7t; Tue, 10 Sep 2019 14:47:14 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hQ6-00065x-Jr
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:47:03 +0000
Received: by mail-io1-xd41.google.com with SMTP id r26so38001871ioh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 07:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=83TThgQAjkQ0ae/WfN2rozL6NZ6sFqo/tzTJieGwWhY=;
 b=bctqj0dIEQG02DidTblEEKKmlRq95iuCrJbWTEZEFy6f4ldmknD9AC82Hjp7WtIcUL
 wdtgqANYPFpfuqN9RWFoV81S+TL4TZWcW/eRB1zbwCnI4axFiqpnKB/4F9Vb1ASsBmwM
 MoGeD5V7oPXNrI0TLfR8qwBLS/a5rmpBqaVS40yQVLdcqID59aFUJKp3thzSPP4Ym5fo
 oUxnlGZ+RikUHkghsxU4t9MUOUJM1V923cataTV37iHuaUS8taTW2ilbXf8zuGBL2rrr
 GFcYtmHJkRVPpjaQYbMNqFd6Z6x57kRfzb33fCPJ6liqZh8sZLRJMVMsx0Mc0ssKXqB7
 m1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=83TThgQAjkQ0ae/WfN2rozL6NZ6sFqo/tzTJieGwWhY=;
 b=nKfMFVKz3nQJE0qCzIG9eanbeg5IzNJLXviMJayZfgBf+41eqon7fJvZSR9C178VP4
 JXrfkUU6iLBXb36BKQkP0amIOvzx+NV1nklVVDxZb05zhLTOm8qI0nKtkOj+lPQI1nsa
 fq8eYfXBsJJKSE20uLuOMw9i54Oc2iRe63Uqpp8Sd9rXGY+CV7Ox8MZkkg8TaygTs8tH
 7WOxnNez4KlVQjZQql3xahnB6iBt+VPYg25qW1StaKsrjuw4OqMfnswICDZSs6u0hTnR
 tPIiqXfseXFGDA3ZQKEIycuz9F1EZOTI1aIYzFToiOqLWBIVmkm0LZHItfafuCyl+3dD
 wJ+w==
X-Gm-Message-State: APjAAAUTyqX/2aExrNd1fA/hrxja9TMPm55lmaOXQC3952KZLYTzzEZN
 zijDCAp7MQc7mKR6ZBPZme11ZGetGQX0xQwET8Q=
X-Google-Smtp-Source: APXvYqxrAgxnAGDouzK82zOnS/FEXuQVFFiHhPiHvEJcvMSKDH7nqj7q9uv+1GUDlOR7M4uUZTjdaBK0SNIGv69duNM=
X-Received: by 2002:a5d:8f86:: with SMTP id l6mr20769278iol.270.1568126821359; 
 Tue, 10 Sep 2019 07:47:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172528.10910.37051.stgit@localhost.localdomain>
 <20190910122313.GW2063@dhcp22.suse.cz>
In-Reply-To: <20190910122313.GW2063@dhcp22.suse.cz>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 10 Sep 2019 07:46:50 -0700
Message-ID: <CAKgT0Ud1xqhEy_LL4AfMgreP0uXrkF-fSDn=6uDXfn7Pvj5AAw@mail.gmail.com>
Subject: Re: [PATCH v9 3/8] mm: Move set/get_pcppage_migratetype to mmzone.h
To: Michal Hocko <mhocko@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074702_674048_94B6E57F 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 kvm list <kvm@vger.kernel.org>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, lcapitulino@redhat.com,
 linux-mm <linux-mm@kvack.org>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>, will@kernel.org,
 Andrea Arcangeli <aarcange@redhat.com>, virtio-dev@lists.oasis-open.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Matthew Wilcox <willy@infradead.org>,
 "Wang, Wei W" <wei.w.wang@intel.com>, ying.huang@intel.com,
 Rik van Riel <riel@surriel.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Nitesh Narayan Lal <nitesh@redhat.com>,
 Dave Hansen <dave.hansen@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Fengguang Wu <fengguang.wu@intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 5:23 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Sat 07-09-19 10:25:28, Alexander Duyck wrote:
> > From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> >
> > In order to support page reporting it will be necessary to store and
> > retrieve the migratetype of a page. To enable that I am moving the set and
> > get operations for pcppage_migratetype into the mm/internal.h header so
> > that they can be used outside of the page_alloc.c file.
>
> Please describe who is the user and why does it needs this interface.
> This is really important because migratetype is an MM internal thing and
> external users shouldn't really care about it at all. We really do not
> want a random code to call those, especially the set_pcppage_migratetype.

I was using it to store the migratetype of the page so that I could
find the boundary list that contained the reported page as the array
is indexed based on page order and migratetype. However on further
discussion I am thinking I may just use page->index directly to index
into the boundary array. Doing that I should be able to get a very
slight improvement in lookup time since I am not having to pull order
and migratetype and then compute the index based on that. In addition
it becomes much more clear as to what is going on, and if needed I
could add debug checks to verify the page is "Reported" and that the
"Buddy" page type is set.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
