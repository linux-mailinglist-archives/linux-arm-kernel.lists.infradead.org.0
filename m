Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9AD1BB562
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 06:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWtxVoe2c7O/8JKiUNnDM2rVB/wqHJr8MFLRBJM9ZAg=; b=epxNde7VqTgOBJ
	9PwmlqAfZlqa4rY0pfglk5pVgmcYCHnYVnox3qlxlGds8KzpO85Y9J9hcoy9gvL3fwKEzrvLXs27v
	LB4xXDP4o6ln3bD0M+f05ZeLj+SnnexEINBMfzxaniW21RUyPR86xdkxc1jycIZEiLoL21OdSb7AQ
	NIKlq90EkySIkmPrwpiMdf8n7PeNElkkZW4YptXvnLeFBrRzLEfPSAAyKE1dKZBjypFfG8LiB0sQo
	ztA2uYiysH7P+N565E9HyPhYl0UyMNPdAENYji+tgqF8KMXVcASYp8KSElW6vBlwHPNmPCxxJEZzZ
	Okp2AveVyJjmZU6cud4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTHyD-0003m3-A5; Tue, 28 Apr 2020 04:35:45 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTHy5-0003la-6G
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 04:35:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588048534;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7HOk8Yr6S3xlCmaSoOzLqX7HGoHGUwpA1okgxRGClTk=;
 b=cCaKx0gPX5YJc0oHIpbFpRdctbdhh/r7VMwPiul1tADcP3Cr0HR0E5COvzuWg9qW/yGTAk
 VWL7JkPiHkXBAVTdFpujr8qKe/My1NWuCDc66xbWOmIC1ditCmb4zq2EuBLNC9D1jzHbJF
 9xlhuLtquuxlwYsGzO/WGx8Lk2kWM9Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-PmAvVPc_NI6x2PYmjDXjJA-1; Tue, 28 Apr 2020 00:35:27 -0400
X-MC-Unique: PmAvVPc_NI6x2PYmjDXjJA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B1FD107ACCA;
 Tue, 28 Apr 2020 04:35:26 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-127.bne.redhat.com
 [10.64.54.127])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 81AE010013D9;
 Tue, 28 Apr 2020 04:35:23 +0000 (UTC)
Subject: Re: [PATCH] arm64/mm: Reject invalid NUMA option
To: Steven Rostedt <rostedt@goodmis.org>
References: <20200424045314.16017-1-gshan@redhat.com>
 <20200424101132.GC1167@C02TD0UTHF1T.local>
 <f83c0ce1-b1b2-31f4-60c8-15567b87a8ff@redhat.com>
 <20200427225406.7cacc796@gandalf.local.home>
 <20200427225944.185d4431@gandalf.local.home>
 <20200427230920.3d606a2e@gandalf.local.home>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <7e85ea83-de5f-c789-2e3c-e468a50ed4bd@redhat.com>
Date: Tue, 28 Apr 2020 14:35:20 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200427230920.3d606a2e@gandalf.local.home>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_213537_448462_7B7765FA 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, shan.gavin@gmail.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven and Mark,

On 4/28/20 1:09 PM, Steven Rostedt wrote:

[...]

> 
> Could this be a bug in the implementation of strncmp() in
> arch/arm64/lib/strncmp.S. As I don't know arm64 assembly, I have no idea
> what it is trying to do.
> 
> But strncmp("o","off",3) returning zero *is* a bug.
> 

I think it's false alarm. The patch has been in my local repo for a while.
I checked out 5.7.rc3 and tried passing "numa=o" to the kernel, @numa_off
is unchanged and its value is false. I also check the return value from
strncmp() as below, it's correct. Nothing is broken. I should have retested
before posting it. Sorry for the noise. Please ignore the crap patch :)

diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index 4decf1659700..a8e5c6f7ba25 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -32,6 +32,13 @@ static __init int numa_parse_early_param(char *opt)
         if (str_has_prefix(opt, "off"))
                 numa_off = true;
  
+       pr_info("numa_off=%s\n", numa_off ? "true" : "false");
+       pr_info("opt=%s\n", opt);
+       pr_info("len=%d\n", (int)strlen("off"));
+       pr_info("\n");
+       pr_info("================================\n");
+       pr_info("strncmp(opt, 'off', 3)=%d\n", strncmp(opt, "off", 3));
+

[    0.000000] NUMA: numa_off=false
[    0.000000] NUMA: opt=o
[    0.000000] NUMA: len=3
[    0.000000] NUMA:
[    0.000000] NUMA: ================================
[    0.000000] NUMA: strncmp(opt, 'off', 3)=-102

Thanks,
Gavin




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
