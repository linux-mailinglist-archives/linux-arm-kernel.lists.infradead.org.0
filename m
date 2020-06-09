Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FAC1F3F7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNSNyaYZegQYk5Ea0ECZ9r3uCThlTwcJNE0abQiwrqQ=; b=J6dXtidoUEtN3K
	DTkKM50bNaz2PlVX5NrR05KkytNEE4zz+nPFR3oIQGJNEFpHLAPUp8M2wE8DBCWtXbZO+lB9D8nKn
	12GtnfyPcnLk9SNPfGtQDsTOrVDRNM7P8yCMm0P2IbzRntqimyX+5wdvlE7v1QGbiOpz2VPGwnWf/
	7M9PNJb1sujsHUNuevK1sdB2yRTwOJPFC1q3y6lQijv4PbndvZogW5T42N5VJPrDzJ9dc26A9QQgH
	QjX8pnYsVjjpjB+852DwdECoNVW9cr0QbBJso1sa+FOMYgei6YDkdL3JhXmYYiDpozjSodp7nV3x9
	YrRWJPSxjdRA0pLQ+z/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigJF-0000lP-05; Tue, 09 Jun 2020 15:37:05 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigJ2-0000kq-3m
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:36:53 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B476668B02; Tue,  9 Jun 2020 17:36:46 +0200 (CEST)
Date: Tue, 9 Jun 2020 17:36:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: dillon min <dillon.minfei@gmail.com>
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if
 device support reserved memory
Message-ID: <20200609153646.GA17969@lst.de>
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
 <CAL9mu0+__0Z3R3TcSrj9-kPxsyQHKS9WqK1u58P0dEZ+Jd-wbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL9mu0+__0Z3R3TcSrj9-kPxsyQHKS9WqK1u58P0dEZ+Jd-wbQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_083652_328734_E2BFBB98 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux@armlinux.org.uk, linux-stm32@st-md-mailman.stormreply.com,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, tglx@linutronix.de,
 info@metux.net, hch@lst.de, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 11:22:24PM +0800, dillon min wrote:
> Hi Vladimir,
> 
> Thanks for reviewing.
> 
> Hi Christoph Hellwig,
> 
> I just want to know if kernel dma mapping/direct is focused on
> platforms with MMU.
> leave arch code to handle dma coherent memory management themself for
> no-MMU platform.

No, I'd really like to consolidate everything that isn't overly
arch specific eventually.

> 
> so, you just return error code in kernel/dma/mapping.c,direct.c
> without CONFIG_MMU defined ?
> which means dma-direct mapping doesn't support !CONFIG_MMU is not a
> bug, but design as it's.
> or, just return error code currently, will add dma direct mapping
> support for !CONFIG_MMU in the
> future?
> 
> As Vladimir Murzin's suggestion has changes in kernel code, I need
> your input to get
> the design goal about dma-direct mapping, thanks.

Can someone repost the whole patch?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
