Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 510D31D8B4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxeU9wl1N4ab6LH6vZj42oX+zySLU9eyq4Zh8ZU/l2w=; b=HKJDqZjLa813p0
	/tbjSHzJtAU2P6ouZLViIxHD4BbKYPEleR7y9kTvwdrIJFZFLSUHag5PYjFY7CcchWSgkZN7cG7NZ
	m5kmDC/bt2WCSe+uAQBINctwTC9ygxInjRCB+52T+9I/OkQXqtP0CT6L7/ZrDxjPlzxc1zKYMaDs3
	CZoPNzis1PSze5TkCu0bhMTgH1YcI/xD+3rocrW+4cOz2rMjCqS2f5E+9S0Qk6JV+Ez767vCUjY/e
	bBKTB54fY4o70gwLFzNfCwIZ/zLOXcPXjuYcdCsFmcHB/DvuCwNzo5ynXthCOfEEQSstSwH8FNhGD
	6/4Ff/iV0973HYVe6O5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaogz-0004mT-Nx; Mon, 18 May 2020 22:57:05 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaogo-0004hk-WA
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 22:56:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id v63so5629943pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 15:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0xdAxuqwLSAR4wU4rxIu2ac9SKwG/LSGWIocJ0QtT6w=;
 b=jXg2wpaX0CwdrQaS00pYNMaIEh7CEHl6tslWLzd+iibMUU5UvqbxUyYj7ffChZY0GG
 YPb3Xi6zizo+p5J8WbYJSzHS5vb5CRReaQbq96YarkGjGc4CIWFgQv6lHDJW0Jg0GT1/
 9qIMvrY3ACO9C9XGbr/hZOfQqV7NmF2J6mWH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0xdAxuqwLSAR4wU4rxIu2ac9SKwG/LSGWIocJ0QtT6w=;
 b=RpQGJ3PnFV0eODkKH9kDvMxG3Z64Q/bQ09N/adN8OonD/gpPU6KsaYQB7CCYGJ8PEo
 4eiTPYbWF4CUnnQu4vp8vSRswKFNiPNuwgNbWd+8Nvx0wNwXN6Gm2pTDFK4zNIPcWDKk
 yQJTRKCGZZp+70YD7pI1/do6pmewu4yBIKY/CDyK4es+wFt45EvES3ywUh41b2gk/3/l
 UatyCAo40zjSQ++U8VzimzKcvyvzJcuutQvAvEuNcsVzl3hvNB50EUwrnvX6lpTf9eDA
 +Gu76pcBj3LJGyk7/owiD6UwX5HlVY86eegFxlE+Rj+fYboR5GYkqRC0rS+cQavpbEvY
 v2mw==
X-Gm-Message-State: AOAM532i9b7V3CxlA66s29nzI7siVOYqvCBbqRzv54sRrm33Tpwz4UTq
 i4jIW2NEdP9ua3jyEvRcCWR+vgpHgGkpUQ==
X-Google-Smtp-Source: ABdhPJyKF51sCRODFCXTmnA674qG1KM8BNV3JMUFs5tmiJRRPukmQtLiPYLhoGwBRe+S+Lctt3Azbw==
X-Received: by 2002:a63:3545:: with SMTP id c66mr2903262pga.82.1589842613663; 
 Mon, 18 May 2020 15:56:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id p62sm9602982pfb.93.2020.05.18.15.56.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 15:56:52 -0700 (PDT)
Date: Mon, 18 May 2020 15:56:51 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH] soc: fsl: qe: Replace one-element array and use
 struct_size() helper
