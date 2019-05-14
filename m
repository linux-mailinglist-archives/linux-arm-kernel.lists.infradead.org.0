Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F0C1D046
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 22:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9GWdnJU2cqooym249gfUM2I4prMtOXLBoVdF0YVtmc=; b=pWJK1EdKmuh3Li
	JVMfpOmhhPAVkz7fJs+XaNupHAT6uxppm6T6BYN9lgGCo59iAS5q/gx5m5igIzcRPDiqiBpL0kMO9
	kgNCsbVsgYh8QfrzXUTl7B3XwErk6Qxl0/mjK/rC+T90omGZ9OkxkCH+cgDIuEi6aDGIPBwgpF0/H
	sxzWkeC1VPj6EzGdyiAYVM0SEVWZWopwzZUuX8baNx4gOru6ZAEzBwwfpzpC5uz3yCVotRdYydEfh
	WJv4CJLmvCNNmkAtd9XNHd7buspF1UXbOYpH1o4XouZjgfWD0QqXQ4e1wNYmd7x2+IbuxJbfC3+C/
	VR6vsXX86LWrn2SY5xBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQddq-0006xo-CY; Tue, 14 May 2019 20:03:14 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQddh-0006ws-16
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 20:03:08 +0000
Received: by mail-oi1-f194.google.com with SMTP id 203so34067oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 13:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=fr00WeJI7LuY/N4++pQHRnJwZ0q8ePUBZpSaqAUAGZM=;
 b=g8QRbTDdbPAHb7ic1Rp33vHyb555iKEhshXxM7sb5ECRpdLBuf175EJxZ1MSiEeQmF
 POGPYXn2F+FyZAGfTN3rj0GXHd9qgQDUjHDU3cADIEnYn4fsd006IVK3AWTHu3iUj+BC
 AnzuMmGw8/PX+IgSX0aO+jTFTEX0xuMgN4d0G/wUgWkd/HbNlI/OFZ0i64LqfxlS7Nn/
 yChbO1HfTMBGiZBQwnUmTJiAJdMSyHwkOg/cZdxCVA5UDt623qA57yiAqPdRgCzsFfY1
 XaOezwk+kJnbDc1vnPGT34k5wd0BNqYrnb24ViZYQKREYM548xO30fTaaWBRhRUKgecK
 ykxA==
X-Gm-Message-State: APjAAAVVFd3ZwJHQmiIChzbSzBD3zbBQNOsmZNe0HqBnoJHAZvPwhCtI
 M6GL/cbscWfBTTonGJPGsA==
X-Google-Smtp-Source: APXvYqyyGrngDLkf4JtW5jGewq3pbgcF+xgmfak6/x/AXfJYI3EEMCP71iIcdP81e9ElCqbZBI7PHw==
X-Received: by 2002:aca:56c3:: with SMTP id k186mr4070933oib.95.1557864184052; 
 Tue, 14 May 2019 13:03:04 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e133sm6577619oif.44.2019.05.14.13.03.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:03:03 -0700 (PDT)
Date: Tue, 14 May 2019 15:03:02 -0500
From: Rob Herring <robh@kernel.org>
To: Yannick =?iso-8859-1?Q?Fertr=E9?= <yannick.fertre@st.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: display: stm32: add supply property
 to DSI controller
Message-ID: <20190514200302.GA10115@bogus>
References: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
 <1557498023-10766-2-git-send-email-yannick.fertre@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557498023-10766-2-git-send-email-yannick.fertre@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_130306_830534_9F4212BF 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Philippe Cornu <philippe.cornu@st.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Yannick Fertre <yannick.fertre@st.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vincent Abriou <vincent.abriou@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 May 2019 16:20:19 +0200, =3D?UTF-8?q?Yannick=3D20Fertr=3DC3=3DA9=
?=3D wrote:
> This patch adds documentation of a new property phy-dsi-supply to the
> STM32 DSI controller.
> =

> Signed-off-by: Yannick Fertr=E9 <yannick.fertre@st.com>
> ---
>  Documentation/devicetree/bindings/display/st,stm32-ltdc.txt | 3 +++
>  1 file changed, 3 insertions(+)
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
