Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3B129D60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3JIpBHx1bb7QEaVIpROiTkjuLhOGheYVaL/mnhpQr8=; b=oEZ1KGZuLP2SNf
	8+VJezfL5mXU6wT3A1iv44bceLOGadDXEErbuFMmSEQS7Rdpg85WEA7Vk2rEDG3iap43bQgHzgB2R
	241QXDf9pebdK/gWOLYn6iS6MpkpANbsCFyFVjjvtGY5Ygtdn1yro3i5UBpoEWp3KZnRJxWwczMMh
	eWQPcbrLWWfe2qu5mOmTLlrzduoLKO6svwwHaKF2A46VZNjKIzqCSXmCrCK70u6DVmfbgitMJzIIR
	KNqdRS+T5s9wa7A0mcavvv20oEsdTH/oBK4VGPB/6VVM/5Z2CUYrGdWgqm8SFssR1jHGgRQQaZeWD
	B0+kg6ETWD6Q84irLW4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEDE-0007Gl-N8; Fri, 24 May 2019 17:42:36 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUED7-0007Fy-DI
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:42:31 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3EFF5308219F;
 Fri, 24 May 2019 17:42:28 +0000 (UTC)
Received: from treble (ovpn-121-106.rdu2.redhat.com [10.10.121.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 846315F7C5;
 Fri, 24 May 2019 17:42:26 +0000 (UTC)
Date: Fri, 24 May 2019 12:42:24 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Ard Biesheuvel <ard.biesheuvel@arm.com>
Subject: Re: [PATCH] x86/tools: deal with 64-bit relative relocations for
 per-CPU symbols
Message-ID: <20190524174224.pdj2hgyni675xaoi@treble>
References: <20190522174057.21770-1-ard.biesheuvel@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522174057.21770-1-ard.biesheuvel@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 24 May 2019 17:42:28 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_104229_470159_D96BE36D 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arnd@arndb.de,
 guillaume.gardet@arm.com, marc.zyngier@arm.com, x86@kernel.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 jeyu@kernel.org, mingo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 06:40:57PM +0100, Ard Biesheuvel wrote:
> In order to fix an issue in the place relative ksymtab code, we
> need to switch to 64-bit place relative references, which
> require special handling in the x86 'relocs' tool. The reason
> is that per-CPU symbols on x86_64 live in a separate link time
> section, whose load time address is not reflected in the ELF
> metadata, and so relative references emitted by the toolchain
> are guaranteed to be wrong.
> 
> So fix this by extending the handling of 32-bit relative references
> to per-CPU variables to support 64-bit relative references as
> well.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
> ---
> This is a follow-up to [0] and a prerequisite to the change it
> implements: using 64-bit relative references on x86_64 requires
> this handling in the 'relocs' tool and in the decompressor.
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20190522150239.19314-1-ard.biesheuvel@arm.com
> 
> This patch plus [0] build and boot tested with x86_64_defconfig on QEMU/kvm + OVMF.

NACK based on

https://lkml.kernel.org/r/f2141ee5-d07a-6dd9-47c6-97e8fbdccf34@arm.com

-- 
Josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
