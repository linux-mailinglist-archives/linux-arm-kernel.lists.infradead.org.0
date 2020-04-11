Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9F11A4DA5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 05:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxS2MllyLJ6c59dg3NiDgqu9u61xV6eTJvyIs908bC0=; b=YV7Lp9yvCzBt2K
	y1V2L1XfNC8KQ5RYqGjcIYefa0svHMvZoWlkjvB0XCAMU0Ji5tlxpZeRC9AhIaxqnQHdiC9AFNoqo
	PTFuVmEFBucIA5mK4pNlE6a87OXMmK2d354W+GvpkRfpv+L8d+NKjJFc6yM/zo76dAJ08zzRnXf6f
	3u4IoZ1yo3kImlRjTxQMworaSoB26FxOv7y1olWbOb5LfLFab03x1jhmW7xnDT/svxSXZK/g9UUeG
	vaJ2iNdLGAPBDQ0B7N41qJ36e92meN7s83x0pCaVuW2iXRU2ggSBRemRXWtZmuQgUldWwRyJdeD4W
	78v35mzI8wI/I5Ijx7SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN74N-0004NU-UD; Sat, 11 Apr 2020 03:44:35 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN74G-0004JQ-JR
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 03:44:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586576664;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tSX3QudJ2iHkyu7Zntp3JHz55Dv2K9nr9Vw4rINki0g=;
 b=do6GC9pknGDlJETDHu10GICBfpQFSHPCiTdkVg3Bf0IKYMqzxOZx0uESctVK59rr9vRjK/
 HTQ6FDCBcPdEbqxPCaN3iOxSWf9HNY+35Uv6rYA4XuuAFvwDD4D8W7MXsnU9okAbC1ExmK
 ORmxF/OhLXlThny43hkmhLAWV4bf8XQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-uXpjzOt_P8C_VBef4dtHRQ-1; Fri, 10 Apr 2020 23:44:22 -0400
X-MC-Unique: uXpjzOt_P8C_VBef4dtHRQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B93F5107ACC7;
 Sat, 11 Apr 2020 03:44:20 +0000 (UTC)
Received: from localhost (ovpn-12-67.pek2.redhat.com [10.72.12.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 29FC160C05;
 Sat, 11 Apr 2020 03:44:16 +0000 (UTC)
Date: Sat, 11 Apr 2020 11:44:14 +0800
From: Baoquan He <bhe@redhat.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200411034414.GH2129@MiWiFi-R3L-srv>
References: <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
 <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
 <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
 <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
 <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
MIME-Version: 1.0
In-Reply-To: <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_204428_737948_4D0A48FC 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/10/20 at 12:10pm, Andrew Morton wrote:
> It's unclear (to me) what is the status of this patchset.  But it does appear that
> an new version can be expected?

As we discussed in the thread of replying to the cover letter, the
idea of this patchset is not good. 

Because We tend to use kexec_file_load more and improve/enhance it in the
future, and gradually obsolete the old kexec_load interface which this
patchset is trying to fix on. 

And the issue James spot is a very corner case, we have suggested
another easier way to avoid it by adding systemd service to load kexec
and monitor memory adding/removing uevent, juas as we have done for
kdump loading. Bhupesh is working on this to add a service in Fedora
and test, and will put it to RHEL too if nobody is unsatisfied.

Thanks
Baoquan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
