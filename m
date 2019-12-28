Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB1312BDF2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 16:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tA/XmsZ/H4jg46168k5UZPz7BEwEjrUwnqEfnTj3YQ=; b=UzgJwmqc32Mveu
	nSKxGNJIo8hbYyjE0Dyw9Hqqn5TTBGRuG+d2juxn7YJeF1NqM7nab0hDRj6hADoo7TuokXAXccqOs
	49xVUqyAKkwz9DotVvq7A8Vk0kGDMI0nLjvZ7R6eucuv2qCkUAOMuSZYxdrx0ysZbzTuIzK5DFrcd
	hD/SLwx8dI45heWvYSrisslZL1zPNh2Br5ULt2Av3WfUrupJJEC63HUAR4dkzpvJTv3zD8MeEbeLm
	jn9ia3optDSBHnGGSR77z+j2tC8cfHFKYmdv+rmMdpc7K4UvCg9Ut+X7iSXXRUZE3WCcQaOpn8nnz
	W5wSG8G5t9zPpIf0Yelw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilEDA-0000gr-Tc; Sat, 28 Dec 2019 15:41:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilECt-0000dD-8j
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 15:40:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so28770020wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 07:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S4w6bsun3BCKEVrzWfmPLYVkjYi7T9stUdFG1yttM1w=;
 b=naqCNsAAJqXRk1bXaQjSLk0bA5uZjvulWTKN18QSlzKo+4vX4MyJESNM8UIg7JgiiO
 S09Kd+xrgnbx9vnVG2dwevE0PaW7s6syf8h85lx9/77ILy9EQi0wCA7m7TnZX/3sfmmF
 0wvmQoytMpE8UTHLyR828Q0viN5TJfbV/w8jXcfmcdtuoMCeSxeB0cKq7K0NdykoVToR
 Dbci88sIkRnfmnMTm0lUVZbjJzRLUR7fEFYJ9vzECmrCRpS6ALKPOhlNIpR8PWYtHgs/
 pjq60qAMfKYM63mF60VbvQoa8LAGIUY8LCPTfcfX3jSgUZ7Bn7yLu6cl4mRLq7Egdt1d
 UtTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S4w6bsun3BCKEVrzWfmPLYVkjYi7T9stUdFG1yttM1w=;
 b=AQjaCOokGsVwFWUgny04GSYriKScCjv8xxLX6ZXm9Ga/7ukxu8hQRbBO8h2mlRrXHM
 2nop3BYRuqcQxdmdYVjGwrKREBRFMwfWBYRhPaqaGm0/Bpxr7Lx6g3z5UIxKbunmsmnw
 Ply8yAyL9ctmyf64kQ7cJ/j8xjT+0WkN5Il+6lfzJxEc+FrlTUbYhOKgONFIgvCQMfKY
 pyt3TsWQOIEx43lxL+Psh/iUgrPkZA51dThl4ZaFLtsSdK7lmDgF5ay2sbmS4hNMqD+7
 fk7kx+JMOxC9iYIrS+qA+3/UxveCMw8x1fNDZYNrmAiVsy/YVjcGngimyMcgzxg95nJv
 dYkg==
X-Gm-Message-State: APjAAAVYPUdnDvWsm0H0cYQVjZPUVoCOXNGoMFCdLSZS2YSbHo1RkA1C
 3O8dpiScLwIoO0wPtyUhZe4=
X-Google-Smtp-Source: APXvYqy28SB3FtkvgCIo4a69wxOECpkxLmipvML1GM5jLGIQosopY4HYVMbjzcayohVXVxFe8HuBlA==
X-Received: by 2002:a5d:690e:: with SMTP id t14mr55917549wru.65.1577547645550; 
 Sat, 28 Dec 2019 07:40:45 -0800 (PST)
Received: from zhanggen-UX430UQ.lan ([95.179.219.143])
 by smtp.gmail.com with ESMTPSA id o7sm14408269wmh.11.2019.12.28.07.40.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 07:40:45 -0800 (PST)
Date: Sat, 28 Dec 2019 23:40:39 +0800
From: Gen Zhang <blackgod016574@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] board-dm644x-evm: fix 2 missing-check bugs in
 evm_led_setup()
Message-ID: <20191228154039.GA8713@zhanggen-UX430UQ.lan>
References: <20191227023921.GA21233@zhanggen-UX430UQ>
 <20191227160142.GW25745@shell.armlinux.org.uk>
 <20191228131930.GA7214@zhanggen-UX430UQ.lan>
 <20191228134824.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228134824.GX25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_074047_328379_0216B240 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (blackgod016574[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (blackgod016574[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bgolaszewski@baylibre.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 28, 2019 at 01:48:24PM +0000, Russell King - ARM Linux admin wrote:
 
> This is the old everything-successful path through the code:
> 
> 	platform_device_alloc()
> 	platform_device_add_data()
> 	platform_device_add()
> 	evm_led_dev is set to the device
> 
> This is the new everything-successful path through the code:
> 
> 	platform_device_alloc()
> 	platform_device_add_data()
> 	platform_device_add()
> 	platform_device_put()
> 	evm_led_dev = NULL
Thanks for your reply. Adding a return may handle this.
	successful path:
	platform_device_alloc()
 	platform_device_add_data()
 	platform_device_add()
	return status
 	
	error path:
	platform_device_put()
 	evm_led_dev = NULL
	return status
correct?

> 
> And, specifically, the code sequence (I quote from your patch):
> 
> 	if (status)
> 		goto err;
> err:
> 
> is very stupid; it might as well not exist at all.

Well, you have to admit that the result of platform_device_alloc(),
platform_device_add_data() and platform_device_add() should be checked,
and error should be handled.

e.g., there are 124 call sites of platform_device_add_data() in Linux. Only 24
are not checked, and most of them are in arm subsystem.

Look forward to deeper discussion of this problem.

Best,
Gen
> 
> Since other code references evm_led_dev, one can assume that we do
> not want it to be NULL for the success path. So, taking all this
> together, your patch is very very wrong, and I also find it very
> worrying too.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
