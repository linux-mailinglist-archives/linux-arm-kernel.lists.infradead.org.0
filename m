Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25CF170B3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 23:08:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xM9gLy1/eDWXb23rWJaH2GxWx2JIn+uHsmv9DKhuYs=; b=W+OPzGSJy+Wcc0
	9QM2cfztTmQY977VRJB5QlUYoXpoczYAq1nzCqPejcC77atP/TEc3ApCh4RiP40TEzdnROmQxwZbB
	OphMoukTjduo7FB+6FNqFpldyzIEEgYB+7pY4u+iJUEFV7DkaVfXWQbGjSibENO+Kh8gROkAVaJo/
	yIVN1esnunKCsAqaUuqFxG0nYXBGBP4QXNtU8i+J0m8u/M13FnLSv1FLMsXALm+CmiNkOZEk+W/LM
	CpurVpe77goD97xFm3oVMZSU3qAktpYk8X37hEj6725CaBHhFEkA4UDWaYCwGcQRaDEpZJyf/GysN
	UsfSeWcLXm8syWKZSRAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74r6-0006Of-Mv; Wed, 26 Feb 2020 22:08:36 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74qt-0006Nq-93
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 22:08:25 +0000
Received: by mail-oi1-f193.google.com with SMTP id i1so1171069oie.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 14:08:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5sk04Aa0osSD8HvD4zEQiuhG+Svc22FeYyxbfTqw7T0=;
 b=WMcbVABse+bvxQOoG6DAHO+ZV+6LEdquQYN4uTta4ORoFGP9sZ2abvbiMggVErVrQk
 XW61qLyzYV0K82+W4JEUFBMBDVDR8GrGEm6RM3AFhVnVRXPUSpw3k+YNTG7WOaFJ8JsC
 kw8RDW3hqz8YhwsgtrAO6Gme/REmzBKveQ321wI+sCgEKJGGj5qEHn5hstGnFJ5hgiuL
 GhiHjj4Lu9FbP2+DqC6o8XiSI4/i2WatQexE94A1fais+yHKpPGMW8wtUfZ3Jyp6mq9J
 or0XqjV6wAAE6iFQgtFT0dPuCaepMauZ40t8K9/CHCi67SIR/3UuIlYXqscRzidRTShq
 sDCQ==
X-Gm-Message-State: APjAAAViDD390aMPfp9/Cz76ddBN7sPSZx7FoWc/WFBUFBpekKUif3BY
 aStf+/Uct+EZAQ9LLLzR8g==
X-Google-Smtp-Source: APXvYqxd1SsKO6HCPpKNN3ewCCxV7z2W8Z76dRsKMhAF2AJ+0XISi4LTkCEmr5LiwzRxiH6hL8yI6A==
X-Received: by 2002:a05:6808:3b2:: with SMTP id
 n18mr933712oie.146.1582754902605; 
 Wed, 26 Feb 2020 14:08:22 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m69sm1215131otc.78.2020.02.26.14.08.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 14:08:22 -0800 (PST)
Received: (nullmailer pid 19698 invoked by uid 1000);
 Wed, 26 Feb 2020 22:08:21 -0000
Date: Wed, 26 Feb 2020 16:08:21 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2] dt-bindings: bus: Convert UniPhier System Bus to
 json-schema
Message-ID: <20200226220821.GA19595@bogus>
References: <20200222061109.2021-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222061109.2021-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140823_316439_A239CCB5 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 22 Feb 2020 15:11:09 +0900, Masahiro Yamada wrote:
> Convert the UniPhier System Bus controller binding to DT schema format.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> Changes in v2:
>   - Fix the build error in the example
> 
>  .../bus/socionext,uniphier-system-bus.yaml    | 96 +++++++++++++++++++
>  .../bindings/bus/uniphier-system-bus.txt      | 66 -------------
>  2 files changed, 96 insertions(+), 66 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
>  delete mode 100644 Documentation/devicetree/bindings/bus/uniphier-system-bus.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
