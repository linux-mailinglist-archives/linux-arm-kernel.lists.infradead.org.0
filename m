Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070251A36D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGvgAyGXn+fFHi1lT2QJwZF8LMktfXa/zWGYF7HMMPQ=; b=WqDgt0dzyhHk9k
	RzAF8bIQ9yD6AxlTSvFu/SWtM50qMT4tDQc8faQV2Ei3WgKbsMbkfq6kaPJi0Sgd/Z8Z7ELzxlcjr
	rXmYMF3Qrw6QuuGIiejDc/5PddArpQXtr/NoDBH8RTtUDHGS0CjS+3WgauQbs4JDixPsgNKIGn795
	6l8jfMqq/x66mpDl9jGdpbA4rofGySCOGs49jLqrcVceiOPHKtNmLNGEWSTkowkg6jTeAPvdMWL2D
	GGWi5ocGm+fGPTnndqvX+kLfiA8lx7S8GC96BNko+FOjNHv9V/AvDzV62b48L/f5MdEGcnTx9cXym
	d+eogdGRBdOjfP2zmAYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYyb-0000cT-4z; Thu, 09 Apr 2020 15:20:21 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYyV-0000bm-5e
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:20:16 +0000
Received: by mail-ed1-f67.google.com with SMTP id z65so210406ede.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:20:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4T/yNw7Oi6CyzIIjkIvIk0WZLkoS1PM8XtkC6qecQpw=;
 b=BR1b0daxlAFfgDosgvty3A5Cr3rKcPJmadM59YbCEBjUWh4Gu9oAbTGyuJVEuKSYsB
 YnDpYBR2BZJFAG5CUQHUU20/FEfGQTBPU43MGgfAjHkkENqxzh7AqiOGZJvt6ZQaVGEz
 93pHMHJBF+iiWht2FVwfFytJLUfO+iMWtZ9eTDg2xvN6TMRMzJY0BYbg9mhZtQqceGys
 /iTEt3nzRYHJWIf45DAMv/TJKSCaMVPtWXrUAG3mP2q85k3Q1Xbk7SWWZILtK1Cj7Ma7
 eaDfLHM0Rju9gUQCXH2tGCMtofiNohnx5qs1VItkIQ6Shz96HKempRT1Wrh0q5OUgM5v
 hegw==
X-Gm-Message-State: AGi0PuYMeuNDezzbg/W/j6Z4VK8f+/R3DbCF++NnW1iWTcRIm8nYuEY4
 6bLXM00dUL0Icihxkllnun1btTF+TZA=
X-Google-Smtp-Source: APiQypL1qO5gk4S9yB61XZBTaHAwfqKm5rqsvHLKxNwoZy4pDOGIxzEPbmB29G3Qn3esUDgb4aWZqg==
X-Received: by 2002:a17:907:388:: with SMTP id
 ss8mr12277476ejb.30.1586445611572; 
 Thu, 09 Apr 2020 08:20:11 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id y10sm3716552ejm.3.2020.04.09.08.20.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 08:20:10 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id w10so12381621wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:20:10 -0700 (PDT)
X-Received: by 2002:a5d:4011:: with SMTP id n17mr12170370wrp.104.1586445610677; 
 Thu, 09 Apr 2020 08:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
 <20200317155906.31288-3-dev@pascalroeleven.nl>
In-Reply-To: <20200317155906.31288-3-dev@pascalroeleven.nl>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 9 Apr 2020 23:19:59 +0800
X-Gmail-Original-Message-ID: <CAGb2v67LajWuoYChYhKtnf6fhd+uafyL-14_B0LHSS63NZbVJQ@mail.gmail.com>
Message-ID: <CAGb2v67LajWuoYChYhKtnf6fhd+uafyL-14_B0LHSS63NZbVJQ@mail.gmail.com>
Subject: Re: [RFC PATCH 2/4] pwm: sun4i: Disable pwm before turning off clock
 gate
To: Pascal Roeleven <dev@pascalroeleven.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082015_216200_7A99D7C4 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 12:00 AM Pascal Roeleven <dev@pascalroeleven.nl> wrote:
>
> The clock gate must stay on when disabling to ensure proper turning off.
> After one period it will still be disabled anyway.
>
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
