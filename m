Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E723C5A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Do0cmkRRsspEvvMInx9PXESHTnPvpBuOrEXROQxSi0U=; b=bZ0wjb/HxVPA6r
	Fm1vazeUhHDaiJQuniXZbFwdh8xbByVFlYdqqlvTKXVEuv9gPt8P3qVSOw3B+Li06ynR0F0EWLxUR
	MJ2TwGyTq7Oz/mHWKMogI+a7FAPAjDTJPpqAX4S+BPlYtZLAk/5/9ns3YCM4W/+jr6FH7pnOrmyU9
	ISsJCeW5SktkgWAwX6n1wejdi9Z+Jt6N3ZDY9jI3qvnGfd/95zhyfIXLLf8xqZpZnjomf3O6q+snz
	UdvxLaBDe8QjcMyNESWsvIC0+gv/14LPL9lVqikkv9wFprOy8oTY50pqbJeRffblhJe/7RKxThbTs
	3uBUbUFps010ct/OUl8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habst-0002ZS-EM; Tue, 11 Jun 2019 08:11:59 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habse-0002Yx-U1; Tue, 11 Jun 2019 08:11:46 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id A40C568B02; Tue, 11 Jun 2019 10:11:17 +0200 (CEST)
Date: Tue, 11 Jun 2019 10:11:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: binfmt_flat cleanups and RISC-V support
Message-ID: <20190611081117.GA22110@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
 <4f000219-4baf-b03e-9003-26482640d3de@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f000219-4baf-b03e-9003-26482640d3de@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_011145_121472_9D1969F6 
X-CRM114-Status: UNSURE (   6.65  )
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

On Tue, Jun 11, 2019 at 09:05:45AM +0100, Vladimir Murzin wrote:
> I'm wondering if you have a branch with these changes so I can give
> it a try on ARM NOMMU platforms?


    git://git.infradead.org/users/hch/riscv.git riscv-flat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
