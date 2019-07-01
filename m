Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48C43C72A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mX4vLLKOikwO3n989GN5C2gulGlhosd2Eb72SGdQIU=; b=mnzjoWk8s0TYxi
	M161Ywc+2Nd90jIu0TC4pF/uSkr85Gqia+MGsWKi/CyzJxjaJXTYF06l14n9ssnDFX9aWy+datq+x
	cp8q01h+CkWrGwaVx6POI4koCLiM4GNDe9yDLu+RmK1yEFqR13JR86Ver/IGPoS0UID3o6XRv9gG4
	bjTUuTXHbbiD9XC3efuwW7m9RECQVmWQ28wRH069P2gRh3qc96I5awFpY/lj0/qyHILaHecM5s2Y3
	7sG2aww2cvy2KHGRema5y437BL1L+E2Q3+fmbAt7hkYL1SOEdbV0sgAkw2nd0DBJrTb2m0TkdZnPJ
	ieQ+2VUUm2I0lAo6UzVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacxf-00088E-TE; Tue, 11 Jun 2019 09:20:59 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacxJ-00083K-T4; Tue, 11 Jun 2019 09:20:39 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id A0DE768B02; Tue, 11 Jun 2019 11:20:07 +0200 (CEST)
Date: Tue, 11 Jun 2019 11:20:07 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH 15/15] riscv: add binfmt_flat support
Message-ID: <20190611092007.GA23387@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-16-hch@lst.de>
 <d8d81820-8f0d-d5d0-fa3d-3376ddcc5358@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d8d81820-8f0d-d5d0-fa3d-3376ddcc5358@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_022038_096769_7774E12C 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Ungerer <gerg@linux-m68k.org>, linux-m68k@lists.linux-m68k.org,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 09:16:43AM +0100, Vladimir Murzin wrote:
> On 6/10/19 10:20 PM, Christoph Hellwig wrote:
> > Use the generic support with arguments are on the stack.  Same as arm
> > and m68k.
> 
> Out of curiosity, what is reason for keeping arguments on the stack?
> 
> ARM port of uClibc has following comment around manipulating of argv/argc:
> 
>         /*
>          * uClinux/arm stacks look a little different from normal
>          * MMU-full Linux/arm stacks (for no good reason)
>          */
> 
> So I though it is kind of legacy.

I just copied m68k and arm.  But dropping this makes the uclinux
crt1 code simpler, so I'll drop the flag for the next version.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
