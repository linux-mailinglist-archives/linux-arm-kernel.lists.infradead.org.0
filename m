Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7769B20D8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SunStcTXvYFoSxYQYQKHjcyWQXlsOcEUN2KZPDQJmv4=; b=tH+D6Z+AzuhqUx
	F1p9C36wMEY0ghq9LWbZMhce+/+sidBUqCHArUKLmmGJdzw2PTdrj15zBHhxm2Pjq53BulbZ5QOKy
	MqganUvq114B3LFwS2CwXuOFk4l5/D561ARoh44pfC6ZKfjGp3LIym/3keJxrqzj8mczeVFJtDTwR
	jYvbfHpdylWGDQJIC/XVZJG9obCObDf14NdKwq+GQ+DOQYbUCi5qYerjjhhNI2il1zD6yn7HwW7n2
	4oyBnpHwKFvXlHhEVOFJcRJQq1kXLjGwf5AS5jHYtx2b6ovqIbv9wArEURvpF98FU2A/dtZU3pm0b
	T3PV+rREgpESyAJh7diA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJi1-0008M0-EN; Thu, 16 May 2019 16:58:21 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJht-0008Kc-CJ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:58:14 +0000
Received: by mail-vs1-xe43.google.com with SMTP id m1so2765070vsr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GQWLFHbMxy0K35NUOa8JBzz6IPOsbH5VHwjdAfW9zU0=;
 b=egW17PcXO0BjCt7HxJYjB66FokiITWMqtp0008EeL5GbbhpQKonq2gHOFHRGrZ0me5
 TihY4jgy1laPIDXVBzdJoZ0YexQhL6W55jcDyEERvFOMCdfrqTI14wa/uBSkoCgEekSx
 1nR/Oufvd/pGx1D8omffLmUof28M5fDBbkk5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GQWLFHbMxy0K35NUOa8JBzz6IPOsbH5VHwjdAfW9zU0=;
 b=HUj0zXX/9NUNRbs/GxWzh4qFk4e/YPDiCgQ+eTcwkknzhhvbxXI5ahwPVKqMge3EXi
 BDlIzQ0XS5fBc7bjdpddxH3QrS/s3iRPh68zdebgKub3F50z3jP/FErJYon2RQeQovXn
 2kjFviFiNrDH52H0U/dKlfIRH0aMJ18U0h0OSvVitZzh44yhwG94yGDkHxavQZTtjgN7
 XrmxWsJX5d3IDdsHCG2fab+VtZ7o92wUV8am0kNEe4Hwr47WnLxD09EUhRQxYIr5ZIij
 EEmcpEG9ZxVs3fp4nm0mdX3oEYN1/XgiIdEn/7Di7d0eoamFBm+oYlFB01LSaFOER4ba
 zikw==
X-Gm-Message-State: APjAAAW8RyvxP/TunXTfhVsuXHMZbJkO7iLndeBPkt0CXD6nzw589i5L
 beyocXVtO+VgZkgZDgbkd7Vbs0otmuE=
X-Google-Smtp-Source: APXvYqwgefZ4+DAkz3VrlKrNeJ0fldoqMLWpWA3zlNoHjujYOWkjAgnPWD1VWIBhFgZ7LIurZXK5Pg==
X-Received: by 2002:a67:e9cd:: with SMTP id q13mr20545135vso.129.1558025891567; 
 Thu, 16 May 2019 09:58:11 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com.
 [209.85.217.41])
 by smtp.gmail.com with ESMTPSA id v68sm1537300vkb.24.2019.05.16.09.58.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:58:10 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id o10so2748917vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:58:10 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr16923750vsm.144.1558025889986; 
 Thu, 16 May 2019 09:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org>
 <20190516162942.154823-2-mka@chromium.org>
In-Reply-To: <20190516162942.154823-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 09:57:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vqpiq4=pt=KnCW7Zpj9QF0v4STHu5s05PZ9G5AyHbX0w@mail.gmail.com>
Message-ID: <CAD=FV=Vqpiq4=pt=KnCW7Zpj9QF0v4STHu5s05PZ9G5AyHbX0w@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: raise GPU trip point
 temperatures for veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_095813_415462_6169A335 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCA5OjI5IEFNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKCj4gVGhlIHZhbHVlcyBtYXRjaCB0aG9yc2UgdXNlZCBi
eSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNAo+IGtlcm5lbCwgdGhlICdvZmZpY2lhbCcg
a2VybmVsIGZvciB2ZXlyb24gZGV2aWNlcy4gS2VlcCB0aGUgY3JpdGljYWwKPiB0cmlwIHBvaW50
IGZvciBzcGVlZHkgYXQgOTDCsEMgYXMgaW4gdGhlIGRvd25zdHJlYW0gY29uZmlndXJhdGlvbi4K
Pgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+
IC0tLQo+IENoYW5nZXMgaW4gdjI6Cj4gLSBhbHNvIHJhaXNlIHRlbXBlcmF0dXJlIG9mIGNyaXRp
Y2FsIHRyaXAgcG9pbnQKPiAtIGFkZCBlbnRyaWVzIGF0IHBvc2l0aW9uIGluIGFscGhhYmV0aWNh
bCBvcmRlcgo+IC0gYWRkZWQgZW50cnkgdG8ga2VlcCBjcml0aWNhbCB0cmlwIHBvaW50IGZvciBz
cGVlZHkgYXQgOTDCsEMKPiAtIHVwZGF0ZWQgY29tbWl0IG1lc3NhZ2UKPiAtLS0KPiAgYXJjaC9h
cm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIHwgNCArKysrCj4gIGFyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24uZHRzaSAgICAgICB8IDggKysrKysrKysKPiAgMiBmaWxl
cyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNv
biA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
