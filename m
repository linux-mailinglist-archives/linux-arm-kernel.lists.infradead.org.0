Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD3613DE3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5fDw95XAsNxrSiJq6+N+8ufZIk/oraxcMdaMXYgGzYI=; b=Q1JZDgUCAXrMYJf4OYrlPLDoZ
	bnLjjUavPshA5DxdFG4nZ0jMvgV2joeSb3Hw6DM/XrTF+EmFMn06IInTCwJwRy/XKoh91us/v0QuD
	uA80/RpUXd6az8EJUxg9hYkjMJIt+mTJ/HrbKW5crIOvopauLUARkXSHEqA9kA6qUFrQ7tC5eFmIG
	L8pxoPP3C3FfDw70uw5tjqpZhp0QVy2LBYX+aJIbfXa3/E/NKMVfnlNAwVOBzNbHI1hkrXx/5C0vm
	31VkjbY+kl/HpZzjrZfgeVjCnfzhNHNtrzxuXTRZjAxcAYNTNtgsTB2HkEuncEsrFwfSTDjl+PEMN
	g+JDH1JTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6hB-00009e-Dy; Thu, 16 Jan 2020 15:04:29 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6gz-00008h-94
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:04:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id f20so8433244plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 07:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9aYYysUJc5O1GVrj/WJZfQ1VR8Kjol/FSsTxs8wt3Po=;
 b=su1RMBdpMgNolta0yRnwdr2hFM60rZ6K0CJP2l3ExFb8UekzOBhvGCYzWj9Zjive1a
 nfLfP7a5Idwr2vzP+5JMFW+5DuL2nIM5DcTIOpISxyXxKcxp9NHYUWr5gN+8SqzncaRX
 kXgHeczMUSmyhiZ68VneOltC1XFA0yrE8q6+yV0t1YK/otddH6p31jIWrZpT5QrXHAzQ
 4/DdQuxvEG5nw0nM2l7ngUvWroOh/lDta7eU+wWGbMDMRmXGdANBPFHWA48KMgStK/5b
 yzf9OugbebywJa+hFCX83ukPpdd58F5MuoVwmYR7IE5pO52aI0tQmHJcrOc8yBC+cluM
 GqeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9aYYysUJc5O1GVrj/WJZfQ1VR8Kjol/FSsTxs8wt3Po=;
 b=aG6nV+C/mBeSjGmfQs5gUSwVu2oSF37b2BRS0mrZdN+BWnejAnew+7ZZ1GeB9ar9wK
 VaSXxrzH/jlMmUdtBmFOVG902LqiXPJM6BGZS0OzwYwaQbsYaj0Kl0MkSAq7ZxE4mNgm
 G6LH53RiYMLKie8kZIdrtE+PWpurtnB5fGE1CRSRAyNPTAt81z+yeLmIADGZtRKLK79v
 4hJQhqS8NzOmanOrAdb6oE/8Xl1+/BzCMXz7xyMhZYpdodPYq5LS+/kEbHF5DUAo7Scl
 d4mMj330rxumnTXQmuzSSncDX+8oxD/whgVY/r6N+tBR3CXfLDUU6J85tOIYjV+MUpIe
 /UpA==
X-Gm-Message-State: APjAAAX92C6w67DEVxZzg84R9xnMaC4as27wXELDRmFAxwA2Nu7kYNMm
 q0GiTonW0USTgWGVU8lzi8aoZtZt
X-Google-Smtp-Source: APXvYqweT9duHvIwuiopBktIZ1DmoA3YPIEGyOxcRBNR8OotDJuab5tPjaSkV4tho7CtYEOjVqM+ew==
X-Received: by 2002:a17:902:bb83:: with SMTP id
 m3mr32964602pls.258.1579187055039; 
 Thu, 16 Jan 2020 07:04:15 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 g22sm24354714pgk.85.2020.01.16.07.04.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2020 07:04:14 -0800 (PST)
Subject: Re: [PATCH 2/9] watchdog: of_xilinx_wdt: Used BIT macro
To: Srinivas Neeli <srinivas.neeli@xilinx.com>, michal.simek@xilinx.com,
 shubhrajyoti.datta@xilinx.com, sgoud@xilinx.com
References: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
 <1579181217-31127-3-git-send-email-srinivas.neeli@xilinx.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <3f904c30-32e2-914a-9545-9cd554b45bfe@roeck-us.net>
Date: Thu, 16 Jan 2020 07:04:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1579181217-31127-3-git-send-email-srinivas.neeli@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_070417_321598_397BD88C 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: git@xilinx.com, wim@linux-watchdog.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/16/20 5:26 AM, Srinivas Neeli wrote:
> From: Srinivas Goud <srinivas.goud@xilinx.com>
> 
> Used BIT macro instead of mask value.
> 
> Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>   drivers/watchdog/of_xilinx_wdt.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/watchdog/of_xilinx_wdt.c b/drivers/watchdog/of_xilinx_wdt.c
> index 00549164b3d7..0d7df2370db7 100644
> --- a/drivers/watchdog/of_xilinx_wdt.c
> +++ b/drivers/watchdog/of_xilinx_wdt.c
> @@ -24,12 +24,12 @@
>   #define XWT_TBR_OFFSET      0x8 /* Timebase Register Offset */
>   
>   /* Control/Status Register Masks  */
> -#define XWT_CSR0_WRS_MASK   0x00000008 /* Reset status */
> -#define XWT_CSR0_WDS_MASK   0x00000004 /* Timer state  */
> -#define XWT_CSR0_EWDT1_MASK 0x00000002 /* Enable bit 1 */
> +#define XWT_CSR0_WRS_MASK	BIT(3) /* Reset status */
> +#define XWT_CSR0_WDS_MASK	BIT(2) /* Timer state  */
> +#define XWT_CSR0_EWDT1_MASK	BIT(1) /* Enable bit 1 */
>   
>   /* Control/Status Register 0/1 bits  */
> -#define XWT_CSRX_EWDT2_MASK 0x00000001 /* Enable bit 2 */
> +#define XWT_CSRX_EWDT2_MASK	BIT(0) /* Enable bit 2 */
>   
>   /* SelfTest constants */
>   #define XWT_MAX_SELFTEST_LOOP_COUNT 0x00010000
> 
Using bitops also requires including linux/bits.h explicitly.

Guenter



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
