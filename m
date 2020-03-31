Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F1F198AA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 05:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pxl5llk+PB4LIuDPhcAwNssxr8oFMlFckjFcCA24QE=; b=LTifN4AJbxsl0v
	VWLPRIFCiiJyPW2c+wYnE67Wg3YOGgd9lkl/BWZdsiYg75B4KW4vG+ZLKyC5egAF07UNekIcyHiny
	Ommiw9Aa/0F7DZTXfSPLV98N35jdcEKJZn+X7+Lss8YU/Tb1tjOEXLARIbZWwLPvlNw44ycB6K8Gs
	ifkAuH/DT0srhaU/sOxeEn3rRNF6H5W5KQQIYkBqg4AlYQgr6RQuBaiGF1Mm+GvXG0iNlw+L3AulY
	K3p8AqGJlQVuWDzTPTmOoATWAl+y7mOO32oOTfFDO2SDiLT4qiGeTe2ddXAnJeXv+sGKJt2pbTysc
	jPo0nfCwFvtNJ+xO8GPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ7rI-0004sN-NG; Tue, 31 Mar 2020 03:46:36 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ7r8-0004rH-E3
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 03:46:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585626384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4Emxfgw9v24rANWjnidLawXCzRz7ULAT99YrgVx/WFE=;
 b=Ah4OAdX4wEpMxiv+qN2SZLEj8xJJ+bJ5IPSHJGx9PbMKeObwQOt6OK+3IdaON0+NT+bJ4p
 j6LhKMDko4UsUTMJrIpNmu/LME5fjORDfLlBghZ3zB53WKpmovM+i2eZhAmGC/F5Yi6mnO
 2muI4zkqU5orKscwMR+C8dHgu2+VqaA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-vluCViNdNKGy2R7GGm48lQ-1; Mon, 30 Mar 2020 23:46:23 -0400
X-MC-Unique: vluCViNdNKGy2R7GGm48lQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25C758017CC;
 Tue, 31 Mar 2020 03:46:21 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-247.pek2.redhat.com
 [10.72.12.247])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CC38C953D6;
 Tue, 31 Mar 2020 03:46:16 +0000 (UTC)
Date: Tue, 31 Mar 2020 11:46:12 +0800
From: Dave Young <dyoung@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
Message-ID: <20200331034612.GB83248@dhcp-128-65.nay.redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200330135522.GE6352@MiWiFi-R3L-srv>
 <2bdfbb1c-49da-d476-4a38-f91937105ae3@arm.com>
MIME-Version: 1.0
In-Reply-To: <2bdfbb1c-49da-d476-4a38-f91937105ae3@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_204626_557043_5D5A8898 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Baoquan He <bhe@redhat.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,
On 03/30/20 at 06:17pm, James Morse wrote:
> Hi Baoquan,
> 
> On 3/30/20 2:55 PM, Baoquan He wrote:
> > On 03/26/20 at 06:07pm, James Morse wrote:
> >> arm64 recently queued support for memory hotremove, which led to some
> >> new corner cases for kexec.
> >>
> >> If the kexec segments are loaded for a removable region, that region may
> >> be removed before kexec actually occurs. This causes the first kernel to
> >> lockup when applying the relocations. (I've triggered this on x86 too).
> >>
> >> The first patch adds a memory notifier for kexec so that it can refuse
> >> to allow in-use regions to be taken offline.
> > 
> > I talked about this with Dave Young. Currently, we tend to use
> > kexec_file_load more in the future since most of its implementation is
> > in kernel, we can get information about kernel more easilier. For the
> > kexec kernel loaded into hotpluggable area, we can fix it in
> > kexec_file_load side, we know the MOVABLE zone's start and end. As for
> > the old kexec_load, we would like to keep it for back compatibility. At
> > least in our distros, we have switched to kexec_file_load, will
> > gradually obsolete kexec_load.
> 
> > So for this one, I suggest avoiding those
> > MOVZBLE memory region when searching place for kexec kernel.
> 
> How does today's user-space know?
> 
> 
> > Not sure if arm64 will still have difficulty.
> 
> arm64 added support for kexec_load first, then kexec_file_load. (evidently a
> mistake).
> kexec_file_load support was only added in the last year or so, I'd hazard most
> people using this, are using the regular load kind. (and probably don't know or
> care).

I agreed that file load is still not widely used,  but in the long run
we should not maintain both of them all the future time.  Especially
when some kernel-userspace interfaces need to be introduced, file load
will have the natural advantage.  We may keep the kexec_load for other
misc usecases, but we can use file load for the major modern
linux-to-linux loading.  I'm not saying we can do it immediately, just
thought we should reduce the duplicate effort and try to avoid hacking if
possible.

Anyway about this particular issue, I wonder if we can just reload with
a udev rule as replied in another mail.

Thanks
Dave


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
