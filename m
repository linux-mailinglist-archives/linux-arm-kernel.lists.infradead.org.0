Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F332D39ACB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 06:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5Fj7jBIAb9mj61F8a2XzI6fa5SJDz0+swDRyEH3ago=; b=JEmfF2/XQ8VGEH
	+pGso2uIUDA4fk5lfNqkbATPWiz7yUBzDq7HWj48iOKLSAW6HASsXR41rq2mm5l8918lwj/apoPlO
	764kI2C4oQx0eYNsMb8FB7Q8cQer7LBrNAF+6V3K09ECFbsiScRwB/s5iLxYhGiY+SIHVd5pIgwZT
	LO4NhtfO03pZwDAGajAgV+JsNpRd9sAyrvJ/NIB8H/Pcl59+samHuyzSF1zUi6D0JzDyLC5/rr7Er
	eupb8G1AkEccHcqLyX9x++wRrPJjDHx9MV8UhDAiRGprs0W85lLgJd5/WzUIStsw8hWxuOT1x4tZa
	lhzIiAZRiSn9CMBsQumg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZSfY-0008Qa-Gr; Sat, 08 Jun 2019 04:09:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSfH-0008QC-3i
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 04:09:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id e6so2143137pgd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 21:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=qPrqDg7oK7vsJTtgKzXs0AFLXbWLZdHTZw09zO6uFIo=;
 b=WhQH52Ngt/khZpl/5YC1NXDNo7eoeoJfe/6HSaqIlw2//y+AHr31smRrk45AiiuZXc
 kWai6ZKn00/1tAiadq5M5zVV4PrApzWmXkumuJZuaCMuauD+b1JLcLMzjiisxV541q9g
 EyzMb71SBSN5d0irt4yQRn3LaidlKJBGVxDQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=qPrqDg7oK7vsJTtgKzXs0AFLXbWLZdHTZw09zO6uFIo=;
 b=Wk2TdmEyIto0Uwg9b0v8a+JM2B2zfvRUN//WJvAtjDapYgaQdrupZbWxbfdIfKWiX5
 8UuBhKUiaQxg/RvFWhmjnSv1jnqihBGkHoaYC0oUi/T1fhv60DZEbaquRTK9PehmOI3y
 OCym23/7jMcq5Pkcvhk8B9jhtAKI5nVsKVgDJmZWUmPu7qNvPv8IMubrQDZQO+x1K4Ti
 O1nJIFnuinPNn4ciBA57RQ/lzXaYmEtz+vizJRNWGELKNCBPnf4A4mQKH3zVMwVGwgc4
 mItFNcqk1WOIvViONnSoLBUsloI5jgvKJdMeuLyaBnJURFbR73QogPNY4xCkFkqVf4Sm
 RB2g==
X-Gm-Message-State: APjAAAUhPVeaGYq96TzLH10WmPi11tEWHQnMdZFApng1AqFHkzr3P/L9
 2xIKoYjE0QX9wLpNKzXwb8VduA==
X-Google-Smtp-Source: APXvYqxOhUI4tWD34bKXtrZS0Ue52ge1JBEeiE6ubLBAVuQfGij1llHIfb+I4lJuWZWMRUS1z2Sjxw==
X-Received: by 2002:a65:65c9:: with SMTP id y9mr5974733pgv.76.1559966949974;
 Fri, 07 Jun 2019 21:09:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s24sm3769979pfh.133.2019.06.07.21.09.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 21:09:08 -0700 (PDT)
Date: Fri, 7 Jun 2019 21:09:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Message-ID: <201906072107.395B38B@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <333eb6ba-ae20-6469-0daf-583557bd66a3@arm.com>
 <bf75504e-127c-3617-2e72-7bf45d5357d0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf75504e-127c-3617-2e72-7bf45d5357d0@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_210911_177889_90457578 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Diogo Sampaio <Diogo.Sampaio@arm.com>,
 Luke Cheeseman <luke.cheeseman@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <Will.Deacon@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, nd <nd@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 06:44:41PM +0100, Kristina Martsenko wrote:
> On 30/05/2019 10:12, Ramana Radhakrishnan wrote:
> > =

> >>> =A0 - more testing
> >>
> >> Is PAC emulated in QEmu yet? (I assume I can't get real hardware to he=
lp
> >> test this yet...)
> > =

> > AFAIK, yes qemu trunk should have this.
> =

> I've been testing on the ARM FastModels, but I tried out QEMU 4.0.0 and
> it seems to support PAC with the "-cpu max" option.

Ah-ha! I wasn't seeing it mentioned in dmesg (it should appear along
with PAN, etc, yes?) but I guess I need a newer QEMU:

$ qemu-system-aarch64 --version
QEMU emulator version 3.1.0 (Debian 1:3.1+dfsg-2ubuntu3.1)

I will go build QEMU myself! :)

-- =

Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
