Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9524E32F1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIOmnbf3Phg9MLOUQRby5UDuzA4G5CVbNLntjo9I7F4=; b=gbfal+timsqCCw
	Rd2zjy1VL7LeZmdPQQVk9G2mm4iRls/2iNU7fTbvxvc8+FrfJMNlo8/4GS372EyW9HPJnhZAA9Sec
	4SRt5ddOCD21lY+dRLT/zy0Igc/t4tF8vw9MsrnnPW3+W8SfTG2kjeU1RBcPMsEEIAARL3sFGNTUa
	2ovZL0GzW4sZQfXxij0zn3K9G8TdtMOZ5UsgxdRfw4hF2c+d9lmChPm87QPpdEUg94F7q2gCGOtH6
	r7cFFeQX+pGOo1kPMJSWJmXNKaqRKFbG2aiOdk+Sy16TImA+H+8UBBKRfZxFQLdY5O/08jBR7eVTt
	m9LxOORxzEWvfxv+vdtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlal-0003TG-9S; Mon, 03 Jun 2019 11:57:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlad-0003SH-BY; Mon, 03 Jun 2019 11:57:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id u16so5529178wmc.5;
 Mon, 03 Jun 2019 04:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=zH0gwAXR2vq1LzxeIdBnF5nu1CZS6B3eFInE+nGAFt0=;
 b=ftc63eNWKSOctdyZNlAYGAku04L0is+S+OEP4bRpRestEgSgaHcFo2bqG7Yn5YhkxE
 URi5im1qvT08UtnLoZW1ZEn3CXBoid90GtMgBV9m2m8FSEdDm1UrvVuTmxtikYKdx77O
 rcN5dliZM/eCWO4xpImtvMezKs4kqfQlvw06wgEX8N8hXUa9AVcHrflFAaaZYp/1U8ld
 Za32KkBP83weG8P1hp9UqKNMc0pdJ07OUbSTs8uWn6tMBHPvEEha6R5Yuuwls2Q7vMx3
 vD2uTAe+fqywl3lx04kqqwrT+x08HansnhIiOYTksLR0TmCs0fF+gZqrMiQ355AeE7Au
 CFRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=zH0gwAXR2vq1LzxeIdBnF5nu1CZS6B3eFInE+nGAFt0=;
 b=WagYjX8AL+wKTrPjBkbNkok3pW1zRUpawy1tc/xrFnAwz3PafixvnDLU+uHOVxzhp8
 RmAfpbGPSvOukTUf+VS1B6e1dB0aIQFcfZz81pkWqA8ldnuK+ZgLFR/JOWq6UjKYQ/0h
 a0/uCPqNBbvvSi19Mef/5jan+aRxr/D9lJKEDpyS83MgVNcd0QTGKlnhDOBbsn7sGV7K
 Yefhh1TpaqAAvcLURQfmupi1w7wX1VlRpOx0x2uQRwM+USt2voWFYD8B2MyAmP7ONps2
 E0KUb1Tc6n9DTOln/YyJRa0h7PXTE6Ut9vOxpIBbCvYAp/AIRCnHmNddNaygx47kxQdF
 8UaA==
X-Gm-Message-State: APjAAAUwVmNlmyuICHId+NadUJjz05umnZNOEB32NGiWcTU8v7JLcoVW
 cWfGCBGu65sMSXrBZeW0t0I=
X-Google-Smtp-Source: APXvYqyW4glgD2xmrXxBinQAo2biQZPnENKHNb36mGg6c0c3av8dimZ27SHg7BF981umISYRPDwm3g==
X-Received: by 2002:a1c:7f93:: with SMTP id a141mr4017194wmd.131.1559563041072; 
 Mon, 03 Jun 2019 04:57:21 -0700 (PDT)
