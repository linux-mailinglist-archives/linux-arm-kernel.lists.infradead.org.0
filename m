Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778B44579F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HbqIsmIg4kSGFLgPSMpKFlFPDrDBN748USDe08+OWCc=; b=YB1ZwDgZ5GdRAcSsJbk9W7Zv7
	TyzPF4FgXfTPyHgwETUNC2kOMZEkBkThhDVuSRW8Pn7JxuqoGqgfddUqbtyEJdjQbWACVSpRg7m7n
	4yz50DoJl9oYiHd9lDUpYXsKYLQNt5Mat4lprUVkhYG0zKYiNgZqispkqnT/SqRb8Mf9J+kTmzSae
	ykQwdHSNWCwf1LIOLodBI1tH6jy7BmjOAnoalVtNrK4FlWyo5deStCHUfK/09bXGKJy8+hQQJ6X+A
	VrHkbjympZig+3/yAlbJQoqT+D98YYhUogjc0psaj57e4DSDdj0QK/P0mkpgs1gxfocO+5fWAKYso
	nUNnSGHAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhgc-0008ED-A4; Fri, 14 Jun 2019 08:35:50 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhgN-0008D8-Ga
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:35:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id d11so1145176lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 01:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pWi+5Am3aiah73yNoWhssqvYmNUO+DbKo0cUh/HhkqE=;
 b=pKRcA/99Kn1RlfqkHCYqITsKL7wcnLiDSjciQMsaMhyKPrztKtivTtE5j6rxb/p5mm
 m9XTZ4uAkazuHYYFeuR92f/e88xXmS32is65BsB2JBkW6wS0oiYDvfo+Y+c0cXfPJF/B
 r9FM/Df0Rb/33FclCysY54h+m5sSqYcwvaqnXP3YyIlemTEuVl+7OaUdilcQbnk6A4lR
 LU/f5FEfNUuL9DGNwp2Pg+v0B0BOXwVZpQ9RSJLtV4VVl5VMRs/3ApUkL6ieZSnrQ3Vv
 EABPOWr8yihT8hyr5T9ABQSv57oEbueA1tmjA49U0HVBi7OZAojYps6AEv+Nny2MR4oJ
 sJ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pWi+5Am3aiah73yNoWhssqvYmNUO+DbKo0cUh/HhkqE=;
 b=kBqFWK4JuB6wrdTPktCEGrbPAu3H1aSsRWLtPoWf0FtI8sNtDymow1Hl1nSzb6EpBG
 dpO9DweyI/cOWSn1hlV/0UXhlXuBlhC/m7XGeSWGlCdKwD2U72lsp/G2D8PrU3wlrjor
 CDNSjbbom1DSLG9+E1D/9Vcjx+SyXKS4askj4bDmX5mg8C73suHooBy2RO7MxwizCt1g
 hHIRtb+/V5Beg+WJrNEVteu7O5LWdDIT1IAw4+uRoyqV2ZxopffPwbQ9dHRDiLLbcMDR
 iqiqoVuSGjCBrITqw8nTPI8WIobtkcgf9YzbWe7hzPTqQ3U+LMK6gr/jPrbQSWXlvdoz
 MgMA==
X-Gm-Message-State: APjAAAUyYbkignOvpaWt2cLXOscLJpyYkhs6r4iHeoTf1En2XLrcaG/e
 OsJAlCtZ4eCGeiObCeMT+163VQ==
X-Google-Smtp-Source: APXvYqx2uAm03uGrknxT6QYWcLV22zpl1XfOYxHWcwU5kxumOqNqeSXIVWkf4PB3EpjuqDpve5pyOw==
X-Received: by 2002:a19:22d8:: with SMTP id i207mr44177294lfi.97.1560501333006; 
 Fri, 14 Jun 2019 01:35:33 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.84.143])
 by smtp.gmail.com with ESMTPSA id 24sm504402ljs.63.2019.06.14.01.35.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 01:35:32 -0700 (PDT)
Subject: Re: [PATCH 15/17] binfmt_flat: move the MAX_SHARED_LIBS definition to
 binfmt_flat.c
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190613070903.17214-1-hch@lst.de>
 <20190613070903.17214-16-hch@lst.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <e000b92e-a047-936e-c20a-9cc8b4f524bb@cogentembedded.com>
Date: Fri, 14 Jun 2019 11:35:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613070903.17214-16-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_013535_549954_72EE4AB0 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 13.06.2019 10:09, Christoph Hellwig wrote:

> MAX_SHARED_LIBS is an implementation detail of the kernel loader,
> and should be kept away from the file format definition.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   fs/binfmt_flat.c     | 6 ++++++
>   include/linux/flat.h | 6 ------
>   2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index 0ca65d51bb01..ccd9843e979e 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -68,6 +68,12 @@
>   #define RELOC_FAILED 0xff00ff01		/* Relocation incorrect somewhere */
>   #define UNLOADED_LIB 0x7ff000ff		/* Placeholder for unused library */
>   
> +#ifdef CONFIG_BINFMT_SHARED_FLAT
> +#define	MAX_SHARED_LIBS			(4)
> +#else
> +#define	MAX_SHARED_LIBS			(1)
> +#endif

    Perhaps the time to remove ()?

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
