Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFC3E167B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Sem9RNXruBzunnAj9jOuxCIHYHTDb9Ae4TgvcY9/Ms=; b=HCpSuP/V8wHWPN
	7rxMRaVEZamtCM2lYTJcmzZe8IWD94wC70GIj8E8Y+9IKCKBwTv8OV/tahFaHKPIZlpb4Yf1gcGyw
	fyaJ9tfQS9PX8mHM8kk9bhD3IsBuLgC/M/n9qHT2xTXMeDxvB6peyR3tELddiuB0/jN4DqqF8YpcG
	qw8w2CZ+qnD7tO9xak0+i7bCZ1m6y30CX1Z6q9tGBiSk1pA7JgYmVjrnxZh2c9K6YYI1napK2tDTJ
	iTW7yzURqGCkRA2m2tXfNfsimqQOyUaRms71WdO/ZkqakiiyNtT+Vbxo9R0grD8anXUzq+7KkqJll
	LUCVeiPagLgF9sLf7mXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDBW-0002uJ-1R; Wed, 23 Oct 2019 09:44:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDBH-0002RL-En; Wed, 23 Oct 2019 09:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zj5XfgeeJGpKuLcZ9xIMs7v8y6wlyVmuVne2tYjeW1M=; b=tSh0TWsLv0zTB/+cgvenf9Alp
 bJ97VOL1Q4Q/wIuvnA12UaDMLRf78wnJjHpbggLuo4iMGeNglZ1as6l8RASl1TDll+uOHTPG25/pR
 acvy9GNDVqZ7KfBh47xSWs+PI5asIdAhm13tXE6BItpl+2VzngNhBvzuj+zOzsXjQrFsNNJCGjnRC
 AbTb9a1MpJm1fedkHTRfoEwRE0vhBKPst8jQpneLESyhJ64OYxELIPZrr0oJy1xuGi9RVf/xLwxxe
 lNgreE5Mr25YZDU0qQD3g4xFyjZHQ8a3w8RDULX7AAdieMMMEEubl0LuajXBuQGADa2mAfoNErhWi
 9nNtjsKOg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:46362)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iND8K-00047D-6h; Wed, 23 Oct 2019 10:40:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iND7x-0005NN-6r; Wed, 23 Oct 2019 10:40:25 +0100
Date: Wed, 23 Oct 2019 10:40:25 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH 02/12] arm: nommu: use pgtable-nopud instead of
 4level-fixup
Message-ID: <20191023094025.GY25745@shell.armlinux.org.uk>
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
 <1571822941-29776-3-git-send-email-rppt@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571822941-29776-3-git-send-email-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_024353_496691_192C0D3E 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, Jeff Dike <jdike@addtoit.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-alpha@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 12:28:51PM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> The generic nommu implementation of page table manipulation takes care of
> folding of the upper levels and does not require fixups.
> 
> Simply replace of include/asm-generic/4level-fixup.h with
> include/asm-generic/pgtable-nopud.h.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Acked-by: Russell King <rmk+kernel@armlinux.org.uk>

Thanks.

> ---
>  arch/arm/include/asm/pgtable.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/pgtable.h b/arch/arm/include/asm/pgtable.h
> index 3ae120c..eabcb48 100644
> --- a/arch/arm/include/asm/pgtable.h
> +++ b/arch/arm/include/asm/pgtable.h
> @@ -12,7 +12,7 @@
>  
>  #ifndef CONFIG_MMU
>  
> -#include <asm-generic/4level-fixup.h>
> +#include <asm-generic/pgtable-nopud.h>
>  #include <asm/pgtable-nommu.h>
>  
>  #else
> -- 
> 2.7.4
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
