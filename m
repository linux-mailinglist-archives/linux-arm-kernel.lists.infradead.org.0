Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F2A150A45
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:51:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCKiklADJGNTJ2YWE/V7JPp47vyXbqk9M+Cm41+tcHE=; b=AFACOJwBQd990p
	Ocl2cNwz4qogUiT1TD6jugG5j/k6OWqFD76zD0o53+Cjo1tVgR8YZzE4cuoUiT3MhWitXEQqhV5Fc
	7OQ+s9S9CQ+wj0n2bBl2OVlmu8bHTNfYa8XGV7jQ5IvrQHHUvT2KS0bhZKWzMhJVQbB43ADfPWyg6
	Id7U73LPqrQkfSFhJfdWHQsZoQrPgyCZgQZnchtB05IUtGorreu9737h+P//vlMzu/GPD9nR0EWm6
	ejexlNEMRAk8HzXpxy/qD4ZwaBwNQzNnbgjt4FOMpTL+U9BWGmd5Ny5BhpvZgEb8yRFe27Vj6mV3F
	LnkRQsktZj5yj2GKZJ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iye07-0004Vp-HE; Mon, 03 Feb 2020 15:51:03 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iye00-0004VN-V6
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 15:50:58 +0000
Received: by mail-wm1-f67.google.com with SMTP id p17so17782624wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 07:50:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2k2kojlNxd6DLo6ZxtPDv7dwX5Kkpi8+VuIoDodoN/U=;
 b=sZVHmBCbXC1rr7/DD7+jQKmQz+m2uUAWVQHCs605OQKkaEqfX2wZh+HZ4gwddlitDG
 EMGUcvaBuJLyjkytH8gSHQx3o9kvW1XHUiu+JYe53p+alA45pbXYvxAAS+CUzctj6XZO
 QcvcluFdmOkJ1AYprt/LERmHlLnqvrWHl3EXlD7HaxtbQA1itEEprAyuNctfYUT3b2oa
 bMwHm2AVMDAr8y76ai3WN3IVAX2cdjFuB/yWj3Be2+vkRMbP7PIuEf+PUz4gtZGi9Hcf
 qOi16us6rb69PqgCdkK765zXU6DP71gx6kHrYDCUIYraVIzPCYmzJyu9tdHj0/aB8W2P
 qAGA==
X-Gm-Message-State: APjAAAUxK5opdNUXHk9AX5IrK4jDYZ7M+qt6eV7E/cTQi6Hi/NzPERzO
 gXimJ5rcTNUCvD35332A+g==
X-Google-Smtp-Source: APXvYqyRfaAh3JGytPrKq2wtY9lyEdrbniGXSqLRqcVdhsb6pMyhheXASqBIVxbekNRZP4jDij2odA==
X-Received: by 2002:a1c:3b0a:: with SMTP id i10mr31837445wma.177.1580745055783; 
 Mon, 03 Feb 2020 07:50:55 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id w8sm24091252wmm.0.2020.02.03.07.50.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 07:50:55 -0800 (PST)
Received: (nullmailer pid 25905 invoked by uid 1000);
 Mon, 03 Feb 2020 15:50:53 -0000
Date: Mon, 3 Feb 2020 15:50:53 +0000
From: Rob Herring <robh@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 4/5] media: dt-bindings: media: Add Allwinner A64
 deinterlace compatible
Message-ID: <20200203155053.GA25849@bogus>
References: <20200125110353.591658-1-jernej.skrabec@siol.net>
 <20200125110353.591658-5-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125110353.591658-5-jernej.skrabec@siol.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_075056_998235_60793FCF 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Jan 2020 12:03:52 +0100, Jernej Skrabec wrote:
> 
> Allwinner A64 SoC also contains deinterlace core, compatible to H3.
> 
> Add compatible string for it.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../bindings/media/allwinner,sun8i-h3-deinterlace.yaml      | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
