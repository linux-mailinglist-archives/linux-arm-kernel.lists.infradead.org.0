Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6EC158596
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b64bPGl2bdlu3M2tf+0nBtqjD18Sf/dB7pqAdJSuDno=; b=MsGrt4cbS/a+Qs
	TKzIbUr+LxggwbLQDWZN/TGq/MwKBPsbxpfIzsEFVPFqjxakaLBMIjBL4S9wQJk1jKzyR8L6JtZMX
	uI0XKa5YKT8RW8lJMj6/8Ykx4w6NbT2qSJ5hhxbmFyD8TQ6+ZGXhUHIWvItftK4DduMKXprQgF1Qi
	6Tn6fE5aOhMYcLDS4Ea/5BXMRyKakg0+0EKP6JW4WupQo6+pqkrZGOr+ZFunxdJ/AeYADWn8AlZU9
	9Fd7NZ8ANp49salJOm4zzT8sVBBmvJKf/S7C0ZLWgVz88DcK8VlYxwz/1CIXlsBrjzwFC35MEozw2
	t+g91kRULS408A5/RNmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Ha2-0000Qf-0m; Mon, 10 Feb 2020 22:31:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HZt-0000Pj-Fj
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:30:54 +0000
Received: from akpm3.svl.corp.google.com (unknown [104.133.8.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F01F20733;
 Mon, 10 Feb 2020 22:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581373852;
 bh=54nkkLQpkIxaBNzxm98DpOSXoNRzc6TpxqRSEf7qsvw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=yE9Hpuo7Y6xYunvkNsz5dQ+EYq88XNQbx27h4AiW1m0qX+2w7LbvaVX3rRyRX8DPz
 huaTwMLmkRUH7T0j7B6bCEsYnzEnSAlU18DlgjTZW+OxjGw3wsZcF3awO5rV2MMhz6
 MzVw96chGFwyZ1YY3N9vhQxwWD7wTdBt0j4OmQ1s=
Date: Mon, 10 Feb 2020 14:30:52 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] asm-generic: make more kernel-space headers mandatory
Message-Id: <20200210143052.1d89f7e26c9bd115d617cc92@linux-foundation.org>
In-Reply-To: <20200210175452.5030-1-masahiroy@kernel.org>
References: <20200210175452.5030-1-masahiroy@kernel.org>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_143053_545780_0CA478C4 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, x86@kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Feb 2020 02:54:52 +0900 Masahiro Yamada <masahiroy@kernel.org> wrote:

> Change a header to mandatory-y if both of the following are met:
> 
> [1] At least one architecture (except um) specifies it as generic-y in
>     arch/*/include/asm/Kbuild
> 
> [2] Every architecture (except um) either has its own implementation
>     (arch/*/include/asm/*.h) or specifies it as generic-y in
>     arch/*/include/asm/Kbuild

(reads Documentation/kbuild/makefiles.rst to remember what these things
do).

Why are we making this change?  What's the benefit?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
