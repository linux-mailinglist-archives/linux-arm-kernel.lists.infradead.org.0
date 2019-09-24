Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51EDBD280
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Q+E4Smnl4r8Xf4Vt4UVmSAF53xkyC0N3J8Mhjvulms=; b=Ef88mJrrlsWoTn
	b1nqb8JsAkLBomf0o93PUPkDKx2cWpTwm6WhPqQ0tEkDTk8zyVua9aoY+ecdYAFtBmdacA46c/3P8
	FF7GaY8QVov/gqLHcs0gxIS7U8W8I7LX8+zF/qKa0cmToUOmgz8UIVFE8VErB3AF7/e+WX96HOC63
	fjfIFXYWxkSQ9M85B2sVN4fyrkU2uO8qJyNRAAcfl7P80JMEnZzUo9Gq9EoDKTpuRPqNRZIByG8vA
	opg9+mMwTOwLiXwcfrS2zCp8JRX48B5Shfj0283TXxPVobsn+EeeH+vJtP90qFl0o3Qu5DorDq/PO
	rlzksbAcnuQ/2n+3VOGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCqKb-00073f-8x; Tue, 24 Sep 2019 19:18:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCqKN-00072d-V3
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 19:18:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id a24so1844278pgj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 12:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=a7+izJYYosgd7zHjanZYValds7ow3BOFmZCRlJjVnPA=;
 b=iN0dsE6qKEf18ktGqXha+auVSqp1K9xsRtMPakuGHFG5GXMgMn/FjaEvv30rbYUkvc
 KkvVYNIU1IoK1teGbHrMvl62L/bi5bZRkDyCGCT9Tq4N40wmOmir9d15H85r75snX3ZQ
 6ZoK8xU1dvXNRxgB5Wc9prpKH4IMjmwHXXdp226FIHRAHWhlZX2mGv+eypuYusoBhyoP
 +fWKmlso70BGBmLOaR5glrwv+xAWjHOHGQq9zREpORZRVIwGAo7L/AhoB/0gG8mfE9Sl
 rvIikkb0lAcHo+OGd0mgDOgVXdlAW77/eRG0CjgO7Ius8pMvuM60aupsVZ1rEgPI57oL
 LIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=a7+izJYYosgd7zHjanZYValds7ow3BOFmZCRlJjVnPA=;
 b=U5Bm98SJwNF12Mq0INUoC+cmsbB939QjcGi99fbrQEzckz3u0r4BnEyMLYMsrhVIQZ
 lOolIWvJHMYmE3d0Hb3fdV0dkpRWWFNPZ3Mjl3pBdvqLgvYNKtvdOi3JSqCXpMqNDBmU
 vqQHFmeFuM9ecHpIUEZJn6s0ZV7a3c3FTMChz7dmWZiZ77vzoqI0jRImKJ26mXS//rz/
 Yj9ysx3XtMwPTcoHmSQXzcdUpSXZ4IO9gNWMHdWGwY8oSvVu/wzLX3LQTom7kO3CgGT7
 ltN0na3N97jHjZSA6iLfvZLzP4tI/RYNCzUBD6lCGUoh17RFXRLtrI5HRfWtgWRBns42
 4oqw==
X-Gm-Message-State: APjAAAUuzAg9exIMX9ScgMqnleGgHS0ndjLTStJvmicZPaf5nKYAo/i7
 zb2FqMClzaOOXwG4+Na32pxlwQ==
X-Google-Smtp-Source: APXvYqwUtX0FY4xf/0UwDn+yg9UjZNFwrHooHBidGhmXaRY+URNGLcdC2hpL39Xw/wCmWCAaTsx6Tg==
X-Received: by 2002:a62:1cf:: with SMTP id 198mr5251106pfb.31.1569352703005;
 Tue, 24 Sep 2019 12:18:23 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id v43sm4926886pjb.1.2019.09.24.12.18.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 24 Sep 2019 12:18:22 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/3] arm64: meson-g12b: Add support for the Ugoos AM6
In-Reply-To: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
References: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
Date: Tue, 24 Sep 2019 12:18:21 -0700
Message-ID: <7hpnjp5wqq.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_121824_001674_BBB10EF2 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> This patchset adds support for the Ugoos AM6, an Android STB based on
> the Amlogic W400 reference design with the S922X chipset.
>
> v2: correction of minor nits
>
> v3: address regulator and GPIO corrections from Neil Armstrong (using
> schematic excerpts from Ugoos) and related v2 comments from Martin
> Blumenstingle. Add acks on patches 1/2 from Rob Herring.
>
> v4: address nits from Martin except for the vcc_3v3 node as it's not
> known how to handle the vcc_3v3 regulator managed by ATF firmware, so
> it remains untouched/undeclared like other g12a/g12b/sm1 boards.
>
> v5: corrected some tabs v spaces issues introduced in v4.

Queued for v5.5,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
