Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DD4120734
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 14:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sHjuEbG2mL+V6zzEMWkwZPH9jMEZuSqFtyeZx5B4ZQA=; b=j3UUcusklg0piG+PMhjeb2V+m
	99LO5GmsNZKxzd6e/afEtbcMeNQvdkqo5/B07hncyAQGUgnYuCt4nFFGgIta2zSHA+3lXTbzfMgXq
	GBKPWG8kCIfsgPaAuz8TAw+NaheZyXN3UegWkKAgkiLkAK8lXlgYARTDqjYbr+BepkZBOb25Y5CsM
	/8yxYyr3CcSnxIi+SYB2E5JgDJrlOj8qXWTmQR6i6MNWeqa4PmFwEkUfwQxBaez1JTPa041TKpZXX
	xs3ya44AuR/aCGaAu/CPAZeCMQE6gIyuw8TToR6Ld0Yk+23eG34q8+/TIbU+vFlYmJXAZorSGuwQb
	6K/Yi4Ceg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqS8-00034U-Vn; Mon, 16 Dec 2019 13:30:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqRw-00032r-WE; Mon, 16 Dec 2019 13:30:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so4467456plp.7;
 Mon, 16 Dec 2019 05:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=c6k2uM/4KQBTBeEC+JGE88itWoiZaxFzfzDFaOUPwN4=;
 b=WU2LMml9ybURvvoAkKn84Ls2pu5xuXxxs5xMy9YIAIuH+QpEBES7Fx3AEg2Awx0eZC
 eOP9lj+obKAHaeQTG8x7AKkZRmJVsKhTCrmDoU+lTu4fD7hbjbbB0TDh8anWmiR4NE8Q
 0vRnJFCI88IlQ/i2lgF5OkFvvmdA4xSVQw46d82pfn1UYopKvLJdYUDFZEOie4D29ofs
 jhr83+VsoL5WyjrRsBkdTtIISTH1IF0nFzXfQYAZkctwUem7bQamJ24XBDBIj+xvPmhA
 AGv5C2QbcM9PBGJxMstdHAuE0iPKFOisBpolMprqccxSmygVz+ynNZOFYWIQiWOsIKW0
 X9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=c6k2uM/4KQBTBeEC+JGE88itWoiZaxFzfzDFaOUPwN4=;
 b=l3aVgRH9G13XOdiXbfHROffox0aOaeXWgo12i3Ujia2smp9gSf836OWqVRHpvBRm1A
 tbUXB06cfXL1iH/MHBj0xQJxMchbUuXKg+wQ0dm2qIijLWvUulKrryNItz2vWkNaqveF
 z4KwserLiMIQQUgIrrQrev5shpG8MFkEX8PBoeaY6gLXXNaWDhJJjq6yGm0kgp7k+rzm
 Elj6NYdRcYBIdB44brcMDiUqgqj990Tty94eu/cGUmReN8GtqmcNTa5AeupAO0j62tGk
 871tROgHO/k0w4lVsq2LckK30EnV3EO2EslzNdM/YTFQIDwcPc2ruQX5OJLa7z/wKScg
 sJBw==
X-Gm-Message-State: APjAAAUb2x71jU2K3N6g8Gxkvqqcn5EVfZCl9aAX9zQ7RgbVcSy0mKtx
 6i51upLDKUFE9okrUKabbOE=
X-Google-Smtp-Source: APXvYqyJ6TZHpyv2Kz7CGI3OHria7rp9vvxislgxfsCZuO3kdTuBGJfZKrdme0Kw7m9+Qlmwh7TBjw==
X-Received: by 2002:a17:902:d915:: with SMTP id
 c21mr15807890plz.295.1576503011717; 
 Mon, 16 Dec 2019 05:30:11 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 13sm5365907pfi.78.2019.12.16.05.30.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 05:30:10 -0800 (PST)
Subject: Re: [PATCH v5 2/4] dt-bindings: watchdog: add new binding for meson
 secure watchdog
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>
References: <1576153187-28378-1-git-send-email-xingyu.chen@amlogic.com>
 <1576153187-28378-3-git-send-email-xingyu.chen@amlogic.com>
 <CAFBinCBHLqgPExPsVaSWdSOr0Oj-jeYa4Z82U-pJ=fS+D1wGnA@mail.gmail.com>
 <f7b0afe7-e317-2422-de7e-878837f9f238@amlogic.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a8f5ab1d-264c-5b2c-e72b-3774b9f44c22@roeck-us.net>
