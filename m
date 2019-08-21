Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C74498680
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6ztnm4ARRv65AA6WAynO9cceHRKOGMXAJhxaU29fN4=; b=a5vdlFsDHKPZQ2
	uy+cUkakq1UzZGRZ0Ao63MqURrmF2RImZSUXnVNsus7BV172ywb8sbjr+1//OyIDOFZekHUdnagIM
	B8miKDCNwzXhJ2CMBSZmIRiqpixi5NVgXptoABw+26X4kcx7dCaetXd23oSJfKdKo7e6FX0c0+RDH
	IkNQ5MJ3n1LiVTOBFgViIb+KAdDHTaO1dOB2BZyf6DGAi1/BjeZvW3GD7x8GvB480IrEOeNs9h/N/
	iTg90FVokjK3eRWxSnzwb4CUtpzez/Lkw7PPVXimdZom6r3cUyjBSMRGX0o3eJ3I4jOFOtG6sBeEZ
	eSN2fGn/NROpVuNA+CrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Y1E-0000pv-Rt; Wed, 21 Aug 2019 21:19:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Y16-0000p7-Tj
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 21:19:42 +0000
Received: by mail-wm1-x344.google.com with SMTP id d16so3573907wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 14:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dbzkg0dehYA9XxXBy/tRWEwtyB89ujck03vcqauhtxk=;
 b=M41c94fBiRx04YN/D9LqPjJsO6altoSy7hmpL7ol/za2grZjkRDhSLO5v0GE4oqFcr
 sB1NADhpZQEX8bu+8z3ngPuXvDNMCnvmraEJ3pjT7pO4D7RFtsLKvpACV3d+wRTcbYS3
 kXiyqcUDbRVLfqAFOu1aQWi9KhSGOs/D7bXZH5FbeWTIBEsiE3Gq6Uasu8AoiGFjkegK
 gGauvlV6DC3y9og3jEJhbnL9tuYDdQ6Cj/qw58OVHgjo81rXZQTbiI8lu/htArVrxzmf
 go8bSDnidovR7Jy0DAm4NoDj/6PEdoI+wObbt2hwoh0VjwVbN95CdgNGGKyfL19/k8sP
 KHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dbzkg0dehYA9XxXBy/tRWEwtyB89ujck03vcqauhtxk=;
 b=S6L71R18vLranI1VkJ+Tj9gt5fStHEVjw7jAjP7A29mZp/DeVnhWlvUwMKqwjM3E6Z
 HsJf/kPyiRdw7E1MVdjktA9d7s+PxGUge13TnccsJHPgbznRmM2RkcHYBkgBL/zRKrWr
 kMP99hZGqW14P4I8UpmxG4+CSkbzaMoZLXSwDtTKB7aFNDmu3J5FqkltWlGrqSxdlZVu
 cgZGybT81P2pG+hS4DT9dGAEd8ddUMHDxL7LdjPb/wma9jmLM8jL519uCRVSGusB+TxA
 2qfLWqtLyf5XCUcDkBkBz2bm+V+EsvAc1xiHvrPsyyZR+oySTJzCUhOGfa6nzwa10t4Q
 Ft8w==
X-Gm-Message-State: APjAAAX7Kyynx+zSq5b5Upf3d0I04wgy41AXl/T2AziZBcFP5xACR6tE
 zUArfaJ02WnMLpUGiCH34E0ExA==
X-Google-Smtp-Source: APXvYqz8RJbRsGB3Mt8HsUVbL8cKiur8eRibcotSAhwTRu5jFrKEfBVKTcGp7K5dPJ2MRLuU5YWVug==
X-Received: by 2002:a7b:c649:: with SMTP id q9mr2156413wmk.108.1566422379282; 
 Wed, 21 Aug 2019 14:19:39 -0700 (PDT)
Received: from ?IPv6:2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca?
 ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id c11sm19183554wrs.86.2019.08.21.14.19.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 14:19:38 -0700 (PDT)
