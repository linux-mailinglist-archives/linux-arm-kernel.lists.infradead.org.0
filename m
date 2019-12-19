Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E009127134
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:05:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIm7xPKlwLgp6hefke17HXi4nOQTLv71vlRG3ThVrxs=; b=OHz/yDRP5BLjaX
	VimtC2DMignG/+zhL8QrunkXkwyPwNSltE+iqXAIzyJulf5nZBlJU6LE7Eq/VL8lENApxF5Arskz5
	mbnFAi6O49Gd0ayRYHEUw/0/AYyqh1bfgMjL5ATY1Rx4y8GB7SWtnROWvJWRHfc4ZE3YoLTYFAtOx
	HFowV2mFD9zieXov3LYARZWyghlSTwVa6XcYdz2c45nLEVTzzmWJvhO1/lnFkcUBtdbpTatpJMTOo
	5DZxY8jSFCkCKA3MbDBw7i0qsiP6pkQENzlh5x4ulOgPuJsKGZ5dvct1OUpsEAMECOcW6bq6U4PK/
	u7hGNF71qpFD7UE4AJDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii4r7-0001SD-R7; Thu, 19 Dec 2019 23:05:17 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii4qf-00017H-C1; Thu, 19 Dec 2019 23:04:53 +0000
Received: by mail-ot1-f46.google.com with SMTP id h9so6665261otj.11;
 Thu, 19 Dec 2019 15:04:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Uy6XZuGxPiXexyKWxx2j42oDrSDjvBmXtbIAxp3wyp0=;
 b=J/9q7aEr0Rnx6NyXWQ4vgZuL8hym8dj98yPk2oR67PSQENrRJcKjvWv+pmO/ISl3Pj
 yD/OSSfDW8Ckz7SHrZNDViiMP7srrBITl+vxp9WfTktOeMw1a+G/I+6o8Xem+pdA1iCJ
 RR0aR6nkNTNm7lF53qpeZtK+CbUc+rAIFA1jDiqNqj1zQYcz+5aEb6T708Dem1f3pELA
 CUxdQ2m7NRl2CvRAJ8uGbKLzTaCO3xD/M4B0pzZ+dD3WVHKE91ICVl0A6i7bp9ys7olK
 S9w1uPtgf1gQ/xIeM1DjMhOg/E3vRUVabfnAlYxRj55oxdpEaG6FPJ01gcmHoQmpaXyG
 dTgA==
X-Gm-Message-State: APjAAAU52p2XPUQgl54hgmrb4biUxnybkY7V+I6oXzCvosS7vHPP0NZm
 eGgYCwrFHIsRrqeRVHe8BA==
X-Google-Smtp-Source: APXvYqzThTv/MWit+dLYB2MQbaWXf4JGxuC+UR5rIDEFynaHbDFz7eUpnZID3Q7FtHacHRMEhcURdQ==
X-Received: by 2002:a05:6830:159a:: with SMTP id
 i26mr11654069otr.3.1576796687351; 
 Thu, 19 Dec 2019 15:04:47 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id 97sm2672507otx.29.2019.12.19.15.04.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:04:46 -0800 (PST)
Date: Thu, 19 Dec 2019 17:04:44 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 10/25] dt-bindings: vendor-prefixes: Add Fuda Hisi
 Microelectronics
Message-ID: <20191219230444.GA4752@bogus>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-11-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033952.5967-11-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_150449_423964_0C6E69D1 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.46 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-realtek-soc@lists.infradead.org, sales@fdhisi.com,
 linux-kernel@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Dec 2019 04:39:37 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Assign vendor prefix "fdhisi", based on their domain name.
> =

> Cc: sales@fdhisi.com
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
