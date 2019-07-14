Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9955767F4D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 16:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9ompemNZLUDnoX2lo31ME6zPM2MeVwxC5qq55/3FnQ=; b=WPVMNY1kpCIsVh
	WdMtYchv3ZL9fmnxylsROITlPq0aNXalHt/+rwnhHeegT4/ShR5T0WiTtGYuu33FmqCPGDOkRnXMN
	N59MKo6zJ3LuWzIfmUR8yUGRj/IXQglmotGlT/sgt3LgswNatbCxTN7ycfmsai9GWGOikcRngcB40
	jCrm3/1FCetkySS/Yps6+92I+3KF5mgi2bHvHqX4VuICfBy46RFcUojwWnIxLtfsJYmhhPrlmokox
	W61ruAd+XyxIBAQ2goOWkPj3AT4swr4DunLaHr4gKFfZZCltBnAmtcdHxyUz2RFdbfCv+QyItQODP
	5OB79yNlptsrmO/aD55Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmfWj-0008Au-Qn; Sun, 14 Jul 2019 14:30:58 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmfWX-0008AR-9s
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 14:30:46 +0000
Received: by mail-yw1-xc41.google.com with SMTP id u141so6564702ywe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jul 2019 07:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=d5mqB63T7VQxnr0JfX26P6/C4LWvV7mWWntLD2fXgbE=;
 b=AYJafSEPhM/ocLLBM9px4DWNUxcCKOpaKC6BzkrYXlj9j8PVXdRPucbgCmSh3KkwJO
 baM6OrxXg6UPAowsdXF0bYHuFtafb0U1bFOwRVnh+rsnIsxfbc2nj3Um2wA+OmFdDmXe
 jOaUpSyvJkSDs34sVnCmqBMDdG1C2LTADouY/W8lbrkC7jvUHvZGkZMcvno0lNXEGAzu
 G89WVJ99b8Gf8ByHByyw0jyYg7AxLlynETbERhDAwbAuMR4mM9R+knx/SaAYfsXZpXtw
 a+7z4F5ukfh1gsVAeLeHwR2C1gt2ZzACBBKOOnIJTvvMehPd+AheJv5Qhv3oveXzF5Ti
 cviA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=d5mqB63T7VQxnr0JfX26P6/C4LWvV7mWWntLD2fXgbE=;
 b=fAAUyYi4xnTUazL6KINKkuL1y64r7usKPTdjD/F5qj6exzjXR8BSAcfV/UORh3A+FS
 yLYMnIs22utVvhxGBhdIgg6T4yO1ecOgoiTu/Si3EpjoHBx65xjNSsAyGRsaccsHH9xO
 N8oiMD6jFmEurIuUxFGCESPcPxr8+EepY3kH3Yt11gwKZ2bZQkT/dL81IyyRuJt15XkN
 ZZ4F8tQMubEUCSrlOS0OSkk0HdESy1dRRoQTa9ey9d/yWOFNX7wq1SlSBAUYbtVcnsXd
 tjuGIf4vNdv3CiFi248M8AeWuV/cznLhQG4mv0z7VMuxuUXDApxFEX9qsG3kEJLk0vWM
 2QWg==
X-Gm-Message-State: APjAAAW22t27plk6/koIVF7EfoJJeLzQAvMs3ix8XSwEHDU3uArv4jLw
 yF1gqutnhlIoODsoNFsvK1zSp7ZAU63W0ZRWcdk=
X-Google-Smtp-Source: APXvYqyAEODGBECOlWYTv7vWNRPdwzvdVek9wXMbMZt1+F4UmDCEa/VIJ5KPJSkG6Kxsg5Yi0ej8vU9LwZ2zY8NvmhU=
X-Received: by 2002:a81:494f:: with SMTP id w76mr12006714ywa.21.1563114643583; 
 Sun, 14 Jul 2019 07:30:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190607231100.5894-1-peron.clem@gmail.com>
 <20190607231100.5894-5-peron.clem@gmail.com>
 <20190610095243.7xwp4xhauds22qzw@flea>
In-Reply-To: <20190610095243.7xwp4xhauds22qzw@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 14 Jul 2019 16:32:22 +0200
Message-ID: <CAJiuCcfyjGTBbsjZQYj2p3KD6O-WaXhFe5NZrnKQwJYACmatUw@mail.gmail.com>
Subject: Re: [PATCH v5 04/13] media: rc: sunxi: Add RXSTA bits definition
To: Sean Young <sean@mess.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_073045_373228_F5EA9FEC 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2VhbiwKCllvdSBhY2tlZCB0aGUgd2hvbGUgdjMgc2VyaWVzIGJ1dCB0aGlzIHBhdGNoIGhh
cyBiZWVuIGludHJvZHVjZWQgaW4gdjUKY291bGQgeW91IGFjayB0aGlzIG9uZSB0b28/CgpUaGFu
a3MsCkNsw6ltZW50CgoKCgpPbiBNb24sIDEwIEp1biAyMDE5IGF0IDExOjUyLCBNYXhpbWUgUmlw
YXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIFNhdCwgSnVuIDA4
LCAyMDE5IGF0IDAxOjEwOjUxQU0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IFdl
IGFyZSB1c2luZyBSWElOVCBiaXRzIGRlZmluaXRpb24gd2hlbiBsb29raW5nIGF0IFJYU1RBIHJl
Z2lzdGVyLgo+ID4KPiA+IFRoZXNlIGJpdHMgYXJlIGVxdWFsIGJ1dCBpdCdzIG5vdCByZWFsbHkg
cHJvcGVyLgo+ID4KPiA+IEludHJvZHVjZSB0aGUgUlhTVEEgYml0cyBhbmQgdXNlIHRoZW0gdG8g
aGF2ZSBjb2hlcmVuY3kuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxw
ZXJvbi5jbGVtQGdtYWlsLmNvbT4KPgo+IEFja2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUu
cmlwYXJkQGJvb3RsaW4uY29tPgo+Cj4gTWF4aW1lCj4KPiAtLQo+IE1heGltZSBSaXBhcmQsIEJv
b3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9i
b290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