Date: Mon, 16 Dec 2019 05:30:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <f7b0afe7-e317-2422-de7e-878837f9f238@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_053013_062870_CC25A774 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 linux-amlogic@lists.infradead.org, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTUvMTkgMTA6MDMgUE0sIFhpbmd5dSBDaGVuIHdyb3RlOgo+IEhpLCBNYXJ0aW4KPiAK
PiBTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkuCj4gCj4gT24gMjAxOS8xMi8xMyA0OjA1LCBNYXJ0
aW4gQmx1bWVuc3RpbmdsIHdyb3RlOgo+PiBIaSBYaW5neXUgYW5kIFJvYiwKPj4KPj4gT24gVGh1
LCBEZWMgMTIsIDIwMTkgYXQgMToyMCBQTSBYaW5neXUgQ2hlbiA8eGluZ3l1LmNoZW5AYW1sb2dp
Yy5jb20+IHdyb3RlOgo+PiBbLi4uXQo+Pj4gK2V4YW1wbGVzOgo+Pj4gK8KgIC0gfAo+Pj4gK8Kg
wqDCoCB3YXRjaGRvZyB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYW1s
b2dpYyxtZXNvbi1zZWMtd2R0IjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgdGltZW91dC1zZWMg
PSA8NjA+Owo+Pj4gK8KgwqDCoCB9Owo+PiBpbiB2MyBvZiB0aGlzIHBhdGNoIFJvYiBjb21tZW50
ZWQgdGhhdCB0aGVyZSBzaG91bGRuJ3QgYmUgYW4gT0Ygbm9kZQo+PiBpZiB0aGVyZSBhcmUgbm8g
YWRkaXRpb25hbCBwcm9wZXJ0aWVzCj4+IHdpdGggdGltZW91dC1zZWMgdGhlcmUncyBub3cgYW4g
YWRkaXRpb25hbCBwcm9wZXJ0eSBzbyBteQo+PiB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgaXQncyBm
aW5lIHRvIGhhdmUgYW4gT0Ygbm9kZQo+IFlvdXIgdW5kZXJzdGFuZGluZyBpcyBjb3JyZWN0Lgo+
Pgo+PiB3aGF0IEkgZG9uJ3QgdW5kZXJzdGFuZCB5ZXQgaXMgd2hlcmUgdGhpcyBub2RlIHNob3Vs
ZCBiZSBwbGFjZWQuCj4+IGlzIGl0IHN1cHBvc2VkIHRvIGJlIGEgY2hpbGQgbm9kZSBvZiB0aGUg
c2VjdXJlIG1vbml0b3Igbm9kZSAoZm9yCj4+IHdoaWNoIHdlIGFscmVhZHkgaGF2ZSBhIGJpbmRp
bmcgaGVyZToKPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Zpcm13YXJlL21l
c29uL21lc29uX3NtLnR4dCkgb3IKPj4gd2hlcmUgZWxzZSB3b3VsZCB3ZSBwbGFjZSBpdCBpbnNp
ZGUgdGhlIC5kdHM/Cj4gSU1PLMKgIEFsdGhvdWdoIHRoZSB3YXRjaGRvZyBub2RlIG5lZWQgdG8g
cmVmZXJlbmNlIHRoZSBtZXNvbl9zbSBub2RlLCB0aGVyZSBpcyBubwo+IGJ1cy1saWtlIGRlcGVu
ZGVuY2llcyBiZXR3ZWVuIHRoZSBkZXZpY2VzIHdoaWNoIHRoZSB0d28gbm9kZXMgY29ycmVzcG9u
ZGluZyB0by4KPiBzbyBpIHRoaW5rIHRoYXQgdGhlIHdhdGNoZG9nIG5vZGUgYXMgY2hpbGQgbm9k
ZSBvZiBtZXNvbl9zbSBtYXliZSBub3QgYXBwcm9wcmlhdGUuCgpUaGUgd2F0Y2hkb2cgZHJpdmVy
IG5lZWRzIHRoZSBtZXNvbiBTTSdzIGR0IG5vZGUsIGFuZCBpdCBkZXBlbmRzIG9uIHRoZSBleGlz
dGVuY2UKb2YgdGhhdCBub2RlLiBUaGF0IHNlZW1zIGVub3VnaCBvZiBhIHJlbGF0aW9uc2hpcCB0
byB3YXJyYW50IGhhdmluZyBpdCBhcyBjaGlsZCBub3RlLgoKR3VlbnRlcgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
