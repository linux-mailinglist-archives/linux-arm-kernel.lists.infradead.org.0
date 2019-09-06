Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA68ABC17
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obY/MBg1xqRgNNYVYuZjQddYng6XU2rraRwph+NKk0w=; b=ESPNdtgaZLTgqW
	o5xBRtIDWN4axIrpNe3DvrAwAxTmdqy2eOrFTwlUUhWRkWGOk6jn3d42lV0aJGgWIQyKBygL3G34R
	yXgH7YKe3hT9RSVUbb7MWYhbQtMYgN7VU4rcxzS3Z2JBqiT24MvApnPi/D1im5H07Fz9aEAgfATBE
	+i9va+Gvbm5iIkLNE4AN+d/WGEptdDOUKmi+l5tWHbbq9GdxBz0pQ9uAxQQmMZxEM/YvepnWoYuDh
	j5Ud7TbFKLUnsjniQXhuzBwFFttLs9fTsUjxGD7tPy2h2YezLErnv2hr9hRPvn9oTBlCr5J7j1qh3
	IwGi1EVvWLCv835eKmtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G0W-0003LD-1S; Fri, 06 Sep 2019 15:18:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fzb-0002gU-Jb; Fri, 06 Sep 2019 15:17:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 211D71576;
 Fri,  6 Sep 2019 08:17:43 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C75063F59C;
 Fri,  6 Sep 2019 08:17:40 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 04/17] arm64, hibernate: rename dst to page in
 create_safe_exec_page
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-5-pasha.tatashin@soleen.com>
Message-ID: <2e826560-4005-fa16-8bbb-fc0e25763dcc@arm.com>
Date: Fri, 6 Sep 2019 16:17:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-5-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081743_805872_02176A62 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 21/08/2019 19:31, Pavel Tatashin wrote:
> create_safe_exec_page() allocates a safe page and maps it at a
> specific location, also this function returns the physical address
> of newly allocated page.
> 
> The destination VA, and PA are specified in arguments: dst_addr,
> phys_dst_addr
> 
> However, within the function it uses "dst" which has unsigned long
> type, but is actually a pointers in the current virtual space. This
> is confusing to read.

The type? There are plenty of places in the kernel that an unsigned-long is actually a
pointer. This isn't unusual.


> Rename dst to more appropriate page (page that is created), and also
> change its time to "void *"

If you think its clearer,
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
