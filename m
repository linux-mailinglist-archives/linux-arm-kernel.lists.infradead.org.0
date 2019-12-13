Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C0411EE87
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 00:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACg1HZJj0M+WdJ1c84hx8HUZ5lOOgyVftBeo1BGNzAI=; b=NC8D5kjaPJUeFt
	a7xrCRL+4pAnY/YpbPjT1VLS34O8yZdtwl2Hjxm4xJFkfoAmmap3AV4KTaoD3y36WLNBdtI3sE3Qh
	LEAcMZooTzylVO35hDfmp02hPw+0gsbww4buyu66siJvg5P1xWbMirUFICR2uN6v6xm3pQ9rWKIir
	rKELPcKCxI53KOFiRGs/kCgqPb0IATd3KeQULzems/yk32rlhAIWyI6BA2f1B4QiKPvWDFtnK627k
	q2atvUo90rhU7SzT1UK8F41nGbuLUWh9LyFPAxuNcT8+bZyUjkYxoi3NsyhMqdA5TaXZ709r0qF3I
	82JFSmXXmfODhbwaVKfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifuNc-0002bb-V2; Fri, 13 Dec 2019 23:29:52 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifuNQ-0002b0-Ge
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 23:29:41 +0000
Received: by mail-oi1-f193.google.com with SMTP id l136so2099843oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 15:29:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m7ZDoVimtRbppkq3mXaQzzU3mfgleq0CeC6M4xh1UDQ=;
 b=ox+JwD3qDxVbsZBINvN8TACj1XwJ1QEWgI+2tsOo2rRIhqPu/TH9Dj9ZE1MOEyTWu2
 WPgWyXgOplkN1sCB2cSS35EJ8uhq2qhACHqXY9MsMdoAH3h4iL0zvH735sw0WYu6uSHF
 DU8PuCCfJnOx2Q32Vf7yK99bZYlKISVPfDZphIlMAvodYzT6NhhDx3MPE+WAIB6ta4aZ
 SHxy1BmnIleBVdJ9XdOKvwl+CmiqjV/vhmTrHnnud+LJnMsBnPGhcSsXrcjEY5CM+NSp
 nDihL8pFtad/pSZa9IEO/t6tOo0QbzBFwB6x8TvCExE5Wz+q/HBRRRKxjRbTkJHGoBu7
 j8Kw==
X-Gm-Message-State: APjAAAWJhvoOBSGDvsh0e9YFRsYM6MTi740FOwUw9zSZRS4MFXZwrs9R
 qKCf0bRfu7F31sAe7n5UCMam/B4=
X-Google-Smtp-Source: APXvYqxxxXP3ATVpyq8gPqENQUD4uftWKFxljdXqs0fD2LDAfZJ7txJETyw1WR2Y8EXOFX8+Q3+Nmg==
X-Received: by 2002:aca:4183:: with SMTP id o125mr7767626oia.125.1576279779822; 
 Fri, 13 Dec 2019 15:29:39 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q5sm3788415oia.21.2019.12.13.15.29.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 15:29:38 -0800 (PST)
Date: Fri, 13 Dec 2019 17:29:38 -0600
From: Rob Herring <robh@kernel.org>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add a broadmobi entry
Message-ID: <20191213232938.GA26283@bogus>
References: <20191202172203.11917-1-angus@akkea.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202172203.11917-1-angus@akkea.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_152940_554743_0A035C3B 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 linux-kernel@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Dec 2019 10:22:03 -0700, "Angus Ainslie (Purism)" wrote:
> Add Shanghai Broadmobi Communication Technology Co.,Ltd. for their modem
> dts entries.
> 
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
