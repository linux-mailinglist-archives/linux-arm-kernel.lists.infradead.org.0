Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9ECC83969
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+wtCxlqkGT6/SJM83FAyqNrxkd5iBZZuk4Qm9nqRCM=; b=mafq5xF9f92bGg
	QLw6eDZNMUNKbkznXsP4cLlfNplRjevJBbL071QjopM6yU3VjyP67n0SbaMGKigRsM4XVOZW313dW
	g46Ky1+6h0LOBV12Wy/yuZDHH8wZTpPi5OxHOUCfCtWYJ7vKS7L05QnKb4Dr65gEFISItcpRo6ikm
	EeEpP9YCsUDe7EBmM//1JbpmcV1TiYHAKuCZlIEj3XWWvNCzC3yBE9xFNsZqBsKuBngpEUZoE3SYh
	8Q26MnXuG1PkRrIoqXGYGCm2Seqbik7UXloCdr7K3URpGYQzQHWTXi3zRuK4obzsixAdWyAh7Sf6s
	0DchN9mZKLzpMkqlcY0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4rx-0003Wy-EY; Tue, 06 Aug 2019 19:11:37 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4ro-0003VU-FA; Tue, 06 Aug 2019 19:11:29 +0000
Received: by mail-ot1-x344.google.com with SMTP id j11so37941471otp.10;
 Tue, 06 Aug 2019 12:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=csIIqB/IrDwLxPl2lYtUj9WD1Dt8I4kBPcjCQJ1GYDk=;
 b=FWZMw5rM9Sew425w6LoMV3JWYdZyFv45J6PeYPnLCESmUr1QSJ/KR+lmQdvj/ptwJE
 sGELprR/Q+lDFpDt5J8rRhPinv219RUzLN0fZ3YwLVZDSaLeVZjDam/znyeMBKqhDAq0
 IukAZZtnHks9qtfY0F9F9K+IqHL/j2xFQJdjg5z+oIOT2DHrXwPxeco1KLXMmnP8s4NV
 MXMUKdhOZ/addouKfHxBqR3/sbEWBUEflVVYRukqnLtVU5Ecjwp12d2QMoWAK5D6wsXi
 XNBnILgzzY1Rcln3VdrWhNhmpIikpvYE604u7ni6rgELv1JSA+fiWLHQL3dk4yYXsce0
 hjww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=csIIqB/IrDwLxPl2lYtUj9WD1Dt8I4kBPcjCQJ1GYDk=;
 b=Qwc2FUglkZvp7facnSkSdUqKlvHuVoQJnYxgTdQ0fvf6CfqeYusQ2pyRi9zerGbCnN
 7qcbzjaZqih0wQoy5rmZEN5qY9NvwPD0WxK5EgIKzttinrGvTD4HU2Yy+ghbWW2Q4KFn
 pNI3kCsMb5hgrQz8iJi3W3ISVA90IzPyKzzEdjb3wTCLhsIyTz8N8Cinpht61vRLf+73
 qox5T/VK0TxvK3QXmkYatlPAQF7CwBAfHAU5zIq7BUstRQ33STk1kxTFUaDuyTpGfBzq
 PBXnRHuM+/reGjzteKEKg6+VFIz02ehc+Q4zKq3V4cpdrhqmFIchFVgF0+7IYNVpq1VE
 cNjg==
X-Gm-Message-State: APjAAAUYqSQV+ioWAy6mjABfVz3YY+k+m3CwZv2LxG5mjRaBgqMvGbUA
 KaWUfsWdIsQNMhf4qbtcB3LGpn+UCmw9TW94jrE=
X-Google-Smtp-Source: APXvYqwoRzmwN8s0WXpLys3Q35DBxnwW1evWctYoRF/gKNCVFoMTOKHWiSrEdkwTXUkFaAgXbhANT451Z5mIAbm1IxY=
X-Received: by 2002:a9d:226c:: with SMTP id o99mr4093932ota.42.1565118686396; 
 Tue, 06 Aug 2019 12:11:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190806125041.16105-1-narmstrong@baylibre.com>
 <20190806125041.16105-3-narmstrong@baylibre.com>
In-Reply-To: <20190806125041.16105-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 6 Aug 2019 21:11:15 +0200
Message-ID: <CAFBinCCw8sZnmWcHMtEGBrEGqok=3N0qBEaPBZ7_ixLFFtGnGw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: net: meson-dwmac: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_121128_530119_18E8032E 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 2:50 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Synopsys DWMAC Glue for Amlogic SoCs over to a YAML schemas.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
thank you for taking care of this conversion!
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> +        amlogic,tx-delay-ns:
> +          $ref: /schemas/types.yaml#definitions/uint32
> +          description:
> +            The internal RGMII TX clock delay (provided by this driver) in
> +            nanoseconds. Allowed values are 0ns, 2ns, 4ns, 6ns.
once I have more time I will try to see whether we can define an enum
with these values, then invalid values will yield a warning/error when
building the .dtb (which seems to be a good idea)
this comment shouldn't prevent this patch from being applied as the
initial conversion will already make life a lot easier


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
