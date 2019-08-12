Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A960E8A365
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 18:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CBu2vY5885ZydTqJyvNbpx88YS8+rjyOxWVwSs1vRTA=; b=gn+oxDohrlfLgzrItsvTbTvqa
	9X8kHx/3cQPGic9ZPU41fohOZyICLJJE0CEMcAAJA7pbcoIx8wAzWxq6MRsUrHZjbkMZHAEMrdsQ8
	k8mKI1OWhF6flrq3gwEDjrTLl30MhwToQY0BGmRi78EbotkYyKCumjuTT+l9JFZeRm0fhhtXgB1ZO
	qMXErwCQ1Ht+jWoA8NY9fRXsR6qT04g8YKkvjZ7gIQAGopNcJB/MsYEQQhzSSvC0OTz0rE+jksWQ9
	niMdlbXynD6iC253CWvv1/1NlZfJsYrgFLldqM6kSm+bDaBSgx6o7aZlGIoZPn4+6+U7ia4WlNiY6
	dOXOlBogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDEF-00048l-Ru; Mon, 12 Aug 2019 16:31:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDDs-000453-RE
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 16:31:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id e8so361769wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 09:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=P6gN9L7PuGnp4yN0k3LkBqmw0DeVh9zL9RShIY4qL5Q=;
 b=tUCd79L3vyPF6kYNwJHWhCFBEQXQi7UzjEP/TOB9bMeaGmxfTVC2WCCw91Sm3WgzAm
 +BdRJUjUDlTyCYvdgYaS/FF5iFL3Ndwhc/bRoEW7eaEfL0ywBTTosrTFLgANX6tcgyUZ
 VmIfOKeVKZBHI5Y+acz6z6RD4G5tzrXhO4b+aokjDcotcTTQhsH8zuEHQgFmQyOsGJVS
 yOzanpYfy8JsVnvF4DPMdOMf41XfLFFlMeMROdeHwJhIVK4DGgPvQdljvrwHY5U4Z29A
 IOZ1BtKtPCNoZ9fudGe7rXh7s+Q+18vMhjFwccMIdkIEL7Cd5h8pCxUAaN1db7PR9YIa
 26RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=P6gN9L7PuGnp4yN0k3LkBqmw0DeVh9zL9RShIY4qL5Q=;
 b=pCD/inNVBMJwv70U8Sq1IYOQS7rLbDvcFSsavZuui+Y8wdQWCd/yRcZ9BerQowMc8L
 B6sy0sSTbDNOkjWOys0ENgyAacwQv+bEw6CC0h+XhcgdVvySvpC7VsuMW2jyy0syXK1h
 LTM7mJQu6HS+p7BxENhGs7MKVmqVWAAraFnYH1nfDFQBKNG18+aQxzHQ+lwjfVzlwAGW
 aS1TJsSOHYjSK+8SF1UJPScPPwznmtt0c+ai9BJylFL3fWRQLZ2KgCAnbQNGQu5BzSdW
 F3rKDj8hVEPHdVuSrHyXsaxqOyMdv0rNUVhfyM/TII6lT6iKMjDsTHjjO7tX87z73twk
 3pUQ==
X-Gm-Message-State: APjAAAXWhSIGrvL6KhWrbRl6w7qzZwiMHhgqLP5vqgL2os0+1+rs7QIo
 4aelhpEEFaoHmnX6A5lkVb0=
X-Google-Smtp-Source: APXvYqz/uDQdEQrKLjDtjBP9P5TOU6/orA5hdQEAzJwywM9OXUWhvYgh5kX71zbwYr4uYk3z+DjilQ==
X-Received: by 2002:a1c:4087:: with SMTP id n129mr144387wma.3.1565627462933;
 Mon, 12 Aug 2019 09:31:02 -0700 (PDT)
Received: from [172.28.172.8] ([31.217.37.102])
 by smtp.gmail.com with ESMTPSA id o20sm264509028wrh.8.2019.08.12.09.31.00
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 09:31:02 -0700 (PDT)
Subject: Re: [PATCH] ARM: ep93xx: Mark expected switch fall-through
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Russell King <linux@armlinux.org.uk>
References: <20190808023811.GA14001@embeddedor>
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Message-ID: <996ead9b-457d-ef9c-4838-9438887b4da9@gmail.com>
Date: Mon, 12 Aug 2019 18:30:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.3.3
MIME-Version: 1.0
In-Reply-To: <20190808023811.GA14001@embeddedor>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_093104_918825_FDA90319 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.sverdlin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On 08/08/2019 04:38, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> Fix the following warnings (Building: arm-ep93xx_defconfig arm):
> 
> arch/arm/mach-ep93xx/crunch.c: In function 'crunch_do':
> arch/arm/mach-ep93xx/crunch.c:46:3: warning: this statement may
> fall through [-Wimplicit-fallthrough=]
>        memset(crunch_state, 0, sizeof(*crunch_state));
>        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/arm/mach-ep93xx/crunch.c:53:2: note: here
>       case THREAD_NOTIFY_EXIT:
>       ^~~~
> 
> Notice that, in this particular case, the code comment is
> modified in accordance with what GCC is expecting to find.
> 
> Reported-by: kbuild test robot <lkp@intel.com>

Acked-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>   arch/arm/mach-ep93xx/crunch.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-ep93xx/crunch.c b/arch/arm/mach-ep93xx/crunch.c
> index 1c9a4be8b503..1c05c5bf7e5c 100644
> --- a/arch/arm/mach-ep93xx/crunch.c
> +++ b/arch/arm/mach-ep93xx/crunch.c
> @@ -49,6 +49,7 @@ static int crunch_do(struct notifier_block *self, unsigned long cmd, void *t)
>   		 * FALLTHROUGH: Ensure we don't try to overwrite our newly
>   		 * initialised state information on the first fault.
>   		 */
> +		/* Fall through */
>   
>   	case THREAD_NOTIFY_EXIT:
>   		crunch_task_release(thread);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
