Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9CDBD897
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:From:Resent-From:
	MIME-Version:Message-ID:In-Reply-To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=277UeJOWhWB1gP9B7Rd51IKlvLsioavDA30U4n6wz4A=; b=K9J/6754AL13vw
	r2fJf+uMlQ56Xza3dWUsP0vIs4e2qyD1NM5XX8mSVGtZlhg34/sMh7O+oEapfIN/fPcAVgZQ+O4OX
	A3FO/ubRrFzv9QfyMXJkrC1PXBb8oTQ2ea2pcLA3nA0O/O/n5CBmc3sfjxvYfsB7gWwkRfyaJ/GT6
	OH6PrslEkEhyHYCCxDKxG4uAYJzesWQ86smW0u80IT8waysNOAy7xigcY73YciDtyB5s7SLRB9F7v
	nTpfeOQYa2ksVU8hRkfeFo/3lDyodmBTfP+gb9rbfR3tokZnnrF/vb/inQuQz9WqJse5KzrLDcq0V
	vUazoIqesXqPU29UxwQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD1D1-0007gl-1n; Wed, 25 Sep 2019 06:55:31 +0000
Received: from sender4-of-o55.zoho.com ([136.143.188.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD1Cb-0006RS-Sb
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 06:55:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1569394499; cv=none; d=zoho.com; s=zohoarc; 
 b=G9fwlLYhaCLgMp4Wfx8ck+IPbQ7Puhu10Gba3XsosLq/2xcQVJZFO+CDcZynGncYl3PpY+cqYwXY5Dk5+3YoCDTmSUdjn4SEex/Ek4AojODKApmK1AKSSDlhhM4lSb0IwX+H5hBUI53h8eBF9CjjmPT7A2dLJrdHurK6ZhnLUlk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1569394499;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:Reply-To:Subject:To:ARC-Authentication-Results;
 bh=oeqeulBf4Vwbu+50L48ehygqO8U7uSyqvJgVC9qTLRw=; 
 b=WmnqH0n+vesLrDZWLG4nHEZMjGLHX+7C7UMQZEcdQQOUgR5mKKR/Q8A7zOvtWQ7hmbFu058UPp8SvAednFyZKGc9N55d6FmzJWuOzE4i7ko9cH5lRAVxOXdeeOa7XSXtKJ3WA2912OIz+NW5fVxjQ2P1GWW3fCRym4reqpVe8WE=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=patchew.org;
 spf=pass  smtp.mailfrom=no-reply@patchew.org;
 dmarc=pass header.from=<no-reply@patchew.org>
 header.from=<no-reply@patchew.org>
Received: from [172.17.0.3] (23.253.156.214 [23.253.156.214]) by
 mx.zohomail.com with SMTPS id 156939449744494.24444381336264;
 Tue, 24 Sep 2019 23:54:57 -0700 (PDT)
Subject: Re: [RFC PATCH 00/12] Add SDEI support for arm64
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
Message-ID: <156939449538.4188.158567627991892527@8230166b0665>
MIME-Version: 1.0
Resent-From: 
From: no-reply@patchew.org
To: guoheyi@huawei.com
Date: Tue, 24 Sep 2019 23:54:57 -0700 (PDT)
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_235505_987149_70FDDCC3 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [136.143.188.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Reply-To: qemu-devel@nongnu.org
Cc: mark.rutland@arm.com, peter.maydell@linaro.org, marc.zyngier@arm.com,
 qemu-devel@nongnu.org, Dave.Martin@arm.com, qemu-arm@nongnu.org,
 james.morse@arm.com, guoheyi@huawei.com, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Patchew URL: https://patchew.org/QEMU/1569338511-3572-1-git-send-email-guoheyi@huawei.com/



Hi,

This series failed the docker-quick@centos7 build test. Please find the testing commands and
their output below. If you have Docker installed, you can probably reproduce it
locally.

=== TEST SCRIPT BEGIN ===
#!/bin/bash
make docker-image-centos7 V=1 NETWORK=1
time make docker-test-quick@centos7 SHOW_ENV=1 J=14 NETWORK=1
=== TEST SCRIPT END ===

libudev           no
default devices   yes

warning: Python 2 support is deprecated
warning: Python 3 will be required for building future versions of QEMU
cross containers  no

NOTE: guest cross-compilers enabled: cc
---
  LINK    aarch64-softmmu/qemu-system-aarch64
hw/arm/virt-acpi-build.o: In function `virt_acpi_build':
/tmp/qemu-test/src/hw/arm/virt-acpi-build.c:810: undefined reference to `sdei_enabled'
collect2: error: ld returned 1 exit status
make[1]: *** [qemu-system-aarch64] Error 1
make: *** [aarch64-softmmu/all] Error 2
Traceback (most recent call last):


The full log is available at
http://patchew.org/logs/1569338511-3572-1-git-send-email-guoheyi@huawei.com/testing.docker-quick@centos7/?type=message.
---
Email generated automatically by Patchew [https://patchew.org/].
Please send your feedback to patchew-devel@redhat.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
