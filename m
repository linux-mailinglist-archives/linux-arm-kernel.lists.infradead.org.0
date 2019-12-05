Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B04D113FE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 12:03:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t5lki1U9skd+62JZ7wXCDcfO7PDrmxIeCFBeGtkbzFs=; b=UmbNF3q6n04jPQMhUaygNxrfw7
	e3M3xCu0LcVNBwDYq2djsu4A5Gp4zxlKHWoY5GhBiX8B7fCuXbtodbks2BHTtwaoTuMfLkWXgwLu8
	QdQookg8X/1k6RZVhBZ1v+IssWHicW8jnb9bRhuyT6j9YId7YVn0HLbnRoDlN72uS/LijTIrskCfa
	c4s2lHfnuH4GN9/K1ZzoLhpuJBxURj4kF37NS05hOdQFHqaTZfeUY8gtBLxDbjM9Nh3pzc8ZsM1Sd
	htGYMLDizKCzEBgTzLN6csGVe89WxcCI8NjfWJ6LXKA7diMHFwD7/GJxx48mT9OPPaMrQdy0DdQXJ
	MO2rnvGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icour-00015E-8e; Thu, 05 Dec 2019 11:03:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icoug-00014h-Kt
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 11:03:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id f4so7056789wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 03:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ll+ZtZqLRijkfOMt87UUlKzqpetlzgFXOkJtkxIK6vI=;
 b=VXqEvpic35wnyYpK3MKRzoGflEHuC/+9gT2bCRjdLD0RAeKRbWCkzUiB7t5/40X1hX
 TPfxZxXUKLUrX9ZP4bNf8UpSwVFiZBbBK5dRNVk78i9qd39lPHYWSZ4KpFjJ42H3e9gS
 z+P08eLk3qv6yqNQyvVY7G3nzDYjLfa2fSrxmgtCmWTx7qx16woFqBwOobX0AiXK0cXx
 0Xvs/hQ7ooij8f4m+fsFMAjZqq8KNGYqO0wmaYS4QLp41Rz8v/iKfOrUO9Wo+16ZqcDr
 8SK5+XBRJ7C+l3RbYEm34LpcAxoMtv0FvqI6KVXvQa1FbdHncGBH+pICgzzvstwy3r/G
 LWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ll+ZtZqLRijkfOMt87UUlKzqpetlzgFXOkJtkxIK6vI=;
 b=MWGMxQIrSrTQ9DZZPCoo9GdAgD5XwVR179+4c8WKUBT3EXDdY83mJuX0qY36N/jIUL
 08z4bmX4bNOo3s45QbgvZGai805bNN29R+CupsJ3yaDKEh5+RJgzD1C3tdUBLZ0motyF
 Lp9SbWWgfj+irMMzm3kvGMd4eil2jh2nR3e+ZuaixNy3ZdBA9ktyVtrGwusufVHThazK
 7WjaXKJsG2PBYszUdm3X1grN/ifRPKCco1EdtKd2wkiUW5jHMXy3lihVzn6UqgGC5tNv
 datH199ycvf12IE/pM5xrj/dUf/fLOQt7RIJNXLKkqGvv08lG/c0kmwC5fMGA41YWezp
 AjYw==
X-Gm-Message-State: APjAAAVJasIigtEZEZd5ALFFJOUIZNQN74Z5HtspTy8JUvpiAut7haUo
 u6IJx68j4R6v/euygEY9r78KBQ==
X-Google-Smtp-Source: APXvYqyIRwj1nXM2zCeMTzAQ4xNTqJSTZ7e3VmBNn2JjMioUXR04pAYD0HF8HBsaHFNFCfs4+VsX5Q==
X-Received: by 2002:a1c:c90e:: with SMTP id f14mr4507943wmb.47.1575543792686; 
 Thu, 05 Dec 2019 03:03:12 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6?
 ([2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6])
 by smtp.googlemail.com with ESMTPSA id n1sm11710937wrw.52.2019.12.05.03.03.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 03:03:12 -0800 (PST)
