Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8DC29A2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5fjCSg8DoqbGeeAz12z26ffZ/T9ZC7q38NKsoV4in0=; b=bCahALKJE+n13u
	3RFFalM6S9ShLIr6+gd1A8jFM28KBKS55WRIk777+FjHR1SuFqFmRLQOvalUAZatuta+sYyq2ZPMP
	bz6kTMKwS4+wHkphzXr1xzM3XleeQQqKEHCxuUA5HHDtTew0WZvB12fd/che2m5o/AwuAdW8D2QSW
	47RVOO9Bgia0XdDnmQdpX1OzzOwU69vq6ynWXoGlBso2dFwyUw1TII3Fycq3WAxrzX46euxEWQbi6
	MSOQARDJatv62RZOUa1n5dBaybjm6V1Yw1LAkQYhbTdSuQ/gXgUBOHSOQcvlAsTp7MAU54ZZ+u46o
	z353JTc536rENRV0ysKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUBMD-0002bd-8I; Fri, 24 May 2019 14:39:41 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUBM5-0002bC-UN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:39:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48F1A80D;
 Fri, 24 May 2019 07:39:29 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E44AD3F575;
 Fri, 24 May 2019 07:39:27 -0700 (PDT)
Date: Fri, 24 May 2019 15:39:22 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH 1/2] arm64: insn: Fix ldadd instruction encoding
Message-ID: <20190524143922.GA7870@fuggles.cambridge.arm.com>
References: <20190524125220.25463-1-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524125220.25463-1-jean-philippe.brucker@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_073933_985102_529ED9F7 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kuninori.morimoto.gx@renesas.com, daniel@iogearbox.net,
 catalin.marinas@arm.com, yoshihiro.shimoda.uh@renesas.com, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 01:52:19PM +0100, Jean-Philippe Brucker wrote:
> GCC 8.1.0 reports that the ldadd instruction encoding, recently added to
> insn.c, doesn't match the mask and couldn't possibly be identified:
> 
>  linux/arch/arm64/include/asm/insn.h: In function 'aarch64_insn_is_ldadd':
>  linux/arch/arm64/include/asm/insn.h:280:257: warning: bitwise comparison always evaluates to false [-Wtautological-compare]
> 
> Bits [31:30] normally encode the size of the instruction (1 to 8 bytes)
> and the current instruction value only encodes the 4- and 8-byte
> variants. At the moment only the BPF JIT needs this instruction, and
> doesn't require the 1- and 2-byte variants, but to be consistent with
> our other ldr and str instruction encodings, clear the size field in the
> insn value.
> 
> Fixes: 34b8ab091f9ef57a ("bpf, arm64: use more scalable stadd over ldxr / stxr loop in xadd")
> Reported-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

Cheers, I've picked up this patch with Daniel's Ack, and also the other
patch as-is.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
