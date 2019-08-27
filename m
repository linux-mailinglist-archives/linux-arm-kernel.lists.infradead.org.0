Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0F99F5B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obN05TX3jpcqwGctjKKWxjGvGZZzPoCYC+E5ERHObH0=; b=gLiAyEhZXKh6H9
	g7gHzO35ctRefiPVXYlxs1YdMThp+DNO01k60eJXJkA/WixDxJJ2fbQSUPE/QuVxpTm/a2X8mz0HL
	fXem1K+VlZFL6DEqLlbA39eLwr763puSlrLKf1t7Zjj25iiytf6ES0/9uu/9H54Pg/3iHKBSzWixq
	V68RfDl4csevVA+GrxfUohEm3vLrp3Nz+0ZRSb9F3hZavoumhkHyWIDLARFBBFcTxcvuGu1Zegag4
	hKIx+Hvy4y9oaEvLu6pNcKsQKg5rMhmZ6zVBnC3VoKlwg4Dpfu2JQTcf9448JqBYlGxMqrxGcpoTO
	JjI0Kno7npm882x5CMrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jSi-0004lN-TE; Tue, 27 Aug 2019 21:57:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jSU-0004kB-Dv
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 21:57:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id e11so208175pga.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 14:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Y58GzbpuJMrCv6Aud3l4fk9q/EphwZ4HzmalX9EXO6k=;
 b=rTiDJtDz0lF8iZtwS2E9aimITSlzG6HIFOf6vlZyAafpkeUG64U7MV9Yu39sFcNIvd
 u5fD4k5wylpqkm8n/QGqUCllNPs1caHICWt7RnY9nej7dGYSJx3OaxEj241aSl/rHIys
 8Q9xzRI9YZPYV1Zp48hrFayXPKz1YzRqaheng59FI1LBq7n+17QKjJbdwJWzCuFBDi3c
 S0IAg6FMJ6j3lBjTeFkFp8aLLZfa5JTuD4LvlAren6zm7wf1YGNZmP7SIX1D63Jni5ri
 oEGhgXFyITLiuSzeR/me8xGCH8SjCDcCD3b2OTElyF1odsAR2+cp1eDPuCR5tKtW4hRN
 OaNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Y58GzbpuJMrCv6Aud3l4fk9q/EphwZ4HzmalX9EXO6k=;
 b=YegLa5q4gf46ZuBZ2ur527FnWov+P8sIhx3HrJkwe6x0qAsiH5j0oiYKWZWrv720YX
 uzFPgwmFHtzHuFqQ04j8y87B8TLcgyuieO8hgmVsEDkiQIpZbmmgzF0/kR+3Ztqqsiuf
 rcF4TAQllbpSDzSUeXVLH4MdDyxmOfvsNlqUvWrQgefZzZj+RFu9/tOErNCOMb9Amd3k
 Y6j4IqKwnHPon8uRwZKiwiAul0bjRiaVZtP0jJz1itNpFnqSFlXMxGqIA4ySjScB+Y/X
 MXayLaNAubJy0Z/pQzcXRzjaKHYYV7TeyV+ucQfHm7EHfjwBMzcEKHafaB8/jbK+Wzz7
 15bg==
X-Gm-Message-State: APjAAAVUpdpx1jkYEaigAbSyS8k6B7ndqpiF3unZFxs3RHrF29iz7Swa
 0zZNlP4se3YTmoEmFmKvl/8Ttg==
X-Google-Smtp-Source: APXvYqypJmra42f+zZaaG5L+JyglSUCu3Jctb6ZUUahBE8VPLzbP7kgdlKfYkQUSzRkfGvw0nbiVeA==
X-Received: by 2002:a65:640d:: with SMTP id a13mr566500pgv.256.1566943017473; 
 Tue, 27 Aug 2019 14:56:57 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:cc35:e750:308e:47f])
 by smtp.gmail.com with ESMTPSA id f72sm168758pjg.10.2019.08.27.14.56.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Aug 2019 14:56:56 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/3] arm64: dts: meson-g12: specify suspend OPP
In-Reply-To: <20190827100307.21661-1-narmstrong@baylibre.com>
References: <20190827100307.21661-1-narmstrong@baylibre.com>
Date: Tue, 27 Aug 2019 14:56:56 -0700
Message-ID: <7hy2zeuv9z.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_145658_613820_6D978B4D 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Tag the 1,2GHz OPP as suspend OPP to be set before going in suspend mode,
> for the G12A, G12B and SM1 SoCs.
>
> It has been reported that using various OPPs can lead to error or
> resume with a different OPP from the ROM, thus use this safe OPP as
> it is the default OPP used by the BL2 boot firmware.
>
> Neil Armstrong (3):
>   arm64: dts: meson-g12a: specify suspend OPP
>   arm64: dts: meson-sm1: specify suspend OPP
>   arm64: dts: meson-g12b: specify suspend OPP

Queued patches 1, 3 for v5.4.

The SM1 patch has a dependency on the SM1 DVFS series, which in turn has
a dependency on clock changes.  Once I get a stable tag for the SM1
clock changes, I'll queue up the rest.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
