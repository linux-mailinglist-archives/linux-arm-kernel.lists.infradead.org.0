Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3679C11EDA8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 23:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIGm/Y2AePQElQ8LNmFp3pX82J0LrJeW6C56YH7vuc8=; b=eoCNRoYmijzTwS
	KspbOeW0dV3t5/ukf05+rfn9+HzmQd0qqfsEvzKVuJA4kg8zdOj/XVReNTG8N0RI1Lkk7yfLGLJCU
	owpovCfIM/x/CBJuiESrZzyG6OWGXtbgAS6izAxMs6zypa5KFTAgA3sqltvcQaP39YL1t8SJ1vGhO
	hR7d4sMKCL7x4eSJ5KU6I0J5AVMfvS1KSUn9NJYnnOHUL9OzlmmxGQLVozEKvJJzxnyvcRSNXmSJx
	AeWKoO5EfID0HUnHC+8bbBy4heMNGY7IOBLGAlGzbqyr93pQ5ktA3M5lLOX4YGDitN2SAPlMxPaO/
	XZR+0caVpCJpZhoo1j5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftLN-0002hQ-Dz; Fri, 13 Dec 2019 22:23:29 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftLF-0002gS-Ds
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 22:23:22 +0000
Received: by mail-ot1-f65.google.com with SMTP id h20so866841otn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 14:23:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WFqftU66d4lywk7YGZ8vQ6KoD9czO0JD1+b7jkC8Eqg=;
 b=bgXIxq5BUjy4YzhDbSuW+yZQINx7aA6Kkbeg4Yg/FZOfcve7PBXRmuSbN8iFfK7a0E
 lw1Q0FrJBNiSdNBwv59kcBXPxOQ56kCLudsVvyknzWO8wryTN91xRDuklS+ifA88i755
 RnG4pozyslnRaNfzVZoat6p9DYK5HxL4mgXVd9y8Fq3TccYoHnNClRTDrbPZysVzmx2i
 wftjOAfcPS+1HKnPw+rR80BonxF6UagFi6UX2hp+r9yKOtJOg5Hv4EkZUi8Zmd3LgNgJ
 HzQefaa/DwPvQ5DfBjlmRa1XFxLJRa60dMJBzR7uplGTEGM1ljQP0mTN3RtJY3n/FkcA
 lpKg==
X-Gm-Message-State: APjAAAVgeiyCR1/3Sj8Q+zkmUx73S3ZqHghfWwjj3HRWSttrGjz0k6bf
 fyf6fcmnNZwJ2euCNuDgPg==
X-Google-Smtp-Source: APXvYqy7Ii9i/4Qz6GD0XbnXcIegXItw0XTqvH2+WBespuMeepCyhsU1dWL9fRUGXYM3UeXhG6HziQ==
X-Received: by 2002:a9d:6a8f:: with SMTP id l15mr16702538otq.59.1576275798548; 
 Fri, 13 Dec 2019 14:23:18 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k5sm3780843otp.33.2019.12.13.14.23.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 14:23:17 -0800 (PST)
Date: Fri, 13 Dec 2019 16:23:17 -0600
From: Rob Herring <robh@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 5/6] dt-bindings: mfd: da9062: add regulator gpio
 enable/disable documentation
Message-ID: <20191213222317.GA32740@bogus>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-6-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129172537.31410-6-m.felsch@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_142321_467122_9F8BD461 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, support.opensource@diasemi.com,
 linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org, andrew@aj.id.au,
 linus.walleij@linaro.org, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, broonie@kernel.org,
 joel@jms.id.au, kernel@pengutronix.de, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 Nov 2019 18:25:36 +0100, Marco Felsch wrote:
> At the gpio-based regulator enable/disable documentation. This property
> can be applied to each subnode within the 'regulators' node so each
> regulator can be configured differently.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
> v3:
> - adapt binding description
> 
>  Documentation/devicetree/bindings/mfd/da9062.txt | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
