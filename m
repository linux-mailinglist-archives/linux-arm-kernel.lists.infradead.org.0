Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CED533F77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WblovhxT193A822ylSuB+lbhb0c5G3kjup9FrgOsnBo=; b=upWj+/r0OtY271
	2tmKph3psjmsPeLfi2ImyIISEuif5ScaELM7yPkNNxtTY6SjZZz1NdeRDfT9wVKnHYByQC58TwaJr
	X5eInjC8lswVgEFXTaEuAdySyZaJh/2NgSUYUTPgaCl1MEtXdR0HAUPv5NSFJNbPLuOSRX7MMfxFD
	DnNtDz7SjT2S9Uud9J1FgFf2iaKDjjzeiaeYH6L0tPCgSNnDYggJwxsRHP8vu7aRR1fHy/PR/d/il
	hPpvsqtrLFax1MwFvzdZWywPgoxlFKtQ4Px/ztrjbzyLuq1hEK90Khk1jflGapdn3g2Yz0ib4D2HA
	vAM/dcUaTSzx2kCdDsJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3Sw-0007EI-8f; Tue, 04 Jun 2019 07:02:38 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3Sp-0007Dz-4g
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:02:32 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 46D4E68B02; Tue,  4 Jun 2019 09:02:05 +0200 (CEST)
Date: Tue, 4 Jun 2019 09:02:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Oleg Nesterov <oleg@redhat.com>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: remove asm-generic/ptrace.h v2
Message-ID: <20190604070205.GA15438@lst.de>
References: <20190520060018.25569-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520060018.25569-1-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_000231_328835_98BD8D0B 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-sh@vger.kernel.org, x86@kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Is anyone going to pick this series up?

On Mon, May 20, 2019 at 08:00:13AM +0200, Christoph Hellwig wrote:
> Hi all,
> 
> asm-generic/ptrace.h is a little weird in that it doesn't actually
> implement any functionality, but it provided multiple layers of macros
> that just implement trivial inline functions.  We implement those
> directly in the few architectures and be off with a much simpler
> design.
> 
> Changes since v1:
>  - add a missing empty line between functions
---end quoted text---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
