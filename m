Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4C067989
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 11:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hBM4brrd3pQqL8A56QvAXCmxiHQ0PzE4hn7KmSJHH5o=; b=hIrr/JD8dSu/oLxAKpvRht3XnR
	Eho5lLYnF6yoSl1EMg2bE7KHQ7j2QkCh2T6VDaqy8xFSVkJQpZ/3jkR4ouZVN7yEdE8lreg4yzR0r
	F4a3VI3ZxxoceWOctZq/sgPlU0065kRTK1W2TVmMpG0hpZ1B1Rmb2nJuAAo+TIH2q9rXFf5HTXBcT
	PNoQ3LsEadi0wmN23rwL6kIjE7SWmRA67kcWdAe5Dux8xdTIN2U6TWsNOVeWe8ju+tuqfa4Aizjzn
	fVR+ZiJDA/Wx0JcfY62mgeLRcYJe917pUm+0dPmV1SzaKzXXTuc6UwWZBO0FwGinUE5MZP7kZPSLe
	hWQe3cng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmEjo-0001j0-QP; Sat, 13 Jul 2019 09:54:40 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmEjR-0001ib-1k
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 09:54:18 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D921CB7764657033EA41;
 Sat, 13 Jul 2019 17:54:05 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Sat, 13 Jul 2019
 17:53:58 +0800
To: <qemu-arm@nongnu.org>, <qemu-devel@nongnu.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
From: Guoheyi <guoheyi@huawei.com>
Subject: [RFC] Add virtual SDEI support in qemu
Message-ID: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
Date: Sat, 13 Jul 2019 17:53:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_025417_352062_D0658A4B 
X-CRM114-Status: UNSURE (   4.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, James.Morse@arm.com,
 wanghaibin 00208455 <wanghaibin.wang@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

Do it make sense to implement virtual SDEI in qemu? So that we can have 
the standard way for guest to handle NMI watchdog, RAS events and 
something else which involves SDEI in a physical ARM64 machine.

My basic idea is like below:

1. Change a few lines of code in kvm to allow unhandled SMC invocations 
(like SDEI) to be sent to qemu, with exit reason of KVM_EXIT_HYPERCALL, 
so we don't need to add new API.

2. qemu handles supported SDEI calls just as the spec says for what a 
hypervisor should do for a guest OS.

3. For interrupts bound to hypervisor, qemu should stop injecting the 
IRQ to guest through KVM, but jump to the registered event handler 
directly, including context saving and restoring. Some interrupts like 
virtual timer are handled by kvm directly, so we may refuse to bind such 
interrupts to SDEI events.

Any comment or suggestion will be really appreciated.

Heyi




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
