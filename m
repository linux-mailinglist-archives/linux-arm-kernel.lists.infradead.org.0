Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D68912713D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:06:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wBZEFfalgAq7DY4MW088+7UGNmtVMGFXrBRuFTK+W4=; b=pltFAES/TtfcZs
	fgQLxy8FtN//8esMeREhl7/wq6wPjNEejevYm2v8405WSnHP6kajBi+PlbHruukqEGchJS0WZgELY
	MKE12Eom8ZIxLKi43OchDA7lO2pZAHKeaI642NzIZMZQp43vQKYZtP3Dv2Ed2QXGTvmEsT1ahIr4+
	p0AjjSdnewpqnQPAJbA4ptT9y4gMTq//V8tny42d7q2ehSkwGZDvkfVpX+0nUEd6y76XVGCJ/412+
	6V4Pa3t3cLVi2wUxElmS4kMmzsME1tDIhN4HVVFBqfHo3AFpzA/37gPc3sl/j8C3eX83DeOVK2Q1N
	IbhKmeF1XvikLUssYcNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii4sR-0003Y2-0R; Thu, 19 Dec 2019 23:06:39 +0000
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii4sG-0003XL-Ir; Thu, 19 Dec 2019 23:06:29 +0000
Received: by mail-oi1-f170.google.com with SMTP id c77so3425547oib.7;
 Thu, 19 Dec 2019 15:06:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=1yZH8V3CdOmQjuS73Msz5ZyhW6PkWuP2FDRhP7F/Hfk=;
 b=J5tENWS4RWRrfPVRufTy92b8VlDuqBvQGnejRgTlBJ3xH4tBIJNLDk8sZHL6p/FDyI
 CuKVwgJa5WmTNw07jbd4MCCuoCHaUpl5Np2DZp92HS3QM7OScjPaaLb4NUjzdV0hQdRl
 xPZA47slHNDOxYs32KRdo8YD4WpFsR2J5xDRgPlgwsdWR7Q7W8KKY2tl4gNzS0JslOz0
 MtI8FmG6qa47NI9vZU7zobWswwC13aKyqNCokhgSZcLUbeHj1NWFShYVyTrXLyAzk5tz
 4sLBlqEeb9gWctjYntXWJfCXwcoebM2D87QeHtWoODxizzOO9fVMS5559QMzjJ5Co+Pp
 6qDw==
X-Gm-Message-State: APjAAAWnqCdAz3b3pwKPPN8HEMM4M5FDZu3vJ9QgbF1g0gRSnlbhXaZs
 QYNTlUVjhi5VpB78Ja5ZUg==
X-Google-Smtp-Source: APXvYqwSIAXcQUDg2gX98PBOc+oiM4Gom1haSyaRLuef1KLWXsxmd15JOd90nbJsIeaJwD3TBVTLrQ==
X-Received: by 2002:aca:f445:: with SMTP id s66mr3072290oih.95.1576796787716; 
 Thu, 19 Dec 2019 15:06:27 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id m68sm2497501oig.50.2019.12.19.15.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:06:27 -0800 (PST)
Date: Thu, 19 Dec 2019 17:06:25 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 16/25] dt-bindings: leds: tm1628: Add Fude Microelectronics
 AiP1618
Message-ID: <20191219230625.GA7332@bogus>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-17-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033952.5967-17-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_150628_616980_3C9E360B 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.170 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 04:39:43 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Define a compatible string for AiP1618 chipset.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  @Rob: This one would conditionally need to further restrict reg ranges t=
hen.
>  =

>  Documentation/devicetree/bindings/leds/titanmec,tm1628.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
