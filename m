Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C4DF8B3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 10:00:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTecG67UYmibz2B/+CQks/K4p+a+YSxgBpJWIh+2rx0=; b=gWCJXoWwAqpYmK
	ATIUwVYIxevHwwojAuCag96vNUWCOUnSmaKm5NkQKcg/5sp/NtXpN1UjK4xCHN0mUXlHmVEFi7iSQ
	PR+1cdKG0RxhrbOkG4zGbJaqg1H2YlAKgGEaos8hP5pqqektHWOjACQdD3K1bS2GsLBPlplHFgyvg
	V8U6Dm4ESSEt+LPjB7Jo+O4brfwYOx/mBtZEmcp1zOW/Hc/IQPaRckhSk4O3nMXPn0yd3ZmR3S1KJ
	PK7uE+Vxflcr9yYq6+7qgJnfUEeOvvCwOSPsr1F+L7TJji4V6+BQDDC+8CeLDR8IdYUQpiu/mbxAO
	10nP9JzxnpndTv815mBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUS2G-000869-Qp; Tue, 12 Nov 2019 09:00:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUS1v-0006vx-83
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 09:00:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id z10so12251141wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 01:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BcEdIsgONewkt2WTJX4+2t/kFfSrtlzB9Hhzx9d9WmI=;
 b=pA5YX+KhNescvw+tUXCcv5VVKKi9AIRjIv3AkcK67VfqS37wRrg3m3KoyIfTB2MGOe
 38QKziEBgnXY4o50gAtIbYqvLD8wi6IaV+G/8cWXQWS5Wh3YRNzvASrSeg34mMDXqONP
 tSJ7fjBDQkdHExDQDKtvyzEN9/ry4gtWrgcmj7XIM62DjH6yZ10xb0ubeJM75/QRYMPl
 pcxOZ/u1w3dYq/wTjKgBVSU5vWOcStokbDXe4xB+8hYN+zoqlQvQesk4R7CnL4WzTM1l
 jM+uAjM0wtPGKbgtw9EWi78wPtEOY0xBNmzY7ao1fpJ5eZXUehfmvokmOM1WPpSMwxIh
 2Waw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BcEdIsgONewkt2WTJX4+2t/kFfSrtlzB9Hhzx9d9WmI=;
 b=OWQ3X3lShErWeQAl3kNxb2yR3550T+8Y6iYCAleffvefy1FuTWfSupmdHh20HtLicc
 vjcXpoNPF7PCTamlBUrPJefJN8POsgSyS8kpql1MNLP9mvC3XI2/7uOR+kORDSttv3L/
 a1KhhZn8JIXfMzSnK+nFIuJMuJytSvddZWwPVCQ2ptBgokw4ufRgxhofaIXscixc9MQY
 IT5GEQgFADaDSF0e4huvb4w9LiDrRr6JJJskrxbbxGevosQA+Q7Q392oWSa82vqfdrHq
 uGU7sERgJZMDfhU9F3AYylyGcldY/l+d0APsictdi/AIGmg7Sr1gjYNCH1+Jsk2QMmEG
 ivSA==
X-Gm-Message-State: APjAAAV7DaSvYRVgFCk5Lqdv1ctGI+jq604H0ddn9wY8nthAUQySWyfs
 xzn8QrpJr2SDS5rqyke+bPYp1w==
X-Google-Smtp-Source: APXvYqxNt8AkoEGpgXWlnhD0dzWV63L1YNrT8HcgC0uxc+I/A2wPSFXVMKogr3tcfKYT1iW6FSbU1g==
X-Received: by 2002:a5d:6b0e:: with SMTP id v14mr23966834wrw.280.1573549203401; 
 Tue, 12 Nov 2019 01:00:03 -0800 (PST)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 189sm3464185wme.28.2019.11.12.01.00.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 01:00:02 -0800 (PST)
Subject: Re: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
To: Jun Li <lijun.kernel@gmail.com>, Tim <elatllat@gmail.com>
References: <20191014141718.22603-1-narmstrong@baylibre.com>
 <20191014141718.22603-2-narmstrong@baylibre.com>
 <20191023201141.GA21235@bogus>
 <CA+3zgmsJPsvXgsjDQKKrSG+UNdY3SK+hKCTD2X3hGG+OXejHig@mail.gmail.com>
 <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <c32007f5-88b9-45c5-b542-b1dc4dbc76ea@baylibre.com>
Date: Tue, 12 Nov 2019 10:00:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKgpwJWU3jB0DWEKE09TOV+YLceBFJ75ZirAXQbuhj8v3FwjXg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_010007_583890_7C2DF80D 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felipe Balbi <balbi@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 devicetree@vger.kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dongjin Kim <tobetter@gmail.com>,
 linux-amlogic@lists.infradead.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGksCgpPbiAxMS8xMS8yMDE5IDAyOjU4LCBKdW4gTGkgd3JvdGU6Cj4gSGkgTmVpbAo+IAo+
