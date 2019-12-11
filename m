Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517A211A98C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 12:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6umWSZ7IVOtXajCNbO1yDa8fQDPF1/dcr9cB9uTU/80=; b=ZXLnSJy9BuR312
	/I7fQwfD3yNhU+X5lOLSgpHUN7XApWQ0ZWI/JsEU+2iq1emuKU42qKDDOxAqhwyqNqkhoBD3l3HIc
	gNrtEXFAnctqkKSx3SmWjZLSB1/zmpEoPE29MfynRZD0ax6l++tNdm7GOuX928JzBtR3OCNxz1noL
	0A4rj7L/M6zBjnIFTPgZ2uE8Ezv9okcpa8B18s+6QO8a5CGUN1yFb1ImFCGoGmpaFKLL3g7gYwVWx
	twzxLpB2JHBE2SQ/vkv4QvhqCOXPXcO29qaHwcDATbEcnpVNoa+1/EuIJ+QCUTjzhOFjbHx3yVkAD
	QX17YFsUgFSz8sDtvIkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezlJ-0007BD-7V; Wed, 11 Dec 2019 11:02:33 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezl7-0007AN-2y
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 11:02:22 +0000
Received: from [192.168.1.155] ([95.118.81.154]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MdNTy-1i5ew40D9U-00ZRFl; Wed, 11 Dec 2019 12:02:00 +0100
Subject: Re: [PATCH 02/10] tty: serial: samsung_tty: fix build warning
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-serial@vger.kernel.org
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-2-gregkh@linuxfoundation.org>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Message-ID: <181db297-2865-5b34-6ef1-e410babaf3bb@metux.net>
Date: Wed, 11 Dec 2019 12:01:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210143706.3928480-2-gregkh@linuxfoundation.org>
Content-Language: tl
X-Provags-ID: V03:K1:UT50J8jS+O2S/9OxMUm9VbwE4Uc5ui9b+5/2mfssfXgX7gstXYh
 v794Od+JFSR+AXZd6xGKhWx5cGrLbHktNqKvg0K0pha1WKf+6v/JE9d7o6RYluYowDYlNtB
 Hv6z2xrK/KnscNoYynkZoDUkv81cvKYgYk9/haP7FzHB8OPiazs93+LZNCDyZtWdxvP/mcV
 3UZRb+Ih7lWNu+dEwK13Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fp1viWlXRto=:J9OyfXmzpxj6Tp3U+1SQo9
 giFGmk6/go7HR5CkCRmfLF3hq7Dra6NGqfbPjbTzLp3UWkyaAZiewbojt73Y9KNRAjs++Gy/1
 swwK5mq0YekiYAn6Sg/H9HVf1ib+cMsnBQhFLg+/kN8PUsE+VRJghOa8kLSIlxj3UhJ/t1c91
 XDZHnMGQf5vpeckKnRxdl+gfE5kDFKwcTZRpoAnLTcCww/c5FyaAO0ModpX+4SDtvsHfgDTGO
 6VqJe4Hf7hWJHMpcDqBY/SWF7o9KQWgs1wTd1YWB9P77YALPWm0YUMgpVsOArfCiwY/CxFRNJ
 1LvIw5fAD9zH5EWsVee1ohe7CQqfA+dSK84EXQHyQxxE5JjHZJu5d7LijQR447s0nqo8n0yKq
 qmD48V1la7iQ0BrXfYJcE7NLcZVtqrR8G7rrx/XrW/30dDyijRE++1FgUAeiaG16LBqx7LPgm
 thTK0utJJA21A9vh1swj8ARNAUY3zf0YaneKSIIdcO9DHgylh197o0/2N9PwWH1vNkR0wLM2T
 fmT7epkEo0HbV1AuwkbjACwHDSFmx6UXwHTxEB6r99c/izTYmRumjMCpJLzY/q6ewan6wmAhs
 SHegSp2U7Et511tr82VzQNscyl6gcAhPQ8AKeLy9jRek7kTzAJDRGRRRm6s6Tl9v9Bmesa7tJ
 7rYVxqB6F60c7HPLZNLeN4fmuBZv1FDT3Z4P89AODQQWZLQNMK8Jj+jR0PubfbOVmcm8xcXX9
 VR6Xzo7HrW4MlYY9kRY0nJVpcllr/jyu0REys86WN4ublVWs+uh1eFXFd9myF0k+wLSsRRMGv
 yW8byDvsJlCyLhFFeIHG8BJFBeZVjLEqAWhdfoEZo7bXMedlPG5MluaymAn5JdiQSjutsiNdE
 cRAEYA8b+i8shCB0SM4Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_030221_434918_8BA79145 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10.12.19 15:36, Greg Kroah-Hartman wrote:

Hi,

> diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
> index 83fd51607741..67c5a84d0a26 100644
> --- a/drivers/tty/serial/samsung_tty.c
> +++ b/drivers/tty/serial/samsung_tty.c
> @@ -1851,7 +1851,10 @@ static int s3c24xx_serial_init_port(struct s3c24xx_uart_port *ourport,
>  
>  /* Device driver serial port probe */
>  
> +#ifdef CONFIG_OF
>  static const struct of_device_id s3c24xx_uart_dt_match[];
> +#endif
> +

By the way: I've got some patch for conditionally declaring of match
tables (including MODULE_DEVICE_TABE() call), so such ifdef's aren't
needed anymore.

Would you like to see it ?
(IIRC already posted it quite some time ago, but probably went
unnoticed)


--mtx

---
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
