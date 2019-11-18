Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31D9100AD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 18:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ss8rsXeUVJwcX/RrlfuQ3Gx+hpOqa7lqIDiIlMl0j2M=; b=n+yE4Lua1EpqX0
	oRTazrRHbs9JyIYa2Ib49vZtcgeXKuiZZM7FfpNUX58oRcjEbqOdamE1wDak8X0ET1ygSqI4hqxsK
	+TfzF3Ct0zemdCeBr1sqGk8Gdqp7akiAvPr9STIPM5wxGhB5WUSZ4S4y5p0IAHLJi5uMtqg8f2nOO
	s/zMScJKGAXw/VJ8rxKH5QnPVolu3E/X0w3pHHYUhhBhqSuM3oJCXtMsRSjp/e+2unUdt3Fd1Gpi5
	kD0noXCcX44lpF9w5O1rV8E9WT/ybRLZku/NyAl4Yso8crVV1DxSr+j+oHYQ8qooQGM52Y274kBxa
	6DJ5ND74N+e+gKZd8g/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlAe-0004IQ-03; Mon, 18 Nov 2019 17:50:40 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlAS-0004GC-Fa; Mon, 18 Nov 2019 17:50:29 +0000
Received: by mail-oi1-f193.google.com with SMTP id l20so16090282oie.10;
 Mon, 18 Nov 2019 09:50:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=m+zIH/IG0yJ34gz7FceaYqYbcVm1Lpw2gLZ8+CneIHw=;
 b=CF6vn090oP6x1g3vUiITJkktleLGg6aRrgdfOZN/3y371RS3qpckuxX2H4JNlfmdGo
 7JE4KHSqBcPBH1Sp9dXCAT+wRvqJa0iUaq8bwOp/rCsaiomOTnEwPu62cQuH3xNa8gbZ
 p7YMm2b5Jcy5b3rbb/1cOr3YFhs9ygUc0u10NOBI9j8ssyUmsBhHLDyOPiNIQ3K0/UDE
 UnDc/PNgSv+mVKUYBovlxQjQnpGclOniWZ8WnkgEMsf1F0CNhAKP8vgXWEwn+e2g1XlH
 wrI0kMMYk/wJp2O57i5++1D7KO/3OMFXhwzrhDaPLijRX/ZjDUY7udQjiMe/Bc+GO3hP
 d7cA==
X-Gm-Message-State: APjAAAWmu2kqIJvu17egkdHQRoYu4AlzhIeVFUH/eQgiYB7EjKUBq1Gw
 8vXPIVl/YTudvHOIQyRQXjSUxZQ=
X-Google-Smtp-Source: APXvYqzHuGb7P4/K03GqT8yB/gdOLMP/NT8AbyGQ03WOPjb7hkV8hu1QetA9biLuOoEE4nOVEwD4pw==
X-Received: by 2002:aca:af95:: with SMTP id y143mr162897oie.38.1574099426995; 
 Mon, 18 Nov 2019 09:50:26 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z66sm6593259ota.54.2019.11.18.09.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 09:50:26 -0800 (PST)
Date: Mon, 18 Nov 2019 11:50:25 -0600
From: Rob Herring <robh@kernel.org>
To: James Tai <james.tai@realtek.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
Message-ID: <20191118175025.GA24796@bogus>
References: <d655415326064b079b9d1d791024c725@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d655415326064b079b9d1d791024c725@realtek.com>
Content-Language: zh-TW
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_095028_544331_ED27296E 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 15:45:13 +0000, James Tai wrote:
> 
> Define compatible strings for Realtek RTD1619 SoC and Realtek Mjolnir EVB.
> 
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
