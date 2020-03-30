Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002401975F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 09:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBS6QEsYneZvBAefgy6CNCDi17ji0g2KXx3yhICjFMU=; b=rHdtvrobOMv9Wn
	rRzzc4+sE5eDSLBPZAqHTGJQT+IPZ6kTxuNAL4dGLDIyvNQyghPgzJQ6jDr1u8Bfp+GBchVHOjOuT
	g7HkuMw/8dUEcKj4O4D2zojqUhONO5ehonxUE1YaKLwf5wIE35TrLOBGwXaNCFMi2eMSlt0hpcIR9
	WfrMcRfK/gO0hJOpkERKZ1/sBS1rspI1yQCkB3C598IoFLFWqkkq7bqAFK3fEN/4vcJq+QZ7rpw2f
	pk0athulOYYjWx/tbujvonF5eckvqW/9KVU17Ov1HF6NOx/N5qrsLF3GKUNye4f2MCJI2nzaDW1Ay
	jAb1r5RkimdTraOON+jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIp8z-0000gB-7I; Mon, 30 Mar 2020 07:47:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIp8n-0000fk-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 07:47:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id r16so1018336wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 00:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuviainc-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LWOAY4DgjcNLGyhp459FWx1XMXhcO1ETDlLIMfEa72Q=;
 b=sqW8IpF1V79Q8xk7+BFlh+q0ZAm/IGugJy8WeGH7Kpo5nLu6P8tWVmeQcBGwRkEUUA
 PgEtq40FXpqbbZT0h9Av2INmno6ItZiC8SNpFBnYxBy7yY3cramhuwR7FeXK9IhY8+yw
 DV/Zvi86HNYh7yS1YU3rRVA6FvDfKggUgEQY62otSAN/cN+/zsmMNE8+wPIci8kfSklI
 S7pzLspbBefmmBrWCR25G+eAMAOeUot8sUhERunYXsRNFJTXS8NEp8pJdtASKFGqWPPA
 5olN8Frmny2VsX4PZXsNXYxJ2gFsghknjbN41MDHig8lKx2udOs8oTvn1H7sT7kd5MLs
 vIVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LWOAY4DgjcNLGyhp459FWx1XMXhcO1ETDlLIMfEa72Q=;
 b=NXIUH3wVDv9X09qf1OhZ9wqJ+qEBzBCKR1As3AfnvefmAiO424dBVX43H/HiCng9de
 OPwJrjhEeJ3hSFwLmbVMVkgwgWFBcIX67VNkFXZ3MOv6wKjOa5Ndh9vQ3zjkn2UXdC2t
 vzC2+3cVKhtqJZuRxtN3xQrWPBLe9a0RQZrTsCDBBRN+UUeDglkKb+Bm8E3VFP1pBQPp
 SpfVfJ4lPugjAQyg915GQwCxXf9buk/ygGqtEc7wpr1QLAYWDBUWK5AOxoRUf1zXDuiS
 VztFuzU7VBl9Z4t21tOua+3VSh2dsn+KERpo4DXztIfjoKqYvm9JcDZLbbWsGXl59kN2
 VAtA==
X-Gm-Message-State: ANhLgQ2Hpw4kJjB4Jeod5YoBv3hE3fhkb6LWIkcibIabFqY4i4MWUBro
 15IxUHbVg0FL84zcC054VTGc2g==
X-Google-Smtp-Source: ADFU+vu0UL2EecnqgEV0Rpo8wZsnkzDV/O1+EUQ6YPNpPvgeonkHJEt+JQXkghaKvi8juGhZ5e7FeQ==
X-Received: by 2002:a1c:648b:: with SMTP id
 y133mr11511761wmb.173.1585554443321; 
 Mon, 30 Mar 2020 00:47:23 -0700 (PDT)
Received: from bivouac.eciton.net (bivouac.eciton.net.
 [2a00:1098:0:86:1000:23:0:2])
 by smtp.gmail.com with ESMTPSA id l10sm20495745wrq.95.2020.03.30.00.47.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 00:47:22 -0700 (PDT)
Date: Mon, 30 Mar 2020 08:47:21 +0100
From: Leif Lindholm <leif@nuviainc.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] efi/libstub/arm64: avoid image_base value from
 efi_loaded_image
Message-ID: <20200330074721.GV22097@bivouac.eciton.net>
References: <20200328205809.23825-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328205809.23825-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_004725_630688_CA543C6A 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Boqun.Feng@microsoft.com, linux-efi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mikelley@microsoft.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 21:58:09 +0100, Ard Biesheuvel wrote:
> Commit 9f9223778ef3 ("efi/libstub/arm: Make efi_entry() an ordinary
> PE/COFF entrypoint") did some code refactoring to get rid of the
> EFI entry point assembler code, and in the process, it got rid of the
> assignment of image_addr to the value of _text. Instead, it switched
> to using the image_base field of the efi_loaded_image struct provided
> by UEFI, which should contain the same value.
> 
> However, Michael reports that this is not the case: older GRUB builds
> corrupt this value in some way, and since we can easily switch back to
> referring to _text to discover this value, let's simply do that.

It is not clear to me how "older GRUB builds" would differ here.
I think more investigation is needed before making that claim.
My suspicion is that some (old) version of non-upstream, shim-enabled
distro-specific build is playing a part.

So, do we have the option for more detailed investigations, or can we
vague the claim up to say "some GRUB builds seen in the wild, based
on an upstream 2.02" or suchlike?

/
    Leif

> While at it, fix another issue in commit 9f9223778ef3, which may result
> in the unassigned image_addr to be misidentified as the preferred load
> offset of the kernel, which is unlikely but will cause a boot crash if
> it does occur.
> 
> Finally, let's add a warning if the _text vs. image_base discrepancy is
> detected, so we can tell more easily how widespread this issue actually
> is.
> 
> Reported-by: Michael Kelley <mikelley@microsoft.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/firmware/efi/libstub/arm64-stub.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
> index 9254cd8ab2d3..db0c1a9c1699 100644
> --- a/drivers/firmware/efi/libstub/arm64-stub.c
> +++ b/drivers/firmware/efi/libstub/arm64-stub.c
> @@ -116,6 +116,7 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
>  		 * Mustang), we can still place the kernel at the address
>  		 * 'dram_base + TEXT_OFFSET'.
>  		 */
> +		*image_addr = (unsigned long)_text;
>  		if (*image_addr == preferred_offset)
>  			return EFI_SUCCESS;
>  
> @@ -140,7 +141,11 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
>  		}
>  		*image_addr = *reserve_addr + TEXT_OFFSET;
>  	}
> -	memcpy((void *)*image_addr, image->image_base, kernel_size);
> +
> +	if (image->image_base != _text)
> +		pr_efi_err("FIRMWARE BUG: efi_loaded_image_t::image_base has bogus value\n");
> +
> +	memcpy((void *)*image_addr, _text, kernel_size);
>  
>  	return EFI_SUCCESS;
>  }
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
