Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B868A13DC08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:32:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVNUpTTyWsn+mSrZNiYOZyAydlOOfNZxyhP1e8iKz2M=; b=dZrAGTCVx19eTA
	6+5bObQZalgI1f3VMrKHpNRNZcKoZz7jeySlngbHCjfRJPuL1U+4RA5C8AhEQpyyZjXVyo+f8KMQ1
	h0AC1dC3qPxP/QmCFCm0EM0e+7KqLG3/w0br7yAKdSMAxKdue601HpLpQLIRgD13mXT81g6ODJP5z
	bGMe5w9kghKzQy5zNWxbYso5EtMt8JHmZit0tHOftvOMST9JO87LbsU5NCd2aYfItFqBO69l/PfHq
	eyBOIhg2ifXJENmXOBmwL3YAoji+zwhAFoWIfq5PlEnCNVwrtI5hkN7FZ5xbzn4pwsaLlRA3ui0Le
	oDLiAmAuN7IwJ4bV7Jbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5GL-0005Z6-61; Thu, 16 Jan 2020 13:32:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5EK-0003pV-Q9
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:30:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so3818579wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=00a+Q4mRpgzQBV1cPIKAh4zjIphnbswAUhTHY9znNH4=;
 b=iTCAlZeCQ7uKek41RyttwGtPeyePxTcuNs5Lg0PW4h0I/E3sHCuQ94y++nt1VdUqtr
 2A+KBexpEoP+z1CQEQ8I65w9PYBtwYTj7YGiA28ER3HXaGy0pTUrHLwkPzhX996SQOTt
 UV2nj6IgmrOdrpoFy+US97/zmPbjPyXPcHpMjqJ0/FwdN+Br46B3MD5wQJGOYksSPGut
 aaVkSK4Q9h3v5mNDvmihWCZhX17PRkiKLcQ7hR7JccTInRCTcU5JK0MahEbXYKdF+zhz
 9D8o3HVIO1rxG/wFPvHVy1E2DdUmAc+Ws1RYc+Uyk8ZNqklrwOcgAWyTEJ1cRtPV//m/
 /nKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=00a+Q4mRpgzQBV1cPIKAh4zjIphnbswAUhTHY9znNH4=;
 b=KYodDZqP6glGdlS5jeZnCw71cHSaGFo4YGTDp+h4bUQDNc2xY5dBWih71F66H7LFcd
 0AZYUgCMVIK+IukEqepDgnLLKjXDnE5nbt3AQN/pI9atQXk+Cru9bxGpmykSieLEmaIz
 EXcmpbbb16U2eoTHMdqdBpGPCA3sucK4MsVA+dZQh/vEv3pUu6S1rozVbUZEm+gQZeds
 ugvp9jSv7xRBcd7WsSoXhlYXfJ9r07YKAp5zknEMusEoVavsWJM8FpzdFVex/C8g4l2G
 U1l36+mv9vT9mM7a3xNYD2z3XijBQlvjvvLTH5lhg9dqkf1ugyx+x5b2BCrf36qhsR7p
 ZLQg==
X-Gm-Message-State: APjAAAWa/nbGizEpY8NNWBfkKuxqkGH261372iFZGAYgnKRUZ4ES5XJy
 g2U4CwgLJE3OwKkObb+prtxFSA==
X-Google-Smtp-Source: APXvYqyqW5SAwtM3InQeq3J80Yv0ePNzerEYYhqvdq4g+a9Hcq6N6diGySL/l1tecHCD81O0kGt8WA==
X-Received: by 2002:a1c:7d92:: with SMTP id y140mr5740908wmc.145.1579181434697; 
 Thu, 16 Jan 2020 05:30:34 -0800 (PST)
Received: from dell ([2.27.35.221])
 by smtp.gmail.com with ESMTPSA id o4sm28987915wrw.97.2020.01.16.05.30.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:30:33 -0800 (PST)
Date: Thu, 16 Jan 2020 13:30:48 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: atmel-tcb: remove wildcard
Message-ID: <20200116133048.GO325@dell>
References: <1578997397-23165-1-git-send-email-claudiu.beznea@microchip.com>
 <1578997397-23165-2-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578997397-23165-2-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_053036_922953_A7D5C391 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

T24gVHVlLCAxNCBKYW4gMjAyMCwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IFJlbW92ZSB3aWxk
Y2FyZCBhbmQgdXNlIHRoZSBhdmFpbGFibGUgY29tcGF0aWJsZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhQG1pY3JvY2hpcC5jb20+Cj4gLS0tCj4g
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvYXRtZWwtdGNiLnR4dCB8IDYg
KysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpGb3IgbXkgb3duIHJlZmVyZW5jZToKICBBY2tlZC1mb3ItTUZELWJ5OiBMZWUgSm9uZXMgPGxl
ZS5qb25lc0BsaW5hcm8ub3JnPgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vy
dmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUg
Zm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
