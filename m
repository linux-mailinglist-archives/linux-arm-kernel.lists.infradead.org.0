Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77F41270A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 23:27:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWkFI4YZDr0+2ZG3TmXDFKLdY+n9H6vQvRr4lMYcWU0=; b=Y6fLKRUAaISRPg
	zVotYOGmjsKrusZTAP3h5TLyBH/7f4vbGxUx/grJt0oH3vdOPWI7miemXn9ZcpmrnqTWWzbnVhxNC
	HIjeVuScS9WpWAvP502/KLWjm9ietJBMGxkRTnRFzi8+u6Fd1r+WQDdg/1dBcwX83/pgT5anAm1zB
	9vVM58X1rxx9dqIoFOt7zvIrfrjIBt5lCPDUwA+OulxARnTrw/vag3eiUOGCE+TyDsq59q0nWnTDr
	FD3pmFo9xVcTQ+0uEr8XtrhKFeJPxs5pPbx0x6KfOkdWNea4JGypxdPsrl4I0FgkdSwKDRlwOpGy2
	zEpVQnk0CoXDcGakPQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii4Fz-0001O6-Hp; Thu, 19 Dec 2019 22:26:55 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii4Fp-0001NW-Lh; Thu, 19 Dec 2019 22:26:46 +0000
Received: by mail-oi1-f177.google.com with SMTP id 18so3108363oin.9;
 Thu, 19 Dec 2019 14:26:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jqq8LY7quOQ87/Gczi2Dv0ztqAoB2GKBCxLo/uj7ep8=;
 b=iNq+djbE60J+vFytql1lEeGZ59ra1RnxmWa0awGn9GzItBr/htNIAJDCg+eNGuXoZR
 MgEmrArFjV0dv4H5QXJRDtDxNqLICkGvGpS5hQCkOc12Clkfvp8F7ESyxKd6uIzm91D1
 ZQqDnw9gpR0IRfi11soi3xwcCPB2FnR7ignDPN5gP8plYmLEQ80EGD/+ACzb97/D8EpP
 nrOczYksdwo1fEDkxekEU+rWPKPaJ0EvCnxc0ITfspVuXVmGfMd32y0UPlrlYGef5Bke
 jeTQt54o50/29E3cunvDt5w6pgi7w7Kxd/S4kZbvv0p3/fGXaa0MVQ2w4RH5lcN2pB6q
 yVOQ==
X-Gm-Message-State: APjAAAWnsj8fi3BvuDMun0pT8W+s1gUv9qhLwVQHJwbbDF/QQsl36akq
 bMSGP7zD8+4auMRp7XQWSw==
X-Google-Smtp-Source: APXvYqxbPZlq94XPJTqNa3s92n082GMAw6K5NiT7FKfpiJdag5EtNAmLYlGnaIi9O1IqvCUv7ZfApg==
X-Received: by 2002:aca:1e11:: with SMTP id m17mr3286383oic.167.1576794404525; 
 Thu, 19 Dec 2019 14:26:44 -0800 (PST)
Received: from localhost (ip-184-205-0-249.ftwttx.spcsdns.net. [184.205.0.249])
 by smtp.gmail.com with ESMTPSA id x19sm2528984otk.42.2019.12.19.14.26.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 14:26:43 -0800 (PST)
Date: Thu, 19 Dec 2019 16:26:29 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 01/25] dt-bindings: vendor-prefixes: Add Xnano
Message-ID: <20191219222445.GA16503@bogus>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-2-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033952.5967-2-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_142645_710790_4EF25BD0 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.177 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
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

On Thu, 12 Dec 2019 04:39:28 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Xnano is a Chinese TV box brand, but not much more is publicly known.
> =

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
