Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64371DA631
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvwzsTkE5zsJpuIsLT7jVbCsGOV4Ib/GbJquTgp6Xbo=; b=giWAy/M7dPujLm
	OPLyAUpYBTKVZTeJSqfkmfFTz7jnSApXV8fNgi2S9lefJ5r2knEnPXXIRrcKebx+4dAu5Bl3yp4Nu
	URBA69exZA4dWU62erHUx8R9vZzIUjcbVQ/hfi2PgouyAFUcf0SMUYkS3GqtBzja8tafTqKRP6B5r
	x94Mo1KRfPMfbdKQKqCjsjnyh6sSMkZIYZ6EAbdiEF0mJbN6dOFPrGMdf6IE+ktjLsYfSlpxM7ZGk
	kbw5hLHjMpr//yIuc5jTUr0WMyiCiq83eJ0ctjTmH5TJx1gsCgp5ZV8acXUqi1Mw47DK7nlQZ4rYk
	tk9gxz4YeWDAif49SXlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCIr-000295-Ez; Wed, 20 May 2020 00:09:45 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCH4-0000fJ-VG
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:07:57 +0000
Received: by mail-pj1-x1041.google.com with SMTP id k7so422586pjs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 17:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2OA6qojCM4dL1ZDG6HQpUSV9SSGjjyRfMb9hw1jALO0=;
 b=WVsgcgCNQtJKJlbMEdp7w81j7Nm4YgeKnV3hBNnr2syOwz5DeApI1RIoXsQ59LoX63
 UY2V0GnOOpscuwrDUIKdjfOccPjKFYNBrx6WwinSe0uALV9xqI4hb32/gERjn6v03kT9
 88RMzTiz2P6Kc5j6b9eSUdiiITnenAyFko0xZuusJ9PKBv+22iSTpQwetNCnQ2mXLQrl
 gEcW6QAiB8RA+CWjieoN2uYCT65WXXbdXyjnLNVcWQCkulr5kwSMoopJ7fXaQkP4u97h
 bT2iGKpFMCaPXKBUV7vdESsycvExKYcPZijw21Lp42FW2IB3AC8AfUzMhIdMk7uGC54E
 TPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2OA6qojCM4dL1ZDG6HQpUSV9SSGjjyRfMb9hw1jALO0=;
 b=MziqcH2U8bkiMVmLxsMuIZ7mrdZbvpB5FFesr6WUTZcvA3Lbwbt0GLbBQF6LpqBzht
 v9yWya7gDKX+H5aHaz0rtdr/lM2QHnz7gXBB2oJuP8+fKHIY7gxH/ypuoPYRFCGlapvZ
 jQXSCPabFYTg3zKqtNGKEEFeCqVXD8/zEA0l8K92wdvT/7Jice4YCO1PsJj7XAJ4NFao
 HQ3d8n3MiTsRXKpgNMEUGiTGhOvRm/uvC3KXiSavisxtf+hlHBlm1aF6FNLi2jZLYJsg
 7HHiSI3hyDpcbSL86VLQh8JteEHq7WDreOJcSSBkaJOWzrHxw39yvIn6H7bMMQG5b/LM
 Jpug==
X-Gm-Message-State: AOAM530kl+RaZFGAiLdcxDX6BLItN/65kZ0LSn1jhrj8yu6IzNJ/6l/q
 +4NDwSz8pp1qhsZRP4q5bi1/eA==
X-Google-Smtp-Source: ABdhPJwtCswXSbkUSw9C97SOK8vFMtT5eKKDm0rsNrlGrcNSvzzkVB3d8v+6JdpLRZlhXKPaZGOWpg==
X-Received: by 2002:a17:90a:3201:: with SMTP id
 k1mr2111805pjb.202.1589933273730; 
 Tue, 19 May 2020 17:07:53 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id w19sm490543pfc.95.2020.05.19.17.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 17:07:53 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-amlogic@lists.infradead.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH for-5.8 v1 1/1] ARM: dts: meson8m2: Use the Meson8m2
 specific USB2 PHY compatible
Date: Tue, 19 May 2020 17:07:47 -0700
Message-Id: <158993320300.34448.17484160743878386596.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515202520.1487514-1-martin.blumenstingl@googlemail.com>
References: <20200515202520.1487514-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_170755_275112_D7AF898B 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 May 2020 22:25:20 +0200, Martin Blumenstingl wrote:
> Use the Meson8m2 specific USB2 PHY compatible string. The 3.10 vendor
> kernel has at least one known difference between Meson8 and Meson8m2:
> Meson8m2 sets the ACA_ENABLE bit while Meson8 doesn't.

Applied, thanks!

[1/1] ARM: dts: meson8m2: Use the Meson8m2 specific USB2 PHY compatible
      commit: f5a7382d6f176e29e4fd9d733b93d5b93771a7e4

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
