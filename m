Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381801270B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 23:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcTBP6mWkYbod6LopTPq0ZAm+MMy9JtyDSeTurR8zOU=; b=X8NJWtSMS084rI
	p4AWoAyfXkKsr5BSVFOeL/xozY/Gx3UycR51tYR/IX8t+CHpVQbjeKByBwQmDhH6iw24X0qjnBqSF
	eWTfdhVoCE7h8C/rKN5mrUZQnHG57DvIWb16CG790axNLiSOqh1F13QaUkA03hEWYzjSGIMLriT4p
	0ALYQtndQLRVydrzR3+kihvxwQM60FIngE8TDXGL56GeEIPvYyOO8HX35dHYlPl0uRYVOfa8eego+
	0a+m61YBRwPFY8k2H7YZ+4pSvlss624+aal9xqReiVBqvoWHJtw8dd4anGSV28RwdwLpYDAYr0QgA
	fuplFVinmVvF7yVqevFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii4KL-00043n-Jy; Thu, 19 Dec 2019 22:31:25 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii4KB-00043B-Lo; Thu, 19 Dec 2019 22:31:16 +0000
Received: by mail-oi1-f179.google.com with SMTP id l136so3848045oig.1;
 Thu, 19 Dec 2019 14:31:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=D6/Lnp9SQxWtLanrpfRv/1y5LG5SQwcq+M2dD1VqhCc=;
 b=MWd0Pbt8GEda8gqWmfkp9vxcMZYPC+AN6BGszQcE0bR49gmhB7CB4f8oWuPp8jaBu/
 Pc841NPaBf3BfawIP4aqb329dV/xk8oLfa15lnHZuPN43loqE2Dnga9yav4MAVQF78dv
 IbF9JlrHuKq2lfWn7jC1v89Mq3Yg4O/RJV5+dycCMXl87Ce5mKgFw0Gr4eqr+VIucnYX
 AD79ePoe8Sz8vojtZadUG1FJvI5tMKGtiXnJDp5Otvtl+iPaSf2+cNK213AD7X1oBjZF
 L3PlwU3h4ih4v1X4z9U5JAZk+iDDmTxZUUfXA9BkDCZ1l3GuB0vXG5pHl4DX6+gJ4qyJ
 1Dvw==
X-Gm-Message-State: APjAAAW15WZy+2oNGizmODx9XGuNfe+xeSfGXTkDqY/xsbTXQZfNQEjc
 QF3yiR3EnDC9jlhCJ10K9Q==
X-Google-Smtp-Source: APXvYqxP+AsL2ClzQz1/tTdWWz61H8T7A5vOVoIHbEWTGgA7cl+qlj/GpeLj2PAWGr+P+OTYVDHkww==
X-Received: by 2002:aca:cf50:: with SMTP id f77mr3288551oig.60.1576794674782; 
 Thu, 19 Dec 2019 14:31:14 -0800 (PST)
Received: from localhost (ip-184-205-0-249.ftwttx.spcsdns.net. [184.205.0.249])
 by smtp.gmail.com with ESMTPSA id n22sm2636449otj.36.2019.12.19.14.31.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 14:31:14 -0800 (PST)
Date: Thu, 19 Dec 2019 16:31:08 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 05/25] dt-bindings: vendor-prefixes: Add Titan Micro
 Electronics
Message-ID: <20191219223108.GA25174@bogus>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-6-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033952.5967-6-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_143115_715026_A12D3110 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
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
 Dan Murphy <dmurphy@ti.com>, Pavel Machek <pavel@ucw.cz>, zypeng@titanmec.com,
 linux-leds@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 04:39:32 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Assign vendor prefix "titanmec", matching their domain name.
> =

> Cc: zypeng@titanmec.com
> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
