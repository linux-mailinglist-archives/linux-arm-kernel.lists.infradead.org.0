Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9F670C6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 00:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCu8aFxE6oe8Ziw/PZEYzDM7AKeKsfPPoKJx/IMn5iQ=; b=VAbOFeOlWnNzO3
	gx8L0hH1Hc7swyV/ttRQI9/jXajQZGDoG/u/0YgjmBa7Qmt3PoXXYRRX5GcmIJuDebQa2Z/tsRlZE
	4oiOovmUIxhdxN6dkkVxV0iUmw1AIEfCDPdYdC3UuhYmQxPK/9iq6DeUitLUzMhp4oAIJnOu9Ju25
	Thq/l4RN7qCC0Z6FOIIG8zZ4sx3D1d4YXwnf6oVBDBbWIQE+NonjvzWTPuz0GxeUmG+cMyfZSDsdT
	57GB6VyZv/pvDC5WbEX6yHrh3MDWQFz9uWwxxpP6M/nla4WTrdewa9dZLP8Im0+g+7UTiihk9Q55o
	4JsC2TlCzvejBWiBPH9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgXq-00063Y-PP; Mon, 22 Jul 2019 22:12:35 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgWv-0005qy-SQ; Mon, 22 Jul 2019 22:11:39 +0000
Received: by mail-io1-f67.google.com with SMTP id o9so77566136iom.3;
 Mon, 22 Jul 2019 15:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZZjeYarbm2uHTbPqEU/SfJr1OMvMhmzpfbxIokfphLg=;
 b=ef5vPuQlpbO0UGsT8w75iGFGzqwSlBzvfWU7LgtYX3NYqQDYKZfehpwZfZOqS/qR4T
 F0gJ6wHdita6Pd+10SefG2EVJJ/yNrN7HcLe8dmnv0Z2woF977hU7apmF08+qHp/vxvz
 g0jjHiDq5jQc+EQreAGfwB1jbeOAROXCRVNvtCQAZzp6Qz6p+UUJiAPZpKIxvxANMpGl
 mODhPsN928Q4Ke4Ki2C5i0mqvWmGTOwdYYGwbn6Tbhp9X9aMYDNSrPrTtRJQ8GjClnre
 FYaViAwUG6MgCbrdie4bLoYpEFgLuwDMvg3CYkgqv/tbFwTAuLDH5HYevzzPrsLe6oh2
 shJQ==
X-Gm-Message-State: APjAAAWvmGla7dbm2Bozxdqa6T/BnEebBPEfy1S69uIL4NjAzu9rsrm8
 mYUukQV/7F0eWC9XLyxsjQ==
X-Google-Smtp-Source: APXvYqwybodqBsnRMzwxflKMmSxt7BwWQbvI4+93D/Ql0XrEVFvtTEtzmr5T6L7GyUnVm3y5riatKg==
X-Received: by 2002:a02:a581:: with SMTP id b1mr4163149jam.84.1563833496727;
 Mon, 22 Jul 2019 15:11:36 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id p10sm58670815iob.54.2019.07.22.15.11.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 15:11:36 -0700 (PDT)
Date: Mon, 22 Jul 2019 16:11:35 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [RFC 07/11] dt-bindings: media: meson-ao-cec: add SM1 compatible
Message-ID: <20190722221135.GA32382@bogus>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-8-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701104705.18271-8-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_151138_259848_7740CD08 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, jbrunet@baylibre.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  1 Jul 2019 12:47:01 +0200, Neil Armstrong wrote:
> Add AO-CEC compatible string for the Amlogic SM1 SoC family,
> a derivate of the G12A AO-CECB controller.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/media/meson-ao-cec.txt | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
