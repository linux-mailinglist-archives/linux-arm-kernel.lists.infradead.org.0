Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC1B4B1C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 07:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2iToxe+8MAQlUoyCwYB5BhKdpV8qh+G0PuzTBQlWTs=; b=FLjuBgBygH2oqf
	Qvoed5EalOhvTbGcjktfUGOhczElvOigTeTJUyGgGWwdln3IXAkZMddGiGX3rnFuFMiyvTI9K/wAJ
	dep/y3DpB69Tup0ZwvWNQgmdVNArunKsOFg64Y3TL6VDkeqvEYO6A3NrZ28LzvqF/ywcO0YXV5TZq
	DBbMwqeyvi6wY/KDAw8J6DJ9KAJixYS5RzZJidH7MctXDQgvz1FW2Cesltcd0cc0tfaJd4I/ofVSY
	a5wmb+4DiAUT/8pifsPulnA8+6sDJQNgKmGGpV4u2UKr/xJbqV9ylwT7du0zO+PoyNdY3oB36UcHb
	Y6BW/07fLq2y4wTs5foA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdTc4-0005hH-Ja; Wed, 19 Jun 2019 05:58:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdTbw-0005gy-G9
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 05:58:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id r16so1860360wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 22:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=v4Lzw69YqCGNT6d2yGg/IWB5HqmTYETWg/4G3e5GhcM=;
 b=E6zaAPAk1Z4K4tmdwrtkSOWC8nlnur95mxOoftmD56qCT5EXSvT6ycZbg/68lt02Db
 ANOwmUrYS8w8CEoIGQyyTc12+p7JBLChyKkAGMBvUm8921rg/86HOIoKnjA/G/R8389n
 OoRBu8SGvOjLJEhFA5uz6sPHwF/dhWNcH3R0aTlwJJfsHcOcmikrhYmCu1usEJe4lyTZ
 xN3ITGXrDBQodz+8qRz101FS4z+SouBbcBG9U+21yiSi6xIqsHcDAxzY3T1rlTCMg0y8
 ZGVDqtC6xipnmbNjTRJy0KVXGSMHUadcSXGoWZ7EkPIigPG06rZDh1hvsXAdJMmzfXJ2
 CxaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=v4Lzw69YqCGNT6d2yGg/IWB5HqmTYETWg/4G3e5GhcM=;
 b=hQxTFpOsuYPWaQAURM7nxXwF9aeIXZWV9X6eObpu6iYHSeQkRJyprZ4b78CP/7BCD6
 4lh3lSBFp92kSssSkRZ44gJfu80EWF2n1DpY/UlqHe/KRVOVM/os3qnIKMGlv5w8CVlu
 keIJYS4Ca+IZk8/7quIAQEFcV4WfsQK3BIQa4Lp5I1Hd14prnMUYH6ROjDbO9qu9yowT
 TZO4lJiOCdNwhoPWuzJ8i3773YwW2tCm8g0USqLhX/yeb14iX5Hl0y/PKOushDFNOX1F
 RlwWU3NEoOLXZ4Bklsv2FpzW1ojZfCfTqMeK3dnU8AuLIbvmJw0jzhp4h6yxK6go73Lu
 2KJw==
X-Gm-Message-State: APjAAAWb0ZNzLtYTKH4kcx4Q1O3vIqgyh1ao/A1s/pekNSetz51cuXZy
 1ZgDpc1h9essX54LRH2r8A6IQz/2Oro=
X-Google-Smtp-Source: APXvYqwCLJB9gv/cQEHgS6YpUkbFLxhQLp+LQAxMubEfU+V09+07SkfNFDSXxJ+QjUIfsER9MWzsng==
X-Received: by 2002:a5d:4950:: with SMTP id r16mr39947594wrs.136.1560923898554; 
 Tue, 18 Jun 2019 22:58:18 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id o126sm592028wmo.1.2019.06.18.22.58.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Jun 2019 22:58:18 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:58:16 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] mfd: stmfx: Fix an endian bug in stmfx_irq_handler()
Message-ID: <20190619055816.GF18371@dell>
References: <CAHk-=wgTL5sYCGxX8+xQqyBRWRUE05GAdL58+UTG8bYwjFxMkw@mail.gmail.com>
 <20190617190605.GA21332@mwanda> <20190618081645.GM16364@dell>
 <CAHk-=wghW+AKvRGevUiVWwTqWObygSZSdq6Dz2ad81H73VeuRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wghW+AKvRGevUiVWwTqWObygSZSdq6Dz2ad81H73VeuRQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_225820_548055_5B47F916 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, kernel-janitors@vger.kernel.org,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxOCBKdW4gMjAxOSwgTGludXMgVG9ydmFsZHMgd3JvdGU6Cgo+IE9uIFR1ZSwgSnVu
IDE4LCAyMDE5IGF0IDE6MTYgQU0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3Jv
dGU6Cj4gPgo+ID4gPiBSZXBvcnRlZC1ieTogTGludXMgVG9ydmFsZHMgPHRvcnZhbGRzQGxpbnV4
LWZvdW5kYXRpb24ub3JnPgo+ID4KPiA+IElkZWFsbHkgd2UgY2FuIGdldCBhIHJldmlldyB0b28u
Cj4gCj4gTG9va3MgZmluZSB0byBtZSwgYnV0IG9idmlvdXNseSBzb21lYm9keSBzaG91bGQgYWN0
dWFsbHkgX3Rlc3RfIGl0IHRvby4KCkFtZWxpZSwgd291bGQgeW91IGJlIHNvIGtpbmQ/CgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFy
bzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
