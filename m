Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9718F4F5D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 15:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VIgfIjHGtk90BmjA1tQs6Q5/Lf9wBZ3eDJ3CRACoLU=; b=W18HBJXqSkdlcZ
	RIkuL7xvZeeoMeeRrf3vL+NaZ7BLKOGuIdpABtcUGG+VmrHRAeBYna7spQtY+DLlZ40bhlri5HHtS
	YEr6INoIMbTd5lWsxWtmFlx0SUrFPsxTmEgSOSN46tTTGvb1PExry6wqCC83JRjASfOQIc4fRvI9Q
	AcXQ/6Cd3VjKe5+3XTAe0SNbOW75Ef9TmGpiwUivX5f7T3V5M2CZMIO3HgC8KpQfGPyVA3rmKkCEt
	HOxILdNCsH9g03bN5JqRdIxvH+5lHUhRRNCvR4QpoSrIa1ICcPh33VzxLwZhgpOaiHPuWjWpOwrs3
	/oaJkTHonXhToku4tcnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hefjM-0001qF-2F; Sat, 22 Jun 2019 13:06:56 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hefjC-0001p3-S0; Sat, 22 Jun 2019 13:06:48 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 555F220020;
 Sat, 22 Jun 2019 15:06:37 +0200 (CEST)
Date: Sat, 22 Jun 2019 15:06:36 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] kbuild: compile-test global headers to ensure they are
 self-contained
Message-ID: <20190622130635.GA24262@ravnborg.org>
References: <20190621163931.19397-1-yamada.masahiro@socionext.com>
 <20190621175134.GB16409@ravnborg.org>
 <CAK7LNATz1iuG0Moab60gMSbVU8PJAmrLn27K8HK_1zQ0qeh26w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNATz1iuG0Moab60gMSbVU8PJAmrLn27K8HK_1zQ0qeh26w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=_h6k6vx1-o-evQNg5jYA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_060647_085047_7EEC5F1E 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Masahiro

> At first, I tried to split Makefile per directory,
> and add header-test-y one by one.
> 
> I think you expect they look like this:
> 
> 
> include/Makefile:
> 
> subdir-y += drm
> subdir-y += linux
> subdir-y += media

So far we agree.

> include/drm/Makefile:
> 
> header-test-y += drm_cache.h
> header-test-y += drm_file.h
> header-test-y += drm_util.h
> ...
On this level it would be better to do:
header-test-y += $(call find_all_header_files)

# drm files that are not self-contained
header-test-n += drm_legacy.h

Likewise for all subdirs below include/
and include/linux should maybe be split up a little too.
Maybe include/uapi/ would need to be slipt a little.

Then we have a manageable number of Makefiles.
New header files are automatically checked and
we have a list of files to fix.
If for example drm/ have too much failures to a start
then we can add that directory to the higler level Makefile later.

The above is more or less what you already started,
but the difference is that we have it pushed down one or two
directories.

The header-test-n logic could be moved to the generic part,
and a helper could be made to find all header files.
Then the Makefiles would be more or less trival, with all the
Kbuild magic hidden away.

> In my analysis, 70% of headers are already conf-contained.
> After some fixups, 95% of headers can become self-contained.

Sounds good. And we do not want 100%, but close...

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
