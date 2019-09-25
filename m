Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA2CBDAF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 11:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jtm6JP70D2BfRG1xdOkvqL6YsaHuTOYzdV3etsR3R+4=; b=qTxw6aWTgRoYpJM1G9NoqUk1kn
	qvnPBgcGvI8+tJrz9iWoSdq8EGDLnkiadAPOF/9Jik118DDSea27XfGrgQDIsH6MAs7tOyZ1uSydG
	csKDL93OFgRrDwQRTCj7GO4UpAKS4UU1nRv7PA+Cfk8zZucsa33oE4Hnr9YII9C3mst/8mNlIFw9F
	JUzv7dwWLHkMIXoSv81QS8jWcUx9MAUXDEGx21JtNtXdAVbyDMuzTcIL/mPkesXzXj9LleXPuw6ao
	TWdKAMJbnYGT2bY4KNvDRkXUrRqK42KHXqF1/rOItDXbBY22LjThZ+2ytrhlGWs0AOpYdXTyJYdbp
	zTf9Icqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3bK-0006xR-LC; Wed, 25 Sep 2019 09:28:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3ao-0006wg-CN
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 09:28:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id q17so5802115wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 02:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=wWH05jdOBqy8CTraJGfqmvy+n3PPrTLd6/3lKmDbXYU=;
 b=L57x/BnlN+6l4opcjHkBfLfItWQ44eGMwO8euXrE7rr0ClvHfxRn+CkvnORRHZ/ySo
 GgfTeND1ds1RdWuQ7Bu6uRG0KGRW2ChGbKOa3/PtWh9kF4tHoWHRoBZNcIsLZbVjvGFk
 Yalyri5x5vl8BzopuZsXlrTqcs9wtLXDWtiO+mQV/kI6HvnLK6tMbhcZWkKNK9bnDXgb
 7h+Dw0vPnXUemcmruF7AJwfeDy7UpHsg81q3Cu3ehNSEprRoNVeDEfNpvtFUUmJB8Oev
 a5hD0rUYQfnqSHGXt3zjTVKT4Afqlnza9m9vP3oePTzGZZgQogGBTO1x8pW8v9vMODHs
 FGww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=wWH05jdOBqy8CTraJGfqmvy+n3PPrTLd6/3lKmDbXYU=;
 b=YzRgneztfx2T7gW2Wtup41Hxxc6vBaNGNiHMZFQH6iSWLwYeKyrk2QE3O4iBvUSBTN
 fWABy+w95hWoY8v1COaSy2ovqonqx6I76ykFXNFVAsRGDS96nfWYSAO8e6nXeTr/Jr1M
 qdBSj32NZu370RwIyZ8hshxdzIJHeVlMqOZJbyuvEm6/PrG6XjQdruDJJ4bIQp0142/H
 MHppYpBpXiA5LnWkpmD/Q++XqVUwamJo/jS08lMx75N/sVva6B8XToHTafsXqpxM0+/B
 SSLH2R7wNCHusasdK22eflOIzi8oQ0HDCIcC/GiuUqZ+uDRkNVJIleGwuaU2kK3IP97c
 bihg==
X-Gm-Message-State: APjAAAXRB0YxClykPGZ8ZfxTicyPfcsaRKXObpJHgT2ausWotZGOAE7s
 drFL+A1xbVGQ5CV9sTgXQinUalGQgmNBeQ==
X-Google-Smtp-Source: APXvYqwKSm6SzOUa2KNqRmbQqWcaQrmcEV6Y1SlwD3LhvqbCORHn0nuyUQO3cE4Z+4cI9C0F9AGyJA==
X-Received: by 2002:adf:e988:: with SMTP id h8mr8079174wrm.354.1569403690817; 
 Wed, 25 Sep 2019 02:28:10 -0700 (PDT)
