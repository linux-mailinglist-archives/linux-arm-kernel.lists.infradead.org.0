Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B941383989
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjwoQiFwhBBW1yoo7dBP4chPnXqyu0v+AWE1Ul/pSxw=; b=vCoRh0Cr5H/4tt
	KgndgLbco2JRf2/8cXl4zfKDh5u6F4vpG9dwEkN+1uQ2Gst/ZWaKVWBX4PcG/vspt0MOb/FzCcJ+x
	VuJA0lBZNaPCfC24k0CKAtmhPSzyAxRp+6us9AkV8E3EzhG9V/iGXrEt8jBcQjXgEtttN7CWPmpeS
	WW9j3el4mUzprA2VDsguvxEq5dFeTTX5eUSYLNQ9VziF6MxWcoyYVyicZ/LQ9pf8ThWgyWv2mcrIz
	PHopIVm8+QX2biPxqwr/0NBaIgZjmtrfOlpKpsXl9DmzqnF9DG0EfDRGwIppebT9HRtkIc4gEWmEC
	RfqQw0aX1E3zBNLx/5BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv51u-0007HX-Su; Tue, 06 Aug 2019 19:21:55 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv51l-0007G9-91; Tue, 06 Aug 2019 19:21:46 +0000
Received: by mail-ot1-x342.google.com with SMTP id x21so2025300otq.12;
 Tue, 06 Aug 2019 12:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SplwwiyeESrOxdFMQX+Fq9e1EkjSANi0+FEZLNzZBcw=;
 b=GTcns9OqwCG5oZbTUpNed9xNrtU/wRovnmqXkxfiThQYH6oTdEADwNbZwptfpFbeLZ
 DRNZm5fv6NGKHl+aw3DgDkUv+8Hb0+z0NurH80Hx2qzc+tmR9n1fUO2KeGBk/DsG6DMP
 BxeY4pbMONjTKI4MDrATtmZKZQjT6ce1QDOmuCFrMTvRMf4ha/Nq1mIsqBcbckoK4DYO
 if8qyn51WhvfLuv75nZfIMnI1pFwrmWS2SQIBqO7lTvuKweEjVw9Wv8pqP7dCXLvWu6O
 L3H/qgC3UbrXazxyJbW2szCYBwWEYticiaDOosYIxOj0mp1WYeXQBiQbWO/LtPjxzLnK
 oRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SplwwiyeESrOxdFMQX+Fq9e1EkjSANi0+FEZLNzZBcw=;
 b=fxjRJo1MmqceFRw6yVms8HGwMvYDm4jEF31bvly5wdiLXHfS7gs8Uuj5sFmsEyYU7B
 pF1LsqtVB4tLtVh2IeFWP4obSgzVW8jlaXEIHaZE42sbLUhug9SNm5b3GMvg5N1jE0MY
 vxQ7lZQO9N7GLHQy8b1PMR3nuy/nMLGqg8ac6TYgTq9BV3Sj39Tcq3HHSGaSm7SKf2Xc
 2XCP2NiISjBdnFV1rAyE6lmioIhITJqYmsTKNwYpPIXHjDW5DE/XUqoP+Y42tzFDdDpb
 wAUYHQdEjUI2otINR+5ka64XFldfzYB1RICiDTKtJcM5dH2MYVfXOfK0iM5EtZn9QmNc
 jRjA==
X-Gm-Message-State: APjAAAUgxQU59vdukssIpjlE22y0xCIaLGM5gTI2hFSIgkdT1buuLxIa
 Tl6G3RDqmFmfCmqVNeEagB0fcl8ZNyzKebMPErlJHagD
X-Google-Smtp-Source: APXvYqz96GEQwQHe2/BNEUUe8sw0fk/npT5MtyHckYM2U7saF9YCBqZXlcIMLhzLoWrU0hflGxn5hB7XTEVnJCAQXvM=
X-Received: by 2002:a05:6830:1e5a:: with SMTP id
 e26mr4117308otj.96.1565119303263; 
 Tue, 06 Aug 2019 12:21:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190805120320.32282-1-narmstrong@baylibre.com>
 <20190805120320.32282-7-narmstrong@baylibre.com>
In-Reply-To: <20190805120320.32282-7-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 6 Aug 2019 21:21:32 +0200
Message-ID: <CAFBinCCqpSkzNUNz5pbct1G6TEsLF3AHLH=kqqXgwY2wzPCawA@mail.gmail.com>
Subject: Re: [RFCv2 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_122145_320979_44394CE7 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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
Cc: kishon@ti.com, linux-amlogic@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 2:05 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic G12A USB2 PHY over to a YAML schemas.
>
> While the original phy bindings specifies phy-supply as required,
> the examples and implementations makes it optional, thus phy-supply
> is not in the required list of attributes.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