Subject: Re: [PATCH v2 4/5] thermal: stm32: improve temperature resolution
To: Pascal Paillet <p.paillet@st.com>, rui.zhang@intel.com,
 edubezval@gmail.com, amit.kucheria@verdurent.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, david.hernandezsanchez@st.com,
 horms+renesas@verge.net.au, wsa+renesas@sang-engineering.com,
 linux-pm@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191104133020.8820-1-p.paillet@st.com>
 <20191104133020.8820-5-p.paillet@st.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <25652640-90ed-2b62-c06a-728bfc771c46@linaro.org>
Date: Thu, 5 Dec 2019 12:03:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191104133020.8820-5-p.paillet@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_030314_890520_8081749A 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gMDQvMTEvMjAxOSAxNDozMCwgUGFzY2FsIFBhaWxsZXQgd3JvdGU6Cj4gQ3VycmVudGx5LCB0
aGUgdGVtcGVyYXR1cmUgaXMgcm91bmRlZCBieSAxIG9yIDIgZGVncmVlcy4KPiBDaGFuZ2UgdGhl
IHdheSBvZiBjb21wdXRpbmcgdG8gYXZvaWQgcm91bmRzLgo+IEFsc28gc2ltcGxpZnkgdGhlIHNh
bXBsaW5nIHRpbWUgbWFuYWdlbWVudC4KCkdpdmUgbW9yZSBkZXRhaWxzIGFib3V0IHRoZSBjaGFu
Z2VzIGluIG9yZGVyIHRvIGxldCB1cyB1bmRlcnN0YW5kIHRoZW0uCgo+IFNpZ25lZC1vZmYtYnk6
IFBhc2NhbCBQYWlsbGV0IDxwLnBhaWxsZXRAc3QuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3RoZXJt
YWwvc3Qvc3RtX3RoZXJtYWwuYyB8IDU4ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3N0L3N0bV90aGVybWFsLmMgYi9kcml2ZXJz
L3RoZXJtYWwvc3Qvc3RtX3RoZXJtYWwuYwo+IGluZGV4IGNiNzIyNTJmMjgwMC4uOTk4NjcxNmIx
N2MxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9zdC9zdG1fdGhlcm1hbC5jCj4gKysr
IGIvZHJpdmVycy90aGVybWFsL3N0L3N0bV90aGVybWFsLmMKPiBAQCAtNTksNyArNTksNiBAQAo+
ICAKPiAgLyogTGVzcyBzaWduaWZpY2FudCBiaXQgcG9zaXRpb24gZGVmaW5pdGlvbnMgKi8KPiAg
I2RlZmluZSBUUzFfVDBfUE9TCQkxNgo+IC0jZGVmaW5lIFRTMV9TTVBfVElNRV9QT1MJMTYKPiAg
I2RlZmluZSBUUzFfSElUVEhEX1BPUwkJMTYKPiAgI2RlZmluZSBUUzFfTElUVEhEX1BPUwkJMAo+
ICAjZGVmaW5lIEhTUkVGX0NMS19ESVZfUE9TCTI0Cj4gQEAgLTgzLDE1ICs4MiwxMCBAQAo+ICAj
ZGVmaW5lIE9ORV9NSFoJCQkxMDAwMDAwCj4gICNkZWZpbmUgUE9MTF9USU1FT1VUCQk1MDAwCj4g
ICNkZWZpbmUgU1RBUlRVUF9USU1FCQk0MAo+IC0jZGVmaW5lIFRTMV9UMF9WQUwwCQkzMAo+IC0j
ZGVmaW5lIFRTMV9UMF9WQUwxCQkxMzAKPiArI2RlZmluZSBUUzFfVDBfVkFMMAkJMzAwMDAgIC8q
IDMwIGNlbHNpdXMgKi8KPiArI2RlZmluZSBUUzFfVDBfVkFMMQkJMTMwMDAwIC8qIDEzMCBjZWxz
aXVzICovCj4gICNkZWZpbmUgTk9fSFdfVFJJRwkJMAo+IC0KPiAtLyogVGhlIFRoZXJtYWwgRnJh
bWV3b3JrIGV4cGVjdHMgbWlsbGlkZWdyZWVzICovCj4gLSNkZWZpbmUgbWNlbHNpdXModGVtcCkJ
CSgodGVtcCkgKiAxMDAwKQo+IC0KPiAtLyogVGhlIFNlbnNvciBleHBlY3RzIG9DIGRlZ3JlZXMg
Ki8KPiAtI2RlZmluZSBjZWxzaXVzKHRlbXApCQkoKHRlbXApIC8gMTAwMCkKPiArI2RlZmluZSBT
QU1QTElOR19USU1FCQkxNQo+ICAKPiAgc3RydWN0IHN0bV90aGVybWFsX3NlbnNvciB7Cj4gIAlz
dHJ1Y3QgZGV2aWNlICpkZXY7Cj4gQEAgLTI1OSwyNyArMjUzLDE3IEBAIHN0YXRpYyBpbnQgc3Rt
X3RoZXJtYWxfY2FsY3VsYXRlX3RocmVzaG9sZChzdHJ1Y3Qgc3RtX3RoZXJtYWxfc2Vuc29yICpz
ZW5zb3IsCj4gIAkJCQkJICAgaW50IHRlbXAsIHUzMiAqdGgpCj4gIHsKPiAgCWludCBmcmVxTTsK
PiAtCXUzMiBzYW1wbGluZ190aW1lOwo+IC0KPiAtCS8qIFJldHJpZXZlIHRoZSBudW1iZXIgb2Yg
cGVyaW9kcyB0byBzYW1wbGUgKi8KPiAtCXNhbXBsaW5nX3RpbWUgPSAocmVhZGxfcmVsYXhlZChz
ZW5zb3ItPmJhc2UgKyBEVFNfQ0ZHUjFfT0ZGU0VUKSAmCj4gLQkJCVRTMV9TTVBfVElNRV9NQVNL
KSA+PiBUUzFfU01QX1RJTUVfUE9TOwo+ICAKPiAgCS8qIEZpZ3VyZSBvdXQgdGhlIENMS19QVEFU
IGZyZXF1ZW5jeSBmb3IgYSBnaXZlbiB0ZW1wZXJhdHVyZSAqLwo+IC0JZnJlcU0gPSAoKHRlbXAg
LSBzZW5zb3ItPnQwKSAqIHNlbnNvci0+cmFtcF9jb2VmZikKPiAtCQkgKyBzZW5zb3ItPmZtdDA7
Cj4gLQo+IC0JZGV2X2RiZyhzZW5zb3ItPmRldiwgIiVzOiBmcmVxTSBmb3IgdGhyZXNob2xkID0g
JWQgSHoiLAo+IC0JCV9fZnVuY19fLCBmcmVxTSk7Cj4gKwlmcmVxTSA9ICgodGVtcCAtIHNlbnNv
ci0+dDApICogc2Vuc29yLT5yYW1wX2NvZWZmKSAvIDEwMDAgKwo+ICsJCXNlbnNvci0+Zm10MDsK
PiAgCj4gIAkvKiBGaWd1cmUgb3V0IHRoZSB0aHJlc2hvbGQgc2FtcGxlIG51bWJlciAqLwo+IC0J
KnRoID0gY2xrX2dldF9yYXRlKHNlbnNvci0+Y2xrKTsKPiArCSp0aCA9IGNsa19nZXRfcmF0ZShz
ZW5zb3ItPmNsaykgKiBTQU1QTElOR19USU1FIC8gZnJlcU07Cj4gIAlpZiAoISp0aCkKPiAgCQly
ZXR1cm4gLUVJTlZBTDsKPiAgCj4gLQkqdGggPSAqdGggLyBmcmVxTTsKPiAtCj4gLQkqdGggKj0g
c2FtcGxpbmdfdGltZTsKPiArCWRldl9kYmcoc2Vuc29yLT5kZXYsICJmcmVxTT0lZCBIeiwgdGhy
ZXNob2xkPTB4JXgiLCBmcmVxTSwgKnRoKTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IEBAIC0z
NzEsNDAgKzM1NSwyNiBAQCBzdGF0aWMgaW50IHN0bV90aGVybWFsX3NldF90cmlwcyh2b2lkICpk
YXRhLCBpbnQgbG93LCBpbnQgaGlnaCkKPiAgc3RhdGljIGludCBzdG1fdGhlcm1hbF9nZXRfdGVt
cCh2b2lkICpkYXRhLCBpbnQgKnRlbXApCj4gIHsKPiAgCXN0cnVjdCBzdG1fdGhlcm1hbF9zZW5z
b3IgKnNlbnNvciA9IGRhdGE7Cj4gLQl1MzIgc2FtcGxpbmdfdGltZTsKPiArCXUzMiBwZXJpb2Rz
Owo+ICAJaW50IGZyZXFNLCByZXQ7Cj4gIAo+ICAJaWYgKHNlbnNvci0+bW9kZSAhPSBUSEVSTUFM
X0RFVklDRV9FTkFCTEVEKQo+ICAJCXJldHVybiAtRUFHQUlOOwo+ICAKPiAtCS8qIFJldHJpZXZl
IHRoZSBudW1iZXIgb2Ygc2FtcGxlcyAqLwo+IC0JcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHNl
bnNvci0+YmFzZSArIERUU19EUl9PRkZTRVQsIGZyZXFNLAo+IC0JCQkJIChmcmVxTSAmIFRTMV9N
RlJFUV9NQVNLKSwgU1RBUlRVUF9USU1FLAo+IC0JCQkJIFBPTExfVElNRU9VVCk7Cj4gLQo+ICsJ
LyogUmV0cmlldmUgdGhlIG51bWJlciBvZiBwZXJpb2RzIHNhbXBsZWQgKi8KPiArCXJldCA9IHJl
YWRsX3JlbGF4ZWRfcG9sbF90aW1lb3V0KHNlbnNvci0+YmFzZSArIERUU19EUl9PRkZTRVQsIHBl
cmlvZHMsCj4gKwkJCQkJIChwZXJpb2RzICYgVFMxX01GUkVRX01BU0spLAo+ICsJCQkJCSBTVEFS
VFVQX1RJTUUsIFBPTExfVElNRU9VVCk7Cj4gIAlpZiAocmV0KQo+ICAJCXJldHVybiByZXQ7Cj4g
IAo+IC0JaWYgKCFmcmVxTSkKPiAtCQlyZXR1cm4gLUVOT0RBVEE7Cj4gLQo+IC0JLyogUmV0cmll
dmUgdGhlIG51bWJlciBvZiBwZXJpb2RzIHNhbXBsZWQgKi8KPiAtCXNhbXBsaW5nX3RpbWUgPSAo
cmVhZGxfcmVsYXhlZChzZW5zb3ItPmJhc2UgKyBEVFNfQ0ZHUjFfT0ZGU0VUKSAmCj4gLQkJCVRT
MV9TTVBfVElNRV9NQVNLKSA+PiBUUzFfU01QX1RJTUVfUE9TOwo+IC0KPiAtCS8qIEZpZ3VyZSBv
dXQgdGhlIG51bWJlciBvZiBzYW1wbGVzIHBlciBwZXJpb2QgKi8KPiAtCWZyZXFNIC89IHNhbXBs
aW5nX3RpbWU7Cj4gLQo+ICAJLyogRmlndXJlIG91dCB0aGUgQ0xLX1BUQVQgZnJlcXVlbmN5ICov
Cj4gLQlmcmVxTSA9IGNsa19nZXRfcmF0ZShzZW5zb3ItPmNsaykgLyBmcmVxTTsKPiArCWZyZXFN
ID0gKGNsa19nZXRfcmF0ZShzZW5zb3ItPmNsaykgKiBTQU1QTElOR19USU1FKSAvIHBlcmlvZHM7
Cj4gIAlpZiAoIWZyZXFNKQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiAtCWRldl9kYmcoc2Vu
c29yLT5kZXYsICIlczogZnJlcU09JWRcbiIsIF9fZnVuY19fLCBmcmVxTSk7Cj4gLQo+ICAJLyog
RmlndXJlIG91dCB0aGUgdGVtcGVyYXR1cmUgaW4gbWlsaSBjZWxzaXVzICovCj4gLQkqdGVtcCA9
IG1jZWxzaXVzKHNlbnNvci0+dDAgKyAoKGZyZXFNIC0gc2Vuc29yLT5mbXQwKSAvCj4gLQkJCSBz
ZW5zb3ItPnJhbXBfY29lZmYpKTsKPiArCSp0ZW1wID0gKGZyZXFNIC0gc2Vuc29yLT5mbXQwKSAq
IDEwMDAgLyBzZW5zb3ItPnJhbXBfY29lZmYgKyBzZW5zb3ItPnQwOwo+ICAKPiAgCXJldHVybiAw
Owo+ICB9Cj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6
Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0
ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGlu
YXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
