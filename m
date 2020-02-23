Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C4C1699A0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 20:25:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDw6n/EDGKMH/k69y4O69lBXp/b+EZ8a7IQvudyjq/U=; b=bpCs0eLWYYHO41
	Qv751qqTp4YdPXonIhhPK9UxPJzmVz2oeE0ZdRy7gJOifUhkbxgANaFlQfFQuN5tFyzfmG5j8mBf+
	O5GY07pb9BOPLGp0vnaxLEDz0uSreHlt2fnghdHyWDozEhCabgqqHSp4/qYZMFbytWlwYqHZCQh46
	DF3FE7ce8oMIJ+QJQRdIX8/zzd/BxRiNwaf+8bZFdcFnNfRQfE9Lpb2sMERLchab2VNBxZ/Jy2cLi
	MK/QBVQ0BFznsq5aDkznSt0SIYbdFzrejIOSGeC+RLLBDiUTOqmGL0atFquTDyXQddF+sv/LAr3th
	9uG7tLPzqmjIsO+iWNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5wss-00008M-Vo; Sun, 23 Feb 2020 19:25:47 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5wsg-00005i-Ud
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 19:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582485929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UU+BZ7vU0vNDbayPRMPpX1ixOqnikP7N9LBd4qlvCto=;
 b=E3gpa2eWonfZ8wXHmPjW9pmZadPecWfzhrQBOEVZbPcpMlZmof6n0VD2IXHWbfrLmfHXsX
 WtpbPKOgOKcVrDy+x5y1QL8uY4TR5Wk8LxsjsdNld7PSrxN0lHU310RvJwU0OMAJXrjml7
 ZITAgn9yj5Q0/XsIVjn43Y/jO3DOQ18=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-UwRa0Mr-NV2TRQOgVtHpPw-1; Sun, 23 Feb 2020 14:25:25 -0500
X-MC-Unique: UwRa0Mr-NV2TRQOgVtHpPw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F85E184B121;
 Sun, 23 Feb 2020 19:25:24 +0000 (UTC)
Received: from mail (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A42F60BF1;
 Sun, 23 Feb 2020 19:25:21 +0000 (UTC)
From: Andrea Arcangeli <aarcange@redhat.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Rafael Aquini <aquini@redhat.com>, Mark Salter <msalter@redhat.com>
Subject: [PATCH 2/3] arm64: select CPUMASK_OFFSTACK if NUMA
Date: Sun, 23 Feb 2020 14:25:19 -0500
Message-Id: <20200223192520.20808-3-aarcange@redhat.com>
In-Reply-To: <20200223192520.20808-1-aarcange@redhat.com>
References: <20200223192520.20808-1-aarcange@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_112535_070244_3A178616 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Jon Masters <jcm@jonmasters.org>,
 linux-kernel@vger.kernel.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's unclear why normally CPUMASK_OFFSTACK can only be manually
configured "if DEBUG_PER_CPU_MAPS" which is not an option meant to be
enabled on enterprise arm64 kernels.

The default enterprise kernels NR_CPUS is 4096 which is fairly large.
So it'll save some RAM and it'll increase reliability to select
CPUMASK_OFFSET at least when NUMA is selected and a large NR_CPUS is
to be expected.

Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..882887e65394 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -955,6 +955,7 @@ config NUMA
 	bool "Numa Memory Allocation and Scheduler Support"
 	select ACPI_NUMA if ACPI
 	select OF_NUMA
+	select CPUMASK_OFFSTACK
 	help
 	  Enable NUMA (Non Uniform Memory Access) support.
 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