Message-ID: <202005181529.C0CB448FBB@keescook>
References: <20200518221904.GA22274@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518221904.GA22274@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_155655_048962_D0F24C2F 
X-CRM114-Status: GOOD (  27.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 05:19:04PM -0500, Gustavo A. R. Silva wrote:
> The current codebase makes use of one-element arrays in the following
> form:
> 
> struct something {
>     int length;
>     u8 data[1];
> };
> 
> struct something *instance;
> 
> instance = kmalloc(sizeof(*instance) + size, GFP_KERNEL);
> instance->length = size;
> memcpy(instance->data, source, size);
> 
> but the preferred mechanism to declare variable-length types such as
> these ones is a flexible array member[1][2], introduced in C99:
> 
> struct foo {
>         int stuff;
>         struct boo array[];
> };
> 
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertently introduced[3] to the codebase from now on. So, replace
> the one-element array with a flexible-array member.
> 
> Also, make use of the new struct_size() helper to properly calculate the
> size of struct qe_firmware.
> 
> This issue was found with the help of Coccinelle and, audited and fixed
> _manually_.
> 
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
> 
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/soc/fsl/qe/qe.c | 4 ++--
>  include/soc/fsl/qe/qe.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
> index 447146861c2c1..2df20d6f85fa4 100644
> --- a/drivers/soc/fsl/qe/qe.c
> +++ b/drivers/soc/fsl/qe/qe.c
> @@ -448,7 +448,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
>  	unsigned int i;
>  	unsigned int j;
>  	u32 crc;
> -	size_t calc_size = sizeof(struct qe_firmware);
> +	size_t calc_size;
>  	size_t length;
>  	const struct qe_header *hdr;
>  
> @@ -480,7 +480,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
>  	}
>  
>  	/* Validate the length and check if there's a CRC */
> -	calc_size += (firmware->count - 1) * sizeof(struct qe_microcode);
> +	calc_size = struct_size(firmware, microcode, firmware->count);
>  
>  	for (i = 0; i < firmware->count; i++)
>  		/*
> diff --git a/include/soc/fsl/qe/qe.h b/include/soc/fsl/qe/qe.h
> index e282ac01ec081..3feddfec9f87d 100644
> --- a/include/soc/fsl/qe/qe.h
> +++ b/include/soc/fsl/qe/qe.h
> @@ -307,7 +307,7 @@ struct qe_firmware {
>  		u8 revision;		/* The microcode version revision */
>  		u8 padding;		/* Reserved, for alignment */
>  		u8 reserved[4];		/* Reserved, for future expansion */
> -	} __attribute__ ((packed)) microcode[1];
> +	} __packed microcode[];
>  	/* All microcode binaries should be located here */
>  	/* CRC32 should be located here, after the microcode binaries */
>  } __attribute__ ((packed));
> -- 
> 2.26.2
> 

Hm, looking at this code, I see a few other things that need to be
fixed:

1) drivers/tty/serial/ucc_uart.c does not do a be32_to_cpu() conversion
   on the length test (understandably, a little-endian system has never run
   this code since it's ppc specific), but it's still wrong:

	if (firmware->header.length != fw->size) {

   compare to the firmware loader:

	length = be32_to_cpu(hdr->length);

2) drivers/soc/fsl/qe/qe.c does not perform bounds checking on the
   per-microcode offsets, so the uploader might send data outside the
   firmware buffer. Perhaps:


diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 447146861c2c..c4e0bc452f03 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -451,6 +451,7 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
 	size_t calc_size = sizeof(struct qe_firmware);
 	size_t length;
 	const struct qe_header *hdr;
+	void *firmware_end;
 
 	if (!firmware) {
 		printk(KERN_ERR "qe-firmware: invalid pointer\n");
@@ -491,19 +492,39 @@ int qe_upload_firmware(const struct qe_firmware *firmware)
 		calc_size += sizeof(__be32) *
 			be32_to_cpu(firmware->microcode[i].count);
 
-	/* Validate the length */
+	/* Validate total length */
 	if (length != calc_size + sizeof(__be32)) {
 		printk(KERN_ERR "qe-firmware: invalid length\n");
 		return -EPERM;
 	}
 
 	/* Validate the CRC */
-	crc = be32_to_cpu(*(__be32 *)((void *)firmware + calc_size));
+	firmware_end = (void *)firmware + calc_size;
+	crc = be32_to_cpu(*(__be32 *)firmware_end);
 	if (crc != crc32(0, firmware, calc_size)) {
 		printk(KERN_ERR "qe-firmware: firmware CRC is invalid\n");
 		return -EIO;
 	}
 
+	/* Validate ucode lengths and offsets */
+	for (i = 0; i < firmware->count; i++) {
+		const struct qe_microcode *ucode = &firmware->microcode[i];
+		__be32 *code;
+		size_t count;
+
+		if (!ucode->code_offset)
+			continue;
+
+		code = (void *)firmware + be32_to_cpu(ucode->code_offset);
+		count = be32_to_cpu(ucode->count) * sizeof(*code);
+
+		if (code < firmware || code >= firmware_end ||
+		    code + count < firmware || code + count >= firmware_end) {
+			printk(KERN_ERR "qe-firmware: invalid ucode offset\n");
+			return -EIO;
+		}
+	}
+
 	/*
 	 * If the microcode calls for it, split the I-RAM.
 	 */


I haven't tested this.


-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
