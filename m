Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743305B8FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzlWs/bP/2HL53jsG3un5XC1F0q3Wn3vaqaVxa3RuYA=; b=KEs0/+e9fRgL61
	mEzQMgKYiiC3j9kIRAKqZaKGSmAHHq8vvyBdrncBaMqy6jhK2gmPeojQ3FiEE+ARkuuqb3RX/gR7z
	DubP5tAp8ZWRKW7FTpRle3iJOb+LBrlXDtr0aZMMYRUD9a+K//QDmMtBl/MyGR6/y9K0gBDxEV9kJ
	tFh9u+U3wYm4slsIfAca2fxpeJOcPHxw5E8zV1st+oib5hifGrM2lgCt3W14A9uZrLqs4rYiO9kLd
	Wb5JwZNoI540+/v2xh1Xx2JWrNLGCjXhkjp/owjKN9X0B8FaD5sjOyW0m8JsZELBiN34s2bxdRSy9
	w7uRhto+1WVyrwZ2KEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtXl-0007yz-RP; Mon, 01 Jul 2019 10:28:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtXV-0007tf-0V
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:28:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EE62EAF32;
 Mon,  1 Jul 2019 10:27:57 +0000 (UTC)
Date: Mon, 1 Jul 2019 12:27:56 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Oscar Salvador <osalvador@suse.de>
Subject: Re: [PATCH v3 10/11] mm/memory_hotplug: Make
 unregister_memory_block_under_nodes() never fail
Message-ID: <20190701102756.GO6376@dhcp22.suse.cz>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-11-david@redhat.com>
 <20190701085144.GJ6376@dhcp22.suse.cz>
 <20190701093640.GA17349@linux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701093640.GA17349@linux>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_032801_224464_CF9FA6F3 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>,
 linux-ia64@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Igor Mammedov <imammedo@redhat.com>,
 akpm@linux-foundation.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 01-07-19 11:36:44, Oscar Salvador wrote:
> On Mon, Jul 01, 2019 at 10:51:44AM +0200, Michal Hocko wrote:
> > Yeah, we do not allow to offline multi zone (node) ranges so the current
> > code seems to be over engineered.
> > 
> > Anyway, I am wondering why do we have to strictly check for already
> > removed nodes links. Is the sysfs code going to complain we we try to
> > remove again?
> 
> No, sysfs will silently "fail" if the symlink has already been removed.
> At least that is what I saw last time I played with it.
> 
> I guess the question is what if sysfs handling changes in the future
> and starts dropping warnings when trying to remove a symlink is not there.
> Maybe that is unlikely to happen?

And maybe we handle it then rather than have a static allocation that
everybody with hotremove configured has to pay for.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
