Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F90E3C545
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5Dn9S8fkqeQE2yg/9/B89QLtK+GOjO2soBLoZwcaHM=; b=UDQdLyIXOPyJz5
	t05xvN/6nCtgrblSqjI9hTZq/WAVY0MfPLrJbvO2iXiaYUYRl2xBylIVaLa6jB6lvBbxb7F5Lypjv
	gFlT2k8BQmfrwfEFiwKQ3Y6QQNhsGBf8t93GNVFkPFxRvTd28LXU2YOOd85BUQcCN405n2cFbnUFo
	sEHR57WRRmdT0mk2STWVgY6arwRQj1/b+qxNWQ6+fvOdgtQUd9R/KSrZEhZuXxB1OekVQySAaeib9
	A9BDsy+ah7LTx7bWXknAzp2FdjzbM6QW6XDCyhMjTerhlGeuzCodDH5xb14tJLlgvDe85RSS4+/L9
	8Fl1fYEqrH0IIuUisOyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habMm-0006cR-6f; Tue, 11 Jun 2019 07:38:48 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habMU-0006bN-PT; Tue, 11 Jun 2019 07:38:35 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 829D868B02; Tue, 11 Jun 2019 09:38:02 +0200 (CEST)
Date: Tue, 11 Jun 2019 09:38:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Greg Ungerer <gerg@linux-m68k.org>
Subject: Re: binfmt_flat cleanups and RISC-V support
Message-ID: <20190611073802.GB21522@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
 <6e5fb7db-1d6f-7d49-553c-edc18f14f641@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e5fb7db-1d6f-7d49-553c-edc18f14f641@linux-m68k.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_003834_405875_1B44D6A5 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 04:51:02PM +1000, Greg Ungerer wrote:
> Hi Christoph,
>
> On 11/6/19 7:20 am, Christoph Hellwig wrote:
>> below is a larger stash of cleanups for the binfmt_misc code,
>> preparing for the last patch that now trivially adds RISC-V
>> support, which will be used for the RISC-V nommu series I am
>> about to post.
>
> Whole series looks pretty good. Just the one comment I made.
>
> I normally take these through the m68knommu git tree,
> if you have no problem with that I'll push it in there.
> It will hit linux-next from there.

Yes, that's fine.  We'll need it to bring up riscv nommu support,
but there is no actual dependency on the patches for it to compile,
just for it to actually be useful.

Btw, it seems like the uclinux-dev list is dead, is there a replacement
for it?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
