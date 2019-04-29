Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3F2DC48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoyKEPuseQDWkbW/zf6BW8LyJFeLDS0IzDBEMT6SsKw=; b=XTEJO9J6TF2Q+k
	K/vt11G5FMMfFfvbBzOeiWnSPjWOLfN4rub1kv9ldSUt5rhNNlKQUNmxrlsd0Lv2/gBPIahbAirtu
	gvfnGJ9H+VwtVmedBXOw0R8GpulXOusqxSpKgl2lON5XKpPubPAChxwz9A2wu5+F1B0g13ti+4Fms
	pDQPCibHalSASG/4hqbLonUXMO2HA+KPbDTUEnRwpjxl2J8Mo5Hqc4McWyQzrofnWcrjvl9F/ioeD
	iA6WGZliBco30p3ppCzXrzuKb8FPOVktoNEAxjSRXLLI0lBPVOi2p0BIUmXTfzvXm07gMo+XzYzFb
	GKSQodelArRvI+95YVLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0CV-00052f-GO; Mon, 29 Apr 2019 06:55:43 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0C3-0004lO-Es
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:17 +0000
Received: by mail-lf1-x141.google.com with SMTP id k18so6927403lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QRIVNsphbVNwC/arhQnSQKVa8pg3P4pKVV1NWW1UvFg=;
 b=XWIyRjvEZC36LPYVhrW7NdusOHOCq7oCn58zJMvzu78S97m4FP2JJvCrKB9+VSA+Oq
 QTLqDJys6Y7Sz2eQRg/HCv3/jXdTmmInylCT5Ne9elJHlTE0kaoEX+wyOFOvLSIHjLn5
 T3EHfC0cLeWDilzMLowzJgoHYf9NakoF26/GT1gDEf286cKkq5pevCVYVHTb6hdfTEm+
 buAhvbgS6qLwN1sXiDtdELWtItdmjmdvNLX2flFt3ZaP9NUaKAow58q0bwdkAl9C+kgI
 XcwnHuz3YQGFBhMAiV3vADl/+7qqdbX6NUk6Yc+zop1kf5NaOn9LsPRosnt43xnbC+QX
 /YFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QRIVNsphbVNwC/arhQnSQKVa8pg3P4pKVV1NWW1UvFg=;
 b=YpF2N4dCHMlPSxtJxM4F+XzdlFKXrPDP6eStBZSSr2v9dYrxV34mWhOGQJVC/ygpgz
 NQBcpjGtQvfKIGTqVRZ5PCiC/fuGPcD4TQzRNd7a+5fl/4qKtLyO6ZxMjbn2iEljtoRa
 rb93sJ5tx8n29JxZRtwuSeVFNyLmyYDrlJLTHvA8RwFFQdXXX+eyySGxjnCutwUOE9pM
 8iwlYRaF6PYcK4BvCEtqE5PW6cDjbDOtV47trqoHoJE9dAQv8x7qP896AeF9UvymEkl4
 hfqd6/83rBqXZv0hKCqHJEK3bGo1FOhP/yOxkMSHmT79da2HR1l5DP99v/donhoH9Um1
 xlFQ==
X-Gm-Message-State: APjAAAU9ajhi9ZRqH59sDqWCqCra7qJvkPnwjC9tIxehbvXUR2Zzfz3s
 fA0AGQX6Cap809Uasx6EyWxbbw==
X-Google-Smtp-Source: APXvYqx7yE+7l27oQiDrafJ6fZXdXXY8ZUTyfD1RIt20T9G6sbDmko+UoiGYmOaqMOSkvVIl9+X2IA==
X-Received: by 2002:a19:986:: with SMTP id 128mr30272387lfj.120.1556520913527; 
 Sun, 28 Apr 2019 23:55:13 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m19sm6781692lji.70.2019.04.28.23.55.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:11 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:02:30 -0700
From: Olof Johansson <olof@lixom.net>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: Enable support for STPMIC1
Message-ID: <20190429060230.hlavnpnjim4l4bc5@localhost>
References: <1554990256-2858-1-git-send-email-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1554990256-2858-1-git-send-email-alexandre.torgue@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235515_748254_63FFE88A 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 11, 2019 at 03:44:16PM +0200, Alexandre Torgue wrote:
> From: Pascal Paillet <p.paillet@st.com>
> 
> STPMIC1 is a PMIC from STMicroelectronics. The STPMIC1 integrates 10
> regulators, 3 power switches, a watchdog and an input for a power on key.
> 
> Signed-off-by: Pascal Paillet <p.paillet@st.com>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> ---
> 
> Hi Arnd, Olof and Kevin,
> 
> I only have this patch for STM32 configs part. So please consider it
> as my pull request for v5.2.

Applied, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