Received: from [172.16.20.20] ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id 6sm27934997wrd.51.2019.06.03.04.57.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 04:57:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Subject: Re: [PATCH 02/10] arm64: dts: meson-gxm-khadas-vim2: fix Bluetooth
 support
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <bbf3c69f-8695-d665-c7ca-587b7e77eb4f@baylibre.com>
Date: Mon, 3 Jun 2019 15:57:17 +0400
Message-Id: <CD983BAA-CC37-455E-B78A-CF8A72ACE7A4@gmail.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-3-narmstrong@baylibre.com>
 <CAFBinCBTK=6OW4kG=i0KZe-+AzGVXyou9g0frnh9yqLsdmB5+w@mail.gmail.com>
 <b54c7899-95b3-1202-d70b-9b8ee2955164@baylibre.com>
 <CAFBinCB9PZ-mjyjCafK24cH3sN5E1r4vt1z=m+uvkHsmRW2PFQ@mail.gmail.com>
 <bbf3c69f-8695-d665-c7ca-587b7e77eb4f@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
X-Mailer: Apple Mail (2.3445.102.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_045723_420811_DA5E65E4 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMyBKdW4gMjAxOSwgYXQgMTI6NTcgcG0sIE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJh
eWxpYnJlLmNvbT4gd3JvdGU6Cj4gCj4gT24gMjkvMDUvMjAxOSAyMDowOCwgTWFydGluIEJsdW1l
bnN0aW5nbCB3cm90ZToKPj4gT24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMTI6MjUgUE0gTmVpbCBB
cm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPiB3cm90ZToKPj4+IAo+Pj4gT24gMjcv
MDUvMjAxOSAyMDozNiwgTWFydGluIEJsdW1lbnN0aW5nbCB3cm90ZToKPj4+PiBPbiBNb24sIE1h
eSAyNywgMjAxOSBhdCAzOjIyIFBNIE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJl
LmNvbT4gd3JvdGU6Cj4+Pj4+IAo+Pj4+PiBGcm9tOiBDaHJpc3RpYW4gSGV3aXR0IDxjaHJpc3Rp
YW5zaGV3aXR0QGdtYWlsLmNvbT4KPj4+Pj4gCj4+Pj4+IC0gUmVtb3ZlIHNlcmlhbDEgYWxpYXMK
Pj4+Pj4gLSBBZGQgc3VwcG9ydCBmb3IgdWFydF9BIHJ0cy9jdHMKPj4+Pj4gLSBBZGQgYmx1ZXRv
b3RoIHVhcnRfQSBzdWJub2RlIHFpdGggc2h1dGRvd24gZ3Bpbwo+Pj4+IEkgdHJpZWQgdGhpcyBv
biBteSBvd24gS2hhZGFzIFZJTTI6Cj4+Pj4gQmx1ZXRvb3RoOiBoY2kwOiBjb21tYW5kIDB4MTAw
MSB0eCB0aW1lb3V0Cj4+Pj4gQmx1ZXRvb3RoOiBoY2kwOiBCQ006IFJlYWRpbmcgbG9jYWwgdmVy
c2lvbiBpbmZvIGZhaWxlZCAoLTExMCkKPj4+PiAKPj4+PiBJJ20gbm90IHN1cmUgd2hldGhlciB0
aGlzIGlzIHNwZWNpZmljIHRvIG15IGJvYXJkIG9yIHdoYXQgY2F1c2VzIHRoaXMuCj4+PiAKPj4+
IFdoaWNoIGtlcm5lbCB2ZXJzaW9uID8KPj4gNS4yLXJjMgo+PiAKPj4gaXQncyBhIEtoYWRhcyBW
SU0yIEJhc2ljICh0aHVzIGl0IGhhcyBhIEFQNjM1NlMpLCBib2FyZCByZXZpc2lvbiB2MS4yCj4g
Cj4gQ2FuIHlvdSB0cnkgd2l0aCA6Cj4gCj4gY2xvY2tzID0gPCZ3aWZpMzJrPjsKPiBjbG9jay1u
YW1lcyA9ICJscG8iOwo+IAo+IGFkZGVkIGluIHRoZSBibHVldG9vdGggbm9kZSA/CgpUZXN0ZWQg
YW5kIGNvbmZpcm1lZCB3b3JraW5nIHdpdGggcmV2IDEuMiDigJhiYXNpYycgYW5kIDUuMSBrZXJu
ZWwgd2l0aCB0aG9zZSBub2RlcyBhZGRlZC4KClZJTTI6fiAjIGRtZXNnIHwgZ3JlcCAtaSBibHVl
ClsgICAxMC43OTM2MDBdIEJsdWV0b290aDogQ29yZSB2ZXIgMi4yMgpbICAgMTAuNzkzNzkyXSBC
bHVldG9vdGg6IEhDSSBkZXZpY2UgYW5kIGNvbm5lY3Rpb24gbWFuYWdlciBpbml0aWFsaXplZApb
ICAgMTAuNzkzODE0XSBCbHVldG9vdGg6IEhDSSBzb2NrZXQgbGF5ZXIgaW5pdGlhbGl6ZWQKWyAg
IDEwLjc5MzgyMV0gQmx1ZXRvb3RoOiBMMkNBUCBzb2NrZXQgbGF5ZXIgaW5pdGlhbGl6ZWQKWyAg
IDEwLjc5Mzg1MV0gQmx1ZXRvb3RoOiBTQ08gc29ja2V0IGxheWVyIGluaXRpYWxpemVkClsgICAx
MC44MDE5MjhdIEJsdWV0b290aDogSENJIFVBUlQgZHJpdmVyIHZlciAyLjMKWyAgIDEwLjgwMTk0
NF0gQmx1ZXRvb3RoOiBIQ0kgVUFSVCBwcm90b2NvbCBINCByZWdpc3RlcmVkClsgICAxMC44MDQ5
MTldIEJsdWV0b290aDogSENJIFVBUlQgcHJvdG9jb2wgQnJvYWRjb20gcmVnaXN0ZXJlZApbICAg
MTAuODA1MDI1XSBCbHVldG9vdGg6IEhDSSBVQVJUIHByb3RvY29sIFFDQSByZWdpc3RlcmVkClsg
ICAxMS4wMTY2MjldIEJsdWV0b290aDogaGNpMDogQkNNOiBjaGlwIGlkIDEwMQpbICAgMTEuMDE4
NTM3XSBCbHVldG9vdGg6IGhjaTA6IEJDTTogZmVhdHVyZXMgMHgyZgpbICAgMTEuMDQzMTEyXSBC
bHVldG9vdGg6IGhjaTA6IEJDTTQzNTRBMgpbICAgMTEuMDQzMTM0XSBCbHVldG9vdGg6IGhjaTA6
IEJDTTQzNTZBMiAoMDAxLjAwMy4wMTUpIGJ1aWxkIDAwMDAKWyAgIDExLjA3NTkxOV0gQmx1ZXRv
b3RoOiBHZW5lcmljIEJsdWV0b290aCBTRElPIGRyaXZlciB2ZXIgMC4xClsgICAxMS4zNTk3ODRd
IEJsdWV0b290aDogQk5FUCAoRXRoZXJuZXQgRW11bGF0aW9uKSB2ZXIgMS4zClsgICAxMS4zNTk3
OTNdIEJsdWV0b290aDogQk5FUCBmaWx0ZXJzOiBwcm90b2NvbCBtdWx0aWNhc3QKWyAgIDExLjM1
OTgxMV0gQmx1ZXRvb3RoOiBCTkVQIHNvY2tldCBsYXllciBpbml0aWFsaXplZApbICAgMTcuMDc1
NTA5XSBCbHVldG9vdGg6IGhjaTA6IEJDTTQzNTZBMiAoMDAxLjAwMy4wMTUpIGJ1aWxkIDAyNjYK
CkkgdXNlIEJUIHJlbW90ZXMgdG8gYXZvaWQgaXNzdWVzIHdpdGggbXVsdGlwbGUgYm9hcmRzIHJl
c3BvbmRpbmcgdG8gSVIgc28gaXQgd2FzIHdvcmtpbmcgYmVmb3JlIGF0IHNvbWUgcG9pbnQuIEkg
YXNzdW1lIEkgZHJvcHBlZCBhIGNoYW5nZSBzb21ld2hlcmUgaW4gdGhlIHByb2Nlc3Mgb2YgZmVl
ZGluZyB5b3UgdGhlIGJhdGNoIG9mIHBhdGNoZXMgLSBhcG9sb2dpZXMhCgpDaHJpc3RpYW4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
