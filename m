Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D53127138
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:05:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqM6BErEDcxRzQYWOi7Vx5EEjRPtZ/X4woYU6UrJoWw=; b=E97oc6roFhBcHT
	cr+hVtQey4/JeBF+15iSWhyzMLAPJostZs5Z5e6QXlr3aZn/5pnjbZpGYrAiLJ8gT8zWqZ63LUVzr
	38CRPfAkVEEdk4w2KtHTNFAlpumkdEizTGgnGC5UGYmdwQBshhD91nD8mRjBemH9yZl5VDi9QpjvM
	C34AXgAJLvgCcING1vVVSLD0oX2R4xS62eqpI+DVOYLn/x3HrIztvfyC+E+tTX5sy/Eg7AZS5JtWq
	OoCKD+CL1SftKCDLrsyUsxl+y+XzOYdMqYh6aXEZMuxrId7fpBw216altwsokvppGHPAnH49whmJy
	/af+vAS3KV0nVuaoh6DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii4rO-0002sR-8W; Thu, 19 Dec 2019 23:05:34 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii4r6-0002mP-Mv; Thu, 19 Dec 2019 23:05:18 +0000
Received: by mail-oi1-f178.google.com with SMTP id v140so3893927oie.0;
 Thu, 19 Dec 2019 15:05:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=RdZ7cYZz02FUPDtdcTU6ePf8bGMqcPUm0XgeKy4Qx+M=;
 b=WyZstCDEhAid/YLGjmMFdH7HYpwAsFuZXWN6rxmFgq0N8Jw32aEmCzBK1if5HCcFSx
 JBh8RgN37k+AAupBHBaAylIgd9RKoqaRoAEeh/qkUijC6BvTAqIhRD/krSonO8r6HPVT
 MM6RwSt44iQ8ViMsejW3XGJAown23p9mFRO/EzmOYsjhe7xt0PwbtFwZZhd0PP6tFk4h
 upItT8O65E3iJdu/xSRTqSHMVk74A860uKwSmz12/N4KDSYU0C7gZYSkvmavpB+zG8DB
 ssdoozZylFyH8FxF399+7FdGOnPFC9Ne4Zsp+jeaNysM0EQHyXs40U+Khxo0suE8gH2N
 iLmg==
X-Gm-Message-State: APjAAAUUheLGANZBsURqeRcJmKFDVd19bwWAYKkNQ9d2Lkh+/txU/3LO
 HoPzb6+bjSi6lsl5zMi9/A==
X-Google-Smtp-Source: APXvYqx6IdTn7cJhRF9+Zo+VnWAZmVm+DgNbDAauA2Brn0vULoiXjJPrPJju+pouWFKV6ZPCUU/+zg==
X-Received: by 2002:a05:6808:484:: with SMTP id
 z4mr3297161oid.71.1576796715645; 
 Thu, 19 Dec 2019 15:05:15 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id m89sm1326314otc.41.2019.12.19.15.05.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:05:14 -0800 (PST)
Date: Thu, 19 Dec 2019 17:05:13 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 11/25] dt-bindings: leds: tm1628: Add Fuda Hisi
 Microelectronics FD628
Message-ID: <20191219230513.GA5404@bogus>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-12-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033952.5967-12-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_150516_776201_27AADFF3 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.178 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.178 listed in wl.mailspike.net]
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

On Thu, 12 Dec 2019 04:39:38 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Add a compatible string for FD628.
> =

> Cc: sales@fdhisi.com
> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/leds/titanmec,tm1628.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
