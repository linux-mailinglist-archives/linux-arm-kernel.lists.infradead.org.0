Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7351DFC8A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:18:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t67kRdgptQvvridEc7SjDpTPiuN8Dw5yzsYFfDC7RnM=; b=bj8Z9wFf+iLIUC
	YzR3DoqHfB+vgXpruDbOMjiBo2VSqWKMsifbU9ElWQhyr4pWLG3PL2l8Pd8N24lh1TX1a0Je1amwj
	3nUZE2/ldSRT/Ihdu743xkIfq+yjvXdPSj65bSwUefzK21CJ5qBgz4eG+LwHu+Lqynvs94SLijiYR
	G0GkhgU++bvqOEyw0iClAn3a3HG+ViNXsa044cD8cJqChOXefRUPj1papW0ZZ9rAIdSDki3USRbPx
	luowRQMTJafVnW87Mn7hZFgeOvKRmxajx0FH5KUlH8NG3td3fpiyq+7r6ZsdIlOTIdE1zRq2XZ4Sg
	Yz3x/oorP9Mek+lCDCAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFwh-0005f6-Gi; Thu, 14 Nov 2019 14:18:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFwX-0005dq-T5
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:17:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 44BE730E;
 Thu, 14 Nov 2019 06:17:51 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1736A3F52E;
 Thu, 14 Nov 2019 06:17:49 -0800 (PST)
Date: Thu, 14 Nov 2019 14:17:45 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [kvm-unit-tests PATCH 09/17] arm: gic: Add test for flipping
 GICD_CTLR.DS
Message-ID: <20191114141745.32d3b89c@donnerap.cambridge.arm.com>
In-Reply-To: <7ca57a0c-3934-1778-e3f9-a3eee0658002@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-10-andre.przywara@arm.com>
 <2e14ccd4-89f4-aa90-cc58-bebf0e2eeede@arm.com>
 <7ca57a0c-3934-1778-e3f9-a3eee0658002@arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_061753_980355_5647016E 
X-CRM114-Status: UNSURE (   9.91  )
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
Cc: Andrew Jones <drjones@redhat.com>, kvm@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 13:39:33 +0000
Vladimir Murzin <vladimir.murzin@arm.com> wrote:

> Hi,
> 
> On 11/12/19 4:42 PM, Alexandru Elisei wrote:
> > Are we not testing KVM? Why are we not treating a behaviour different than what
> > KVM should emulate as a fail?
> 
> Can kvm-unit-tests be run with qemu TCG?

Yes, it does that actually by default if you cross compile. I also tested this explicitly on TCG: unlike KVM that actually passes all those tests.
If you set the environment variable ACCEL to either tcg or kvm, you can select this at runtime:
$ ACCEL=tcg arm/run arm/gic.flat -smp 3 -append irq

Cheers,
Andre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
