Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C643249A9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Cs9bEyNSxlwsvlP70VU/GYJk7KZ7moXAY9aFiqlPHI=; b=Xar+fNlzTU0mrd
	4acjDM6vPltxezjhZ5+P2vFJAjLMh4eJRhz+tpn3Box81eQyCaqp9n2Q8AUsJgsgrUjX1JJiTTgdE
	v4ap9sdpw/z/HJM9MoArBYbLxf61FriQ/HmPLO3Xf84yrwgu6WWCkAiEN/niMJrz7O/6c/jkgROXA
	RBxMyLI+4WAtPt8GoZ0DEgSoVZAFiYsGP3Goh6KZ9YyHFFYCTZ8XgUSeyjeNXT+Ek+uRhiBwcmffw
	7P2ZAfhPvkXjKP+y9L6FmgnlsBZSSDcDPJJZ3W89+1OXV0sPBrDVTVBUnjZiwCcwy26GfxzpSlgnl
	mZwhMjVtDwPajPifNKrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8a8-0006BX-GG; Tue, 18 Jun 2019 07:31:04 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8Zy-0006Aj-GH
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:30:56 +0000
Received: by mail-lj1-x242.google.com with SMTP id p17so12041797ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=lzMoIK1vee4P4mPO/slx2A6Tsr0AJjn4J96SipEBO/M=;
 b=o2QI4NVMdxH3WE0Sv7g2Wd2KSi1zyz1KrSd63ZH1h0e9j819uRnJyUWyNiNgg7eNOB
 4wtbLPamVk2ak7wVfJsi8cJyYYqLe/r2yx4Ez+0w9ptwxP/5sQqZFd6imrNDOmvpTJtI
 rYj0Lc3ob4OdqCPaRunnvn1hXl6ypYjoufx0iAYz9U7FgkK5/sc+gI6tTplCkkpnrjGp
 bZLlACnOnh0hfNRgBgvZbWYVhzEm3KU0y7wdsrPchbuE9P11+bbRgtD2fUxcQ1i3Iazn
 RW4WSRUDBhJZTWYQxy++MQN0EHKTU/9W8VaJdpzO/1FxzIDr2ilPBqkOjp+zRz8vx18c
 QQDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=lzMoIK1vee4P4mPO/slx2A6Tsr0AJjn4J96SipEBO/M=;
 b=aXhqMZDbuG18ZYkES/0zR/sogflm3huHnztrKFgI7H5Gd5kCTJ5YCJL8ImPLoGQtlY
 STKOkuD8xtLmSgTJ6QH10TiWkxJ7QjFJ/vfLPAUrZZeHdjjQSKgC+YPxaVaNKos/HH9y
 FHKl0DeDKbOHgYPIQjWMs4vdECSrlNzwAAxLbwJLO2Dm/OMQVXrWOm8vmwi1xiGPRzRD
 wTqIDnSRFKBCGTIzyPito4/pdtnWdbHFuheWtlq7TpFVIAMltpAyf+nNY94VF4zFSbd0
 CEoj3yrSY3zEOzgwacjR58pvhHMPFdFVHa0fW4SmM83gMHAhdeSwkMt4gEEdfsND2Mva
 mraQ==
X-Gm-Message-State: APjAAAVP2vv2qT/eumEu6HR6kL7C4tE5jfjwkgunqCoNxDXeFxzR2l+c
 N4LDk2LmStPKuAm1Rfydere5g9WU4vA=
X-Google-Smtp-Source: APXvYqwGExLOK04QgdAg8HF247qc6qSalgLXbN68WY9cjm5Unagl1DuNFRQCTUcc1/cSOLB4c3Q+yw==
X-Received: by 2002:a2e:824f:: with SMTP id j15mr4508805ljh.117.1560843052049; 
 Tue, 18 Jun 2019 00:30:52 -0700 (PDT)
Received: from localhost (89-233-230-99.cust.bredband2.com. [89.233.230.99])
 by smtp.gmail.com with ESMTPSA id z17sm2477188ljc.37.2019.06.18.00.30.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 00:30:51 -0700 (PDT)
Date: Tue, 18 Jun 2019 09:30:50 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [PATCH] dt-bindings: watchdog: Rename bindings documentation file
Message-ID: <20190618073050.GA28646@bigcity.dyn.berto.se>
References: <20190617090953.8770-1-horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617090953.8770-1-horms+renesas@verge.net.au>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_003054_683401_6A5BF7C5 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-watchdog@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

Thanks for your work.

On 2019-06-17 11:09:53 +0200, Simon Horman wrote:
> For consistency with the naming of (most) other documentation files for DT
> bindings for Renesas IP blocks rename the Renesas WDT documentation file
> from renesas-wdt.txt to renesas,wdt.txt.
> =

> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

> ---
>  .../devicetree/bindings/watchdog/{renesas-wdt.txt =3D> renesas,wdt.txt} =
    | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename Documentation/devicetree/bindings/watchdog/{renesas-wdt.txt =3D> =
renesas,wdt.txt} (100%)
> =

> diff --git a/Documentation/devicetree/bindings/watchdog/renesas-wdt.txt b=
/Documentation/devicetree/bindings/watchdog/renesas,wdt.txt
> similarity index 100%
> rename from Documentation/devicetree/bindings/watchdog/renesas-wdt.txt
> rename to Documentation/devicetree/bindings/watchdog/renesas,wdt.txt
> -- =

> 2.11.0
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
