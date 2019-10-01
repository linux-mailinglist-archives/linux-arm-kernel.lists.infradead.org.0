Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FD6C43C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTcV9I0JPogjlFsKA1aVTWVjwjBjINi1DoEl+iCzncE=; b=FX8ZqnV7xbDRNG
	TmwMnCKtBcHIMiqm8zH1R/0VRpWRF0XKXl2mReliLSNelD+9uPaubwDers8hsFYY5UqtR44qB1QGc
	mBdCCKEgaM1kvE4/GlLbbzSG3OzZHpq+m8cfGRtluICd3KJRlc00naNacZlnY2/PImQFPzH065uHH
	XNUjANWjPpB8tow1m8bhAjxkp3z7NLclwByw8kkW+DNA9ErUosx6liwR4RFt4Tb55YxyOuhkiAaQ6
	uUzPvnEH/4KT0u/SvMX+SimV0opY5Vmkd3zT2LI4vBrX0QzIZL6bhNJdpYjbN4jcOKriUWj+JpHsf
	AfsyI0KsgOSCozeWG7Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQWc-0005zM-EU; Tue, 01 Oct 2019 22:21:42 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQWM-0005sp-72; Tue, 01 Oct 2019 22:21:27 +0000
Received: by mail-io1-f67.google.com with SMTP id q10so52329018iop.2;
 Tue, 01 Oct 2019 15:21:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nnP/9qrpFXzWJWcSk1bbOi362G55DzTZbktKWRu2qvk=;
 b=kWIrhsa0iTA1kYsJISt0sgui8IZqwAoDXFXof2SYS2qhMvWLnakHuAZp7D79lR4hB0
 kmhQsoRTZ2+o24/otqJKPtCbEdxdwna88lLZRjw35u7QBQI2LyGrHX5btp1JuKhhIrD7
 yCiyJH7O+eHHXHgpAbLqduvzTB3CFB2IrJ6VEYKwCqCPINWKv4S091Ieb9jxJSq0kedy
 O5JN8yY6cRoKKK+aproxKtehfqyjUtwO198kmR25aZPDLmLJyWOORFkirBGe+wB/5u21
 k2AisBakZfeunNU3pL9GqY2VRvQ0K5Gz+drjxZU0PpAL2wjv0QzD9LHrgoAEE6VIg0qB
 49xA==
X-Gm-Message-State: APjAAAXw0LeL7fmAgGtGdH7XLcTXLfOoFds3B8cwXIwUYfAg7DMNkOxt
 /Z74rhuREShHnubHho6KjQ==
X-Google-Smtp-Source: APXvYqy/3gdgtXKKz0e+W7yj7BbuOZ3+SM3h3iZeJAMJr5dN41VJ8KQsfTODG8toKbXnQ6bcrS5PKA==
X-Received: by 2002:a02:c983:: with SMTP id b3mr710328jap.120.1569968484914;
 Tue, 01 Oct 2019 15:21:24 -0700 (PDT)
Received: from localhost ([2607:fb90:1780:6fbf:9c38:e932:436b:4079])
 by smtp.gmail.com with ESMTPSA id d14sm6455491ilm.15.2019.10.01.15.21.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:21:24 -0700 (PDT)
Date: Tue, 1 Oct 2019 17:21:21 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 3/3] dt-bindings: watchdog: meson-gxbb-wdt: Include
 generic watchdog bindings
Message-ID: <20191001222121.GA29661@bogus>
References: <20190920162124.7036-1-krzk@kernel.org>
 <20190920162124.7036-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920162124.7036-3-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_152126_426500_99DF1242 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 18:21:24 +0200, Krzysztof Kozlowski wrote:
> Include generic watchdog DT schema bindings in Amlogic GXBB Watchdog
> bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml   | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
