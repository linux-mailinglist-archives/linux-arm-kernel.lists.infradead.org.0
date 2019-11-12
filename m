Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41B1F99C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 20:31:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/RwoSHue0K/j2dNpy8zBi7sEiX7IBLMsR2TixQYlJw=; b=jvH3EQwJ7P8BZv
	lEyq9XW5xHLto1Qvh8bd1HkdmJpceGfzQMUCbc9OABZz5w4rAM1lziSd+iu3D+d3G4VSkflbRkizy
	ZAXUg4V5TdBHHx1MJi8TJqcSbFCBTf4/cAKvDnbYQfe1Rn8Cj2cqUZ/xrixXia0tHzXx5WiTLGoma
	ptcHsJ8cuOKAWmqfyFP2d5la2MUbpY3kw/usIwD7dKun7xfVoG+FD2XjgJXlJefepTLMf+XsMAVt3
	ErAyfvXkyrrEXr1CkBZhjEtFbzxOHqM8Nch23hfYIXcoL3q4IeGk61o5otpeKkZ0yF9tCIdkUm8IT
	iZxeSiYGDBY2dltd3WXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbt9-0000Yq-JI; Tue, 12 Nov 2019 19:31:43 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbt2-0000YN-1z
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 19:31:37 +0000
Received: by mail-oi1-f196.google.com with SMTP id s71so15907675oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 11:31:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=fQ8tuKZ2UW9QCYz0BR497mmF0XiSrRa5eQinsz9A154=;
 b=UrRug86s8tUfNqBVIhQtH8E9C5WvgCDSsrj5NKBOPb16lG4HMQK4wIWFktQtcM8o7M
 XPbty3gdfR4YqxsTzcAZaNmJrVTWRsq0e6B1Am2xEGIQxA+KmBIwBSG3cvLfS1yUJSFf
 TExkS/WKo9WuxIYkYjtHZJt5hDWrSNX37fFoS6REXyowUCuW0ZxPtTq+zjAtTe0e2IBc
 bql6HKxBijJwSvseaJr8Lc5SpZ1qAVORPovidwicjzAEsZfE+MYUUfmkon8hRO3gBGAP
 MM9PQZQNlqfCpA00q5htAQipqXjLJnYxnQQPR7zAtjqMZ1IbI0BgQrWVjnzTCJUBUFk4
 RgVw==
X-Gm-Message-State: APjAAAWuolpQZbQucAFDdcnx2fIT7HKR8w9c9XKwDuf4iFbPQp3yvydS
 tKZ5olG57sUPD6Ut8PbOAQ==
X-Google-Smtp-Source: APXvYqz6AhgOyVl+Xgvdhm4Trx/gVZNkFu8ggUGq6yRbip4wF4kcWnuuo46df/TkPFftZd8m7FNXKg==
X-Received: by 2002:aca:5301:: with SMTP id h1mr522205oib.154.1573587095176;
 Tue, 12 Nov 2019 11:31:35 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d5sm5903145oic.23.2019.11.12.11.31.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 11:31:34 -0800 (PST)
Date: Tue, 12 Nov 2019 13:31:33 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
Message-ID: <20191112193133.GA27088@bogus>
References: <20191108084517.21617-1-peron.clem@gmail.com>
 <20191108084517.21617-2-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108084517.21617-2-peron.clem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_113136_096752_B0888593 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  8 Nov 2019 09:45:11 +0100, =3D?UTF-8?q?Cl=3DC3=3DA9ment=3D20P=3DC3=
=3DA9ron?=3D wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> H6 PWM block is basically the same as A20 PWM, except that it also has
> bus clock and reset line which needs to be handled accordingly.
> =

> Expand Allwinner PWM binding with H6 PWM specifics.
> =

> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
