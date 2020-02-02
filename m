Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA99150002
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 00:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D2RDnMRThB1SsGOvuNamhzxgriETsvXBhHZkqMMz3UA=; b=kx79nj8W8U1FPT
	6olE4kzvIrD+2S38ORrMoN1fTO1qUQL9TpdcXZy57SexZDhRsg/myqlgcxkKOkgFft2//y3nPAY8w
	ijNITOtwkk1WYoQUvTTrb7+DsrKERZ9JcLP3GYwoEr9C7CgVHoXVS0PaRa+EMg1ns3Ley4ShDStt9
	cd5QB27zlFX5dDkYXMR7goj086NsAoz4yRG39tnbPwUmKpNVgAYXWnPNs3MRYuBx/wnc/QQfzux7/
	CQTJ4yi/qf8hjcXCpggk8RCkOwu/sk0vdHFmoZUqH8X3NSIdIJRz0iCPCbh35lNoAUN94jY/odgfl
	zpLPsyoXZzO8vzyB95NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyOcM-0003DD-HH; Sun, 02 Feb 2020 23:25:30 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyObo-0001dS-Jp
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 23:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580685894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=hxhqZb9e5iyTX6QaIdkqJHNedxvG/OlmguereLXbPHQ=;
 b=KvxYxcUGZG1PFIwX0zSeu9JVQPJCeouK/Krx20mUANMUz839EbZAtqjpnM2hvogG5MNW1e
 icWH3+q6ic1A5UvwLX0wPfcvxJnNGSo3Ve2M9suyQcGXzNUUOfhZ8ZAKrWr83/LEILuDrf
 be1xB3V87wxNhI7BwyexGGsgVJywEjQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-8RdGH6n5NeCdUzVF5jAfkg-1; Sun, 02 Feb 2020 18:24:44 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CB631005502;
 Sun,  2 Feb 2020 23:24:43 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-57.bne.redhat.com
 [10.64.54.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2F9765C1D6;
 Sun,  2 Feb 2020 23:24:40 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] arm64: Dereference CPU operations indirectly
Date: Mon,  3 Feb 2020 10:24:33 +1100
Message-Id: <20200202232437.7626-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 8RdGH6n5NeCdUzVF5jAfkg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_152456_733481_DA57CDD4 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, lorenzo.pieralisi@arm.com,
 will@kernel.org, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In current implementation, an array (@cpu_ops[NR_CPUS]) is maintained to
dereference the CPU operations. 2KB memory are consumed when NR_CPUS is
configured to 256. It's too much than what I expected. This series reworks
the implementation to dereference the CPU operations indirectly, so that
less memory (256 bytes) will be consumed for the same purpose.

PATCH[1/4] isn't too much relevant, to declare ACPI parking protocol only
when CONFIG_ARM64_ACPI_PARKING_PROTOCOL has been enabled. PATCH[2/4]
renames cpu_read_ops() to init_cpu_ops(), which is obviously more precise
because it's initializing the CPU operations. PATCH[3/4] introduces
get_cpu_ops(), preparing for dereferencing CPU operations indirectly.
PATCH[4/4] makes dereferencing CPU operations indirectly happen.

Gavin Shan (4):
  arm64: Declare ACPI parking protocol CPU operation if needed
  arm64: Rename cpu_read_ops() to init_cpu_ops()
  arm64: Introduce get_cpu_ops() helper function
  arm64: Dereference CPU operations indirectly

 arch/arm64/include/asm/cpu_ops.h |  8 ++---
 arch/arm64/kernel/cpu_ops.c      | 51 +++++++++++++++++----------
 arch/arm64/kernel/cpuidle.c      |  9 ++---
 arch/arm64/kernel/setup.c        |  8 +++--
 arch/arm64/kernel/smp.c          | 59 ++++++++++++++++++++++----------
 5 files changed, 86 insertions(+), 49 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
