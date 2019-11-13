Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E03FA730
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAen2dZyzOL19dZeDFHeSvEmEVnLMomhU7dVkgtkJb4=; b=uJoh/yxPWi8FFD
	pjx+Dm9bhkwRPdkpLuGs5efjQeidGulnuAXwOlqQqGiDGo4G9t4AwYtIT5yusQxLiPjSZXMV7ATU8
	KRgzZfhL+xme7zAYXps7O2+N3bfIYvtzFpFV/Ky3+Sfo7zEEDY2RoA4qrGX131A9m4cWQppe+XIO5
	GGAEM/jClFkkGwCORn2LqeTxIttyIhI2/XhxGpNOKJ0lxq9SU4hqd6uuZTJjEOzIdTLFIs4kaAiDV
	yM43r5286lb38267+jSUv7/DM6jPrbztZKG0Iz75JIvINB+rLsemuST5MpzqbpnEZAoqC+xR7YxtF
	+wLI5T9E4UehfsVytysA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjE9-0005Ez-Cf; Wed, 13 Nov 2019 03:21:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjDm-00055L-Rm; Wed, 13 Nov 2019 03:21:32 +0000
Received: by mail-ot1-f68.google.com with SMTP id d5so386147otp.4;
 Tue, 12 Nov 2019 19:21:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=SzJrfGGjB/WLv221edrkrOTRzZzVy8yKLGHtpQA1XPc=;
 b=J6gLQo5a3mDLVizXF4NxVD9oy4CdgGpX6HiPdqrpWr8TZHJQJre6PW07Q6a6WGIcwR
 M+pKYPKDLoWYMOB2jL53yQfxL+B9uPyvf/tjy7mf0vI2StZLeITyHuTn1zvHeGYEPy8O
 ZDfejOkkfwSbTtnAR5Mc51GkhPKXD/a3+ilV8mIN7f79Nw4fKtBjbx5LeT48x8X9H9Bb
 6oTYlD935CM458oK5EwFVnb0lmVSrXxxdtUgKxZJdGkZSQOwBKqU8kayXU+Cq2iqnVQf
 QMNVVYmKJZTW+HJWnRvCra3m47twStaROXIjsolOVbMQdcA4FZj3Jzx3l48RdEY4jXkA
 9+mA==
X-Gm-Message-State: APjAAAXN0MH0mpDs68luAYmHMtEsfpwRdvpyi22gEHN/LCQvOZWTfS+P
 Jq3b6J7kP9lzdAXmZBCYPw==
X-Google-Smtp-Source: APXvYqxePFSjd3TPVcaMub6kCODscfnVp2jQ/QDnl5E6kgpZHVmKfROkqP1E0ItBV2IEVA4XTPGwxw==
X-Received: by 2002:a05:6830:1f12:: with SMTP id
 u18mr897283otg.58.1573615288583; 
 Tue, 12 Nov 2019 19:21:28 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m14sm315678otq.6.2019.11.12.19.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 19:21:28 -0800 (PST)
Date: Tue, 12 Nov 2019 21:21:27 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 7/7] dt-bindings: gpu: arm-bifrost: Add Realtek RTD1619
Message-ID: <20191113032127.GA22397@bogus>
References: <20191104013932.22505-1-afaerber@suse.de>
 <20191104013932.22505-8-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104013932.22505-8-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_192130_909436_BBEBA2BF 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-realtek-soc@lists.infradead.org, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  4 Nov 2019 02:39:32 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Define a compatible string for Realtek RTD1619 SoC family.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =


Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
