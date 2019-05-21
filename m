Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBB424FBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6PEXjIBcxNKKktzDkgksyYeNAS/7yDy7OB7GEzVh9Jg=; b=nGK2aFtSsicaFn
	LMy1/BBwIYd7NSY+gV30QO2cl2RvLLs3Yiwic8TdYe0uqqytEDY09sHi7Ai/UtzUDxAZ0EvxsoqnT
	NOdFM/Ic3mgoN0AQeCNYf6RgxgWm7VIXWlN5zj2dJNK2/gSm47rvQmONZiu/YZQiRLOgECid09vzh
	faX3IIhB7U19KUGwiRMVrXZQnZrqcz9Aq0HuuFIc0hn31d+XMGti9h5qedA3LTkPayalyngzxzBpC
	TpFJgDCYl3Zl3GGyH/FqgMP+XhM7Sk1TfkuZgq7ieJmOwAYBcaguAuLdNXzJUSbBZQehFcmDnbtWd
	Tf47Kilsihtkn2ikvNhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4Uv-0006YJ-VI; Tue, 21 May 2019 13:08:05 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Up-0006XL-43
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:08:00 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id CB83B206C6;
 Tue, 21 May 2019 15:07:57 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id BC2C5206B9;
 Tue, 21 May 2019 15:07:57 +0200 (CEST)
Subject: Re: [PATCH 1/2] open: add close_range()
To: Christian Brauner <christian@brauner.io>
References: <20190521113448.20654-1-christian@brauner.io>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <aa87e4b1-42ee-52fc-8168-04413dadb460@free.fr>
Date: Tue, 21 May 2019 15:07:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521113448.20654-1-christian@brauner.io>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue May 21 15:07:57 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_060759_309518_A873B063 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Trimming recipients ]

On 21/05/2019 13:34, Christian Brauner wrote:

> For extra paranoia close_range() comes with a flags argument. This can e.g.
> be used to implement extension. Once can imagine userspace wanting to stop

s/Once/One/ ?

> diff --git a/arch/arm/tools/syscall.tbl b/arch/arm/tools/syscall.tbl
> index aaf479a9e92d..0125c97c75dd 100644
> --- a/arch/arm/tools/syscall.tbl
> +++ b/arch/arm/tools/syscall.tbl
> @@ -447,3 +447,4 @@
>  431	common	fsconfig			sys_fsconfig
>  432	common	fsmount				sys_fsmount
>  433	common	fspick				sys_fspick
> +435	common	close_range			sys_close_range

For my information, why did you skip 434?

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
