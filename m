Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1187C258B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 22:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvV86BaOwZm/OppO9IPRDYJqGkcN1w3T34pa2YG0HwY=; b=UtIY6fdgaIRaCW
	uzN75vaRGFRzQ/4vAB5H/wcNXpMmvh382lGsT7sgtMaGZa3z14q0Nr+NDdLj4tcV/o/yOaFqUTNv7
	uSc5q3xnAgvLr5Q7ditS/wsYgsyu8WgVpcofwn+32zf+CVGlZhXcTzKj/NjVPUFFWh3Zbb8zlSJKh
	0aU9ZwIHGdmqMBTN4AZhwcvtgFdTiP6iW7qq10oBji+RtpbMvwvmbL6vT1W8Amn7bnfGGms4OdM8A
	r2cqcbAbQjbvCe++KnKTVd3YmyDKa6w+/jPtnDm8756zVRS9TvL9LUX0e1b4obF0V+WkOFUVI7zlf
	AygDvUfI3uyMzABhmkLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTB7w-0003fz-8E; Tue, 21 May 2019 20:12:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTB7n-0003ek-8y
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 20:12:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id t187so37310pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 13:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=nSMrBlQQCNOdHw6ym1MsOYq9Zt6fXAndfJkhXIkeTfY=;
 b=UKYH7WLV2ulLB4lxqEK1p6vKzcO/oYH0HKk0Uf1ngLMKlUIdsEZBeUP2RkJFviqTla
 /+Kpld/0OVy8Fuu4qrbvy5/us03iBvFcqM+dVkzCFWvmn1i4828WYorclEAU+0cKoB52
 qGBBHkjShpmLqeb/cdWbB2QEVLwISsfCNYX2LIybY7DgaXWrQ0lAqmRkpz8nqcAd/xcQ
 OjuH+kA3zAJwDCA79zLs2+71YrQzyveKWqS74wE5wEE4E+MrnQY4xFcQpWoRP1bbJdyB
 m9wKLfHxAUaCWwuXGeFGpkWoWgfmGxwC1oPGoROkVjiJk1u2GLFaFOWidJ4WiwFzUsGl
 CaDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=nSMrBlQQCNOdHw6ym1MsOYq9Zt6fXAndfJkhXIkeTfY=;
 b=XqnYb/zE1VIhfy396cJHi/ZOtxgfNQ39R8k2+/vx9L8nt8jGbi2CZKua2UJVa5XUiC
 38737PhUzYdGeVCgeKHhl3PwhSVy/V0IVXuM2a+YXkWwVLcXtdA5ck3rFXNQ0SeMmgba
 yE+RTeAA8LNihxSXZtCskw3E9136sgN8rzqcSXQEKchRl+zsNFPEYrHX3MknWVNrKs9v
 rbDnYU6qwAvGeaHqjiexLbIo42qE2pyaAckQpV9PyIVgsphbighq1aRCUZBZ2yYsWJ5r
 5IF3TlFYUL+QrBiDqDnwJeY1gsO6mmc2GdAPz88m8GFFgqT5Wum4Lg2/05/JFE2+w1d8
 ehJw==
X-Gm-Message-State: APjAAAWIW9jFHgvJutDdYMWMYSaYmRwQQLUUFqlkpbGCg/0bl7mlzBS+
 qZCuGc77o/aq2DSUL5N1LRpQDA==
X-Google-Smtp-Source: APXvYqxVEPOLzIUAcEnvDwqtTQaoCBe/SQRAw+I1ByMAhdJAZkI38UAVWTgq+qFcuMrL99a0Mwl45A==
X-Received: by 2002:a62:4d03:: with SMTP id a3mr92113713pfb.2.1558469558426;
 Tue, 21 May 2019 13:12:38 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b1ca:3800:3284:d770])
 by smtp.googlemail.com with ESMTPSA id r138sm29927872pfr.2.2019.05.21.13.12.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 13:12:37 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, ulf.hansson@linaro.org
Subject: Re: [PATCH 1/2] mmc: meson-gx-mmc: update with SPDX Licence identifier
In-Reply-To: <20190520143647.2503-2-narmstrong@baylibre.com>
References: <20190520143647.2503-1-narmstrong@baylibre.com>
 <20190520143647.2503-2-narmstrong@baylibre.com>
Date: Tue, 21 May 2019 13:12:37 -0700
Message-ID: <7h5zq37eiy.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_131241_584514_B3092BFF 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Acked-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
