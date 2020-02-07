Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296AF1554B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 10:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EV6s8tSF4hfT3EfSKduff8kpkxGFXK6iRlLrzitTgTs=; b=p1/GO+5GznabBa
	PoRar+GgMgW6QqNYUT8JHqomnSq6ReO2kjseMqT++gmEBdljpjBkpqev2/U1LKNyL/Bmin6APSpRR
	lhR31gE3v8tlSyEFslGLJON5OLfZvkd+eAUdaV/f5eAyEo4NZZZ7S9ff00gvzOge+wsHjgulCp/uX
	Pl66mm/uqyohDcm+7KdlzT0ABGMyP69iihkmHqqYgojwCr7JwLcv9RF/QBIMVkeHqJpVFQBXea3ul
	M4oURCJicw8fAr5QBt877BhGOko2qisxJht4HDDEQHVwEfd7bsEfYJEY9Ona+QH1XnYIf1lb2+H7G
	HrH4G59JUYydFpMhMF4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzz1-0003lw-VS; Fri, 07 Feb 2020 09:31:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzys-0003lS-O7
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 09:31:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id s144so2757498wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 01:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1iUBzNMidsA87bA3dZRKX5y6urM8a6Elhxwk8/0320E=;
 b=BmEZkG8zulsJCwtECXx7gQ9o597Z+QDoO1RQZYBIpDVeYQL1yj8KuSHQq/iKQgGm3b
 c/0Bdp3okKKoZZ0L0yOvnoTM53uvl3YaM2lq7cTR0S2VjNRkFy2koiOrJbRORRf/Cu/M
 YDzm8/CFz0ILP8vOVwYu8PhBgJs39aPhv2vDDwN8K3wUYHiD7SiJ9zOHbwyCp79dcgqO
 ViGJ4YcIlmDWPWqxrOGhis9Wfbiva1ljGZc2wcpq2EumLGa4r5h7I6sKK+9U4q/Ivpbc
 VC/2JJuuPf9rp38hSyLRgBZRMuZI5a5n4vngJnO51An84Jnw99LZSOzzRBbbR6Id75dI
 idCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=1iUBzNMidsA87bA3dZRKX5y6urM8a6Elhxwk8/0320E=;
 b=EC/VRE83Lf1Mw+oHlXnrx1unH93Hebe+Ac717zioogkNi/CW+Qa9OI2iqINUE5Wqlb
 2SLZWmWj5y9ojffPHkiAl2ECSj/oiQ99SuUkp5VCkvsSrAyarw/kIkwEBrwb3bq+YZsP
 M5d6KbRMabZlIa0mZfkNHpmFIx0g5b/ipHzVl5wlMSpbrxOd0GWFp4gdlh4tCAExABnU
 pb2wXgdY6ayh2Ftj/Gel1dYXzvbrhSn/W1MQU0Rx+UYN9rBSjMyNJd0NpctlMIqpIFBw
 wCNf7BHvqzODtbM1oV3SR93bfsGd5VBCnkkYTqC+zAiUapix1WQxnNmcZ6nULjk4BdK5
 tTIQ==
X-Gm-Message-State: APjAAAWQFlpgQVsg8RpkJ8Sy0Orn6QEHpr4YxC1pgKbZMZuNH/o+VsFw
 dp7hGxelsrHrQEeFJy43aRmB/w==
X-Google-Smtp-Source: APXvYqz9IRC039rNyH870WEKuoTpjZJ/6rVgLdeJdTVoPnQhGbaodA4Svpxw1D2jz17A4jna4pMWdA==
X-Received: by 2002:a1c:6a15:: with SMTP id f21mr3301225wmc.126.1581067880648; 
 Fri, 07 Feb 2020 01:31:20 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:1d4:3aa1:f3b4:32a2?
 ([2a01:e34:ed2f:f020:1d4:3aa1:f3b4:32a2])
 by smtp.googlemail.com with ESMTPSA id w26sm2598510wmi.8.2020.02.07.01.31.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Feb 2020 01:31:20 -0800 (PST)
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Amit Kucheria <amit.kucheria@verdurent.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
 <af5383b5-2dd4-92ab-ded2-f1cde48bb21a@linaro.org>
 <CAHLCerPir-7DEpweGZ9qoowm+u3BtDdLyB-B18KibMo9y+Q_DQ@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <451416a9-3caa-50d7-832d-9188a53e76ab@linaro.org>
