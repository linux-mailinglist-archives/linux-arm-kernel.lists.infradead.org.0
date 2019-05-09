Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E29D189CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 14:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ln4O9DWoh2+vTXtHOEImiC+bzymkcPzyP0xFp3N0P4=; b=dEuxTxfDngalQz
	XCDcbgChXrIFRm7djh9jPOWREvCZpvYVMZMhzIEma1d2gX0bUUj0TGtV2oJuY4+9QQSir/p44gTWn
	t1c9GL3Itft/5ULt+FDdNQK/CthLI/Zz7KDE9mKNrK9SiNa41idznJwxkUszSy6/osZNpE9gRfnJ5
	r1Bgp8A7Re/KjIx79Td1F8sVcm9OcluGJYOvaRx4bqN2ZIwqZM7whq4kkgZVNsCr8VTI0pfhtGdjQ
	Sjzu+ops69Ofnz/uUR8qP6QIguH/uj8/LR7nO8wEgSGy1Of6Mr2d4hrHlp+3tWY85mZdSOK8AfTdj
	v9Bn9DRIi5GkbFmSeG0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiDU-0002rH-CS; Thu, 09 May 2019 12:32:04 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiDM-0002qV-U9
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 12:31:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE3BBA78;
 Thu,  9 May 2019 05:31:54 -0700 (PDT)
Received: from [10.1.196.69] (e112269-lin.cambridge.arm.com [10.1.196.69])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7464E3F7BD;
 Thu,  9 May 2019 05:31:53 -0700 (PDT)
Subject: Re: [PATCH v6 1/3] arm64: KVM: Propagate full Spectre v2 workaround
 state to KVM guests
To: Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>
References: <20190503142750.252793-1-andre.przywara@arm.com>
 <20190503142750.252793-2-andre.przywara@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <af5cc288-57f9-d103-13b1-37d1a0794c5f@arm.com>
Date: Thu, 9 May 2019 13:31:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503142750.252793-2-andre.przywara@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_053156_975549_33F7D80D 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, Eric Auger <eric.auger@redhat.com>,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/05/2019 15:27, Andre Przywara wrote:
> Recent commits added the explicit notion of "workaround not required" to
> the state of the Spectre v2 (aka. BP_HARDENING) workaround, where we
> just had "needed" and "unknown" before.
> 
> Export this knowledge to the rest of the kernel and enhance the existing
> kvm_arm_harden_branch_predictor() to report this new state as well.
> Export this new state to guests when they use KVM's firmware interface
> emulation.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Steven Price <steven.price@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
