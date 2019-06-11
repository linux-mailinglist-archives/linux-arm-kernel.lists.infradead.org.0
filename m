Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64F841665
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 22:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COkSc0zT0usCaLlhGjUk/rOE5qJuvx2ofzDo9fsaZEs=; b=jDHh4jB16EiO1V
	gSlXOPj3Y2cU4GTuMRukjfJwadbh6bsu7gzfMhhDVzbESRYZmljsgfc7BRlNvXNfyGGxEOcOFxHpa
	g6gsfl1WZcBZIRg3OYHe/OHy70yjez7EGqoMYjaF+vbDhgRM2DTxhBSGn4IkTe5VYfnKPQ5ZaSBDr
	5tyDnIPMMl/pMemGxiBeismj+LO93vKlYpFFMvB0RBRkJcKz8ySFl93bfLidMb1kLJ32SAEQBoXtm
	PuvP50twUfirsim+MPvZt+2s2+q9sg/iiKc/OpNLnHvDlVu90/152UvCyrSjW4ade0a0V8frHGyyS
	ACozdCbKkYaygpfG756g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hanhB-0004Av-C7; Tue, 11 Jun 2019 20:48:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hanh3-0004AP-Pw
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 20:48:34 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CE6320684;
 Tue, 11 Jun 2019 20:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560286113;
 bh=y33lrlkQja7eoIovWsePDjdEdIHZ/RJoRj29PafhqOI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UgyruavCsSZLLvbVGn/8Url9hdMFqD/vc6cS2xvCxVAaLGSpqRyO7wgSl3uYSlnrC
 3+fJjYU9x+kvkKn62ONAnZk5QMPYKtIt9RU5V2bIySebdJX4pNazzbre4oO5OlK2mG
 81xtH5C+HAjNqK8Itw5roVmiKtRcfGnYRZlw+kVk=
Date: Tue, 11 Jun 2019 13:48:31 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Shyam Saini <shyam.saini@amarulasolutions.com>
Subject: Re: [PATCH V2] include: linux: Regularise the use of FIELD_SIZEOF
 macro
Message-Id: <20190611134831.a60c11f4b691d14d04a87e29@linux-foundation.org>
In-Reply-To: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_134833_863994_82CAAE76 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: keescook@chromium.org, kvm@vger.kernel.org,
 kernel-hardening@lists.openwall.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-mips@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, devel@lists.orangefs.org,
 bpf@vger.kernel.org, linux-ext4@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-arm-kernel@lists.infradead.org, mayhs11saini@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 01:08:36 +0530 Shyam Saini <shyam.saini@amarulasolutions.com> wrote:

> Currently, there are 3 different macros, namely sizeof_field, SIZEOF_FIELD
> and FIELD_SIZEOF which are used to calculate the size of a member of
> structure, so to bring uniformity in entire kernel source tree lets use
> FIELD_SIZEOF and replace all occurrences of other two macros with this.
> 
> For this purpose, redefine FIELD_SIZEOF in include/linux/stddef.h and
> tools/testing/selftests/bpf/bpf_util.h and remove its defination from
> include/linux/kernel.h
> 
> In favour of FIELD_SIZEOF, this patch also deprecates other two similar
> macros sizeof_field and SIZEOF_FIELD.
> 
> For code compatibility reason, retain sizeof_field macro as a wrapper macro
> to FIELD_SIZEOF

As Alexey has pointed out, C structs and unions don't have fields -
they have members.  So this is an opportunity to switch everything to
a new member_sizeof().

What do people think of that and how does this impact the patch footprint?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
