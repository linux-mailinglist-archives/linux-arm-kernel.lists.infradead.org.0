Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78B6114362
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 16:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EavcKRze7Qjnanv+XFRVFhiHH4M0fzNQnusd76vGaI=; b=pJKsEN77GWFxHL
	+kccmT7Hq9KMmeM95VZ3cSJMIJi7XMMkDvY0W2mORvVcW8/qy1xpHRwWmxU+nl+bpcvzjmfY+zf9B
	guChKvH+hveOR2SMPVIzRu05FzRn6jmaWUO0ksVdWNO/UU7Q8B91f80vG8ZvNp9t9a5LKe7Az2iG8
	uUFwSi7HaxWsSukaMj1AAoP6mjg6jzQVnJVOlR5lG/1zvaS9GckMRmbxENYbyh3d9ck/bAVwCLBYO
	IZwOV5W2l0DSgnhF7advYMbKLNIPMtfpOpLoojllNWFoeRCQ1mRp9/PoNgO5uGAgpdx5fPwMFfxxB
	05AsDXhinZTD9TXGy7AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icstT-00071o-N5; Thu, 05 Dec 2019 15:18:15 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icstK-00071M-Dx; Thu, 05 Dec 2019 15:18:07 +0000
Received: by mail-oi1-f193.google.com with SMTP id v140so3086283oie.0;
 Thu, 05 Dec 2019 07:18:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zqhZAZGkDdkxiUbtVKwjzLYnsHkdCRqaPtvFRBEAazc=;
 b=ODPrZ17qgEtPPZbDDZNFVh3PWPxhetK0q3Utr238qFMOS/KPTvViYUNaJgsrjuNiUJ
 CbVpO6O9G/nM3Nh+V1XmVqpyDkFB/CFCP4KOyYO3qY4K4hXwUC6jG1PHzrzcp7HawS/8
 D0lzm5SkdZ35/sr15+KTqAYPFlaomuARa7ntaMoxIcnHGlon1/zvuws8R6paSm0Fo0w+
 WqM0B78TUc17KVx9ohScToQxMzbPhN1dyv3Vp3nLGNrBCdKN5xqcrnmmfDo9Tx19Qqst
 2lTB+/+M0iHT2cvdMUq6WN4kl2P+DBvqbODxFVul8cE8qAOuUKEf2vE7M22Kgx4qxajT
 BgQw==
X-Gm-Message-State: APjAAAXQqb4kRvvGelCimBmqG8gimI4QtOcaBrRDtMMI7fKVCj0AM1HN
 EFBUK8O+fhUbtbR1dSbdVw==
X-Google-Smtp-Source: APXvYqx7NjjdIbgArEWQaF8DmmYAXEnb3idpC0UtmO9ygdIx+x5XydOKAeoS9ZQZJ5Njo9l3MyPGNw==
X-Received: by 2002:aca:3442:: with SMTP id b63mr7804158oia.36.1575559085415; 
 Thu, 05 Dec 2019 07:18:05 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i20sm3442756otp.14.2019.12.05.07.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:18:04 -0800 (PST)
Date: Thu, 5 Dec 2019 09:18:04 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v4 6/8] dt-bindings: arm: realtek: Add Realtek
 Horseradish EVB
Message-ID: <20191205151804.GA13693@bogus>
References: <20191123203759.20708-1-afaerber@suse.de>
 <20191123203759.20708-7-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123203759.20708-7-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_071806_472181_99363ED0 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 23 Nov 2019 21:37:57 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Define a compatible string for Realtek Horseradish EVB for RTD1195 SoC.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  v4: New
>  =

>  Documentation/devicetree/bindings/arm/realtek.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