Subject: Re: [PATCH v3 0/6] Add support of New Amlogic temperature sensor for
 G12 SoCs
To: Christian Hewitt <christianshewitt@gmail.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
 <357FACA6-6EAC-4E9D-B6F7-4D8D0D59A20A@gmail.com>
From: guillaume La Roque <glaroque@baylibre.com>
Message-ID: <9a63d585-69b1-c9b2-8092-51361ff41991@baylibre.com>
Date: Wed, 21 Aug 2019 23:19:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <357FACA6-6EAC-4E9D-B6F7-4D8D0D59A20A@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_141941_005858_5C9B80ED 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0aWFuLAoKCnRoYW5rcyBmb3IgdGVzdGluZyBvbiB0aGlzIDMgYm9hcmRzLgoKCmd1
aWxsYXVtZQoKT24gOC8xNC8xOSAyOjI0IFBNLCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+IE9u
IDYgQXVnIDIwMTksIGF0IDU6MDUgcG0sIEd1aWxsYXVtZSBMYSBSb3F1ZSA8Z2xhcm9xdWVAYmF5
bGlicmUuY29tPiB3cm90ZToKPj4gVGhpcyBwYXRjaHMgc2VyaWVzIGFkZCBzdXBwb3J0IG9mIE5l
dyBBbWxvZ2ljIHRlbXBlcmF0dXJlIHNlbnNvciBhbmQgbWluaW1hbAo+PiB0aGVybWFsIHpvbmUg
Zm9yIFNFSTUxMCBhbmQgT0RST0lELU4yIGJvYXJkcy4KPj4KPj4gRmlyc3QgaW1wbGVtZW50YXRp
b24gd2FzIGRvaW5nIG9uIElJT1sxXSBidXQgYWZ0ZXIgY29tbWVudHMgaSBtb3ZlIG9uIHRoZXJt
YWwgZnJhbWV3b3JrLgo+PiBGb3JtdWxhcyBhbmQgY2FsaWJyYXRpb24gdmFsdWVzIGNvbWUgZnJv
bSBhbWxvZ2ljLgo+Pgo+PiBDaGFuZ2VzIHNpbmNlIHYyOgo+PiAgLSBmaXggeWFtbCBkb2N1bWVu
dGlvbiAKPj4gIC0gcmVtb3ZlIHVubmVlZGVkIHN0YXR1cyB2YXJpYWJsZSBmb3IgdGVtcGVyYXR1
cmUtc2Vuc29yIG5vZGUKPj4gIC0gcmV3b3JrIGRyaXZlciBhZnRlciBNYXJ0aW4gcmV2aWV3Cj4+
ICAtIGFkZCBzb21lIGluZm9ybWF0aW9uIGluIGNvbW1pdCBtZXNzYWdlCj4+Cj4+IENoYW5nZXMg
c2luY2UgdjE6Cj4+ICAtIGZpeCBlbnVtIHZzIGNvbnN0IGluIGRvY3VtZW50YXRpb24KPj4gIC0g
Zml4IGVycm9yIHdpdGggdGhlcm1hbC1zZW5zb3ItY2VsbHMgdmFsdWUgc2V0IHRvIDEgaW5zdGVh
ZCBvZiAwCj4+ICAtIGFkZCBzb21lIGRlcGVuZGVuY2llcyBuZWVkZWQgdG8gYWRkIGNvb2xpbmct
bWFwcwo+Pgo+PiBEZXBlbmRlbmNpZXMgOgo+PiAtIHBhdGNoIDMsNCAmIDU6IGRlcGVuZHMgb24g
TmVpbCdzIHBhdGNoIGFuZCBzZXJpZXMgOgo+PiAgICAgICAgICAgICAgLSBtaXNzaW5nIGR3YzIg
cGh5LW5hbWVzWzJdCj4+ICAgICAgICAgICAgICAtIHBhdGNoc2V0cyB0byBhZGQgRFZGUyBvbiBH
MTJhWzNdIHdoaWNoIGhhdmUgZGVwcyBvbiBbNF0gYW5kIFs1XQo+Pgo+PiBbMV0gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtYW1sb2dpYy8yMDE5MDYwNDE0NDcxNC4yMDA5LTEtZ2xhcm9x
dWVAYmF5bGlicmUuY29tLwo+PiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYW1s
b2dpYy8yMDE5MDYyNTEyMzY0Ny4yNjExNy0xLW5hcm1zdHJvbmdAYmF5bGlicmUuY29tLwo+PiBb
M10gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYW1sb2dpYy8yMDE5MDcyOTEzMjYyMi43
NTY2LTEtbmFybXN0cm9uZ0BiYXlsaWJyZS5jb20vCj4+IFs0XSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1hbWxvZ2ljLzIwMTkwNzMxMDg0MDE5Ljg0NTEtNS1uYXJtc3Ryb25nQGJheWxp
YnJlLmNvbS8KPj4gWzVdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFtbG9naWMvMjAx
OTA3MjkxMzI2MjIuNzU2Ni0zLW5hcm1zdHJvbmdAYmF5bGlicmUuY29tLwo+Pgo+PiBHdWlsbGF1
bWUgTGEgUm9xdWUgKDYpOgo+PiAgZHQtYmluZGluZ3M6IHRoZXJtYWw6IEFkZCBEVCBiaW5kaW5n
cyBkb2N1bWVudGF0aW9uIGZvciBBbWxvZ2ljCj4+ICAgIFRoZXJtYWwKPj4gIHRoZXJtYWw6IGFt
bG9naWM6IEFkZCB0aGVybWFsIGRyaXZlciB0byBzdXBwb3J0IEcxMiBTb0NzCj4+ICBhcm02NDog
ZHRzOiBhbWxvZ2ljOiBnMTI6IGFkZCB0ZW1wZXJhdHVyZSBzZW5zb3IKPj4gIGFybTY0OiBkdHM6
IG1lc29uOiBzZWk1MTA6IEFkZCBtaW5pbWFsIHRoZXJtYWwgem9uZQo+PiAgYXJtNjQ6IGR0czog
YW1sb2dpYzogb2Ryb2lkLW4yOiBhZGQgbWluaW1hbCB0aGVybWFsIHpvbmUKPj4gIE1BSU5UQUlO
RVJTOiBhZGQgZW50cnkgZm9yIEFtbG9naWMgVGhlcm1hbCBkcml2ZXIKPiBUZXN0ZWQtYnk6IENo
cmlzdGlhbiBIZXdpdHQgPGNocmlzdGlhbnNoZXdpdHRAZ21haWwuY29tPgo+Cj4gSeKAmXZlIHRl
c3RlZCB0aGlzIHNlcmllcyB3aXRoIE9kcm9pZCBOMiBhbmQgS2hhZGFzIFZJTTMsIFg5Ni1NYXgu
IFBhdGNoZXMgdG8gYWRkCj4gc3VwcG9ydCBmb3IgVklNMy9YOTYtbWF4IHdpbGwgYmUgc3VibWl0
dGVkIG9uY2UgdGhlIGRyaXZlciBpcyBtZXJnZWQuCj4KPiBWSU0zOn4gIyBkbWVzZyB8IGdyZXAg
dGhlcm1hbAo+IFsgICAgMC4wNDYzNzVdIHRoZXJtYWxfc3lzOiBSZWdpc3RlcmVkIHRoZXJtYWwg
Z292ZXJub3IgJ3N0ZXBfd2lzZScKPgo+IFZJTTM6fiAjIGNhdCAvc3lzL2RldmljZXMvdmlydHVh
bC90aGVybWFsL3RoZXJtYWxfem9uZTAvdGVtcAo+IDUxMzAwCj4KPiBWSU0zOn4gIyBjYXQgL3N5
cy9kZXZpY2VzL3ZpcnR1YWwvdGhlcm1hbC90aGVybWFsX3pvbmUxL3RlbXAKPiA1MjgwMAo+Cj4g
Q2hyaXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
