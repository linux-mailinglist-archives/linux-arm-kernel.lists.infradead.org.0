Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FE71B067A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:23:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+aNeY7N9iU0rKnFYkHk6m3E+KbJmTHX+Xg2/0R0yTk=; b=qhaqpqFB/JKgTJ
	wLrlYRtM4mU6K0CH+iHtKsdmekx3o22XVYY9Ans2hLkc6C++xh9MYY5AFcc62QJbHtKmIemlz3D8e
	7ndkaXUFcnuKDx4Nau6ye/0uR0+Vzkk0HudyJtWXLAws2pYvwSfWbpSchiEQz51myNUY4QSW5mnVn
	RlXxwlALC6dsxDmBatAuJxYmfHSOAgBqe4xaGQyPqVN9Gcwvas93m3IgJYbNTuvBKiK2mM4IBgG65
	+FXzjGc11oUFcP3lNwhK+K4gBt1R4hbHGer731vHZMgnd98SS77YWIZdhIqH1KML8nbcjtpbi1P0A
	jQtUEYtR2Q2k3Cs+eDfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTa6-0003F5-7I; Mon, 20 Apr 2020 10:23:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTZw-0003E3-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:23:06 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A185868C4E; Mon, 20 Apr 2020 12:22:59 +0200 (CEST)
Date: Mon, 20 Apr 2020 12:22:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: James Morse <james.morse@arm.com>
Subject: Re: stop messing with set_fs in arm_sdei
Message-ID: <20200420102259.GA7862@lst.de>
References: <20200414142302.448447-1-hch@lst.de>
 <cc0b5d01-bd19-3437-a76e-2d1daa86f9a4@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc0b5d01-bd19-3437-a76e-2d1daa86f9a4@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_032304_952900_AEADF886 
X-CRM114-Status: GOOD (  16.37  )
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
Cc: Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 04:59:16PM +0100, James Morse wrote:
> Hi Christoph,
> 
> On 14/04/2020 15:23, Christoph Hellwig wrote:
> > can you take a look at this series?  I've been trying to figure out
> > what the set_fs in arm_sdei is good for, and could not find any
> > good reason.  But I don't have any hardware implementing this interface,
> > so the changes are entirely untested.
> 
> Its a firmware thing, think of it as a firmware assisted software NMI.
> 
> The arch code save/restores set_fs() because the entry code does that when taking an
> exception from EL1. SDEI does the same because it doesn't come via the same entry code. It
> does it in C because that C is always run before the handler, something that isn't true
> for the regular assembly version.
> 
> The regular entry code does this because any exception may have interrupted code that had
> addr_limit set to something else:
> https://bugs.chromium.org/p/project-zero/issues/detail?id=822
> 
> and the patch that fixed it: commit e19a6ee2460b "arm64: kernel: Save and restore UAO and
> addr_limit on exception entry"

Can you throw in a comment documenting this better?  And pick up the
first patch while we're at it - no need to expose such low-level
mechanisms to modules.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
