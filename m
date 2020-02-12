Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC5915A98C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7bqiOHmzw/pkgQKfcVkFMxddE59q+aN5JU8vxxeTH4=; b=uruv11DpDlBjJm
	9COSuc1cBCy+jtFQd6rK88qFYQCORut8oFDyQp3SRHhUZOfR6bRKteyZuX+PrAZYw8GhkO7cfXVUL
	rQkuZOizE36NEDKCReZh3dIVeMxSR9JwBOUOwdqDOVd/GSTjihJ7AWjO5mDISPAxFS4KzwJDfYIwx
	GB0fiKaONqJMmXfpsXMU/VKeoThpFe4z7S7FBQOWiFd2iG8OC35/uaxAWepzdvi0LeQJOGQy83qy4
	lPZvWFdYgHcGV4VJrsn9fFv/68Id8x3Fvm8NNwOKj4IEJATDejiGcfEsKMb5tuBc+7QP5Aqo09tfG
	oQyk73FoXKlTF6oYMh3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ray-00072L-O8; Wed, 12 Feb 2020 12:58:24 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ran-00071F-LB
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:58:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581512291;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WNE9XiYfIRFh5LYCvgVuz7J2bfIjYJxs9twoYqkH1vE=;
 b=B6rLVHGrult10fEy9RK0Vcx6KCvD4yIlOFG6NwJfU+QAtVTKF9HIqurSDoagx9oRuhmwAe
 oO8tDMozVSZnL28ujrjZ4aVktqrwio4jTrwTMta4kwjR9z0DkHCwjMc4c19kO2U/YMZNm5
 6+6AxMjn8XgN9v9XM/2dAgWxw+XlDxU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-416-GUBT95-nNVi27y58GnvC5Q-1; Wed, 12 Feb 2020 07:58:03 -0500
X-MC-Unique: GUBT95-nNVi27y58GnvC5Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04ABD108F25C;
 Wed, 12 Feb 2020 12:58:02 +0000 (UTC)
Received: from mail (ovpn-122-89.rdu2.redhat.com [10.10.122.89])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 733DC5DA7B;
 Wed, 12 Feb 2020 12:57:58 +0000 (UTC)
Date: Wed, 12 Feb 2020 07:57:57 -0500
From: Andrea Arcangeli <aarcange@redhat.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 2/2] arm64: tlb: skip tlbi broadcast for single threaded
 TLB flushes
Message-ID: <20200212125757.GD3699@redhat.com>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-3-aarcange@redhat.com>
 <20200210175106.GA27215@arrakis.emea.arm.com>
 <20200210201411.GC3699@redhat.com>
 <20200211140025.GB153117@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211140025.GB153117@arrakis.emea.arm.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_045815_120843_E2BFC306 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rafael Aquini <aquini@redhat.com>, Jon Masters <jcm@jonmasters.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Tue, Feb 11, 2020 at 02:00:25PM +0000, Catalin Marinas wrote:
> I think there is another race here. IIUC, the assumption you make is
> that when mm_users <= 1 && mm_count == 1, the only active user of this
> pgd/ASID is on the CPU doing the TLBI. This is not the case for
> try_to_unmap() where the above condition may be true but the active
> thread on a different CPU won't notice the local TLBI.

The "current->mm == mm" check is what shall prevent the above.

Thanks,
Andrea


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
