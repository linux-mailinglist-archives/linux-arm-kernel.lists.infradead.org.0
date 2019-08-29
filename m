Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ACEA1A03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 14:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHokj+UVo9hZxBeNhXDPNfg18BjWmDEWo8zQV9ABxJU=; b=ho692glLL+h1d4
	S1oEC3aQyYQQU4VI166NE7VTeW5tPZ8075zqLAPnx7fHFYg/SQ8hOieZZ6bfbXCoOHXLKj8cZBfdt
	vXsFAuBVUAuckOjkG95VYXqBrSWtN4kvbtVCG2tmv3XVkt3+Ws/HSoD7G5asptmczHzZfPXfFBdOP
	1cmOyExmOsb97VzNQ0zhmEkhO9Vcwqn0sVDRT0DuNchipOyLjxMQEKyxdn/pjNPiuR6tJ9ht+0Gf5
	h69dTWXmiTIjEdKJhAuLyBQqIIibMzPeoU5HVar6N/b8epb01JlcLk+opSz1TdbOEf3z3/3wLO2Q6
	ZZa5r8VO0Rac4vtxLpSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3JWG-00049K-Nr; Thu, 29 Aug 2019 12:27:16 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3JW2-00047i-O4; Thu, 29 Aug 2019 12:27:04 +0000
Received: by mail-ot1-f65.google.com with SMTP id o101so3168015ota.8;
 Thu, 29 Aug 2019 05:27:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JISakUM5CfOU3yuiNb3Jx9kDoSgKiU08qnHS4spuyBM=;
 b=uMx9T41sHl//nY5JJ9Y8T3Put5bPxr0LgMqkAglGq7uqr9th4wDOOtFADiqIT+0wfM
 cfEAIk+lp2pPPC5wJjAIFnhRZczDi9rT1Nl/G6SpM8IZVoPI1xDrwCYwwomhAsJUMI5g
 hoVCIHpRphZFBV8458/yce/QOk5E/bATg2p1zqQ8MmyKCx8T11oH3+MZvgIKpf/ThNxb
 MjY0heclaxMkUF7klrWa7L+bD9427dq/CaLkrv13E8lNdvt0jUgRdYrIOw3Ba2h4+Jcn
 lkXJ+2b2qPet2VzNpk0jRULmQAGfiR52yi4NfYGxko86uUOrv2G1octTEI9DTl2yxUFp
 zxBQ==
X-Gm-Message-State: APjAAAWsdXCsvPh2k9vhFOwn5Mkf0ABWqc+76x8h3t/XlKKBNB4wWMqF
 B51VktLE8VJn8lw9Vb5dyw==
X-Google-Smtp-Source: APXvYqxQFzYed8B8VKY779L9N8Rwlqs155UUnDupIGmcQZ1ooy42GSMcysJRv7n+ECaVUK2B9ONlyQ==
X-Received: by 2002:a9d:7dc6:: with SMTP id k6mr6756221otn.99.1567081619385;
 Thu, 29 Aug 2019 05:26:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a94sm708682otb.15.2019.08.29.05.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 05:26:58 -0700 (PDT)
Date: Thu, 29 Aug 2019 07:26:58 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: amlogic: add Amlogic SM1 based
 Khadas VIM3L bindings
Message-ID: <20190829122658.GA10660@bogus>
References: <20190828141816.16328-1-narmstrong@baylibre.com>
 <20190828141816.16328-3-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828141816.16328-3-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_052702_787978_D759D69F 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 04:18:15PM +0200, Neil Armstrong wrote:
> The Khadas VIM3 is also available as VIM3L with the Pin-to-pin compatible
> Amlogic SM1 SoC in the S905D3 variant package.
> 
> Change the description to match the S905X3/D3/Y3 variants like the G12A
> description, and add the khadas,vim3l compatible.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