IEFzIEkgZ290IHRoZSBpbmZvcm1hdGlvbiBmcm9tIFN5bm9wc3lzLCB0aGlzIGJ1ZyBleGlzdHMg
b24gY3VycmVudCBJUCB2ZXJzaW9ucywKPiBhbmQgcGVyIG15IHRlc3RzIHdpdGggZXh0ZXJuYWwg
VVNCMyBodWIgKyAyIFN1cGVyIHNwZWVkIHVkaXNrcyBvbiBkYXRhCj4gcmVhZCBieSBkZCwgSSBj
YW4gcmVwcm9kdWNlIHRoaXMgaXNzdWUgd2l0aCBkaWZmZXJlbnQga2VybmVsIHZlcnNpb25zLCBh
bHNvIEkKPiBkaWRuJ3Qgc2VlIG9idmlvdXMgcGVyZm9ybWFuY2UgZHJvcCBieSBkZCB0ZXN0cyBh
ZnRlciBkaXNhYmxlIHBhcmsgbW9kZSBmb3IKPiBzdXBlciBzcGVlZCwgc28gc2hvdWxkIHdlIGp1
c3QgZGlzYWJsZSBpdCBieSBkZWZhdWx0IHNvIG5vIG5lZWQgYSBxdWlyaz8KCkkgZG9uJ3QgaGF2
ZSBhbnkgb3BpbmlvbiBvbiB0aGlzLCBJIHRoaW5rIHRoZSBVU0IgJiBEV0MzIG1haW50YWluZXJz
IHNob3VsZCBkZWNpZGUKaG93IHRvIGhhbmRsZSB0aGlzLgoKRGlkIFN5bm9wc3lzIHNwZWNpZmll
ZCBhIHJhbmdlIG9mIGFmZmVjdGVkIElQIHZlcnNpb24gPwoKTmVpbAoKPiAKPiBMaSBKdW4KPiAK
PiBUaW0gPGVsYXRsbGF0QGdtYWlsLmNvbT4g5LqOMjAxOeW5tDEx5pyIMTHml6XlkajkuIAg5LiK
5Y2IODo0MuWGmemBk++8mgo+Pgo+PiBUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcyBOZWlsLAo+
PiBJcyB0aGVyZSBzb21ldGhpbmcgdGhhdCBuZWVkcyBkb2luZyBmb3IgdGhpcyBwYXRjaCB0byBt
YWtlIGl0IGludG8gNS4zIG9yIDUuND8KPj4gQXMgcHJldmlvdXNseSBtZW50aW9uZWQgdGhlIHBh
dGNoIHNldCBmaXhlcyB0aGUgaXNzdWUgb24gYWZmZWN0ZWQgaGFyZHdhcmU7Cj4+ICAgICBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMTY0NTE1Lwo+Pgo+Pgo+Pgo+PiBPbiBX
ZWQsIE9jdCAyMywgMjAxOSBhdCA0OjExIFBNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+
IHdyb3RlOgo+Pj4KPj4+IE9uIE1vbiwgT2N0IDE0LCAyMDE5IGF0IDA0OjE3OjE2UE0gKzAyMDAs
IE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+Pj4+IFRoaXMgcGF0Y2ggdXBkYXRlcyB0aGUgZG9jdW1l
bnRhdGlvbiB3aXRoIHRoZSBpbmZvcm1hdGlvbiByZWxhdGVkCj4+Pj4gdG8gdGhlIHF1aXJrcyB0
aGF0IG5lZWRzIHRvIGJlIGFkZGVkIGZvciBkaXNhYmxpbmcgYWxsIFN1cGVyU3BlZWQgWEhDaQo+
Pj4+IGluc3RhbmNlcyBpbiBwYXJrIG1vZGUuCj4+Pj4KPj4+PiBDQzogRG9uZ2ppbiBLaW0gPHRv
YmV0dGVyQGdtYWlsLmNvbT4KPj4+PiBDYzogSmlhbnhpbiBQYW4gPGppYW54aW4ucGFuQGFtbG9n
aWMuY29tPgo+Pj4+IFJlcG9ydGVkLWJ5OiBUaW0gPGVsYXRsbGF0QGdtYWlsLmNvbT4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4+
Pj4gLS0tCj4+Pj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZHdjMy50
eHQgfCAyICsrCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4+Cj4+PiBT
aWdoLCB3aGF0J3Mgb25lIG1vcmUgdG8gdGhlIG5ldmVyIGVuZGluZyBsaXN0IG9mIHF1aXJrcy4u
Lgo+Pj4KPj4+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
