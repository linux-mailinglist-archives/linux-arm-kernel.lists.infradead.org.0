Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE201A777D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUKmY/S0bbrgd8Rd1BjUevrUi/aIa0D3pWsmzGgBosA=; b=nSS3Mvhey90nL3
	sUJSUjnunXDzXg0PPlU5X8iuVsyJH17noF+WgXK2mVxIER0T6rDZrW5/aOrQI1I/M7X/CgchMVLOg
	/uz6Ss4qv0OUGRCQ7dU24rVL3MSzGCe+sSWb2ynem9fYSfO5xGSuZSGloBcQoGFMEw1le4CyJ7DiA
	R4HEPV3Y2JqsPGtMx1hvyDLd+C0qGb60oAlClwU+xV8nY9VyTeSk/V+FKLcwgbjf4ouNPZXDeuU7D
	K6JV3YLmLFjb5ftQKJHdFRcUsUq5YzPazGOYxbqqKJgX4fSfNHVIlf4l5JD3r/C0rC6vnjmev62Fp
	qFid9SIIEi+ZOGwAx8AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOI1b-0002dA-VS; Tue, 14 Apr 2020 09:38:35 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOI1S-0002bl-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586857105;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lvhqC0dRP09rVWyXtfxcbLLHJ6kqkkrA4CUn4bAErBo=;
 b=E+GXXy1uGjK1SxBFGOK/VSg77kTKPaylSVSr32as7nR20UFtTacVq2IDVqF6oJXRocwUjo
 c40jETdTL5HZU/1FGpGTR71bij62mHZ1vhgE7STOhABh2pmjcfJB1cBBt+sW07aaQ1k6oq
 FhDjD6hkpBRQVD/5GDDhDczbNevipD8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-384-No530O1hMaiQKW0OPwylRA-1; Tue, 14 Apr 2020 05:38:23 -0400
X-MC-Unique: No530O1hMaiQKW0OPwylRA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 957D98018A2;
 Tue, 14 Apr 2020 09:38:21 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-221.pek2.redhat.com
 [10.72.12.221])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7429210013A1;
 Tue, 14 Apr 2020 09:38:14 +0000 (UTC)
Date: Tue, 14 Apr 2020 17:38:09 +0800
From: Dave Young <dyoung@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200414093809.GA43901@dhcp-128-65.nay.redhat.com>
References: <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <20200411034414.GH2129@MiWiFi-R3L-srv>
 <20200411093009.GH25745@shell.armlinux.org.uk>
 <20200412053507.GA4247@MiWiFi-R3L-srv>
 <20200412080836.GM25745@shell.armlinux.org.uk>
 <87wo6klbw0.fsf@x220.int.ebiederm.org>
 <20200413023701.GA20265@MiWiFi-R3L-srv>
 <871rorjzmc.fsf@x220.int.ebiederm.org>
 <20200414091617.GA43656@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
In-Reply-To: <20200414091617.GA43656@dhcp-128-65.nay.redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_023826_346146_CF8B1E8D 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Baoquan He <bhe@redhat.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> We do not remove kexec_load at all, it is indeed helpful in many cases
> as all agreed.  But if we have a bug reported for both we may fix
> kexec_file_load first because it is usually easier, also do not need to
> worry about too much about old kernel and new kernel compatibility.
> 
> For example the recent breakage we found in efi path, kexec_file_load
> just work after the efi cleanup, but kexec_load depends on the ABI we
> added, so we must fix it as below:
> https://lore.kernel.org/linux-efi/20200410135644.GB6772@dhcp-128-65.nay.redhat.com/ 

Also, we have some specific sysfs files exported for kexec-tools use
/sys/firmware/efi/runtime-map/* and a few other table addresses:
fw_vendor  runtime and config_table under /sys/firmware/efi

That is only used by userspace kexec_tools for kexec_load, now the
runtime field is useless because of Ard's cleanup in efi code, but we
have to keep it there, older kexec-tools will need it.

In this case kexec_file_load do not need those hacks at all.  So in the
future if we have to invent some kernel/userspace abi only for
kexec_load we should be careful and maybe reject if no strong reason. 

Thanks
Dave


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
