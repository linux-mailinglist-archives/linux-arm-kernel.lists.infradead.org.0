Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0644682724
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 23:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xX7scGJNGPr/IxFY4/tZd2+2287k2Dtmt8e2QySK1jY=; b=XrsmzJ6fRSd6/L
	A2NLyRHS5zVfgrJSK07p85NJWi/EZn+TVJB2DFH9RxlzjJrKp9ey9qCOAQRjxHTMSauVdlsqYUCoo
	HACYL2Xfrs49jHrSSXbfvzgorSJIR3Ph3i4gSpFMpgrrLckYdZoiIccpw0x8GPfJvcZF3+la6VyHk
	Pp1oIc4OIop600VVwP9dQln3S0SuMyV2ipvnz9S6cgjIBYe0KUB0ijX09bOc2TBrJldDhh7jvbDwA
	VfSvN/T6jQja5hAI+bCdFnKDfg/y4uPUCeC1f65jXct36OpJPI1fPYm0faR9dHbtrHR5+HXhgWUGO
	LBQ4PL6mgvSNdadQSxLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukoT-0005OB-7Q; Mon, 05 Aug 2019 21:46:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukoI-0005NF-CI
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 21:46:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id r7so40301163pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 14:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=0N59rAm+IJdZS4+AP3R02NAzCgd4BoOv2ctu3nbjqJk=;
 b=rwLUWgvf1qQ+YcLoAV6e/qmpmkL/X1qlmcjgtIb/Z0qj1AQllfD9q5ik/WMI+dYgbP
 oJB1Xz+WU6zGzIXXJ+20bqmnijwUbUa97iRn2GNNFa3/bbtkF7qEU1bclXHWgxGuwOvU
 fmyhI7N8oALj6ySt7EzgMYJiWMi5oITwedtoA1v+vD1CX10PJM841SJYNGHQyqSRiw44
 wMlDssxMSfEVH1sV62x26S8i+9MYZxv5FbK/Z2KO+xpxE+6YdUIz1IayC1IHtb9GqI4o
 YzL4VqDMRaqaJuKc9vJMCJUxd9BBSvc/JQ2LkqodkIADM5VOdiTLi9bH/+OtkPY5ZpgG
 NC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=0N59rAm+IJdZS4+AP3R02NAzCgd4BoOv2ctu3nbjqJk=;
 b=EUcbmYtqfKrMwkP1CL1OkY29g8QUWEf8BROa5He+zBj9v1Urs1s9ItxzNO0EMFh5nj
 4N6OGvpCmY8vTKGFVRCkftZL5I8mhfyn6wzXLpJp2LerQx1zGp6DjBbGRsvOh7jYzV/L
 M76gdcp/2Yhx0GsB3HlHBMcbOxUpmMV5Pue9Urxv5PyDqkR4VKZKVKwk67DICt4BCKCa
 Qk2aOaHB42BpC89hELuUAlYgx/yVw3KBqHVba9ndmtyfqgLbfNILxOFHztxwuqTGIwHb
 VrIQXEluWnPyO3R3a1ZvRBNHZAddJIgUIGm4OLANvyrgWDxd5RUB4e2YEAKHg55+QiqV
 onqA==
X-Gm-Message-State: APjAAAU4J75WTfDkZL5eUu39mNaKZHpmpxW+FYTmDau6ONwlkuy8evDE
 ZmfCHE9gjm2QraFF3RNDSUhr1A==
X-Google-Smtp-Source: APXvYqy5DdisYBXyBq8Lx1/TvhiGE9temZcFVyJDWqAZ4J03brj3zIZsQ1ZSoTA1IfrzD90LOIifoA==
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr20537343pjb.115.1565041589679; 
 Mon, 05 Aug 2019 14:46:29 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
 by smtp.googlemail.com with ESMTPSA id
 s24sm85504977pfh.133.2019.08.05.14.46.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 14:46:29 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/6] dt-bindings: arm: amlogic: add bindings for G12B
 based S922X SoC
In-Reply-To: <20190731124000.22072-3-narmstrong@baylibre.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com>
 <20190731124000.22072-3-narmstrong@baylibre.com>
Date: Mon, 05 Aug 2019 14:46:28 -0700
Message-ID: <7hblx3gua3.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_144630_414520_6921C2DA 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Add a specific compatible for the Amlogic G12B family based S922X SoC
> to differentiate with the A311D SoC from the same family.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index 325c6fd3566d..3c3bc806cd23 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -139,6 +139,7 @@ properties:
>          items:
>            - enum:
>                - hardkernel,odroid-n2
> +          - const: amlogic,s922x
>            - const: amlogic,g12b

nit: in previous binding docs, we were trying to keep these sorted
alphabetically.  I'll reorder the new "s922x" after "g12b" when
applying.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
