Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276FD117969
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvzW4bL8hpPhZj5hpujdcRDWMy96xtkTCgUxPo/eNS8=; b=XRU2CQxzXmQfHX
	+KcYSuvKf05TvWVN89NoWmBt/caFawUcN1/OQjyn1aNjO/ijPi1blBiIzQmlwwAaU7ixHlejR4EmO
	cUhA3XRf12b265lA5vZruMsgYR190crCh1ZnweAoyJ5WCBdV0EgyJA18CXXGH2DXuAIP3fWAb5J+P
	h8Bo/VVwtWqcn7nU7NGxhsRec9/WGuX99rhaGq/TcflzATTSjRFOTng3p8oZdI+pP9BaVreJPiLdb
	UTFkDbi/MhiuIZIpkU0LXGBEkflTKkvD7AqIc0hFwllXsvtcj1FZTwXoNt4Djj9Qm3764y8KJm9rv
	gUK7kuCzJsNKQ/l+HCOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieRdC-0007tH-RK; Mon, 09 Dec 2019 22:35:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieRd0-0007re-BL
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:35:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so7838052pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=DpEDnczTgLmUSLdSdUYrI+chr7EHogU/r3WqtZ4to3E=;
 b=eBzDFNJnIO94AMgtEUzQcizLOePZOk9ymDnd7glk+21xbOY5st/iVlmzg31PmaX8If
 nIQwr5BWKpHW6KEFvdiqB2uuXizK//53pmw061q0FwTlIBtDRlCkVqEy7GyIydGpGg6B
 SAXqYXQOZIz6XwWOte5TdVpbtUpoW8cmxZIuqBpZt+FN4GKPuLLEQVHjJXZdjcrAVGv9
 Gm2zbhS/g0j9Mu4lHwpnJyaSQ52xzffjzEvR/4VlPc8OsEwTBlf8rvau30/afqLye9rd
 /iohDEY85cmNGxR+gH6wQpnDfWsl6jNyWeHrBa1exNXL/YIkBa22RgYi+5xYzq5sZDHc
 jx4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=DpEDnczTgLmUSLdSdUYrI+chr7EHogU/r3WqtZ4to3E=;
 b=UO18wMlcThurEn7C3HefDxNLjUNpdYqjQj6PkqmkI070Pty9ZkBlYpd8zgf6SMkX6t
 pn7qMpvJ1Jwgwt0vG4hDS8CsxFD+lm7LcwoGALyR4YoRAQeh188KMnTbC0mrB7oHhRwr
 HELwLLkIYW3mMoGx1Jy+CqYKNL2GeOX3Hkb1N1lH8/nAIoT6QdSI2yawkID23s7eT0wG
 ak9JCIc4k7yDHha/eecT1eMp1bQGBLNPrqHOrnQ51Oya/rSH2z7PDsL++8+COfFN7bvy
 XollM6n58PrB4iGJQGMRTgA5cPmlSoPxOy9CJZ5Gy3mL/whM0+IbIk6Mp115Oxg8a9aY
 vV8Q==
X-Gm-Message-State: APjAAAWul+t9LSB1EElikFoX5SPfF1pMytBReYIQh4K9kLjSLKwONcTo
 iQbWRFBazulI32H+lIxY6Gd1nQ==
X-Google-Smtp-Source: APXvYqzf9KQsOlR/3bHydft6MqOQT/ZvVC5FuQTsBmeouaIiaqFg1BNIjH9a/lbszhQIz2OsAmf7ZA==
X-Received: by 2002:a63:5920:: with SMTP id n32mr10910399pgb.443.1575930941752; 
 Mon, 09 Dec 2019 14:35:41 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id h128sm480972pfe.172.2019.12.09.14.35.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:35:41 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson-sm1-sei610: add gpio bluetooth interrupt
In-Reply-To: <20191205131900.2059-1-glaroque@baylibre.com>
References: <20191205131900.2059-1-glaroque@baylibre.com>
Date: Mon, 09 Dec 2019 14:35:40 -0800
Message-ID: <7hy2vlqg8z.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_143542_389508_5210A211 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> add gpio irq to support interrupt trigger mode.
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> ---
> hi,
>
> this patch depends of 
> https://lkml.org/lkml/2019/12/4/644

Just to be clear on the dependency...  This DT patch will not change any
behavior until the driver patch is merged, correct?

But if this DT patch merges before the driver patch merges, we're not
going to break anything, right?  We're just going to (continue) to not
have working interrupts.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
