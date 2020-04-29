Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC151BE639
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaixXbumsDNZg9bVY5w27ya2RTGT/Cy7+1PHQmnwOmk=; b=YCEixLLtpC0ouO
	Co1OSoM0NfQFTIMUry+U6HHUvnK2gFHnWbz4aWKogU8q+nIlZl7jm3NFAcrR2exky9fMM35RxV087
	LbSmSnGAjQUuwECPys1l6vYGDtkh6+HyBeUlwq7t4a2rBqDFGOFw19Nfd4dSlIEetlqUf9CbVoW02
	EILmxXiNBO6PrPd/zUBqcn7lWOrLM5EYXbsyizPwQZ0IcbSbiZ0ccOW6ccJw0XLSBWmikOgsmi3k7
	bIz8GPKPre7P2DIIE1Apib5zIVK/QrGIPI+bPeulI4ysmHwNxmmHyTDzhnUeXlEDWr9Ni+uvKU/01
	l0xza+ycqlxDueiCJxwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrPF-0007vd-Hw; Wed, 29 Apr 2020 18:26:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrP5-0007ua-1y
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:25:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so3107619wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=aylaGgHoNCdro4aj1kReOF/0XJzfw3lt+cTfiwLLy4k=;
 b=bulmF0iAYytHO8GfkiMTz2/wrjQa81ycOghM4qrGUqY/D2OA5I3QqpJenlHxHGHOGN
 3TRI0k44FcE5kAoqkdT2qqpyYNEVFsteAbGuKJHzaBddtfXUZ92wKIX6oVcIhsjRNqAO
 tFd4Hdrq70tmRP08i3Cpp8t9YbXNTj3RRgbgqYFtGaOvXGvxH4G2Q0JS3HduP/sJwx3u
 J0NI4q/KAv+HCiS0m+IiycnPRi3/y4l6TBWHhMfdzqlEBZddW+HKVU/IE4nfdRUQPgXf
 fQX1XkJIGD5oWKQe2rqdrZ1Er/Pg9VPJFostro/Oy+FqQb6uN/hTy0CcN/QOxn25d9KV
 StEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=aylaGgHoNCdro4aj1kReOF/0XJzfw3lt+cTfiwLLy4k=;
 b=ApFXvDivFN3eiRMA2AaKDRotKqLy/tsiEa44gOZ98mJEjkL7ns8+K86+OeHvKgiBpe
 XeHGEix+U10bOLpPW8xFbviEqv34k/Kf+WUCo8ZGSm0FAp2oxL49CVm0R5jaoEnJjnlK
 91E0LOT5tadDb0M5QbmJH+QIm6OOiKdNztOVirquXFJAEq28eCzrBm50Q6Gi50TaXnyf
 IgzKAF17SQESuobwmToyGiJU5eXRpQeG/OZAH13U2qSc4uSPvr7sXZyynirMeQnNTxEI
 i84G8vWYsAhPxweB/uh/ZfKytQuPt2Hmde6O7Labes7tgikKCWdz3C3wK/IF/r74Ygby
 Mpag==
X-Gm-Message-State: AGi0PuY21ZAk4VERMmqawmgzRZpL7VcHvE28lUuXjQOh2cQJfU539D7Q
 3im3NlLV60PZqx51WjixYSIKRA==
X-Google-Smtp-Source: APiQypKGElxZbwfebnwRtc9YXDqH2ejFiotLM25eOrvcSV/EZexT3pOur5i5ZAGDz25bVOxo6Su9eQ==
X-Received: by 2002:a1c:bad4:: with SMTP id k203mr4587804wmf.15.1588184749038; 
 Wed, 29 Apr 2020 11:25:49 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id g25sm8741435wmh.24.2020.04.29.11.25.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 11:25:48 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/5] arm64: dts: meson: dtbs_checks fixups
In-Reply-To: <20200326165958.19274-1-narmstrong@baylibre.com>
References: <20200326165958.19274-1-narmstrong@baylibre.com>
Date: Wed, 29 Apr 2020 11:25:45 -0700
Message-ID: <7hk11ykv2u.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_112551_095541_214562E2 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

> Another round of DT fixups of dtbs_checks on Amlogic DT files.
>
> Neil Armstrong (5):
>   dt-bindings: sram: Add Amlogic SCP SRAM compatibles
>   arm64: dts: meson: fixup SCP sram nodes
>   arm64: dts: meson-g12b-ugoos-am6: fix board compatible
>   arm64: dts: meson-gxbb-kii-pro: fix board compatible
>   arm64: dts: meson: fix leds subnodes name

All the non-binding patches queued for v5.8,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
