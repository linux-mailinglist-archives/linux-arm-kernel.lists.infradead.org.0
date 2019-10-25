Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DA5E55C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 23:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PH4f6gPSwAhkf/8+yMi4n52j/yjuu3u6xGPe4QoAaI4=; b=lFoduWGjuXSw49
	qtZGBIAlM+hIfJhc2HUuRpur/QBV/TWWmlZaADN+08lWp02f1l9keoVycBgQTXatmB31kDWfTOhty
	jkmM5bgz2kDoRNDoMS0rZ8CGD/k+5khmWKouzoHVFQv5nbSuv7m98u4qtI/aRUE/I80u6OnCgkLMm
	0pNmavFooeFA54bFxMgglLEpn57kTKQwq1u5CPKY+AQaq2xgz/ouv3o9VewMECZg33oV3TEYAs41i
	qehARe2ojmslmmRK32+7vN7+yVj75IWHpzhgnsWQ+RU2PyI+Da0mtZKOjcKxNxgKQ0tKffjVT7ws6
	3mf8mq/co+WjPGNa0Qyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO71j-0005O4-Sx; Fri, 25 Oct 2019 21:21:43 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO71V-0005NR-Qq; Fri, 25 Oct 2019 21:21:31 +0000
Received: by mail-ot1-f67.google.com with SMTP id n48so2984732ota.11;
 Fri, 25 Oct 2019 14:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=t2kppBEOgy6RnOJeg3mWNTbWNUIFFBZPEWBzlZe65iU=;
 b=dDHGtVGTAk9BV4F5EXsL9X74RSl6dIyBBfCPgyPHwo3Dl7dUEWvLpCq8VYl+GzjBxr
 dRfAra3MfTa0CIIJaqnCQe+6MoG198UY9m3sRrr6YzQUVGDSzeBXb8zIAYz4XFgc+Trd
 2BMwJuHeF8AWgFXBvKV0gJmq4BqELgDme3KsJFKzpZWrV89bCFpC1pkY1Z0nTtU8FWuK
 BjUk3I3lmJubMR7iAb1hIHDr97gxVVJm8RENwjsFnECGYq6SeEoQzP2CYKxl52r02HVP
 AmM9trOnOIL/ZikZwUrMKDyD4QD9/dmJ9wmyx4JVBNLlPnvlnXN+Qmjl4LTKhVEsIEfe
 HMHQ==
X-Gm-Message-State: APjAAAXwVqWB9yEsgbMbvAhXooSL1+OssFZ1DjFkz1atZ1sWu4ZKdB+k
 Iy7p4L+NVX+mIF7uDY/0cQi5JX4=
X-Google-Smtp-Source: APXvYqzfALz/bSOT92RSeok6HEe+wg7/IAkKBr5Ut9pLPU5O+zQ3UDEKAg0PqDzo3TuhVW8gFCuqsw==
X-Received: by 2002:a9d:82e:: with SMTP id 43mr4568743oty.23.1572038488683;
 Fri, 25 Oct 2019 14:21:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b31sm1129632otc.70.2019.10.25.14.21.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 14:21:28 -0700 (PDT)
Date: Fri, 25 Oct 2019 16:21:27 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v2 3/8] dt-bindings: arm: realtek: Tidy up conversion to
 json-schema
Message-ID: <20191025212127.GA4819@bogus>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-4-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191020040817.16882-4-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_142129_869045_1C0AAE05 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 20 Oct 2019 06:08:12 +0200, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Restore the device names for compatible strings as comments.
> Prepare for adding more SoCs by inserting oneOf.
> =

> Fixes: 693af5f3eeaa ("dt-bindings: arm: Convert Realtek board/soc binding=
s to json-schema")
> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  v2: New
>  =

>  Documentation/devicetree/bindings/arm/realtek.yaml | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
