Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E436879CEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 01:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhDvIMqrAVsOjnvygGpFU8X3gFwjkdncgwVis/hODbo=; b=cfzbm+4/aGNW9P
	D9hHAlwrsYiU6rK4iMjqDvbAiIyeGQ+6fcikkD6aHFCjm3Izzj/zjXYdR2GwVF503CL937T0qFoJC
	77jcWmjowcRYVsnt5PaVIEYBUxIuTGjwmWo+Xc7fiHq0XSnhUmCBx5m4n0bwhCkTpd2ehlprafQUg
	9A4WCDcxLYK/pZL/gMACxpgtEAMkvTxJVz8JaeOy8ZIQlkqt+M+Ld/8aDaSj/FiDAUqzfiCoXWOq2
	54CfL+o+yMViu62+G81v/P+b52LH0v51zAituJy1rc6BhDwwuKSmJSzjO4J05r0FipycPMvIMYAGE
	NCCabXTKdHsfA7c1F7kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsFFy-0006ne-I8; Mon, 29 Jul 2019 23:40:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsFFm-0006nD-Vs
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 23:40:32 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F967217D6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 23:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564443630;
 bh=7+dKYuXRCa5ZF1sBBLaJXHlVEQeYcSawe/De6ZYjmjc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0vDcQ4xj3eYYqyHRsoPwWx4XMC9sn9G3ZnGDzKIxtBwXez3BEMlcv+otZT3btTl1j
 o9/II04NLT9fbKTQsjCZHrJeE7u9Dss/066Bou0MdQFSlAmalvBllLKkVu5hukB6Jw
 9WnY5rgoztDcU/orTdQkZ5PGL1fqvcDi7lINf4sI=
Received: by mail-qt1-f182.google.com with SMTP id 44so30224383qtg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 16:40:30 -0700 (PDT)
X-Gm-Message-State: APjAAAX+nMoqAb+wy5uCMqjlwlGy/dJbLPat6Eip+D4QjTOfrVQ18vIx
 4XyQDECf6d2XMJPXmb8nf2alV9zTAw3i9vNckw==
X-Google-Smtp-Source: APXvYqyaCa+KVNuh9jCj7c0XvJUMcuDC4MQz9V9TU0flj76XUMhpBDn4frU2dByCzFiQI8HP63DdqNt3RAGN9tT5U6Q=
X-Received: by 2002:a0c:baa1:: with SMTP id x33mr82268862qvf.200.1564443629749; 
 Mon, 29 Jul 2019 16:40:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190729055604.13239-1-andrew@aj.id.au>
 <20190729055604.13239-2-andrew@aj.id.au>
In-Reply-To: <20190729055604.13239-2-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 29 Jul 2019 17:40:17 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+0f=jWJ2QTNzi+pmvzTpVacbP_C0zgpOwTumwJU7Gh=w@mail.gmail.com>
Message-ID: <CAL_Jsq+0f=jWJ2QTNzi+pmvzTpVacbP_C0zgpOwTumwJU7Gh=w@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: pinctrl: aspeed: Document AST2600
 pinmux
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_164031_043955_44825088 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johnny Huang <johnny_huang@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Ryan Chen <ryanchen.aspeed@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 11:56 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The AST260 differs from the 2400 and 2500 in that it supports multiple
> groups for a subset of functions.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>
> ---
> v2:
> * Avoid patternProperties for fixed strings
> * Don't needlessly quote strings
> ---
>  .../pinctrl/aspeed,ast2600-pinctrl.yaml       | 115 ++++++++++++++++++
>  1 file changed, 115 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
