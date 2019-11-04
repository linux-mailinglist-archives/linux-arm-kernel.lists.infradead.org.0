Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DC8EE3B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:25:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+Z6qdRPKr/ewSHlfBr0x1maqEbcXRuibHP3CO8wEWM=; b=N24vN+GYnDa2RV
	YOpzu4ce7MIiMUL8330GFbGWxRWMxMO7h97GBk0asWTSKNYam7+lLiucFkTnmtyZWSwBFcdygyRw1
	FN8//hvjMD4T6QxxwNpqwc4LrN/wF8MZ6pVVhcZu+v8Q/ZNSzf4qJCQxAbjID4pP/uFiEAfk7TX5Z
	BFrbGfK8X2STfb7Kdo7LXAQLaM9E9X1vnj1fBxpuXRyytKbSHekObbNdcCsdufO3oi/78617rXj4C
	9kN2lQkrrg8J08PGxtOaEddVy340pllt7lnSX3TcCHjKRD7bvg38/Lvb6qrnEAeLk/KAWgzX2d65C
	c03nZYefKFo1aDsol/kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReEE-00012K-Eq; Mon, 04 Nov 2019 15:25:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReE5-0000al-18
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:25:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id m9so18046784ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vaEPIoS2t8hUZV5j+rbrQAWA68wAJcFqrHD13iQZNVQ=;
 b=s1TIVkFrUgUqgiD/eCRPacD4FbkSkrQplNYQ/fhkXZtJHcKc0SOQG/Uqx1uWBOWTIk
 wGjwq+fupT6LcupwghxWtbONfk4yQpKCtZexO2I/4c1nESvOL6MUcxGXqA20Y9hZjAsj
 yKavZOz+rt+j7ocQUbzsnqU9SoPZb/b0kojChjUxJ1nJaOfzn+9ssmC9a8WlEP9L6c/u
 ossTO6WbRm6o4ZbJSRi+E+g+Q2oh4wyvy2uzYOMCmT2xcIhm9Nft9IAUjWzNRpXTtI7Z
 NGguI0b+9fDPYA8DPF17kXRvQG3BfLAT9xYJnRA+IAdq+pfwkg9FE0tmVObk8z98ptkd
 NfiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vaEPIoS2t8hUZV5j+rbrQAWA68wAJcFqrHD13iQZNVQ=;
 b=r0FDxOrAFdB5xKGx+D2wcQZeD8dVK8JZZhSDn5lNasbmBnkjI5ii36KG+o8Pwymsc8
 a88AUhr/6es5UETOqZXdomzcocqwGnYvDaJh1huNQebyClHz7SZHs8/svr+51YOiTKFd
 EBzFr3OTLKeen4yMKSywWG3ZZ/Ypc6Ciw8LCdSFBhH+czeOMvh7Dv6oOB7LVfnfXFIeG
 ZjBGYst2fo8NntBmi82lGmrP4GBPrcRhFHD9e/TbNrqOYWj17mi/UAeTfMDDBvegZz4J
 /i/HqsqVEz5Kae9bDqfd+Roxxek0u3hIe8qV6O4Mbdi+Ncz2cRHFC7y6zM0rYKqSKdLn
 CTLg==
X-Gm-Message-State: APjAAAUbnCQWIw3SdpIwku4DI6YYpuu8VT0ORmPwke20remaw93dJW8+
 wut2uGrChc0jmLY2Nl3/6dakQWwTx66F5n/mPqSK2A==
X-Google-Smtp-Source: APXvYqxzvhxQEC2lVXS9XLU/+X6UlgEVhaZM82+Iw9teO/FERLxOvAN0X//SI7N3tlH1MqOFaHplMyQGcIb96hV7Nrw=
X-Received: by 2002:a05:651c:1202:: with SMTP id
 i2mr19270245lja.218.1572881103566; 
 Mon, 04 Nov 2019 07:25:03 -0800 (PST)
MIME-Version: 1.0
References: <20191104001819.2300-1-chris.packham@alliedtelesis.co.nz>
 <20191104001819.2300-3-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191104001819.2300-3-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 16:24:52 +0100
Message-ID: <CACRpkdb530Do3BnVBA6Q7TWOQ0_QfytqaPHPXCPoZP_742Rvzw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] pinctrl: bcm: nsp: implement get_direction
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_072505_116128_77F3386F 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 1:18 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> The get_direction api is strongly recommended to be implemented. In fact
> if it is not implemented gpio-hogs will not get the correct direction.
> Add an implementation of get_direction for the nsp-gpio driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

BTW I think it looks like this the GPIO part of this driver can be
converted to use GPIO_GENERIC. Compare to other
drivers such as drivers/gpio/gpio-ftgpio010.c.

It's a fun way to cut down lines if you have time to check
and test!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
