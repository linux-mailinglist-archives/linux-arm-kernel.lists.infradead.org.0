Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12250B6B36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 20:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhuyZoL85lt9m2Ad6tx7bj+CDSKacVpQC3pXbFuEmUE=; b=HLLbryPLZiiHDB
	T8Na5zvgekG0cUpdyCXTtGGwPbKeIzHOWaJ8AKGKlOksDr5qRkbg8GjyWivYIh8d0WmSOGHrhOvB6
	JRSZ0z5q0Wr2uhQqcfU9/M+gi8XKiZYH3qtG6ooUxquFotkHtPGWE+sPTrRSY3BGqPj6uwtewXvab
	XXS3MgQLe4fcZdenMntBhWVW7ptQrxf10AIYOsZ+4hI0EjMZCTfx1sMIMTF4Ex3ILoQtjANlLy3ex
	yEWvUCqnUb0jam1epERoZGe6dfpHl0eUwG2OdO5w/ghl/4Z2O6AOMlEQzJ2tGowivLvb+xIuWT3Sw
	TQ8jZyRBhKcYpRQQGjPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAf7g-0006mF-8E; Wed, 18 Sep 2019 18:56:16 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAf7R-0006jC-Aw
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 18:56:02 +0000
Received: by mail-wm1-f66.google.com with SMTP id i16so1347179wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 11:56:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tfT2AOp9XkBHFWXzhz2KzyhrRjcPTDUsnhtNXKMxF1U=;
 b=NglURlA4xczE2tULSQ/SmKwpxbydrDBWUNae3Mz//zeoEeKa3FM+Lfiqb+0/YoHimy
 5qlu5GtCzUF1HMlJCDxRPTLOSDsJf7CvSKUWjwnKbboPX/kdmmNPKXLpfmSiD88xst/l
 ZpMizlgSvG2bKjl1qXusKpyFb64Z1Z/YRMHgR7tYu9Y9cx/DuLSc9r0FeOy5Rk9X29NX
 wMHgqnYQw2E9f+PQjiZm0YlBjFNT1hhEhDDRp6ghojiNvZ5iP+DvZDQRXEbPbU1FRt36
 EMgCr0OypNzk26yQnfJ58XA0kxWiMqs4RnMnr8bzflw7njU8dwl8VkKOZRScdI8gLeox
 0XhA==
X-Gm-Message-State: APjAAAWauD0/Sj0/QJcNOKbG2GjIvNN54fcP38fzx7SjIPjSeJw9Eg/O
 JoLnOZvPfEmnoHcEsqIszRM=
X-Google-Smtp-Source: APXvYqzoOxgzNfe1MMgxbMeIhmDgLusjChb0lhIUYpRKTA8VU3VOhp/mJwuQwF9eTyd/n24PXKFiWQ==
X-Received: by 2002:a1c:8097:: with SMTP id b145mr4120985wmd.29.1568832959771; 
 Wed, 18 Sep 2019 11:55:59 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id l10sm9883571wrh.20.2019.09.18.11.55.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Sep 2019 11:55:58 -0700 (PDT)
Date: Wed, 18 Sep 2019 20:55:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: exynos: fix too long line in memory
 device
Message-ID: <20190918185555.GB8463@kozik-lap>
References: <20190916100704.26692-1-l.luba@partner.samsung.com>
 <CGME20190916100718eucas1p1efcbabdf9dbe17a062ae83b8c19ac256@eucas1p1.samsung.com>
 <20190916100704.26692-3-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916100704.26692-3-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_115601_425182_8C0F59DE 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 12:07:03PM +0200, Lukasz Luba wrote:
> Small fix moving the comment to line above making sure the lines do not
> exceed 80 characters.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 3 ++-

Thanks, applied (squashed with previous).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
