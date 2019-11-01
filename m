Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A92E3EBC11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 03:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wGl1lwb2cndtKZy5at8fFCXTlNtZ+31P27+R6uYdQHM=; b=RqCflsv818Pvlk
	NT6vcJvG2xlY9fhcJ9fdu5WdzQy35BfT0sUJbru3/Qvp9lx7JIUq5RLlJ1bMp9aAHDlIzrAhOnlDE
	APEyq4jLMXiKayGYTXp+xZ9xtvXWXxj6WVv1ilNFt0R31ArWQqzYV167d7HkAP1RNcaThlzRAiBxv
	XoBjsK6uPQjXitfSVLmJn8tY/zKb3CIqfWGABdP8IlEqNjDelMGPCyj5ThJ08XojbFY//j4bV+MSk
	1pF93OxZniqFDsoMIsr4nW7jckZg2TTLOhQ9+sCKGZ6H0fXuGZiIs9BzRZmaE0QC7w99CIxC4CkxJ
	Wu+bvXlLQw/x0nIFF0Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQMxl-0007XF-8M; Fri, 01 Nov 2019 02:46:57 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMxE-0007X8-8v
 for linux-arm-kernel@bombadil.infradead.org; Fri, 01 Nov 2019 02:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sEItDoI/WeAoU1peUct7EvzKqvglpEF7cvTUFCv7y5k=; b=Dw7GW1Zepu5p+R6eM1Kmc8wbo
 7+7mVkK3wq1lWbY1S8zLwAHQHS3DXfwTbcoeAxTPmycuhmXDAyQLMUIDUOLrzoferhngEate28SAc
 65KTsmoBKQk9+C/+FoAs2pum9+KTyHkYYfTmPG4W1sCVcRYLX3VYKBh5viEVjB9r7lcbUYV6BIC8V
 Db4yso9ecmwFStfdCUYV+ysWCvRDFEnXw6prT6pF84WY2VLjgFnRIamRq9/h6JAdB2EtHyU4Hy+10
 2hc/pzWHob3E6qJR594gPET4zrAPhnQDQCZQBeOT98j4tp4ymETXtWZKWgBFZegpP965fZx3/R3lU
 rrquyW0sw==;
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQMur-0007YX-RN
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 02:44:00 +0000
Received: by mail-ed1-f65.google.com with SMTP id w3so4159157edt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 19:43:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sEItDoI/WeAoU1peUct7EvzKqvglpEF7cvTUFCv7y5k=;
 b=oi1SHTSKk/AWrdOI49Fh5gJPwiYUe1afJsexrmfgVZcEm6Klwje2K8bPpo/tdNBpZ6
 vNlSSZJT4pimkb7Kc0Htgec2n7n6wcVeU1TaG7KRrcp0xEPpZ1muz4LvOa93xWXdQXX9
 vfn0ab/3gbuKwVBHfJnxiEB/9JIG911Ay6UROWZLfdV0/cLqrHaKpGZEFtesyp3hgrqN
 kvvgarP7Xl9qr6pepZLdnuBbZL83zwBUQN+HEy9VxQk4Oj8lsPSRA7cegkfZdmBqS/dR
 oViypr7SzNHT0wrRmZ1qCVswvtnEyFzOVCTYHYDf3qOexBiVfrXYjSRkIn/yDCTMbnR3
 vnIA==
X-Gm-Message-State: APjAAAX8CrpEna6dge3l82QWL1TOiTZGTsAjfeIKrgxW8NG4wWKpo5z5
 FtiTvgRLzhI/IuKtVDHtFZx2gk4qQJk=
X-Google-Smtp-Source: APXvYqwN7gh6Nm2cHlxZb2ghbKLgdW7R67wWCqOaMCbAgUQDpf6EnnzF/fbS/XbxeYTxcbteU+PAFw==
X-Received: by 2002:aa7:db48:: with SMTP id n8mr10001231edt.179.1572576169486; 
 Thu, 31 Oct 2019 19:42:49 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id r10sm120585edh.62.2019.10.31.19.42.48
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Oct 2019 19:42:49 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id n7so7971556wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 19:42:48 -0700 (PDT)
X-Received: by 2002:a7b:c925:: with SMTP id h5mr7292349wml.61.1572576168752;
 Thu, 31 Oct 2019 19:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191031231104.30725-1-karlp@tweak.net.au>
In-Reply-To: <20191031231104.30725-1-karlp@tweak.net.au>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 1 Nov 2019 10:42:37 +0800
X-Gmail-Original-Message-ID: <CAGb2v64pYuA6yN3CYEv=MUeD+pSb49UauukehENzVsBvHhDx=w@mail.gmail.com>
Message-ID: <CAGb2v64pYuA6yN3CYEv=MUeD+pSb49UauukehENzVsBvHhDx=w@mail.gmail.com>
Subject: Re: [PATCH 1/3] ARM: dts: sunxi: h3/h5: add missing uart2 rts/cts pins
To: Karl Palsson <karlp@tweak.net.au>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 7:16 AM Karl Palsson <karlp@tweak.net.au> wrote:
>
> uart1 and uart3 had existing pin definitions for the rts/cts pairs.
> Add definitions for uart2 as well.
>
> Signed-off-by: Karl Palsson <karlp@tweak.net.au>
> ---
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> index 84977d4eb97a..2d8637300321 100644
> --- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> +++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> @@ -472,6 +472,11 @@
>                                 function = "uart2";
>                         };
>
> +                       uart2_rts_cts_pins: uart2-rts-cts-pins {

We started adding "/omit-if-no-ref/" for all pin definitions that
aren't selected by default. I think we can do this wholesale for
all the ones in this file after this patch is merged though. So,

Acked-by: Chen-Yu Tsai <wens@csie.org>

> +                               pins = "PA2", "PA3";
> +                               function = "uart2";
> +                       };
> +
>                         uart3_pins: uart3-pins {
>                                 pins = "PA13", "PA14";
>                                 function = "uart3";
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