Date: Fri, 7 Feb 2020 10:31:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAHLCerPir-7DEpweGZ9qoowm+u3BtDdLyB-B18KibMo9y+Q_DQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_013122_817971_0538E560 
X-CRM114-Status: GOOD (  26.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megous@megous.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDYvMDIvMjAyMCAyMDoyMywgQW1pdCBLdWNoZXJpYSB3cm90ZToKPiBPbiBUaHUsIEZlYiA2
LCAyMDIwIGF0IDEwOjE2IFBNIERhbmllbCBMZXpjYW5vCj4gPGRhbmllbC5sZXpjYW5vQGxpbmFy
by5vcmc+IHdyb3RlOgo+Pgo+Pgo+PiBIaSBBbWl0LAo+Pgo+PiBPbiAwNi8wMi8yMDIwIDE1OjEz
LCBBbWl0IEt1Y2hlcmlhIHdyb3RlOgo+Pj4gSGkgVmFzaWx5LAo+Pj4KPj4+IEZvciB0aGlzIGVu
dGlyZSBzZXJpZXMsIHRoZSBEVFMgZmlsZXMgZG9uJ3QgY29udGFpbiBhbnkgdHJpcCBwb2ludHMu
Cj4+PiBEaWQgSSBtaXNzIHNvbWUgb3RoZXIgc2VyaWVzPwo+Pj4KPj4+IEF0IGEgbWluaW11bSwg
eW91IHNob3VsZCBhZGQgc29tZSAiaG90IiBvciAiY3JpdGljYWwiIHRyaXAgcG9pbnRzCj4+PiBz
aW5jZSB0aGVuIGRvbid0IHJlcXVpcmUgYSBjb29saW5nLW1hcCB3aXRoIHRocm90dGxpbmcgYWN0
aW9ucy4gSWYgeW91Cj4+PiBoYXZlICJwYXNzaXZlIiB0cmlwIHBvaW50cywgdGhlbiB5b3UgbmVl
ZCB0byBwcm92aWRlIGNvb2xpbmctbWFwcy4KPj4KPj4gRXhjZXB0IEknbSBtaXN1bmRlcnN0YW5k
aW5nIHRoZSBiaW5kaW5ncywgYSB0aGVybWFsIHpvbmUgbXVzdCBkZWZpbmUKPj4gdGhlc2UgcmVx
dWlyZWQgcHJvcGVydGllczoKPj4KPj4gLSBwb2xsaW5nLWRlbGF5Cj4+IC0gcG9sbGluZy1kZWxh
eS1wYXNzaXZlCj4+IC0gdGhlcm1hbC1zZW5zb3JzCj4+IC0gdHJpcHMKPj4gLSBjb29saW5nLW1h
cHMKPiAKPiBSaWdodCwgZXhjZXB0IGZvciB0aGUgY29vbGluZy1tYXBzLiBUaG9zZSBhcmUgZXhl
bXB0ZWQgaWYgdGhlcmUgaXMgdGhlCj4gdHJpcCB0eXBlIGlzIG5vdCBwYXNzaXZlLiBUaGF0IGlz
IG15IHVuZGVyc3RhbmRpbmcgb2YgdGhlIGV4aXN0aW5nCj4gYmluZGluZ3MuCgpUaGUgYmluZGlu
ZyBpcyBhbWJpZ3VvdXMuCgpGb3IgbWUgaXQgc3RhdGVzIHRoZSBjb29saW5nIG1hcHMgbXVzdCBi
ZSBkZWZpbmVkIGFzIGl0IGlzIGEgcmVxdWlyZWQKbm9kZSBvZiB0aGUgdGhlcm1hbCB6b25lLgoK
V2UgbWF5IG5vdCBoYXZlIGFuIGFjdGl2ZSBvciBwYXNzaXZlIGNvb2xpbmcgZGV2aWNlIGZvciB0
aGUgdGhlcm1hbAp6b25lLCB0aHVzIHdlIGNhbiBub3QgY29tcGx5IHdpdGggdGhlIGR0IGJpbmRp
bmcgYW5kIHN0cmljdGx5IHNwZWFraW5nCndlIHNob3VsZG4ndCBhZGQgdGhpcyB0aGVybWFsIHpv
bmUuCgpCdXQgdGhlIGxvZ2ljIG9mIGhhdmluZyBhICdob3QnIG9yIGEgJ2NyaXRpY2FsJyB0cmlw
IHBvaW50IHdpdGhvdXQgYQpjb29saW5nIGRldmljZSBpcyBjb3JyZWN0LgoKQXMgd2UgbW92ZSB0
aGlzIGJpbmRpbmcgdG8gYSBzY2hlbWEsIHdlIHNoYWxsIGNsYXJpZnkgdGhlIGNvb2xpbmctbWFw
cwppcyByZXF1aXJlZCBpZiB0aGVyZSBhcmUgYWN0aXZlIG9yIHBhc3NpdmUgdHJpcCBwb2ludHMg
b3RoZXJ3aXNlIGl0IGlzCm9wdGlvbmFsLgoKCj4gVHJpcCB0eXBlIGNyaXRpY2FsIHRyaWdnZXJz
IGEgc2h1dGRvd24gYW5kIHRyaXAgdHlwZSBob3Qgb25seSB0cmlnZ2Vycwo+IGEgbm90aWZpY2F0
aW9uIC0gc2VlIHRoZXJtYWxfY29yZS5jOmhhbmRsZV9jcml0aWNhbF90cmlwcygpLiBTbyB3ZQo+
IG9ubHkgbmVlZCBjb29saW5nIG1hcHMgZm9yIHBhc3NpdmUgdHJpcCB0eXBlcy4KPiAKPj4+IFNp
bmNlIHRoaXMgc2VyaWVzIGhhcyBiZWVuIG1lcmdlZCwgY291bGQgeW91IHBsZWFzZSBmb2xsb3cg
dXAgd2l0aCBhCj4+PiBmaXh1cCBzZXJpZXMgdG8gYWRkIHRoZSB0cmlwIHBvaW50cz8KPj4+Cj4+
PiBSZWdhcmRzLAo+Pj4gQW1pdAo+Pj4gcC5zLiBXZSBzaG91bGQgY2F0Y2ggYWxsIHRoaXMgYXV0
b21hdGljYWxseSwgSSdsbCBzZW5kIG91dCB5YW1sCj4+PiBiaW5kaW5ncyBmb3IgdGhlIHRoZXJt
YWwgZnJhbWV3b3JrIHNvb24gdGhhdCBzaG91bGQgY2F0Y2ggdGhpcyBzdHVmZi4KPj4KPj4gKzEK
Pj4KPj4gVGhlcmUgd2FzIGEgc21hbGwgZGlzY3Vzc2lvbiBhYm91dCBjb252ZXJ0aW5nIHRoZSBi
aW5kaW5nIHRvIGEgc2NoZW1hOgo+Pgo+PiBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9k
ZXZpY2V0cmVlL21zZzMzMjQyNC5odG1sCj4gCj4gCj4gQWFoLCBJIG1pc3NlZCB0aGF0LiBJIHN0
YXJ0ZWQgd29ya2luZyBvbiBzb21ldGhpbmcgbGFzdCB3ZWVrIHRoYXQKPiBsb29rcyBzaW1pbGFy
IHRvIHlvdXIgZGlzY3Vzc2lvbi4gUHVzaGVkIGEgV0lQIGJyYW5jaCBoZXJlWzFdLCBpdAo+IGxv
b2tzIGxpa2UgSSBoYWQgYSBzaW1pbGFyIGlkZWEgb24gaG93IHRvIHNwbGl0IHRoZSBiaW5kaW5n
cy4gSG9wZSB0bwo+IGZpbmlzaCB0aGlzIHVwIHRvbW9ycm93IGZvciBhbiBSRkMuCgpHcmVhdCwg
dGhhbmtzIGZvciB0YWtpbmcgY2FyZSBvZiB0aGF0LgoKCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNv
bS9pZGxldGhyZWFkL2xpbnV4L2NvbW1pdHMvdXAvdGhlcm1hbC95YW1sLWNvbnZlcnNpb24tdjEK
PiAKPj4+IE9uIFRodSwgRGVjIDE5LCAyMDE5IGF0IDEwOjU4IFBNIFZhc2lseSBLaG9ydXpoaWNr
IDxhbmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gVGhpcyBwYXRjaHNldCBhZGRz
IGRyaXZlciBmb3IgdGhlcm1hbCBzZW5zb3IgaW4gQTY0LCBBODNULCBIMywgSDUsCj4+Pj4gSDYg
YW5kIFI0MCBTb0NzLgo+Pj4+Cj4+Pj4gdjg6Cj4+Pj4gICAgICAgICAtIFt2YXNpbHldIEFkZHJl
c3MgbW9yZSBNYXhpbWUncyBjb21tZW50cyBmb3IgZHQtc2NoZW1hCj4+Pj4gICAgICAgICAtIFt2
YXNpbHldIEFkZCBteXNlbGYgdG8gTUFJTlRBSU5FUlMgZm9yIHRoZSBkcml2ZXIgYW5kIHNjaGVt
YQo+Pj4+ICAgICAgICAgLSBbdmFzaWx5XSBSb3VuZCBjYWxpYnJhdGlvbiBkYXRhIHNpemUgdG8g
d29yZCBib3VuZGFyeSBmb3IgSDYgYW5kIEE2NAo+Pj4+ICAgICAgICAgLSBbdmFzaWx5XSBDaGFu
Z2Ugb2Zmc2V0IGZvciBBNjQgc2luY2UgaXQgcmVwb3J0cyB0b28gbG93IHRlbXAgb3RoZXJ3aXNl
Lgo+Pj4+ICAgICAgICAgICAgICAgICAgICBMaWtlbHkgY29udmVyc2lvbiBmb3JtdWxhIGluIHVz
ZXIgbWFudWFsIGlzIG5vdCBjb3JyZWN0Lgo+Pj4+Cj4+Pj4gdjc6Cj4+Pj4gICAgICAgICAtIFt2
YXNpbHldIEFkZHJlc3MgTWF4aW1lJ3MgY29tbWVudHMgZm9yIGR0LXNjaGVtYQo+Pj4+ICAgICAg
ICAgLSBbdmFzaWx5XSBNb3ZlIGNvbW1vbiBwYXJ0IG9mIEgzIGFuZCBINSBkdHMgaW50byBzdW54
aS1oMy1oNS5kdHNpCj4+Pj4gICAgICAgICAtIFt2YXNpbHldIEFkZCBNYXhpbWUncyBhLWIgdG8g
dGhlIGRyaXZlciBwYXRjaAo+Pj4+Cj4+Pj4gdjY6Cj4+Pj4gICAgICAgICAtIFtvbmRyZWosIHZh
c2lseV0gU3F1YXNoIGFsbCBkcml2ZXIgcmVsYXRlZCBjaGFuZ2VzIGludG8gYQo+Pj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHNpbmdsZSBwYXRjaAo+Pj4+ICAgICAgICAgLSBbb25kcmVq
XSBSZW5hbWUgY2FsaWIgLT4gY2FsaWJyYXRpb24KPj4+PiAgICAgICAgIC0gW29uZHJlal0gRml4
IHRoZXJtYWwgem9uZSByZWdpc3RyYXRpb24gY2hlY2sKPj4+PiAgICAgICAgIC0gW29uZHJlal0g
TG93ZXIgcmF0ZSBvZiBzZW5zb3IgZGF0YSBpbnRlcnJ1cHRzIHRvIDQvc2VjL3NlbnNvcgo+Pj4+
ICAgICAgICAgLSBbb25kcmVqXSBSZXdvcmsgc2NhbGUvb2Zmc2V0IHZhbHVlcywgSDYgY2FsaWJy
YXRpb24KPj4+PiAgICAgICAgIC0gW29uZHJlal0gRXhwbGljaXRseSBzZXQgbW9kIGNsb2NrIHRv
IDI0IE1Iego+Pj4+ICAgICAgICAgLSBbb25kcmVqXSBTZXQgdW5kb2N1bWVudGVkIGJpdHMgaW4g
Q1RSTDAgZm9yIEg2Cj4+Pj4gICAgICAgICAtIFtvbmRyZWpdIEFkZCBzdXBwb3J0IGZvciBBODNU
Cj4+Pj4gICAgICAgICAtIFtvbmRyZWpdIEFkZCBkdHMgY2hhbmdlcyBmb3IgQTgzVCwgSDMsIEg1
LCBINgo+Pj4+ICAgICAgICAgLSBbdmFzaWx5XSBBZGQgZHRzIGNoYW5nZXMgZm9yIEE2NAo+Pj4+
ICAgICAgICAgLSBbdmFzaWx5XSBBZGRyZXNzIE1heGltZSdzIGNvbW1lbnRzIGZvciBZQU1MIHNj
aGVtZQo+Pj4+ICAgICAgICAgLSBbdmFzaWx5XSBNYWtlIC5jYWxjX3RlbXAgY2FsbGJhY2sgbWFu
ZGF0b3J5Cj4+Pj4gICAgICAgICAtIFt2YXNpbHldIFNldCAubWF4X3JlZ2lzdGVyIGluIHJlZ21h
cCBjb25maWcsIHNvIHJlZ3MgY2FuIGJlCj4+Pj4gICAgICAgICAgICAgICAgICAgIGluc3BlY3Rl
ZCB1c2luZyBkZWJ1Z2ZzCj4+Pj4KPj4+PiBPbmRyZWogSmlybWFuICg0KToKPj4+PiAgIEFSTTog
ZHRzOiBzdW44aS1hODN0OiBBZGQgdGhlcm1hbCBzZW5zb3IgYW5kIHRoZXJtYWwgem9uZXMKPj4+
PiAgIEFSTTogZHRzOiBzdW44aS1oMzogQWRkIHRoZXJtYWwgc2Vuc29yIGFuZCB0aGVybWFsIHpv
bmVzCj4+Pj4gICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg1OiBBZGQgdGhlcm1hbCBzZW5zb3Ig
YW5kIHRoZXJtYWwgem9uZXMKPj4+PiAgIGFybTY0OiBkdHM6IGFsbHdpbm5lcjogaDY6IEFkZCB0
aGVybWFsIHNlbnNvciBhbmQgdGhlcm1hbCB6b25lcwo+Pj4+Cj4+Pj4gVmFzaWx5IEtob3J1emhp
Y2sgKDEpOgo+Pj4+ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBhNjQ6IEFkZCB0aGVybWFsIHNl
bnNvcnMgYW5kIHRoZXJtYWwgem9uZXMKPj4+Pgo+Pj4+IFlhbmd0YW8gTGkgKDIpOgo+Pj4+ICAg
dGhlcm1hbDogc3VuOGk6IGFkZCB0aGVybWFsIGRyaXZlciBmb3IgSDYvSDUvSDMvQTY0L0E4M1Qv
UjQwCj4+Pj4gICBkdC1iaW5kaW5nczogdGhlcm1hbDogYWRkIFlBTUwgc2NoZW1hIGZvciBzdW44
aS10aGVybWFsIGRyaXZlcgo+Pj4+ICAgICBiaW5kaW5ncwo+Pj4+Cj4+Pj4gIC4uLi90aGVybWFs
L2FsbHdpbm5lcixzdW44aS1hODN0LXRocy55YW1sICAgICB8IDE2MCArKysrKwo+Pj4+ICBNQUlO
VEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDggKwo+Pj4+ICBh
cmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kgICAgICAgICAgICAgfCAgMzYgKwo+Pj4+
ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy5kdHNpICAgICAgICAgICAgICAgfCAgMjAgKwo+
Pj4+ICBhcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpICAgICAgICAgICAgfCAgIDYg
Kwo+Pj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kgfCAg
NDIgKysKPj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg1LmR0c2kg
IHwgIDI2ICsKPj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0
c2kgIHwgIDMzICsKPj4+PiAgZHJpdmVycy90aGVybWFsL0tjb25maWcgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDE0ICsKPj4+PiAgZHJpdmVycy90aGVybWFsL01ha2VmaWxlICAgICAgICAgICAg
ICAgICAgICAgIHwgICAxICsKPj4+PiAgZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYyAg
ICAgICAgICAgICAgIHwgNjM5ICsrKysrKysrKysrKysrKysrKwo+Pj4+ICAxMSBmaWxlcyBjaGFu
Z2VkLCA5ODUgaW5zZXJ0aW9ucygrKQo+Pj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvYWxsd2lubmVyLHN1bjhpLWE4M3QtdGhz
LnlhbWwKPj4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVy
bWFsLmMKPj4+Pgo+Pj4+IC0tCj4+Pj4gMi4yNC4xCj4+Pj4KPj4KPj4KPj4gLS0KPj4gIDxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBm
b3IgQVJNIFNvQ3MKPj4KPj4gRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNv
bS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPj4gPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5h
cm9vcmc+IFR3aXR0ZXIgfAo+PiA8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4g
QmxvZwo+PgoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8v
d3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVy
LmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFy
by1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
