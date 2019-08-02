Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8182A7F5A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 13:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r8QVXoeqHNywSmuZqRenUvG29xY1D4GdoSbOHBZdMPk=; b=t+W9dsBGkMoevImVargAqIaCQZ
	bMJf5mTmHT41XJhv5n5jY+Gf8sPcKTEKHdkndkrh+7dkn+acRuEw4G1URHqHIm5c+9rE5P6XYkwQq
	syyPyPBlXTeJgwMT0YjDbwitgZesBPxepXUxylrQJ+TOUX9Gb6z8CluiHDKCi7Z+osmFwyxM8uwl5
	SXIGI4YQpNwVq4lZWviHk5/XJiJC+qkNKZxg0GKiPrSDn50MGCCbAYLVblMfTLbiFg6HHS8bl1yOF
	Tn+epSw7TM26CDeDC3B3ajizcUdELcAp04KNsfeH//u6zleSRb30BbHIRcmjQZiT0gCF2/6CshWTH
	dHoZ4/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVIM-0005Q8-HC; Fri, 02 Aug 2019 11:00:22 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htVIG-0005Po-1v
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 11:00:17 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0CA50E7A5A43691467DE;
 Fri,  2 Aug 2019 19:00:03 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Fri, 2 Aug 2019
 18:59:56 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
Subject: kvm-unit-tests: psci_cpu_on_test FAILed
To: Marc Zyngier <maz@kernel.org>, <drjones@redhat.com>, James Morse
 <james.morse@arm.com>, <julien.thierry.kdev@gmail.com>,
 <suzuki.poulose@arm.com>
Message-ID: <3ddf8766-6f02-b655-1b80-d8a7fd016509@huawei.com>
Date: Fri, 2 Aug 2019 18:56:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_040016_261783_E5C0D6F7 
X-CRM114-Status: UNSURE (   5.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org,
 "Wanghaibin \(D\)" <wanghaibin.wang@huawei.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

Running kvm-unit-tests with Linux 5.3.0-rc2 on Kunpeng 920, we will get
the following fail info:

	[...]
	FAIL psci (4 tests, 1 unexpected failures)
	[...]
and
	[...]
	INFO: unexpected cpu_on return value: caller=CPU9, ret=-2
	FAIL: cpu-on
	SUMMARY: 4 tests, 1 unexpected failures


I think this is an issue had been fixed once by commit 6c7a5dce22b3
("KVM: arm/arm64: fix races in kvm_psci_vcpu_on"), which makes use of
kvm->lock mutex to fix the race between two PSCI_CPU_ON calls - one
does reset on the MPIDR register whilst another reads it.

But commit 358b28f09f0 ("arm/arm64: KVM: Allow a VCPU to fully reset
itself") later moves the reset work into check_vcpu_requests(), by
making a KVM_REQ_VCPU_RESET request in PSCI code. Thus the reset work
has not been protected by kvm->lock mutex anymore, and the race shows up
again...

Do we need a fix for this issue? At least achieve a mutex execution
between the reset of MPIDR and kvm_mpidr_to_vcpu()?


Thanks,
zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
