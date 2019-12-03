Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBAF111B1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 22:40:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyQYZgvCHPMfz5VIyrOjPbXBdq+fpRkClPGbQ4Iih5w=; b=nzhCwdLxgxTM1p
	N9+CT0LcpyvjpizDmKAzva9U+AVyCRpowQ5X/e+M5UWzuJLWIkgVDNxtuDxNvKMHmUYXxh3osLqkT
	5nRVeHvb/ST1cli04AMVdNaqWOG+RnE6OWRiwMgdCyzZLtNZPnWuqEmhhvyQiwlBboKl4ZfwenJE5
	lYSIISTxqHLzJdh3OwU1OcPpWkWCuv8heK6GrgMNzBQoBfPMk7/Q6cYqwtjG41QtAKW52/Pf0M4sY
	n/REj2r/YNEdt8gNIkbHo89tpPX8i5Ku3Jw+WOXOy+y9Z611jGZQzez1JNzUx7EDTNk182vLnRIoD
	LUBkeiUiG1Y2McRhyBFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icFuL-0001Qi-5M; Tue, 03 Dec 2019 21:40:33 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icFu9-0001Q9-CT
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 21:40:22 +0000
Received: by mail-ot1-f67.google.com with SMTP id p8so4340557oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 13:40:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hERvSaz66SkiNBwQoTtBUm4Hajuej4GF7gNQy5oDEtA=;
 b=hhOfA+i2fdsDL6O6ZsTiNbIMH4hAJv6wbrM4QeC2x+7xjCqXEuXr2esKUXsQa+k9Fx
 6DoOLTScy2y+sf5g0YyDVMWtyHbJfnoazD32lfRmypjuhgCCPPXJM1CYDJRLR5o4QGkE
 PfewOwtasmNi30yjjzeUdbZAamEO4/iOvW5Q3/Rf+RkYPjPE8xg2jPdG5x3YgjAbqlHN
 dVyRlo2ruNPsaTMNK3qRVxDpgKiJHq6ApiHOILuYDHQ2QEiP9jPzu1DPoR0HNnmHxcWT
 TCxh1nZow7p3jGLXA90RxDlt1mYSdvd9AYhKlUe82XqQH1BxtJxHUjz4ZuE3euY10s6J
 +7UA==
X-Gm-Message-State: APjAAAU0tbJ0ClJdfWfJjuQToiK7+rxZbJT1cMk8LybdrX4WY2xR1pa6
 q71XSJcMw8/DTlCFUarldQ==
X-Google-Smtp-Source: APXvYqxf17ZEEJHtpbzNPWQPDQrchks+zHBzzA9aGw9kjrzAjVDaPbPgWRLQpOyzkE7L0M5bx5LpoQ==
X-Received: by 2002:a9d:588c:: with SMTP id x12mr24016otg.2.1575409220365;
 Tue, 03 Dec 2019 13:40:20 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w123sm1552436oiw.47.2019.12.03.13.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 13:40:19 -0800 (PST)
Date: Tue, 3 Dec 2019 15:40:19 -0600
From: Rob Herring <robh@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: ab8500: Document AB8505 bindings
Message-ID: <20191203214019.GA24180@bogus>
References: <20191117221053.278415-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191117221053.278415-1-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_134021_438661_5A33517C 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 17 Nov 2019 23:10:52 +0100, Stephan Gerhold wrote:
> AB8505 can now be configured from the device tree.
> The configuration is almost identical to AB8500, so just add a note
> for the nodes/compatibles that differ between the two revisions.
> 
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  Documentation/devicetree/bindings/mfd/ab8500.txt | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
