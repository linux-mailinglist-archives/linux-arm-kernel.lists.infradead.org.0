Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69408E8C0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:43:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0P8jmnj07lJYcxr/c1UkBtdn9EOvKG8H5KCw51+Qw8=; b=ei0j7uY1DYGq7w
	5UP2u2Ft8fIUTw7bElu3+AJFgSSXpWBjEnkutJtEEyvqhzmNX2qXdspqZom/bM20ZQq1nMESKtEOi
	bIeyI95JZNSB5NQWpyc+/o7O+QD38QeYVPo+IRmqLOfBuQHQd24JnAqvH9FwMZcxDZg31eaDoO2vf
	avGkRev5itk9bIHnK+R+XGNWit7Hnszqa5THQBOmrbiPJmi96qLQAhCYPulFq9gcCSITdplo7kCaX
	z5Fn3GCscAJ8c1ApOkSTutd830+V8RO5HaDa155/gbETc2bZkn9bPqqYINJEycoNwlxU7UHUv64wL
	MYMiBvwr1Uc9dP2+E1+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTeM-0002QO-Dj; Tue, 29 Oct 2019 15:43:14 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTct-0001NM-PT; Tue, 29 Oct 2019 15:41:46 +0000
Received: by mail-oi1-f193.google.com with SMTP id i185so9300227oif.9;
 Tue, 29 Oct 2019 08:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=wmaHuM4Ke2s1q9WnAzV1ZhRUAkvBF3goEpAIjBiR5sc=;
 b=ROps1aChXhJL5Iujs5nwkdTbGGuhc+lQZt8Bf6HfbjRDbEZkFdHB7l4sf0fRmGi5FO
 sG+9VmmpCKz7AEdFb/7MHHvQVzBMprBQPN4iJCQdMTETgkexyQ6Q9AS1WeuYcbvy1E60
 Se8J8De1VIyswwPZ8xkE5u6MIHJeQaFBTzL2U/Oy97IWluywArutAoELofP+8/B3HJLH
 shcwsWZ9fs7ashfH+Ie/VYe/h8D5/FfQxUGZ9s9g8m1lpTFm8qs/pKkahbBYvXCYnJD5
 uj1LsXvMGOuumZ68jFRy+JhHxpCU3LA7e8LrVKMnw9qoRR3CBGu3rizYCYN+moPDZKto
 /AxQ==
X-Gm-Message-State: APjAAAWf5fo1MrdXeTI4XYYgfTWSPxhAG8orvflM/R+D8vqgb4ICZneh
 twPaqQOiZB5mhjKSZQsrDX9/KLY=
X-Google-Smtp-Source: APXvYqx5jPhqK8HfOIYgiuuC3CdIAJxGUrr5q2AmzHtm5vu+4agDK3awrGIUDuk972iYzsZhR7YMcQ==
X-Received: by 2002:aca:3b8a:: with SMTP id i132mr4491682oia.24.1572363700364; 
 Tue, 29 Oct 2019 08:41:40 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k25sm2447223otl.21.2019.10.29.08.41.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 08:41:39 -0700 (PDT)
Date: Tue, 29 Oct 2019 10:41:38 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 1/3] dt-bindings: arm: realtek: Add RTD1195 and MeLE X1000
Message-ID: <20191029154138.GA2409@bogus>
References: <20191021021035.7032-1-afaerber@suse.de>
 <20191021021035.7032-2-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021021035.7032-2-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_084144_038688_1F20CA6E 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 04:10:33 +0200, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Add bindings for Realtek RTD1195 SoC and MeLE X1000 TV box.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
