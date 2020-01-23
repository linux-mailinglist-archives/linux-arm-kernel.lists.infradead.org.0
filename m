Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F66146B8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8SYqMQQiNDgIitk4hr3bKuW8xiB8uuZHxlFu6xHJDs=; b=IHTSzu0gCqWDk2
	Ezm0eo5QCjrxZfi10zwMaGEknzcfi4K3niiL6iZWM3MukXGB3zVCxI6/aNYOa3A02/MlfePpz9m+8
	Ju5OYiTktjp//4Sb2DW/SY2LkEd1tYYw/yIrA8xp9FtixTTMOakDC9vNVtjXMAq9PhUj4QjHAj8Qw
	h0uzxWC68oMVwPlAZyLyQxpbNqLVflGMzyU30jufUgnsV/5Z3CRc6Mgq8eTjz+VfOKe8sEtCDBySI
	MFJAOtZsJ2uSYZApBCcr7uDDtdDS5pvIMmsOH9VklwJtoLQox4/+htTNsSVoAK6++cwfV8rrBSxvw
	8vlWuxIgPSPwD07t8XVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudgq-0005Zh-Eq; Thu, 23 Jan 2020 14:42:36 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudgg-0005ZN-S0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:42:28 +0000
Received: by mail-ot1-f66.google.com with SMTP id 59so2884414otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 06:42:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VojjtS7akMpAwcay/UmymGiR2hr9tFaDHzEASOXUD8w=;
 b=Z3w0h/g/0/FTt0ZsAxT1Au0Z/sCHs3qLcBp0AqhVTKwkLRl1LT0E1vVKmVWc5YFlhZ
 lCuHHAV0SzvKofnRfw+N6lVEs3fBylHT6+uNdRBHCKzkXMeOq8GoFCVut3/DCixA9yXQ
 9jK2ghOmy7RL5XKKr9gY4EnvOn1SPN/FGRazWuYwFLOr/6WZQK+UbrRKZcwoyCJE71vS
 RLtepHfHUlzDm2TJB9UUpm+qakblzQNMm5eYFpUiXYiC3FOlAJk9W/fnJhM3erI60HqM
 h9dby88UKt/3gEueXIoCU+w06PSaZ3hlRrIf+G5ncJdKCEgkRnhWCzx/uBjRPNlj9mcc
 m7MA==
X-Gm-Message-State: APjAAAUNmjn8AYdnEDEIAtTELPbUFwkr4XuRv6VT5c0axW3bsJK9Gmvm
 hQCiI5mLpw3+629Amof4YA==
X-Google-Smtp-Source: APXvYqxykG4E/5TrCk67dHt8GjjUfo7u0vBc/K5VrQHFHH+0sZpSZGqLdxDBl66PpWm84FUIUxD2uw==
X-Received: by 2002:a9d:3e16:: with SMTP id a22mr12080775otd.259.1579790545677; 
 Thu, 23 Jan 2020 06:42:25 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n16sm845782otk.25.2020.01.23.06.42.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 06:42:25 -0800 (PST)
Received: (nullmailer pid 9469 invoked by uid 1000);
 Thu, 23 Jan 2020 14:42:24 -0000
Date: Thu, 23 Jan 2020 08:42:24 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: serial: Convert rs485 bindings to
 json-schema
Message-ID: <20200123144224.GA9094@bogus>
References: <20200122095558.22553-1-benjamin.gaignard@st.com>
 <20200122095558.22553-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122095558.22553-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_064226_904071_36F80402 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 erwan.leray@st.com, mcoquelin.stm32@gmail.com, linux-serial@vger.kernel.org,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Jan 2020 10:55:57 +0100, Benjamin Gaignard wrote:
> Convert rs485 binding to yaml style file.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 2:
> - remove types inside rs485-rts-delay property and add a maximum for delay
>   values
> 
>  Documentation/devicetree/bindings/serial/rs485.txt | 32 +--------------
>  .../devicetree/bindings/serial/rs485.yaml          | 45 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 31 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/serial/rs485.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
