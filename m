Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E365E18259
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 00:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FN2Dlrrvap3oIZm75V3fCUMvFldvQ5F4KbhtJs2AiI=; b=LXo37Guj3OKuct
	6tXwM/MDCKhuIpvXR46S7y55HxmVxlvoPsV28rrzJ6kU4X8nRAqPu7y0U//+5suLHlqJ4Dq4hdw5X
	SloGPrcknFhRBtG3Te7kb2DMcbz3zkRO9BqhseCnvxMSWXhlhgP0RKhnqsXwH65cKl2AtPpPCI9RV
	/XWa00kT3XVlCsUcVTumrP6+chyqVocXNpA/WthiwNhq+MgBglHmNaQ3nYUgJQ4m2BFUm6n7lo32P
	/brQGiOxPbUNHOPLBnVjPcPH3jdd14BvPenSBnANTizxB02eVkKWB8Rk8G8OQ9EdnD2jbohIgafq0
	aF5KKrIUL1kVfZ3LFJ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOVGX-00020B-4L; Wed, 08 May 2019 22:42:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOVGP-0001zV-TO
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 22:42:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id z28so209042pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 15:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=BFe1QuxITumk3NtRUI5j6KVRf7tiVcFp6Ull8WpK1V0=;
 b=Mfvex9BFV2UhWcSvsxNqdfZF62RCtCtQrieU/ecep5z0+LlSwxbxe65oc8BqrABrVY
 D0GgFHhiO8JYLmuzd9gChNaLR/+E/4/JuekTQG9zwQPg75Bs8vW3zLWyFJjZSmvU3Wzh
 Rw4Yswz3b3zvMXAyyBahCY4JHGXRMcXjnuW49PAE3sO3I/urY9+uZjhcCAD0YoN02F6N
 3LLwm9nr6HAM+XI30F0kWBh2vNMSNm4yJqmJOHo6mrUCXT1peZ6OWylRIId699L57jnG
 WGOAag2H5f5NQtfOGri0KFAlW8SBMISCuDMeOc6pZx1RGPgYRw64zuvWYZZXU53m/Hof
 Kzyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=BFe1QuxITumk3NtRUI5j6KVRf7tiVcFp6Ull8WpK1V0=;
 b=q50ar7eyqAJyXRQ5AyDr6gK3nO71oaM/AeOr2A0ANA4NDvkQOsLdTTkBI6xjhSYcFd
 XULNfLj7PlH+KlcqdmgwKJ+IVOJNDmuwmLSjBBF6Yve7ozAtZSIUtZXwp3cJoHusWbe0
 BwjvCaI65qEIgIPC4jwzB2aBuK0Xkyqi/eSirs3s+QJc1h9EBIFoIW//VI/2T/abeOVV
 g63QxeHTXSfwD/E2TryqrZepvuO+SDY5801Hoh3JBLr8L/ddWhm4B1f4SCZl6SOvcBxa
 2XhooaizKtfEf7Hfu600I/+swqAtWMGvo4+HtH+psrALKz9EkGCe6VfqvO8H94c2zHsF
 u+Zg==
X-Gm-Message-State: APjAAAUudWOO9iByGKdgk38fDILsxjpXI27+MEcseF/qPJaqFbDf/x5k
 m0a9h/Zruk1dZpUmE7M2QW5DUg==
X-Google-Smtp-Source: APXvYqx/VVXouF8rOT0oIb+thKazr2gkUBTz+7SSmre3OHZnik0jMYM3EW1igez7W+lucMT7jJVS3Q==
X-Received: by 2002:a63:1558:: with SMTP id 24mr900283pgv.126.1557355332383;
 Wed, 08 May 2019 15:42:12 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:a864:57af:5348:a6ea])
 by smtp.googlemail.com with ESMTPSA id u123sm376416pfu.67.2019.05.08.15.42.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 15:42:11 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, thierry.reding@gmail.com
Subject: Re: [PATCH v2 3/3] arm64: dts: meson-g12a: Add PWM nodes
In-Reply-To: <20190423133646.5705-4-narmstrong@baylibre.com>
References: <20190423133646.5705-1-narmstrong@baylibre.com>
 <20190423133646.5705-4-narmstrong@baylibre.com>
Date: Wed, 08 May 2019 15:42:10 -0700
Message-ID: <7h7eb0in5p.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_154213_978563_E095684D 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pwm@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 baylibre-upstreaming@groups.io, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> This adds the EE and AO PWM nodes and the possible pinctrl settings.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Martin Blumenstingl<martin.blumenstingl@googlemail.com>

Since bindings are acked, and there's no build dependency on the driver
itself, queuing this for v5.3 (branch: v5.3/dt64)

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
