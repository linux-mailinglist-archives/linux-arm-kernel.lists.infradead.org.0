Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467351EA126
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nYIZVQTfICjlaNt43TF/1mZEUaayxDqxdUg7xsdz50E=; b=tXK
	GYMEBbujtLImP9+X2rbw118ocoBjDzs8ZEVTNesQnHzrEhQn1GDTqe6yMKyhCQuWKdUheZBGPhsqt
	v82y4n1OCIV2o+97ocziyY7c7sPeDLPM69fdPQ5idAKOtZKx2s0mQyHzWQNVQnpXa7h6wshCu+e3a
	bjQpBSxxhmQyvCny5Qo7S93aomqi4m/4bbAUytE7fdVWrJK/H3tUUPUSBGtv2KkgRDXTkMM/dVVlX
	wb4EhEBlpZcxFsgb1zJ/zsGcfWRAHsBohTz9k7rpKKRfJ1WJKkqJlmvnyaqqAO+Qnqja83vp/lRM2
	Q4+dM5+/+ro8ztbl/uj8vvQp0aaLf1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfh0m-0002oQ-Oz; Mon, 01 Jun 2020 09:45:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfh0U-0002jk-HB
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:45:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 630231FB;
 Mon,  1 Jun 2020 02:45:19 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 65E7B3F305;
 Mon,  1 Jun 2020 02:45:18 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 0/3] firmware: Add support for PSA FF-A interface
Date: Mon,  1 Jun 2020 10:45:09 +0100
Message-Id: <20200601094512.50509-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_024522_667130_5CCA6D19 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

Sorry for posting in the middle of merge window and I must have done
this last week itself. This is not the driver I had thought about posting
last week. After I started cleaning up and looking at Will's KVM prototype[1]
for PSA FF-A (previously known as SPCI), I got more doubts on alignment
and dropped huge chunk of interface APIs in the driver in order to keep
it simple, and get aligned more with that prototype and avoid scanning
lots of code unnecessary.

Here are few things to clarify:

1. DT bindings
---------------
	I was initially against adding bindings for Tx/Rx buffers for
	partitions. As per the spec, an endpoint could allocate the
	buffer pair and use the FFA_RXTX_MAP interface to map it with the
	Hypervisor(KVM here). However looking at the prototype and also
	I remember you mentioning that it is not possible to manage buffers
	in that way. Please confirm if you plan to add the buffer details
	fetcthing them through ioctls in KVM and adding them to VM DT nodes
	in KVM userspace. I will update the bindings accordingly.

2. Driver
---------
a. Support for multiple partitions in a VM
------------------------------------------
	I am not sure if there is need for supporting multiple partitions
	within a VM. It should be possible to do so as I expect to create
	device for each partition entry under arm-psa-ffa devicetree node.
	However, I don't want to assume something that will never be a
	usecase. However I don't think this will change must of the
	abstraction as we need to keep the interface API implementation
	separate to support different partitions on various platforms.

b. SMCCC interface
------------------
	This is something I messed up completely while trying to add
	support for SMCCC v1.2. It now supports x0-x17 as parameter
	registers(input) and return registers(output). I started simple
	with x0-x7 as both input and output as PSA FF-A needs that at
	most. But extending to x0-x17 then became with messy in my
	implementation. That's the reason I dropped it completely
	here and thought of checking it first.

	Do we need to extend the optimisations that were done to handle
	ARCH_WORKAROUND_{1,2}. Or should be just use a version with x0-x7
	as both input and ouput. Hyper-V guys need full x0-x17 support.

	I need some guidance as what is the approach preferred ?

3. Partitions
-------------
	I am not sure if we have a full define partition that we plan to
	push upstream. Without one, we can have a sample/example partition
	to test all the interface APIs, but is that fine with respect to
	what we want upstream ? Any other thoughts that helps to test the
	driver ?

Sorry for long email and too many questions, but I thought it is easier
this way to begin with than throwing huge code implementing loads of APIs
with no users(expect example partition) especially that I am posting this
during merge window.

Sudeep Holla (3):
  dt-bindings: Add ARM PSA FF binding for non-secure VM partitions
  firmware: Add support for PSA FF-A transport for VM partitions
  firmware: Add example PSA FF-A non-secure VM partition

 .../devicetree/bindings/arm/arm,psa-ffa.txt   |  47 ++++
 drivers/firmware/Kconfig                      |   1 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/arm_psa_ffa/Kconfig          |  22 ++
 drivers/firmware/arm_psa_ffa/Makefile         |   3 +
 drivers/firmware/arm_psa_ffa/driver.c         | 250 ++++++++++++++++++
 drivers/firmware/arm_psa_ffa/partition.c      |  71 +++++
 include/linux/arm_psa_ffa.h                   |  42 +++
 8 files changed, 437 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,psa-ffa.txt
 create mode 100644 drivers/firmware/arm_psa_ffa/Kconfig
 create mode 100644 drivers/firmware/arm_psa_ffa/Makefile
 create mode 100644 drivers/firmware/arm_psa_ffa/driver.c
 create mode 100644 drivers/firmware/arm_psa_ffa/partition.c
 create mode 100644 include/linux/arm_psa_ffa.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
