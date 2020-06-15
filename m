Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963E41F9DAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eE5E4j8A3evYAZ7lggF8SXkq8g/MHqzisXR0MrD/kik=; b=ip3q4YT2o0IbAo
	VNk95sUGN0SLGdJ2EexOUEUpOOege5+MlCKr4+D7rHr0N9njveC4oChK8YApF+gh6Ol++Ja3qEvP4
	6gSsGtGE8TtpU/WIbE9p04w1ENRosganMBQzgl1hDvxDqqpnvz28kb/ZXSFvSQayiZ4jpYAsLzGbi
	xsZbxKTN/J4k9RFaz7Joc6zl2C37VeM8NVeYfwH/5yW474jzbCn0DVckQJyeITmBWQh7THY/gGxol
	erFRnrbgrBGqgr55GkM1hERtRL2KS9PptbBrEYs5sWhGccnTS3DlYLtxi3Czynyur0DZhAS92Kb5h
	nBaC3EgVGlZsLA33s0Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksBB-0004WI-OS; Mon, 15 Jun 2020 16:41:49 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksAz-0004Vq-0p
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:41:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 14E2268AFE; Mon, 15 Jun 2020 18:41:34 +0200 (CEST)
Date: Mon, 15 Jun 2020 18:41:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Brian Gerst <brgerst@gmail.com>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
Message-ID: <20200615164133.GA23493@lst.de>
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
 <20200615141239.GA12951@lst.de>
 <CAK8P3a2MeZhayZWkPbd4Ckq3n410p_n808NJTwN=JjzqHRiAXg@mail.gmail.com>
 <20200615144310.GA15101@lst.de>
 <CAK8P3a17h782gO65qJ9Mmz0EuiTSKQPEyr_=nvqOtnmQZuh9Kw@mail.gmail.com>
 <20200615150926.GA17108@lst.de>
 <CAMzpN2htYX7s6pmRg-c8qwZL1f1_+sB=ztDG_L=617hWsm-=8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMzpN2htYX7s6pmRg-c8qwZL1f1_+sB=ztDG_L=617hWsm-=8g@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_094137_210264_C8789BF3 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 11:33:49AM -0400, Brian Gerst wrote:
> If you move those aliases above all the __SYSCALL_* defines it will
> work, since that will get the forward declaration too.  This would be
> the simplest workaround.

That compiles and also passes my exaustive x32 tests (chroot + ls -l).

This is the updated version:

http://git.infradead.org/users/hch/misc.git/commitdiff/c8d319711ad2f53be003ae8e9be08519068bdcee

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
