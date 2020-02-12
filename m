Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4B3159E56
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:48:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PUQ7HiACgQXanYnyytCEYjOFIEB80Cx9cmRVpbHCbaA=; b=gAc+VrIiwlkaCB
	+UTGSSu3Whjmt7Ox7CB5Q3yYNaTvY+9cBG2l2RtQryYz9G756mllb5KhK5ka19zxWhhrJRoJoPbfu
	tToLEUB02ZB2jylodBbYgn+J4E6y9u/FJ8OCmk3DqsexUjKBIdHO4195WwBZMtjOFNvvPF1NJTghA
	/pxa0RD5RL74lqxZncgb1/yi0BBijL+6CCaHVlxLzN+r5LhNZXKjuf4PP4DmFmy/tufM/1n0IflVP
	+B6ISSPQf3c0H3eV/EJTUKG6RdleTrQke1OBUHn02jEmCmE62VFCp56ePgVsbRkixc1lwcxMH/ijp
	byqZUySQYruMhzrQ8u7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1gCs-000096-J2; Wed, 12 Feb 2020 00:48:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g8J-0003EG-3b
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 00:44:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581468240;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=RDgJwcBjZa/LE61vHIi0kHPY8nui1IBXlmHGqW+j/yQ=;
 b=V12eEeFjhf7uXXaKMLDgI8Jp/aeeSXnMbgxUFRm6leprVNICJAI63JSmh+wdjDjEfRyvda
 YXtEQpCS4K72z8JxTivRaNbnxWLfAlMjf1hrhCcoHl/hg50q7tboDRrYZaX9hPLoyToKD1
 b+dZqSoz4cQep1nytgS5Px65N1VvZbU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-HHYp78wQNOuHjZaK6POWuw-1; Tue, 11 Feb 2020 19:43:58 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D2C9800D41;
 Wed, 12 Feb 2020 00:43:57 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-85.bne.redhat.com
 [10.64.54.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C9D135D9E2;
 Wed, 12 Feb 2020 00:43:54 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/5] arm64: Dereference CPU operations indirectly
Date: Wed, 12 Feb 2020 11:43:46 +1100
Message-Id: <20200212004351.66576-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: HHYp78wQNOuHjZaK6POWuw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164403_499422_F6D1340B 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 catalin.marinas@arm.com, sudeep.holla@arm.com, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The subject perhaps can't precisely indicate what this series does, but
keep it same as before for consistency.

In current implementation, an array (@cpu_ops[NR_CPUS]) is maintained
to dereference the CPU operations. 2KB memory are consumed when NR_CPUS
is configured to 256. It's too much than what I expected. This series
reworks the implementation to dereference the CPU operations indirectly
by using the index to the CPU operations array, so that less memory (4
bytes) will be consumed for the same purpose. The optimization bases on
the assumption: these CPU operations aren't dereferenced in hot path.
Also, we have only one valid CPU enablement method for all CPUs.

PATCH[1/5] isn't too much relevant, to declare ACPI parking protocol only
when CONFIG_ARM64_ACPI_PARKING_PROTOCOL has been enabled. PATCH[2/5]
renames cpu_read_ops() to init_cpu_ops(), which is obviously more precise
because it's initializing the CPU operations. PATCH[3/5] introduces
get_cpu_ops(), preparing for dereferencing CPU operations indirectly.
PATCH[4/5] removes the CPU operations deferencing array and replaces it
with an 4-bytes variable with the assumption: all CPUs should have same
enablement method. PATCH[5/5] removes the argument of get_cpu_ops() as
it's useless.

Changelog
=========
v3:
   * Assume all CPUs have same enablement method. With this, the used
     memory is further squeezed from 64 bytes to 4 bytes (Lorenzo Pieralisi)
   * Add PATCH[5/5] to remove argument of get_cpu_ops()  (Gavin Shan)
v2:
   * Pack 4 CPUs' indexes into one byte. 64 bytes are consumed in order
     to get the CPU operations                            (Robin Murphy)
   * Use ARRAY_SIZE() to iterate @cpu_ops[]               (Robin Murphy)
   * Make index-0 valid                                   (Robin Murphy)

Gavin Shan (5):
  arm64: Declare ACPI parking protocol CPU operation if needed
  arm64: Rename cpu_read_ops() to init_cpu_ops()
  arm64: Introduce get_cpu_ops() helper function
  arm64: Remove CPU operations dereferencing array
  arm64: Remove argument @cpu of get_cpu_ops()

 arch/arm64/include/asm/cpu_ops.h |  8 ++--
 arch/arm64/kernel/cpu_ops.c      | 69 +++++++++++++++++++-------------
 arch/arm64/kernel/cpuidle.c      | 10 ++---
 arch/arm64/kernel/setup.c        |  8 ++--
 arch/arm64/kernel/smp.c          | 60 ++++++++++++++++++---------
 5 files changed, 95 insertions(+), 60 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
