Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EBB107C13
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 01:40:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbNVySat17mr8qCkE/CtUy7jW5SmrQceP8frOSWHRHk=; b=jF5wKP/HT+TTjy
	XQrdqubwQwi0InbUYn+HtpVDqSMFqSNRhFnpjWD6a3xuHiAVGEA04wUKQckmHY+dCAl7s3+rGyZS7
	Xx462URPsGMdKoV7KR647lDCQLtwjKnDIG5DX/OhZKmEBL+mN+FIp9Jvim50/NiGUr67vF28+iWOD
	8137vCcivvccnTUV+LqvGrjhl6o/8Kl9DxcSCDDkdBU7qQI2a4qpxQt56phaQBgoaxchy73/lVBnM
	IALcKaW6yJ7qghQ5qeN3lD1CQUIf85wbcyac+XGoHZlDPhIepvAZ3rG8W9ThkCeUeZZaE9BZ6iLts
	sqLUBBsotDcl6eQ/xy9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYJT7-0003G9-Qe; Sat, 23 Nov 2019 00:40:09 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYJSp-0003Fd-Gl; Sat, 23 Nov 2019 00:39:52 +0000
Received: by mail-ot1-f67.google.com with SMTP id m15so7776908otq.7;
 Fri, 22 Nov 2019 16:39:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tEgHxCiyiX1vvVmymHFYVTUbODIbpTwPwyJWeOdOzsw=;
 b=IIaZN+iWKA8N2v1Zz6rPgn/Uvyy2Hp2gQLXbLLRHlwn1o+olcMAa2M7Np1D6aiDCrX
 vjjBfSMIchSd3jI8L5fcdjCCStRpqnK6A36Y2SF6ppr2TXduWdrm9mhN0d4BRLpgsjPO
 OYmDkPa3Iz6jOECshdjnu1IM/pQZYzm0sMdU1dFojWFYRpRZReA/GxZdgFlUvvghFADQ
 byZigVc9WmTeHEkcyf9J6/rUqrJwSfMJnvDJwgAqOPiVPfFC0mLmokCQSe3CrE9Jfo94
 BoGHUS83I5jbVxKqs7mKwGeP7sStu5h0zauK9QoMBqD4J69t/fLtCew2uhG2tcQxnN4G
 pvTw==
X-Gm-Message-State: APjAAAV8sKFPXe2/EZGeIGGl40rHz5JsLTYAGbr1PMp4c/KcORhQ1WTk
 CDxOCIlbn7WnQvr3+mFa5w==
X-Google-Smtp-Source: APXvYqxyABAixVX6UI5qvZ5b6JowXXc/TuRvG5WegziVxYCjLu6SH7n/ghlJ1SoD2w77Id8T2Mgupg==
X-Received: by 2002:a05:6830:2006:: with SMTP id
 e6mr13247748otp.260.1574469590171; 
 Fri, 22 Nov 2019 16:39:50 -0800 (PST)
Received: from localhost (ip-70-5-93-147.ftwttx.spcsdns.net. [70.5.93.147])
 by smtp.gmail.com with ESMTPSA id u143sm2632482oia.14.2019.11.22.16.39.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 16:39:49 -0800 (PST)
Date: Fri, 22 Nov 2019 18:39:48 -0600
From: Rob Herring <robh@kernel.org>
To: Stephen Brennan <stephen@brennan.io>
Subject: Re: [PATCH v3 1/4] dt-bindings: rng: add BCM2711 RNG compatible
Message-ID: <20191123003948.GA13973@bogus>
References: <20191120031622.88949-1-stephen@brennan.io>
 <20191120031622.88949-2-stephen@brennan.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120031622.88949-2-stephen@brennan.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_163951_556855_5EBBDDE4 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-crypto@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, stephen@brennan.io,
 Ray Jui <rjui@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 Nov 2019 19:16:19 -0800, Stephen Brennan wrote:
> From: Stefan Wahren <wahrenst@gmx.net>
> 
> The BCM2711 has a RNG200 block, so document its compatible string.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Signed-off-by: Stephen Brennan <stephen@brennan.io>
> ---
>  Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