Received: from [192.168.1.62] (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id h9sm3782859wrv.30.2019.09.25.02.28.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Sep 2019 02:28:10 -0700 (PDT)
Subject: Re: ARM core blob list
To: linux-arm-kernel@lists.infradead.org
References: <7c52fab5-825a-b019-ec46-6fb731336cfe@ehayq.am>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <6e6ed292-90e0-3cd1-7919-62a02b69f068@baylibre.com>
Date: Wed, 25 Sep 2019 11:28:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7c52fab5-825a-b019-ec46-6fb731336cfe@ehayq.am>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_022814_492415_A38FEB25 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyMC8wOS8yMDE5IDEyOjE1LCBTZXJnZXkgQnJ1dHlhbiB3cm90ZToKPiBEZWFyIGFs
bCB3ZSBhcmUgY29tcGFueSBvZiBoYXJkL3NvZnQgZGVzaWduIGFuZCBpbnRlZ3JhdGlvbiBtb3N0
bHkgYmFzZWQKPiBvbiBBUk0gY29yZXMuCj4gV2UgYXJlIGN1cnJlbnRseSB3b3JraW5nIG9uIExp
YnJlIExpbnV4IGRldmVsb3BtZW50IGZvciBBUk0gYmFzZWQgU0JDLgo+IAo+IEFuZCByZWFkeSB0
byBwdXQgcHJvZmVzc2lvbmFsIGVmZm9ydCBmb3IgaGF2aW5nIGNvbXBsZXRlIGJsb2ItZnJlZSBM
aW51eAo+IGtlcm5lbCwgYXMgd2UgaGF2ZSBkb25lIHJlc2VhcmNoIHRoZXJlIGlzIG1vc3QgcHJv
YmxlbSB3aXRoIGJvb3Rsb2FkZXJzCj4gYW5kIE1hbGkgb3IgUG93ZXJWUiBHUFUgdW5pdHMgaW4g
U29DLgo+IAo+IFdlIGFyZSBsb29raW5nIGZvcndhcmQgdG8gY29vcGVyYXRlIGFuZMKgIG5vdyBo
YXZlIHNldmVyYWwgbmVlZCBvZgo+IGluZm9ybWF0aW9uLgo+IAo+IENhbiB5b3Ugc2VuZCB1cyBs
aXN0IGZvciBibG9iIGRyaXZlcnMgZm9yIHRoaXMgU29DOgo+IAo+IMKgwqDCoCBBbGx3aW5uZXIg
QTIwCj4gwqDCoMKgIEFsbHdpbm5lciBSNDAKPiDCoMKgwqAgQnJvYWRjb20gQkNNMjgzNwo+IMKg
wqDCoCBSZWFsdGVrIFJURDEzOTUKPiDCoMKgwqAgTWVkaWFUZWsgTVQ3NjIzTgo+IAo+IAo+IEFu
ZCBhbHNvIHBsZWFzZSBvZmZlciB1cyB3aGljaCBpcyB0aGUgYmVzdCBTb0MgZm9yIGJsb2ItZnJl
ZSBsaW51eAo+IGRldmVsb3BtZW50LgoKb2ZmIHRvcGljLCBidXQgSSBjYW4gYW5zd2VyIGZvciB0
aGUgQW1sb2dpYyBTOTA1L1M5MDVYL1M5MDVEL1M5MTIvUzkwNVgyL1M5MDVEMi9TOTIyWC9BMTEz
RC9TOTA1WDMvUzkwNUQzIDoKCi0gUzkwNS9TOTA1WC9TOTA1RC9TOTEyClUtQm9vdCBzdXBwb3J0
IGlzIGJsb2IgZnJlZSwgZnVsbCB1cHN0cmVhbQpMaW51eCBzdXBwb3J0IGlzIGZ1bGx5IHVwc3Ry
ZWFtClNDUEkgZmlybXdhcmUgZm9yIERWRlMsIGxvYWRlZCBieSBURi1BIHRvIFNDUCBDby1Db3By
b2Nlc3NvcgpQU0NJIGZpcm13YXJlIGZvciBTeXN0ZW0gTWFuYWdlbWVudCwgYnV0IEJMMzEgaGFz
IGJlZW4gcmV2ZXJzZSBlbmdpbmVlcmVkIGFuZCBwdXNoZWQgdG8gb2ZmaWNpYWwgVEYtQSByZXBv
cywgb25seSBCTDIsIEJMMzAgYW5kIEJMMzAxIGFyZSBzdGlsbCBjbG9zZWQgc291cmNlCkdQVSBj
YW4gdXNlIHRoZSBGT1NTIExpbWEgKFBhbmZyb3N0IGZvciBTOTEyKSBkcml2ZXIKSFcgVmlkZW8g
RGVjb2RlciBuZWVkcyBhIGZpcm13YXJlIHRvIGJlIGxvYWRlZAoKLSBTOTA1WDIvUzkwNUQyL1M5
MjJYL0ExMTNEL1M5MDVYMy9TOTA1RDMKVS1Cb290IHN1cHBvcnQgaXMgYmxvYiBmcmVlLCBmdWxs
IHVwc3RyZWFtCkxpbnV4IHN1cHBvcnQgaXMgZnVsbHkgdXBzdHJlYW0KRFZGUyBpcyBibG9iLWZy
ZWUsIGhhbmRsZWQgYnkgTGludXgKUFNDSSBmaXJtd2FyZSBmb3IgU3lzdGVtIE1hbmFnZW1lbnQs
IGJ1dCBCTDMxIGlzIGJlaW5nIHJldmVyc2UgZW5naW5lZXJlZCBhbmQgcHVzaGVkIHRvIG9mZmlj
aWFsIFRGLUEgcmVwb3MsIG9ubHkgQkwyLCBERFIgc2V0dXAgZmlybXdhcmVzLCBCTDMwIGFuZCBC
TDMwMSBhcmUgc3RpbGwgY2xvc2VkIHNvdXJjZQpHUFUgaXMgQkxPQiBPbmx5CkhXIFZpZGVvIERl
Y29kZXIgbmVlZHMgYSBmaXJtd2FyZSB0byBiZSBsb2FkZWQKCk5laWwKCj4gCj4gQmVzdCByZWdh
cmRzLiBTZXJnZXkuCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo+IAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
