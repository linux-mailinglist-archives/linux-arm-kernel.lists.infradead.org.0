Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050BE1B3031
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 21:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=gKyDwTnu53L4586NJj/SvNPupEzLq3WsNpHFzU8fcpc=; b=GIs/QDxwhTWsv8oeVZyCoqGxg
	iRwusqrvoLCo6t/MbaP5mBIn7uTmqsNu2U/jwG4fFEZhu9E8ce+Bb+h437R/YnGdQvILyIRZHifOs
	9+6b2GNiJ7bB1bX9iK680kAp1cbhW2Wst25tJyKQBALPhg9nV2FXDz2fZVCbC1N+Wn0eGfYVzFMa0
	KGhh/RWtI0EXBbh/gn8bOfWSh/Bjy0mTzUdCGNbJCfavH3t6Es8aUF2+kHE4khLtklZ2tEU0glQNd
	4BKJ7GYXYMxhif6eiLHhY47iXz+MjgSgxNR6sYyG3LgaVwgsPMqe0OJsfSiLCvoUBG5xVNKaUrxG7
	2HkIxCAAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQyQu-0003WC-Pg; Tue, 21 Apr 2020 19:19:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQyQl-0003TR-Va
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 19:19:41 +0000
Received: by mail-pf1-x442.google.com with SMTP id x3so7040000pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 12:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=oG8/M8woClgdZByQ4O0E/sOcIdtjW+AdEaBy+B1gN2c=;
 b=AE1lJjfPrNEBUOYdWiCl8AoGLwLDSjR6b43Tas4kfrYBr91FLcFaylMPHmW9WtF7n5
 Wyapka3xYfcMFhW9Q86ERqgqqS7TOu37qqMROcTI8dCMF6wZiBjcn+GXxpEOkfTnQ1ON
 E6BC/n9lC7YKuwIC09EyR8/mxVpLBY+9eda6+jK9AaCfFYRtNZV/AR/rUFw3fgT3iYd2
 H3X70fZx9YPnPPb0nBiOvSEArc8AL3dxv6SkSGKfwQdJiHgXuHRNPKZibTG1CjnTfjbR
 ykaRT22ozu6rxEj+9wnDwF6LewajfdoeptzROI5Y4j0YGetJ5H8bkuW9/c1VytryMvXC
 icow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=oG8/M8woClgdZByQ4O0E/sOcIdtjW+AdEaBy+B1gN2c=;
 b=SKxB+PGw2e6Hih7ITCcczvXSx1Z/IA/XyO0fN3QvxsgUkPIUTzhDnCUJ9+eHAV1d6N
 FGXaEFj+gO1AWMwft3ePWLglcVvAH58iHd/dcSvF8alSGNlT90xhtR37VRRCoKLsJC40
 k60PwO3c2v1Ro7cU/Jq2Iw2useiU/fBS0+38Y9nQia2A1EJxRRBVjEvatLMjpH1wjR/z
 f4pKjOF+ETp8PjYJwRl/559xeMYUN9HIuhG2swbc+r/PdpGfRikLVzVphyIMECWEUwpE
 T7l/uk1xmekf1bbBMzJnBODhwhNJEiMmUgjpvgOmcq9flD8mRazCvJ8cJnnxgZ4RIkun
 SJ6Q==
X-Gm-Message-State: AGi0PubLjwXl1XSW/2GDINjr/lvN9hKmwpTy9rRA+6YxWlaiYRdJu8IM
 5KESStgbHudbqb4965c/Serh1vYplIa89Q==
X-Google-Smtp-Source: APiQypJ/Wrm6B2FLtfVVw+YdN1C75/RC3kUuQvbW1PXYG5G44AxbRXujl+Rk6VUE5R73VKINuh8xaQ==
X-Received: by 2002:a65:6403:: with SMTP id a3mr23843368pgv.222.1587496776634; 
 Tue, 21 Apr 2020 12:19:36 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id x63sm3144542pfx.122.2020.04.21.12.19.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 12:19:35 -0700 (PDT)
Date: Tue, 21 Apr 2020 12:19:35 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 12:16:14 PDT (-0700)
Subject: Re: [v2 PATCH 2/5] include: pe.h: Add RISC-V related PE definition
In-Reply-To: <20200413212907.29244-3-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-6abd4389-d713-452c-9b62-5c0d3ed2d936@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_121940_037807_73D0D7F2 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, mingo@kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, catalin.marinas@arm.com,
 linux@armlinux.org.uk, linux-riscv@lists.infradead.org, will@kernel.org,
 ardb@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 14:29:04 PDT (-0700), Atish Patra wrote:
> Define RISC-V related machine types.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  include/linux/pe.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/include/linux/pe.h b/include/linux/pe.h
> index 8ad71d763a77..daf09ffffe38 100644
> --- a/include/linux/pe.h
> +++ b/include/linux/pe.h
> @@ -55,6 +55,9 @@
>  #define	IMAGE_FILE_MACHINE_POWERPC	0x01f0
>  #define	IMAGE_FILE_MACHINE_POWERPCFP	0x01f1
>  #define	IMAGE_FILE_MACHINE_R4000	0x0166
> +#define	IMAGE_FILE_MACHINE_RISCV32	0x5032
> +#define	IMAGE_FILE_MACHINE_RISCV64	0x5064
> +#define	IMAGE_FILE_MACHINE_RISCV128	0x5128
>  #define	IMAGE_FILE_MACHINE_SH3		0x01a2
>  #define	IMAGE_FILE_MACHINE_SH3DSP	0x01a3
>  #define	IMAGE_FILE_MACHINE_SH3E		0x01a4

I'm reading "Unified Extensible Firmware Interface (UEFI) Specification Version
2.8 Errata A" and see all this

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
