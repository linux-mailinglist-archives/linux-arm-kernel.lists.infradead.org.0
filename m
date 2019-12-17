Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807161228AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKX1kp6X+eqFdXCb4ZlWc+iRdWDKzRBJDs/jPW6MJoA=; b=cLoMq0Gy7iXg27
	14sjuhKHAysnLAwRhDyPjxl8Vkwy+vV3QyOJe28NuaG+1MfH8/fpWiyB/hhttX31EDffRPQgAmJy4
	MmfWkHPwWsG5mr8f4P0zZOb++tDGqhqnNHJdKYq1SWRQOYqQU+s9EiczluCcC/Ie1OF8eJtx939vz
	pfVUa0EvT15GAOYD6knpeDOWyEfJ14dHI+Uqz+ma1LmKaGaMnwkw3cEtVw7sWLl88BWOqgXl6g3lU
	IZtxrrvKh1fS7WTntcJDIjNqqOfnVlC+ppWfMR4IdVEv87ZH0KenPA0iZbWRANoy2tysrNFnm0waN
	8lthdKc6BmOKPlZxrTLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihA6B-00017L-E9; Tue, 17 Dec 2019 10:29:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihA5y-00015y-Cf
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xIsVCSCddGcBczzhrJmpWdldvcvD8/SOoTohcqfDdpc=; b=Mpu/CQwP505C8biFNOIztuq5H
 RtEPYQbkrn288Xfq4TohizM2O4bz7zIrNfn3c8ST3u+aEsIkzbBO1wXLiCanTbMxTeihL7x4uRdzQ
 2d9Kz0AvwC1Qrihh/ZBP1c1FMweIV/RGnSDW/GSgfW/ooLn2T+plH8ltRcjO/62630LsxyJXhBpjG
 PXipzJ9uizk93dUJzqUmdhyNdlGkfyiwivC6qf8/i7mv03DCiVr2CrHvNctKEXbeRpv07ZOruJhdJ
 193cpkjwBS8sxOvmph3UfpU7J++zH9R9NH4IkEiTTm7L+vzn6x/MDq4SV6pDDqm2SGuotgBhSiHW7
 gnMQEQL9w==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:50030)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ihA5j-0005M5-7h; Tue, 17 Dec 2019 10:28:35 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ihA5f-0003KB-Ca; Tue, 17 Dec 2019 10:28:31 +0000
Date: Tue, 17 Dec 2019 10:28:31 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vincent Whitchurch <vincent.whitchurch@axis.com>
Subject: Re: [PATCH] asm/sections: Check for overflow in memory_contains()
Message-ID: <20191217102831.GP25745@shell.armlinux.org.uk>
References: <20191217102238.14792-1-vincent.whitchurch@axis.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217102238.14792-1-vincent.whitchurch@axis.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_022851_571003_964C13A1 
X-CRM114-Status: GOOD (  18.31  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Whitchurch <rabinv@axis.com>, arnd@arndb.de,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org, treding@nvidia.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 11:22:38AM +0100, Vincent Whitchurch wrote:
> ARM uses memory_contains() from its stacktrace code via this function:
> 
>  static inline bool in_entry_text(unsigned long addr)
>  {
>  	return memory_contains(__entry_text_start, __entry_text_end,
>  			       (void *)addr, 1);
>  }
> 
> addr is taken from the stack and can be a completely invalid.  If addr
> is 0xffffffff, there is an overflow in the pointer arithmetic in
> memory_contains() and in_entry_text() incorrectly returns true.
> 
> Fix this by adding an overflow check.  The check is done on unsigned
> longs to avoid undefined behaviour.
> 
> Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
> ---
>  include/asm-generic/sections.h | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
> index d1779d442aa5..e6e1b381c5df 100644
> --- a/include/asm-generic/sections.h
> +++ b/include/asm-generic/sections.h
> @@ -105,7 +105,15 @@ static inline int arch_is_kernel_initmem_freed(unsigned long addr)
>  static inline bool memory_contains(void *begin, void *end, void *virt,
>  				   size_t size)
>  {
> -	return virt >= begin && virt + size <= end;
> +	unsigned long membegin = (unsigned long)begin;
> +	unsigned long memend = (unsigned long)end;
> +	unsigned long objbegin = (unsigned long)virt;
> +	unsigned long objend = objbegin + size;
> +
> +	if (objend < objbegin)
> +		return false;
> +
> +	return objbegin >= membegin && objend <= memend;

Would merely changing to:

	return virt >= begin && virt <= end - size;

be sufficient ?  Is end - size possible to underflow?

>  }
>  
>  /**
> -- 
> 2.20.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
