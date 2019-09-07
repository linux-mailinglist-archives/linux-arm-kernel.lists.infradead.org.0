Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162E3AC88A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xejuH6v+mJUUm/H2DqOjMVpOhQ2TqLCtUhVIkKwhvMg=; b=nZ6NwYZPPzkPQ/
	Pm/EOxJiY7jI0E819BQjJxGeifcV8cVYeUO4fX1jWUvUcRRcDPfEoIVZjsdQTucD7CUw6XjOw4asM
	XdWxmW7ZdO62dC1mVQbs9WdWohsBh53DjMc0J5jpRH3auIlbNRZR0dEEyePoagWDZ3oegq81PWELC
	YHUxf1+NQI726cqpJ2n+hnzNWBLclPYYESoeN2Q3dNVsDQNwThdDGVT5ZcOhtrS0JoRKBRj6fcYeq
	i0yX+KEZGD2cx6mnBoznSuCfCbYocNkaQTz8z4x0pNXF5tvoIwDkJl2UgXGo2W7dh9SvbxZxPXH7E
	07CqJ28bD55ltEKRiZ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6euK-0003Gx-Mi; Sat, 07 Sep 2019 17:53:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6eu8-0003GU-Cr
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:53:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id h7so8647748wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YKzGXNoMiVxlqUxjXu5q/1sB2Sa9HHIsJwOXqdFSK2c=;
 b=JIU69Gj2coPhLQ8h1Nf0FifUpIaP/2YUh/DZqI+EYnKebBIjEvpNnmE2atBKfaDgr1
 dIL0Oi7VSCbGp0Fh2AR9sHkXMfWxl1IcAj5ncZZhah1yhDiTdwF4XoEWqh4zCzl5ecYY
 QdkQGYPUNcztydTqmwakzmdMhvRp7CufSU7jvpqlZp7W6hPTn9+bC3aZW150tI0awCXW
 P22JNJcg6l25VlJEAEajstYzekutPS6SlHe6B/31RlCjw5d/1HTSCZ/6e5bIt5/QKKeb
 h38iCIFUM/84QaD5YqDhAVu4V+t/p6Sk6ZENpp4z5SIrJFfK9VqFlv0vmwnQMMfM0Clo
 Ob7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YKzGXNoMiVxlqUxjXu5q/1sB2Sa9HHIsJwOXqdFSK2c=;
 b=WytGnOcuyxVbvI40r/D4hZzn5IMshdzge2JBxJAzpMSjSyEuUTgGNUUaS90z5GVPaD
 yTijtpbfrEgqrfau7LoRIj0l0NqZ+5T0gP5HIwl3c39PrzciFHk7slMUg0DDsOlwI7iV
 8N0aWzu17jkqMX4X6f23magGzxsXDYTXyhT817tZS6auxyGI5gk4V5lYf3ZCiEt++FTL
 SEeYKbVW9ixs3lAr9uuaFC681twqFt6JkLkAtADJu5cItiBSaDsyf48NK2OUl0Rg9Y8J
 BBJTz368umVsghxe+v/h4IwYW2Fps/EtJQYGLMpwuIbxqZXq+dIuFrmVOjKoLPQQZzDs
 DpIA==
X-Gm-Message-State: APjAAAW9bP6DLERvpSmAPTPOKPtI/lM3d2VunvirDqlkPn+GefLx9laL
 X/pr9Waqy/VqftsVDsGMm+k=
X-Google-Smtp-Source: APXvYqwON0QZyTc/slBAnXZF2MVpu7fDOpaczP7dIghDSrGZbOPHtlEMfx9Sldugsdu+L5p1uFGQjQ==
X-Received: by 2002:a5d:6585:: with SMTP id q5mr11363959wru.162.1567878822899; 
 Sat, 07 Sep 2019 10:53:42 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id p23sm5778566wma.18.2019.09.07.10.53.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:53:42 -0700 (PDT)
Date: Sat, 7 Sep 2019 19:53:40 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 1/9] crypto: Add allwinner subdirectory
Message-ID: <20190907175340.GA2628@Red>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-2-clabbe.montjoie@gmail.com>
 <20190907035453.urfqmdg3kg4kbtgc@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907035453.urfqmdg3kg4kbtgc@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_105344_440990_10122A2B 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 06:54:53AM +0300, Maxime Ripard wrote:
> On Fri, Sep 06, 2019 at 08:45:43PM +0200, Corentin Labbe wrote:
> > Since a second Allwinner crypto driver will be added, it is better to
> > create a dedicated subdirectory.
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  MAINTAINERS                      | 6 ++++++
> >  drivers/crypto/Kconfig           | 2 ++
> >  drivers/crypto/Makefile          | 1 +
> >  drivers/crypto/allwinner/Kconfig | 6 ++++++
> 
> I guess it would make sense to move the sun4i driver there too?
> 
Yes it is planned.
I will add this move patch in the next iteration.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
