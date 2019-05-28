Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A802BDF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKMQFF7KcAJKXxE63517J4YhPPWJOlfGKmge04CKpqk=; b=cLDUdfPaEdl3W5
	l6qf0p0xzs6ng5p9PE4II+QJCRKka5HDvoF7+nyD4pr+JWb79dGKP0azS7ckhhdCB72mzM+MjdbDy
	DPP8qBMUCX9aqFeTbRXvpZkFiBLy8Fuzk5yUeDUALhVtGjGoNjVTL8CMpdtGWOFE+0CM+0ynbXlvI
	/SsjauHD3w3s31sIaj/teajkeEgQojX4to7SO3AgRWShLmduEvpUGBVryk5SL3bHH0WAb82/CL5oL
	J4Nxfgmren4g5BCgGtz/nXH6LGvPov+D4p08Zp37uVj/Kk93Wm+Pda/d2idXaUVeTD1AD+TtJTPN7
	CwqI+QaXODZo4LyOFa7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVT5z-0008Nr-QE; Tue, 28 May 2019 03:48:15 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVT5s-0008NW-A0
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:48:09 +0000
Received: by mail-ed1-f65.google.com with SMTP id n17so29585672edb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ykAmZNM3+M0rf6HLjev/b1JXrJdjuyj6wZaqtDFtAlI=;
 b=nedgYLkPi8DAr8TRE6S9UJs19hIUpFUUIL5LCGU/0HSyGhmMqHcXXAkCyBT3cwa8s+
 YFTEByPsqcFEhp3Mz7Fo74xyjwNw9kG9w48Viy9Q3Lrv9MB2a9FJB7uUViFXRx+z8ti2
 URVrYEf2CdRToZDEn0ooZA/bujHbykdcDjapOBrHHguNm1FLZEwWa2vjL8YZgXyK3nSD
 M832KwlQF6VU0NAH4TTg9EpR5FCMqrTRM6NVMdzy2GzLSaSLeB+ja39Rby5zP4LuS4wU
 AU3dXsGRXgdSqiBrBVhzE4eFCUP3iKIBkH8QlLTq9yNTyqzW/1EH9FIW5Rz2rS67puZx
 R/6A==
X-Gm-Message-State: APjAAAWHfU/hYXFr8zRZY7FzO/LA+eZku4Cce61b5kKoxq0/QAqoC8Vj
 vkaK5otl1GYyShpLWX32gelzRq3RMGU=
X-Google-Smtp-Source: APXvYqwvbuym6Ync594hFnTQeGTwvkEgLpDc9BszmDjkl6+Dr4opIzOpGlVFEYhY41s5vnzLsQ+s2w==
X-Received: by 2002:a50:b343:: with SMTP id r3mr127466054edd.53.1559015286764; 
 Mon, 27 May 2019 20:48:06 -0700 (PDT)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id c26sm3911674ede.32.2019.05.27.20.48.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:48:06 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id y3so1170832wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:48:06 -0700 (PDT)
X-Received: by 2002:a1c:e906:: with SMTP id q6mr1327240wmc.47.1559015286157;
 Mon, 27 May 2019 20:48:06 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <834199999676fdb119f3aa1966eb1b1d1391f347.1558958381.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <834199999676fdb119f3aa1966eb1b1d1391f347.1558958381.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:47:56 +0800
X-Gmail-Original-Message-ID: <CAGb2v66bYFdv6=VUeQNvugMqOzg2L0dkgFbje7OE9pQC+FN0Fg@mail.gmail.com>
Message-ID: <CAGb2v66bYFdv6=VUeQNvugMqOzg2L0dkgFbje7OE9pQC+FN0Fg@mail.gmail.com>
Subject: Re: [PATCH 10/10] ARM: dts: r40: Change the RTC compatible
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_204808_345263_1F07DF62 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 8:01 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Unlike what's being reported in the device tree so far, the RTC in the R40
> is quite different from the H3. Indeed it doesn't have the internal
> oscillator output, and it has only a single interrupt. Let's add a
> compatible for it.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

There's a lot of unnecessary line reordering. Otherwise,

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
