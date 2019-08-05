Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392CA826C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 23:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCFOxOc1+S6rePZn1HDn0enLe4kFiLE7j56EFD2rPEs=; b=LoOF42m1sfDtO1
	bDBVyUMOLzLUrVrPx2FQ8eElj4UVHdaqkGlCSEJE/YK2pl73JK4UwkVFOqCn7cgcKQjqs8nqwB1th
	7eW/pqt0cD3+ds+dB5mZUCS0vcUh/Jsag30779hKDBprOjoLuUeLqhSriV6X3XoMjxQAR9tzyAme8
	Oi50XA47RWoNSdGkqroyTfuvXEa8MxoPNBnNhjWrEXdO/aKT4Zlo+/qr75eoU8LNfz7g9aRXNanUV
	Fy1dTwwZjpPGVt6MeE9TqW2wlgvw81q/UEiw/mXyzlhBN9a7E3q5h0RL56elWFHhIkcxzBQ4eAQ/M
	8taIXchsJmB2Twkl0DzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukS3-00054n-LM; Mon, 05 Aug 2019 21:23:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukRv-000543-OO
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 21:23:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so40261731pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 14:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=HSmoEp/ziBaJEwse1a0IgnFQRWhZvjEvYtd+aetfTSk=;
 b=RYsmyURowgYjpUDb5ZIOXfn0WP3QsStZ/1uQEgQmPgOol8mkIRe8+9P5OEafLEeiYt
 Z6RBz65k5km+Lzt82HrTM1fGDCgHTGldzrZoKygIekf6Yksg94J+Ga8KNpYKt1xicvnp
 CkFWTQm14jHJd+HaS7tw0u10ibpRAlUozKxFP8b7CrzyTiXmli2xxYEMY4sBKWM9isui
 HpsZJNaaz4R58Z0sCNFfp47Ryqg7JlHH017DylL7Tteb9Mt2f7EUa/ZSD6jzc+Ie1Eyz
 ysVTifrLVw0OlKVH0TEUUOkWPScsNBr5wiObjKfZLRIVtE80xRp/qWNYWNXwdyJj49vf
 LCaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=HSmoEp/ziBaJEwse1a0IgnFQRWhZvjEvYtd+aetfTSk=;
 b=gVI3gDr/Jaf+p29G+MFHLzsyYmtpjN+6cCvl9qywHJxeD94Pde8kS/MMjfkK8bl/0/
 P33/PJRgXJEUYtbog+0B7Ul66Ww/bPLwS5Ht/In/l4BNFWqlgp9qeY+NmaghMDZ+RzFc
 AiJBETcwBeeJrKXCOrGozhihGK21O/vZPFYFYrPAnZv4AhjaxDRiNLHRKTQU/ZRnwZLI
 /PC4xDgqRVBukqrdOX1Ok08I8ZTCn0tlydTCxF6e3obqNfd5wITAsu+5uRd/xVIBCv0d
 LDvrNc/ABcK8mTXdcFPA+7RCYc2h+H9qR3GwlJSm6gNCwOAYpXs2FU3H/4Vt2QQqOauN
 m6Cw==
X-Gm-Message-State: APjAAAWO4epkMrDy1PsyN5NgerKxNhxl4B2z8sJi+tYb9baaF6JzndDy
 LDv3rjCvds5fpA5QoU6/HnwjIq2gGzYvnA==
X-Google-Smtp-Source: APXvYqzGhD1zDypW1mivoRqjSzY9R2U5h7sDfLfd2LohUb5Pzua5KyGy9CGK99REHRRiokWBGH7BwQ==
X-Received: by 2002:a63:6106:: with SMTP id v6mr21815264pgb.36.1565040202848; 
 Mon, 05 Aug 2019 14:23:22 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
 by smtp.googlemail.com with ESMTPSA id m13sm28025691pgn.57.2019.08.05.14.23.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 14:23:21 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 0/2] ARM: dts: meson8b: persistent MAC address for
 Odroid-C1
In-Reply-To: <20190727194647.15355-1-martin.blumenstingl@googlemail.com>
References: <20190727194647.15355-1-martin.blumenstingl@googlemail.com>
Date: Mon, 05 Aug 2019 14:23:20 -0700
Message-ID: <7hlfw7gvcn.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_142323_800210_65D8213F 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ottuzzi@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> This series makes Odroid-C1 use the MAC address which is programmed into
> the eFuse.

Queued for v5.4.

> build-time dependencies:
> patches are based on top of "ARM: dts: meson8b: add VDDEE / mali-supply"
> from [0]
>
> runtime dependencies (without these a random MAC address is assigned,
> just like before these patches):
> - "nvmem: meson-mx-efuse: allow reading data smaller than word_size"
>   from [1]
> - "net: stmmac: manage errors returned by of_get_mac_address()" from [2]

Looks like the nvmem patch isn't queued yet, but AFAICT queuing these
will have no adverse affect.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
