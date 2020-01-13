Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF771398F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:34:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Zj0xaRNtESXBaY4upvHtAdH+NFx73ELI8ifAEf4Afg=; b=c6oPzau4u6f43N
	5bvFw0fSX8IK4gpdJqq6aQWuSn7HShF1YdpQWUzKy92Hp/gJ6bKNlcKdvFI/QyzvOgWaBdCQZtAX2
	74dYUyOFQ78axWMB139E2TlOZCULMeo6IVcMIG/AHT7+FMe484mc6e0wUpaNUl9Jow1N7IiBXBYmp
	4VcJJd3xEDznkBR33OIH+OEuKZPi6LFJadHgE5beHo7Rm0WcJ9oUrXh9DPVikIr3cupF2JVeApxaL
	MCw0me03giTkX2Nrz9tikdr7ek5JaROn2bDAqCAUs/L9deLRLe4iXQisWps/cR8lH8tVQxmuCxGJV
	mbbOqC2EFyKE3HJtXpiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4XT-00076U-Ay; Mon, 13 Jan 2020 18:34:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4XG-00075Q-7g; Mon, 13 Jan 2020 18:33:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id d139so509412wmd.0;
 Mon, 13 Jan 2020 10:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZXLr4jt3Z0ly6bJlY2S1K+QAkB0UsTXiQL9zQoG2s4c=;
 b=mXHlDgiSO7p/uX3R9XNTgDdGIu/YGZA6qA1uL9FgkaEBt6vhBsjXg3YO9i7CMOhB3j
 MuaaxXJs/7qCYAEOy2rl0yDccD8H+XsP1E4tFJlOvdnNzUnD0BS58a3jfG/MalY4chV0
 dOr1o8A8uUET4aVYVcbOfbaTOTLCHvjclGvrZHrFOgqByKRWF+qdD17NoRYOZLFIxhHw
 dVpVKw9JiDqQN8uveu+hdDr0HHc1vnPKJI8ooC9hXAW2MKWtxD6feQNOS4M+xLC11235
 ln/lgNKbndSLF+653ME1m/3cWrD6ygFqw8OM/mUwQF8A2ApvzcXk4Bt4GOH+ySRbDtCN
 hmlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZXLr4jt3Z0ly6bJlY2S1K+QAkB0UsTXiQL9zQoG2s4c=;
 b=AGxaw+4ex+TvPz0GR0V32vMI7q97rpHSnUZZFiLGxqy/NRChIdn5h+bLyGdCSIMXi7
 by3yyOg7J/GcCH2ooYhDkRslxb+sMVinRXx4zZmHUM25SSMxWjhR5N3TS7dVlS4HOf7k
 7EC3fgX8s/DELM9ghC+ym/6/FKhbJouAxjSMYcM2bexllPY65UbP7R9y19gV5CGq6Zyp
 USq1uV8z7BXapNXnjsaJAKcY9UPAMKnFtI1mThlrbH/432nLSd55tM5AbOntYUo9+oFc
 CzfIvxR+6bxduDpeO8mmH+AI8h8BopYwjCdwcs9kdcnWXpQYEAJsQ7Km+KGIIRq8S5Fe
 y14g==
X-Gm-Message-State: APjAAAV8MLKhd6lGU3tZxwx99zpFPdtJdEbBhVRUG6QAB2GWd8BD/jlC
 0CSqUW/0RaMf6TjdZYnzhkA=
X-Google-Smtp-Source: APXvYqyGePBR9ORItEnsI4A/VolH7tK5HABxUgERqXN9F5gLMCg+0OuRxmIZVKfdKncZ1preY0W6VA==
X-Received: by 2002:a7b:c5cd:: with SMTP id n13mr21557885wmk.172.1578940433124; 
 Mon, 13 Jan 2020 10:33:53 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n1sm15518360wrw.52.2020.01.13.10.33.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 10:33:52 -0800 (PST)
Subject: =?UTF-8?Q?Re=3a_=5bRFC_PATCH_v1_00/10=5d_Enable_RK3066_NANDC_for_MK?=
 =?UTF-8?B?ODA444CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNl?=
 =?UTF-8?Q?s+shawn=2elin=3drock-chips=2ecom=40lists=2einfradead=2eorg?=
 =?UTF-8?B?5Luj5Y+R44CR?=
To: Shawn Lin <shawn.lin@rock-chips.com>, miquel.raynal@bootlin.com
References: <20200108205338.11369-1-jbx6244@gmail.com>
 <aad92eb5-00ed-5071-c206-491eff243537@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <73cb4b1a-aad3-c613-a642-1887905e3932@gmail.com>
Date: Mon, 13 Jan 2020 19:33:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <aad92eb5-00ed-5071-c206-491eff243537@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_103358_277669_7FFCD5E6 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

Thank you for your notice.
In that case I think that I produce a version 2 "light",
where I address only a small amount of the TODO's and leave all other
things up to you, so that you can do what suits you best.
Hope that RK3066 support for MTD can be included.(Linux and Uboot)

Thanks

On 1/13/20 2:55 AM, Shawn Lin wrote:

> 
> Hi Johan,
> 
> I loop in the author of the original NANDC driver who is now gonna to
> develop a new version of NANDC driver in near future that supports more
> features like bad block supoort. Maybe he could share his TODO.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
