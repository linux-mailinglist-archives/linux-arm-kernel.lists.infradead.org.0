Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA35D42FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrWEEt9eVC9FbvyqPptXaekDcah1IorwrFUzPaCw6vo=; b=MNPs0UNq/AgTsi
	c6ugCYQWk47CHvhoYNW037sYteChHT9ioGPw2wp7Wekl5ZmVS/uARmVBItNKRWmIWE0rQSjbXOqI7
	SMeF9IsmQGF863RklfKK/nIohBYLr4kYE2QlAjb6CFvUCiiUscDgjCplMPgFz+gpIcLfx4USaqO6a
	W36RcMnnJ88LrZhd22Hx6BaY8n6Z/yx/rMDwWzJwxrJC2FgepAQ6UeH/rtakYWxVZ+h8oeQO3Nhee
	3EFBU8DccXTuBzO7M0pG7oAFIsIEl8Kll8UmOR3XIseEiuCCeRq48AUTiAHOyXQCkZzjVMVRspSg9
	MQzGXbLzxq0HxwPtyNmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvzx-0002Nj-UK; Fri, 11 Oct 2019 14:34:29 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvzn-0002N9-Vt
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:34:21 +0000
Received: by mail-oi1-f194.google.com with SMTP id w6so8124699oie.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 07:34:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YUH271mTXQreBz5XUgzwRk8D+t7/xc/m3LDI2Ub97Uo=;
 b=n/nLeFOBGAmODrc3CuDlkZIoq8cGZrqh5PzhzdZAY/bnB+QGz/lK17wkIuPQuxb75V
 7e9w8si229NNC2YxFDZWLhbmdf+SEHc+f4ZobKpE6vMXAABQ330k9jJWQLzAHGA5DinD
 aaARkLpcPovH0/vN7O0hk9J9d58bl7GO7BgANrYBN+PnQZ/ort5Y9u+7SS8D1oblboA1
 za0pZTU09QM3FP81eAp+XT7CNh4RUc3cn6RzvkhRvtcaVV4gh4evFtDjhjb0AjVDEBNR
 6cDDV1uIhzaKmJ5vIqyLPpR/VAxAgJAJ1IjFG5dV83dj2m6b4A9MA8Q3CtQPlLXIx1Ti
 Zeuw==
X-Gm-Message-State: APjAAAU74BxtfU1RDJjLsO12UXsGthSXPAVe9pG8lKc3p41KQTDCC07Q
 pneM+c4XefOB8V+S1Ej/Tg==
X-Google-Smtp-Source: APXvYqzebcLKEqGNREYb8fQjDLoM9X2bP/d8/cZlSGqY3GcaIhWsdltfVEmMYZC+jTuJrj8TOcDRCg==
X-Received: by 2002:aca:ac88:: with SMTP id v130mr12798935oie.11.1570804458804; 
 Fri, 11 Oct 2019 07:34:18 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 8sm2728496oti.41.2019.10.11.07.34.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 07:34:18 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:34:17 -0500
From: Rob Herring <robh@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH v2 1/6] dt-bindings: bus: sunxi: Add H3 MBUS compatible
Message-ID: <20191011143417.GA23475@bogus>
References: <20190929161653.160158-1-jernej.skrabec@siol.net>
 <20190929161653.160158-2-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190929161653.160158-2-jernej.skrabec@siol.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_073420_025233_34691DF6 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 hverkuil@xs4all.nl, wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 29 Sep 2019 18:16:48 +0200, Jernej Skrabec wrote:
> Allwinner H3 SoC also contains MBUS controller.
>
> Add compatible for it.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt | 1 +
>  1 file changed, 1 insertion(+)
>

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
