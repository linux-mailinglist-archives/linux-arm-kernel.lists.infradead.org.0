Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0554E13DC0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpYtdMks2+tVnjrblHa9jQKMSkowe1WfTyWpxe5TqmQ=; b=Vu/rtpIPn78dt3
	Km5IZzZiTE8vdlDRyxCWhAIQ/6vdHaHISP6+6150BZnOusZffadee5kQRDxFtK7qUPkdJ4c5tjTuY
	7GFsoxBXvzvb+rG7MlJFRRsxPA5wLgJKBoLVT01DooBYBizUfEm+lKdG2Fa3ENkkDkA/EJYHUdDxr
	Rtpu376HCBWb3oKSbZph54CQsQKZcNgUtN/AfqfxrPgw2AuOult3blPWgPOW5UQ6SveoLGxQNu6pI
	R1+jhaE+T+wq9aUdNcVh37JgpD4ftgvnjTx4bjBjH1BCFAPm7ht4CwORpAJKz9goMUf5KQBrd4/K8
	T4BpBV9NIvSZbIEWLsPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5H9-0006Al-97; Thu, 16 Jan 2020 13:33:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5FU-0004yF-6T
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:31:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id c14so19160943wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=92j60HxqCEoOKu+L2rR0tiLdjI3nwfWARg8KDYeQ1Hc=;
 b=qk6nnIvTtbXj8z3WH8gRV5cDnpDpuGi+k9gfNf1M5gPU/SGXQeF/OouzDTCtsNTspO
 jyP6vddeW+PKwwlJcW1RP21/2yahoHU1oy+mijDa2/YmNpFjQnN+Nw5ZVbe0AWOQ8MSL
 HBq+5c4mm6oTtx2gT0pdFAPlhYfXLZEfvcZosCXRs5amTmpo77tfKqiIsleJOfsQjgga
 N44KBEzn3cxNeeG/4wciOEzUQeA0kvBvBXm4m5SY6lBEh9Z2QmrSoJhbikrjDyvbLnCJ
 IBP5kISG7AL6GQlWy1nJ2oOGDn6FNgcRO4ZaczOg9Ptv6lg4qvqOhbD6ZkzIKeekalBk
 w7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=92j60HxqCEoOKu+L2rR0tiLdjI3nwfWARg8KDYeQ1Hc=;
 b=GbUFjUKSBosaZHDsyQbQak4jKDOWKdFLczyZjCjkLCgqqPXFvwUKasgpaOb0QpsosQ
 Egw5svaeewuzAosgNqB+IROw2pdJo0M0DuvJ1vMe9QEeWERsVW5hpl7DLR9qfJxkhVXQ
 RUOg9y2NLesbhKCfWmLygtkTLndHprZMha5rSpThhVgzzlmdMvjmLZ09FySw/ZGa9vjy
 686NUYTQdqoHV28EvOh8ZiCoq3mw8xaC2z1yR0+PekJaRE3T4r51e6F9M4SgVZdgbUbm
 gcY0HvHU8tDUODdBWkvuh6tWAc4suNG4HfFkYxBIoPW6hdVakYLzNDCJRZAU7LHHK+Fm
 uacg==
X-Gm-Message-State: APjAAAUhkDgJc15v3ux/Uj44Fn0wI6LLafQsoAp27J55tGEWXovdhON5
 VRBzLl7S4nuIUPvs0h0I1QA8UQ==
X-Google-Smtp-Source: APXvYqwlMDSGPaX00R2t+Jwt5d47l+TNIJ+hn5XsewXTyhaLBWjnyKNucc5zVRNV2/RZ5WqI12aE5g==
X-Received: by 2002:a5d:608a:: with SMTP id w10mr3190596wrt.136.1579181506919; 
 Thu, 16 Jan 2020 05:31:46 -0800 (PST)
Received: from dell ([2.27.35.221])
 by smtp.gmail.com with ESMTPSA id s3sm4550461wmh.25.2020.01.16.05.31.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:31:46 -0800 (PST)
Date: Thu, 16 Jan 2020 13:32:04 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: atmel-usart: add
 microchip,sam9x60-{usart, dbgu}
Message-ID: <20200116133204.GP325@dell>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-6-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578997397-23165-6-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_053148_266955_8771E9D3 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, richard.genoud@gmail.com,
 radu_nicolae.pirea@upb.ro, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxNCBKYW4gMjAyMCwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IEFkZCBtaWNyb2No
aXAsc2FtOXg2MC11c2FydCBhbmQgYWRkIG1pY3JvY2hpcCxzYW05eDYwLWRiZ3UgdG8gRFQKPiBi
aW5kaW5ncyBkb2N1bWVudGF0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVh
IDxjbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWZkL2F0bWVsLXVzYXJ0LnR4dCB8IDEgKwo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKykKCkZvciBteSBvd24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1N
RkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvm
nY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBP
cGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sg
fCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
