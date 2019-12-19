Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF890126B46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:56:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKyKNqnlj6+IKH2fOyKqbHlFx6iyoZAFseucKGMOjgk=; b=VcD33OGBMfp6AW
	upWFGjVVsw66zxXp+eI2incOXDm9dL/Y/VMfuLwFFzGSMZTjX+xqZa0toiXkszQdk4cIV60FG+LcG
	XhpfSCLvQBSANlf6zUyJd22zXOdS85Q87jIzE0j/0BS6P5au1+u5Nv/5iOgD31J1G0OA8gxhdwTVx
	Gel/1vh5Iv5wwno95v4wsuZvfuJyiQIMmgASiP5eREfyHYcVTFE0TWrD1SeRjmNmYmfsY1qhJjbnR
	GYkxLuYNXB1FD1e44m4PTeACAxtRSluu4gu6b0ex8FhiLPxBhL/teGw8/NCrpnC/4PTb2jaqDXOJd
	wuvL1qgX6e2Hoajd/muw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0xx-0007lR-7f; Thu, 19 Dec 2019 18:56:05 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0xk-0007ka-VW
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:55:54 +0000
Received: by mail-ot1-f68.google.com with SMTP id b18so8431904otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:55:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wXgmx2Ya6ChzyKkm+w7jzvBT8XbvFcpO0BqUgNxYIdk=;
 b=VaUmyt8WMSNpfK4LifpeTz08KtjXVrYv0D8Mv51QEVEPDcTs32an96t/c6F76eFZ4/
 3ZTbR41AwMsPkkZaUkhhgtXIE0XCxOgeMHpYUZH6b1IZ0xPimcV4wHIMcbJqVsha/Nns
 wkElEJNv0A4cJSlMFQ6jSOUND4xJIa+HK9Rh9PnBxIZ2OKagF/Gh5QZW9ss6KsYo/vHf
 9S1LNjp2IQW7M1ynzQ7aKBKsbbQvcRWmPxjfMLwb7WIW5YeINC2+/jDbp+XQVnYkp++c
 HWrIjVd58i7B+oxZkXLfhrHkKqr/LxNPSmQotVCPqtk1jbrGvEoRULEmMNFEzyzesiB0
 Hq9g==
X-Gm-Message-State: APjAAAVXlaoNqf4x5iDgvt0cSqPqbm75G1yXTV871eyCnyfrBcLnAOuz
 HOfdv0qb31OPKskgcevP1A==
X-Google-Smtp-Source: APXvYqxeB4DOtUVYcpXXJFu5X4OixvgM6U/N50o8s9FjCHRYhR58jeSq3kd209OlqlF1nvQCEA0K2A==
X-Received: by 2002:a05:6830:1047:: with SMTP id
 b7mr10714492otp.77.1576781751311; 
 Thu, 19 Dec 2019 10:55:51 -0800 (PST)
Received: from localhost ([2607:fb90:bdf:98e:3549:d84c:9720:edb4])
 by smtp.gmail.com with ESMTPSA id e6sm2414722otl.12.2019.12.19.10.55.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 10:55:50 -0800 (PST)
Date: Thu, 19 Dec 2019 12:55:48 -0600
From: Rob Herring <robh@kernel.org>
To: Hanna Hawa <hhhawa@amazon.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: arm: amazon: update maintainers of
 amazon,al DT bindings
Message-ID: <20191219185548.GA4637@bogus>
References: <20191209161341.29607-1-hhhawa@amazon.com>
 <20191209161341.29607-4-hhhawa@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209161341.29607-4-hhhawa@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_105553_011957_8940ED02 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, nm@ti.com, heiko@sntech.de, jonnyc@amazon.com,
 mchehab+samsung@kernel.org, ronenk@amazon.com, khilman@baylibre.com,
 hanochu@amazon.com, tsahee@annapurnalabs.com, devicetree@vger.kernel.org,
 antoine.tenart@bootlin.com, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 tglx@linutronix.de, talel@amazon.com, linux-arm-kernel@lists.infradead.org,
 benh@amazon.com, barakw@amazon.com, hhhawa@amazon.com,
 gregkh@linuxfoundation.org, chanho.min@lge.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 16:13:38 +0000, Hanna Hawa wrote:
> Update maintainers of amazon,al DT bindings.
> 
> Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
> ---
>  Documentation/devicetree/bindings/arm/amazon,al.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
