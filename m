Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00C5ECCF2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 03:56:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4e8anvLqfIaIVG3TFblZAYWLr8Zi4YwA+lEk3GEOhs=; b=KlOQVXVXhCVQWd
	6FvuSyTsjopAgDWAfhzj+HpQ55uAyMMx/5H44wuBbA4jJM9nZTe4iLIAXrmHqEvrhaNheLlBleTT4
	9J68NDr1ymZy9GkZTaTTLgE/Kjstp1H/cr7+p5YtOKNfBo7qCz8xO+F9PvOrhcU1HS11A0RyJwcBq
	Og1qK7xzTF8wCcL0C5wFHwc7+R3grPXLpaT1AjU1zInNxr8YiVgaGID6VsUHaAD8veisWpovJgwBg
	v8d6dFgyAI/yhlUTwtkD8KTwMswuOt9+myErn2IPkJE4wWvU8jw3/06xrIqhcqEknxpTgNqMC4mKm
	xh5KqU1y3k5U4FgQsdAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQja5-0004OS-Cz; Sat, 02 Nov 2019 02:56:01 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQjZu-0004O7-Fm
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 02:55:51 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so7573748pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 19:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xFTNRYksg5hjJmBCliKtQprKj5dj8NPap0MuwQWTDx4=;
 b=JzZ54Ca/aYsIg4kl18Pwqdb56A5YbfqFYibHegzjtPq+/nX8Jjnlx/bGP2fg4zmtwo
 9xDBCMkAHy7y4Xdz9M9qSFy82GikNWN5LpelPlZx5XdwhziozECm7OoX7alN6A8m0X6u
 r4qKj0mKq4G297mGlLafNrWWjo9yceMvuUh0wMF68fopww0lGjjLjdFOALD2wEXiEihp
 Auhf9xfLG7yc8vaWgNvjwfNI7SxPj09U9GIlSQP4zFQTNES9deSfyvRgFOIlQuZNKBy+
 +bykio1h3I2Z95fvIYqXzjvFzj/cRH/+JkJd/odg6JGebDGcB9b8xdBcH3EToVhG1iXF
 IpMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xFTNRYksg5hjJmBCliKtQprKj5dj8NPap0MuwQWTDx4=;
 b=ddnztlb5PYw8vj04ZTNBrYAVcnuaM64xoafVh2e+XlfWQKSv9/55XELX11+YLtpcOd
 kFg6JRrnxnPo5hF8GiANaPoP/UYFD7PZGlXOhZQvGSdEOkUhHQ9VnqKEeiu7UX42GL58
 3lrGrGp2ZXAsaBFFV2Xp7eBSvVYIrMw4tDrrnpVqUuWB2UHNzcR2O19xKmiLDZ2XDV/9
 iwB0MU3/7rdnXWvvFo2ZWO1eAn4e3wS1ziMTg0jUZZAYnqQf2z6yTkLWHvzbVEkQBVjB
 LPGHv8hEhB1qHom8YMP2DsZcF7kzAbxbcAGtckiOtv/CFbiokdeSx7OQWidHd4RGMIK2
 1vPg==
X-Gm-Message-State: APjAAAWdqQKmLVvS2pok89/F67XkWs5NmknDRdrB26BKaXkjEf7iKAlq
 5CYQi8tou69yIg7EqZQcbZcTkw1R
X-Google-Smtp-Source: APXvYqzeyJwMJ3x8rKK5HX81hTOz8v7spnlXbx1lkmavVOINNHDRP65dyZnjDg9DB0XkFShAoj29Cw==
X-Received: by 2002:a17:90a:9291:: with SMTP id
 n17mr19824023pjo.60.1572663349847; 
 Fri, 01 Nov 2019 19:55:49 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 a12sm3441851pfo.136.2019.11.01.19.55.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 Nov 2019 19:55:49 -0700 (PDT)
Subject: Re: [PATCH 2/2] pinctrl: bcm: nsp: implement get_direction
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
References: <20191101015621.12451-1-chris.packham@alliedtelesis.co.nz>
 <20191101015621.12451-3-chris.packham@alliedtelesis.co.nz>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <3cc0fc66-c6da-45ba-c2d5-32877a180b57@gmail.com>
Date: Fri, 1 Nov 2019 19:55:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191101015621.12451-3-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_195550_523446_1D3AA72B 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/31/2019 6:56 PM, Chris Packham wrote:
> The get_direction api is strongly recommended to be implemented. In fact
> if it is not implemented gpio-hogs will not get the correct direction.
> Add an implementation of get_direction for the nsp-gpio driver.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
