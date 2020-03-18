Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA91918A8DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6VYNG1YmpYJU8vuQKKyHaUksf+4XzO15Il2m/PlvA9k=; b=NrqDbJxO1iChwX
	pg8maplJn/THy6TxhywImqbTypYM6cAbtd9l3HCbJLO9CiSIsIG5UA+pbKGh1t5hDtJtNuwI58IKd
	2LKlRCSNPrwVDnQs5UO6iB1DgAA7kk0HNkZrZu7T5TF/l83KfiL7h7S1BcvDgNFzfgjC9wszPGu1p
	hT5idSwlLRIsr+IiSuhi3DwAkiD+17V4Df90hRaZWBgzz0uexiX2FyQvMyPX3m3B4wxUYTRMwXX1o
	8dMHOOAvL3LNH9IHV+gthx03FrUGi6EfJCvGXI4Uwjwi9zTxyWDfob9T6kaud7QE9voqTIOGjw6nK
	DCNj3odpkb/W07wI6INw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhhR-0007ug-Ed; Wed, 18 Mar 2020 23:02:09 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhhH-0007uD-9I
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584572518;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Tz5ps/WdD6aOl7qBGtNAWRRQwT0rqVHQeV8EEp8Zoco=;
 b=Vzaapn77DZxAoBFayG9fcDLA96RGeR3p5jWUWe7G5g1q5LD8z/Mih1v5HAspZUeuOAASax
 F24224oXm1X9CJNZ+Vovuqef60zmdkCXfdimpjKqIV2xDsZy0dPadqD+EkFk5LjrVObTLi
 6xxGnofIUAc3Fb0cDJO+/Nw3TMbWQuA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-c5B2jaDFO1m_laiFOyHeeg-1; Wed, 18 Mar 2020 19:01:54 -0400
X-MC-Unique: c5B2jaDFO1m_laiFOyHeeg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B075107ACCA;
 Wed, 18 Mar 2020 23:01:53 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-221.bne.redhat.com
 [10.64.54.221])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F322D627D8;
 Wed, 18 Mar 2020 23:01:49 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/4] arm64: Dereference CPU operations indirectly
Date: Thu, 19 Mar 2020 10:01:41 +1100
Message-Id: <20200318230145.72097-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_160159_402683_E5C8DB0C 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 catalin.marinas@arm.com, shan.gavin@gmail.com, sudeep.holla@arm.com,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The subject perhaps can't precisely indicate what this series does, but
keep it same as before for consistency.

In current implementation, an array (@cpu_ops[NR_CPUS]) is maintained
to dereference the CPU operations. 2KB memory are consumed when NR_CPUS
is configured to 256. It's too much than what I expected. This series
reworks the implementation to dereference the CPU operations by using
two CPU operations pointer with assumption - all secondary CPUs should
have unified CPU operations. With this, 16-bytes memory will be used
for same purpose.

PATCH[1/4] isn't too much relevant, to declare ACPI parking protocol only
when CONFIG_ARM64_ACPI_PARKING_PROTOCOL has been enabled. PATCH[2/4]
renames cpu_read_ops() to init_cpu_ops(), which is obviously more precise
because it's initializing the CPU operations. PATCH[3/4] introduces
get_cpu_ops(), preparing for droping the array of CPU operations.
PATCH[4/4] removes the CPU operations deferencing array and replaces
it with two pointers with the assumption: all secondary CPUs should have
same enablement method.

Changelog
=========
v5:
   * Rebase to 5.6.rc6 and retest                        (Gavin Shan)
   * Improved commit log for PATCH[1]                    (Gavin Shan)
   * Add helper function __cpu_try_die()                 (Mark Rutland)
   * Two pointers to track the operations for boot CPU
     and the secondary CPUs separately                   (Mark Rutland)
   * Drop PATCH[5] because @cpu parameter is still
     needed by get_cpu_ops()                             (Gavin Shan)
v4:
   * Rebase to 5.6.rc3 and retest                        (Gavin Shan)
   * Improved commit log for PATCH[4/5] with link tag    (Lorenzo Pieralisi)
   * Using pointer instead of index to dereference the
     unified CPU operations                              (Lorenzo Pieralisi)
   * Merge logic of cpu_get_ops() to get_cpu_method()    (Gavin Shan)
v3:
   * Assume all CPUs have same enablement method. With this, the used
     memory is further squeezed from 64 bytes to 4 bytes (Lorenzo Pieralisi)
   * Add PATCH[5/5] to remove argument of get_cpu_ops()  (Gavin Shan)
v2:
   * Pack 4 CPUs' indexes into one byte. 64 bytes are consumed in order
     to get the CPU operations                            (Robin Murphy)
   * Use ARRAY_SIZE() to iterate @cpu_ops[]               (Robin Murphy)
   * Make index-0 valid                                   (Robin Murphy)

Gavin Shan (4):
  arm64: Declare ACPI parking protocol CPU operation if needed
  arm64: Rename cpu_read_ops() to init_cpu_ops()
  arm64: Introduce get_cpu_ops() helper function
  arm64: Remove CPU operations dereferencing array

 arch/arm64/include/asm/cpu_ops.h |  8 +--
 arch/arm64/kernel/cpu_ops.c      | 84 +++++++++++++++++---------------
 arch/arm64/kernel/cpuidle.c      |  9 ++--
 arch/arm64/kernel/setup.c        |  8 +--
 arch/arm64/kernel/smp.c          | 72 +++++++++++++++++----------
 5 files changed, 107 insertions(+), 74 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
