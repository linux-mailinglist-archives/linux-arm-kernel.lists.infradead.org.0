Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 222BD173B1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/TW6L/w1v2bBkWK/itcYbuKp435WKVedRPwg1OyoMA=; b=aS4KX9W9HmHYKq
	7V8lKtyaN7oVidLGwmgZsf9pQLoTG4Z3gsFuP8SC6gZ7CBTPKuWI+RvKfD0ZXc7aXtm5sQq9wD11b
	68gtyBywgDrUKanitRQixOWaue38MkGnwYVg1UpSkGxtsj1Leb2JRwFRx95/1LeBy3HOdnXpNwLyL
	soldZ09M/TGO/pnHkEgKbrwHfX+1wXboUl3P9Ge+ADMMEZZgMGa4JkC61Q69J2BQtxr58Mfgzub9o
	lOYdv2+KVsDFKnvOVe07/f+03mJiiM6EcxcIKDU7Nck0xQHZpvkwy4i3o1OEZAGrtSgUeKB7HU80G
	qQ8lh9MzYVjjI1ppNNkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hKU-0000Bb-Hl; Fri, 28 Feb 2020 15:13:30 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hKL-0000Ag-0V
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 15:13:22 +0000
Received: by mail-ot1-f66.google.com with SMTP id g96so2817472otb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 07:13:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zWo4qKuY/7ed4cYkYmCoOxOnA9Dj1w1J7SKejk3R5Z8=;
 b=OHiaXZuE+JAj4IEcBIhnLwhFZbMYmZY4LgDej3fT9nlCVWFvRL/HO/qitek+pizNa3
 OunSNiKEoRMa96mDdwe09NBIbe4LQkahcS5BiLaS9+S7pdLYHprmZ0jouDQd8CtNK305
 mT5rJKrnSL92pS+5fSpnwJnHYfRmJ9JrMeIs5Waz/kTE6E2A8s006K/z5JxgoVaDfoRO
 41K3MHtXJCveRx1K1dB2XCrFjQcXMlSz1Bdgq877+HskdNF3yaGDepmkcXn57sE6x6/j
 QBZZgx/gosY7wXfD0vOMO+c3w4qLN/7hNdQxhDyROsUl5HcUn7r2ZIHG4KWnoQqbEtMk
 zYUQ==
X-Gm-Message-State: APjAAAUd17rTdnoWqu9iBbfZMhBqxU9ZDEvngmAsQNDvUm2y3blpB8eW
 meEYmPWRpwDK2q3YMfsW5g==
X-Google-Smtp-Source: APXvYqyIDBoCrTlnHsHo2ZWFLHbyIgEN0Y3a+LU5KpD+GDt608oltIOTk0QNBmppbKHbi9r4/mPT0A==
X-Received: by 2002:a9d:6e02:: with SMTP id e2mr3884732otr.194.1582902799599; 
 Fri, 28 Feb 2020 07:13:19 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l207sm3264961oih.25.2020.02.28.07.13.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:13:18 -0800 (PST)
Received: (nullmailer pid 4200 invoked by uid 1000);
 Fri, 28 Feb 2020 15:13:17 -0000
Date: Fri, 28 Feb 2020 09:13:17 -0600
From: Rob Herring <robh@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH 1/3] dt-bindings: mailbox: imx-mu: add fsl,scu property
Message-ID: <20200228151317.GA404@bogus>
References: <1582546474-21721-1-git-send-email-peng.fan@nxp.com>
 <1582546474-21721-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582546474-21721-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_071321_051838_BBB3D9B5 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, hongxing.zhu@nxp.com,
 festevam@gmail.com, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 m.felsch@pengutronix.de, linux-kernel@vger.kernel.org, o.rempel@pengutronix.de,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 08:14:32PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add fsl,scu property, this needs to be enabled for SCU channel type.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> index 9c43357c5924..5b502bcf7122 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> @@ -45,6 +45,7 @@ Optional properties:
>  -------------------
>  - clocks :	phandle to the input clock.
>  - fsl,mu-side-b : Should be set for side B MU.
> +- fsl,scu: Support i.MX8/8X SCU channel type

What's the type for this?

Perhaps update the example.

>  
>  Examples:
>  --------
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
