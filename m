Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 924E5BD89E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 08:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:To:From:Resent-From:
	MIME-Version:Message-ID:In-Reply-To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Fbrg0TLehrKzj+ZzwPlntYD2dS87oG3/KDAwtla0HOs=; b=U70+54S2zfz8+o
	TdVYrTM9c5Sk0u0s5FXszgwUDiDCNF15LmOrIEx8ux4uvkSIofGAXO1tJi4VAWxVjgRtyvYMG5ZQX
	u0pPv8hwBVi+bhKKlmJe5ajW53713mwgrK1CWHI6cpY8Aq/JQ+dc4nA8Na8c9j228yxTXWWzcCXdI
	a5GutaIu97+fxnFMTph2H5jEXPDDHHb6Fepxcyoo1uWEtUYpFXiSjIzmIH5iGHsne9C7ufuSQw4VE
	EPRTpumMXU0Bk7LgdbJ5YzTpI4QY7LTEv2/jmjRa6UH/M4s4caFpIkF9dZ5I3VDNaLgVsucgmhcOt
	QApjWc/ssj5V8kalVcYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD1G1-00080y-Lt; Wed, 25 Sep 2019 06:58:37 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD1Fo-00080Z-Ch
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 06:58:25 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1569394700; cv=none; d=zoho.com; s=zohoarc; 
 b=d05H5eQZTfn/gVOC4Wf3VXBQClUQL55Tsdly/85GattlAAHwpF/uqSfiHjFveYZLWObcGPUm9w7QsRA0YymVEG+f+E1AUeLEyIKDLy+oGOD8ri1WKUZyQmN+0CHGkFdsOlFXyCTSjCAkB9RMV/6SP69J0B1rZYZUSg353VqzbUA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1569394700;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:Reply-To:Subject:To:ARC-Authentication-Results;
 bh=OuuvftXiZpEYTEx33ue2LCEfHJMeIVr9mOUMhJPV78Y=; 
 b=byq5MDNSx2YkRS19wMpHq8c0/GRqYQMT2dEWS6vZ+luz2tzWp99LjmkddzQ6BjfzsGgheMfC3UJMMGUPlxOXB3XC1kYYpQtIzU1dUPA1U3eOC7o7I1UY9uHKtv8kVbh6Kb71p2IkIWliek9VZdF9CWw14u3YG69croJifCjaP54=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=patchew.org;
 spf=pass  smtp.mailfrom=no-reply@patchew.org;
 dmarc=pass header.from=<no-reply@patchew.org>
 header.from=<no-reply@patchew.org>
Received: from [172.17.0.3] (23.253.156.214 [23.253.156.214]) by
 mx.zohomail.com with SMTPS id 1569394698476125.88900174032096;
 Tue, 24 Sep 2019 23:58:18 -0700 (PDT)
Subject: Re: [RFC PATCH 00/12] Add SDEI support for arm64
In-Reply-To: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
Message-ID: <156939469669.4188.3839690402456058930@8230166b0665>
MIME-Version: 1.0
Resent-From: 
From: no-reply@patchew.org
To: guoheyi@huawei.com
Date: Tue, 24 Sep 2019 23:58:18 -0700 (PDT)
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_235824_458700_900E5F5B 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

This series failed the docker-mingw@fedora build test. Please find the testing commands and
their output below. If you have Docker installed, you can probably reproduce it
locally.

=== TEST SCRIPT BEGIN ===
#! /bin/bash
export ARCH=x86_64
make docker-image-fedora V=1 NETWORK=1
time make docker-test-mingw@fedora J=14 NETWORK=1
=== TEST SCRIPT END ===

  CC      aarch64-softmmu/hw/arm/tosa.o
  CC      aarch64-softmmu/hw/arm/z2.o
In file included from /tmp/qemu-test/src/hw/arm/virt-acpi-build.c:35:
/tmp/qemu-test/src/target/arm/sdei.h:26:10: fatal error: linux/kvm.h: No such file or directory
 #include <linux/kvm.h>
          ^~~~~~~~~~~~~
compilation terminated.


The full log is available at
http://patchew.org/logs/1569338511-3572-1-git-send-email-guoheyi@huawei.com/testing.docker-mingw@fedora/?type=message.
---
Email generated automatically by Patchew [https://patchew.org/].
Please send your feedback to patchew-devel@redhat.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
