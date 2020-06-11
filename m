Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7791F61E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 08:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=riffJbNsR6wFRNLD4zunyBnr7KzjZxBmkXOTPlg1vCA=; b=n8SM5GOPS7laBv
	KU3BJSqpfTRjNrLj3I5XRZfQdkFVHGrNjcnsAHOhgVvoqEFX1SZODSiux+c6paLdx/tC27b52fJ0/
	Xmiv6PEBy9gq2Z9Nn6mFLA2UMJGwacuOIwEjFDke5PaZ6PJ4aEIRTdt1VJRoDupaI+9qMUIQvsDEx
	dcy/3WToLJQmtqpzeEz6dzUdBKy5AY8QXOcjr+f9TExD/4swsE1Fyk+17O27WhkY+vgutjZ+V/Ykf
	8TBl+T9Jx7IzmZQ2ZYgFHz670V8YbBdUpIjoPqA8gAZ+08TfcnEECBxFuq9KBKgG1S6v6N97HmOir
	soMWGt530DxqQERC5BEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjGyX-0007fQ-NG; Thu, 11 Jun 2020 06:46:09 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjGyP-0007eX-99
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 06:46:02 +0000
Received: by mail-wr1-f65.google.com with SMTP id e1so4893038wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 23:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C/BCrk2EzI+8ty7eYcRTzVNsNenj3k5ORek3qLNkVLQ=;
 b=n6hTP1+QPxOhZrPkFZtM4JUJ08QIIL27N1n8autWV5/vhwceOsdmR66QSdC+sNTDNs
 fVDWhzS//bYMQSdPtncZcyvPlyK6b78ig80evt3WPWU9sewBRkYMP/ndb+0gXK4Pzmu6
 tENtL2A16xXTeqIBlxH+6r1pLNLmHTlXEdl9Dzi0DxYYhr22vXL76rtaHIAuVO1jHXlZ
 eaN/DviweudWSpSroZ2vpe07caiYBIOrBEdIgBU+jXsof55SQ1//Q5M8z873N/g1Tt0g
 NU0tL3e2NRUBou4mOet2E6Y2XsYVaiiqQ/4ggH5Q5sAASQ/NEfyht1FLQqMYDTfnXgN0
 hNug==
X-Gm-Message-State: AOAM532exK0bdXpaMs46C5iC8cXlNod+7YyJNweFKASks27HzBukS+QC
 CBJCMQioC5Rw+iEysgY48jE=
X-Google-Smtp-Source: ABdhPJxPgE5J4d6qFlepPG3IObYFCwiLPt07KCNF8vTruWvTMSIrcSnMaXCV3obPhdyGJhqvGWJqyw==
X-Received: by 2002:adf:f889:: with SMTP id u9mr8392324wrp.394.1591857958995; 
 Wed, 10 Jun 2020 23:45:58 -0700 (PDT)
Received: from kozik-lap ([194.230.155.184])
 by smtp.googlemail.com with ESMTPSA id f11sm3371824wrj.2.2020.06.10.23.45.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 10 Jun 2020 23:45:58 -0700 (PDT)
Date: Thu, 11 Jun 2020 08:45:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: ARM: warning: relocation out of range on Exynos XU4 and U3+
Message-ID: <20200611064556.GA5056@kozik-lap>
References: <CANAwSgQv9BKV4QfZAgSfFQvO7ftcFyCGXEo+g4pgQA4mgK52iQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgQv9BKV4QfZAgSfFQvO7ftcFyCGXEo+g4pgQA4mgK52iQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_234601_323906_85A1C413 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 11:13:57AM +0530, Anand Moon wrote:
> Hi All,
> 
> I would like to report some warnings I observed on pre-compiled kernel
> image (5.7.1-1-ARCH) from Archlinux.
> Sometimes ethernet would not come up and get connected, so in order to
> investigate.
> I found below warnings, So I am sharing the logs at my end.
> 
> Are these warnings related to in-consistency in locking, How can we
> Investigate more to fix this issue.

These rather look like some address space randomization or some compiler
(LLVM?) feature. Not Exynos-specific anyway.

You should report it to Arch folks because they know how they compiled
the kernel and what config they used (althogh config you can find in
/proc/config.gz).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
