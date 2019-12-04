Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFBD112B62
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 13:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLc1CFdUsYfUkTDbvw5K0x+bfOkwzpDeFtbCcxlK6Kk=; b=kIxkqHk5KiJ4Tc
	/cs/jMjBgQaUsGWCv8/Hv82K1Bq56aJ6GXQR4qAC52UB6bK8IbTBsX6xHE8vmI0I+pM6QwB7gspFT
	0XdEyFeMnnPQSNKMkIncSIpju4i8NpOk6Tx882clAs6B8lXtTT/IKsGLfiUZ7WvkmTsaIMkc7p8vT
	HJUOd1AN9XIdxH8f+4NSRMlw64/fzLohOWB4aJhq/cOJpAm6KSRxIL0vR3HPlENsbKc3VAE0/pY4C
	BJVA+5RApaD0zwShSEvgjXfQGdmFX3kI65I3vzUtG3dOkBKGoyzDNtsfaG7mETW4gadbwrt6+F++J
	u4ET3+H9k/VMw2VP0fQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icTgM-0003Bn-5j; Wed, 04 Dec 2019 12:23:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icTgF-0003BK-3t
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 12:22:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id g206so6802488wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 04:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zp1xZIk2Lsw+NCX6wtnOyZ/xu4hyPeZkMl7Hw1eYCxI=;
 b=yoRWc5xjynRJG3mOcMK1sc/jtrVT7ceP5ZOglZ/Mqpnyodwqe6tdz7anU1zcQf5jKd
 YPW8sl0djwD9ZgfjI86yhz9Q6/Wv0qp4TQye1o0VjQabl1hzpUvrXQLOhHE/9dZQ/Khs
 dbUPgEnJdwfVtBU31GIOJoM1ECVi6h9+n56oqpHwpioFUYy1+QBanRATCrFMB5Q/wvbu
 yL3HKWI0b4yR3Uy61tZSxJz9yNlz7RdR3CoI76MKEM5QAlfFCbrAz35fxLBmhSsXbTZc
 4S3FIhfYSwSFU2wEbLmGkSBoKgKzcSauSd8RxX+SQFKtuipXr6lf+3tedQ4IgGg2tyc1
 SKug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zp1xZIk2Lsw+NCX6wtnOyZ/xu4hyPeZkMl7Hw1eYCxI=;
 b=TVrnvih0/i1oWvE0Ea+qDEE4O0DcLGnaCJhdf50qLSigdABsiEruyJa4iYtTN7jNCa
 ibNaHR04JTSiELG8ZLX1IXttw7xp/det+1itFbwGP188ITe6qhuZAw/Odc2P+ABddGxn
 Pv3bDKkiB5JfEhhDD9aJFul8XIMMAcTNOYzkYITSpNjtYjTx0fUznBCvqDEmHYsvSpdA
 S5wK8kT/FabdMMK3CtLe4dQ1uHDmNcw+nci9mTg/T6SS57gW/T0AUaR077m8DhHKkdSX
 n+MFsHQG80jxGj+l3gxgapSAoPxdphpzMd/mRPoiyOPA+NjkasRcaZEBckVh7tTni8Zq
 XgKQ==
X-Gm-Message-State: APjAAAVc3OQc8UWf87nZYHdS4P+O43v7ChXzJvHjwdYq3pGMcIsPf/ou
 a24sHL63Hpo935UJX6KLv0L8WZYdgZSef3v7
X-Google-Smtp-Source: APXvYqxGW1mEEB2jy8/mAcOOHTcH+B+WfcafhoRjql7kjH7GCCa+6I4DCuer3jVCHwCc9pxJHCFeyA==
X-Received: by 2002:a1c:6485:: with SMTP id y127mr39028633wmb.19.1575462173471; 
 Wed, 04 Dec 2019 04:22:53 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id f1sm6255301wml.11.2019.12.04.04.22.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 04:22:52 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Marc Zyngier <maz@kernel.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <5e71ae8ec1ecb64544d131686f5405bb@www.loen.fr>
 <2ad4364a-1498-5a2d-d64b-8d07023cac33@forissier.org>
 <0626cdecce80f89caeee38ad26a91247@www.loen.fr>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <e673a266-0f07-9926-19e0-1316d31203f9@forissier.org>
Date: Wed, 4 Dec 2019 13:22:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <0626cdecce80f89caeee38ad26a91247@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_042255_218087_95626DF6 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi80LzE5IDExOjE4IEFNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gW3N3aXRjaGluZyBl
bWFpbCBhZGRyZXNzXQo+IAo+IEhpIEplcm9tZSwKPiAKPiBPbiAyMDE5LTEyLTA0IDA5OjAxLCBK
ZXJvbWUgRm9yaXNzaWVyIHdyb3RlOgo+PiBIaSBNYXJjLAo+Pgo+PiBPbiAxMi8zLzE5IDY6NDcg
UE0sIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IEhpIEplcm9tZSwKPj4+Cj4+PiBBZGRpbmcgVmlu
Y2Vuem8gKHdobyB3YXMgdGhlIGxhc3Qgb25lIHRvIG1lc3Mgd2l0aCB0aGUgVkRTTykuCj4+Pgo+
Pj4gT24gMjAxOS0xMi0wMyAxNTo0MywgSmVyb21lIEZvcmlzc2llciB3cm90ZToKPj4+PiBIaSwK
Pj4+Pgo+Pj4+IEhhcyBhbnlvbmUgc3VjY2Vzc2Z1bGx5IHJ1biBrZXJuZWwgdjUuMiBvciBsYXRl
ciBvbiBhIEhpS2V5OTYwIGJvYXJkPwo+Pj4+Cj4+Pj4gRm9yIHNvbWUgcmVhc29uLCBhbnl0aGlu
ZyBwYXN0IHY1LjEgZG9lc24ndCB3b3JrIGZvciBtZSBhbmQgSSBjb3VsZCBub3QKPj4+PiBmaWd1
cmUgb3V0IHdoeS4gVGhlIHN5bXB0b20gaXMgaXQgbmV2ZXIgZ2V0cyB0byB0aGUgbG9naW4gcHJv
bXB0LiBUaGUKPj4+PiByb290IEZTIGlzIGEgQnVpbGRyb290LWdlbmVyYXRlZCBvbmUsIGFuZCBw
cmlvciB0byByZWFjaGluZyB0aGUga2VybmVsCj4+Pj4gdGhlIGJvYXJkIHJ1bnMgVEYtQSwgT1At
VEVFLCBVRUZJIChlZGsyKSBhbmQgR3J1Yi4KPj4+Pgo+Pj4+IEkgdHJpZWQgcmVwbGFjaW5nIC9p
bml0IHdpdGggYSBzaGVsbCwgaW4gd2hpY2ggY2FzZSBJIGNhbiB0eXBlIGEKPj4+PiBjb21tYW5k
Cj4+Pj4gYnV0IHdoYXRldmVyIGl0IGlzIChldmVuIGEgc2ltcGxlICJscyIpLCB0aGUgY29tbWFu
ZCBoYW5ncyBvbiBleGl0Cj4+Pj4gYW5kIEkKPj4+PiBuZXZlciBnZXQgYmFjayB0byB0aGUgcHJv
bXB0Lgo+Pj4+Cj4+Pj4gVGhlbiBJIHN0YXJ0ZWQgYmlzZWN0aW5nLCB0aGF0IHdhcyBxdWl0ZSBw
YWluZnVsIGJ1dCBJIGZvdW5kIHNldmVyYWwKPj4+PiBwcm9ibGVtYXRpYyBjb21taXRzLiBJIGVu
ZGVkIHVwIHJldmVydGluZyB0aGUgZm9sbG93aW5nIChpbiB0aGlzIG9yZGVyKQo+Pj4+IHRvIGJl
IGFibGUgdG8gYm9vdCB2NS40Ogo+Pj4+Cj4+Pj4gMS4gImFybTY0OiB2ZHNvOiBTdWJzdGl0dXRl
IGdldHRpbWVvZmRheSgpIHdpdGggQyBpbXBsZW1lbnRhdGlvbiIKPj4+PiAyLiAiYXJtNjQ6IHZk
c286IEV4cGxpY2l0bHkgYWRkIGJ1aWxkLWlkIG9wdGlvbiIKPj4+PiAzLiAiYXJtNjQ6IGFyY2hf
dGltZXI6IEVuc3VyZSBjb3VudGVyIHJlZ2lzdGVyIHJlYWRzIG9jY3VyIHdpdGggc2VxbG9jawo+
Pj4+IMKgwqDCoCBoZWxkIgo+Pj4+IDQuICJhcm02NDogdmRzbzogUmVtb3ZlIHN0YWxlIGZpbGVz
IGZyb20gb2xkIGFzc2VtYmx5IGltcGxlbWVudGF0aW9uIgo+Pj4+Cj4+Pj4gU28gdGhlIG1haW4g
dGhpbmcgYXBwZWFycyB0byBiZSB0aGUgVkRTTyBzdHVmZiwgYnV0IGlmIEkgZG8gbm90IGFsc28K
Pj4+PiByZXZlcnQgdGhlIGFyY2hfdGltZXIgY29tbWl0IEkgZ2V0IGEga2VybmVsIHBhbmljOgo+
Pj4+Cj4+Pj4gW8KgwqDCoCA0LjY1NzExOF0gUnVuIC9pbml0IGFzIGluaXQgcHJvY2Vzcwo+Pj4+
IFvCoMKgwqAgNC42NjIzODBdIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBBdHRlbXB0ZWQg
dG8ga2lsbCBpbml0IQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhpdGNvZGU9
MHgwMDAwMDAwNAo+Pj4+IFvCoMKgwqAgNC42NzAwMzVdIENQVTogNyBQSUQ6IDEgQ29tbTogaW5p
dCBOb3QgdGFpbnRlZCA1LjQuMC0wMDAwMy0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGcyMjNiMTJjMDMzZmIgIzI1OAo+Pj4+IFvCoMKgwqAgNC42NzczMzhdIEhhcmR3YXJlIG5h
bWU6IEhpS2V5OTYwIChEVCkKPj4+PiBbwqDCoMKgIDQuNjgxMjUzXSBDYWxsIHRyYWNlOgo+Pj4+
IFvCoMKgwqAgNC42ODM3MDBdwqAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MTQ4Cj4+Pj4gW8KgwqDC
oCA0LjY4NzM1NV3CoCBzaG93X3N0YWNrKzB4MjQvMHgzMAo+Pj4+IFvCoMKgwqAgNC42OTA2NjRd
wqAgZHVtcF9zdGFjaysweGJjLzB4MTAwCj4+Pj4gW8KgwqDCoCA0LjY5NDA1OF3CoCBwYW5pYysw
eDE2OC8weDM2OAo+Pj4+IFvCoMKgwqAgNC42OTcxMDVdwqAgZG9fZXhpdCsweGExMC8weGEyOAo+
Pj4+IFvCoMKgwqAgNC43MDAzMjNdwqAgZG9fZ3JvdXBfZXhpdCsweDQ4LzB4YTgKPj4+PiBbwqDC
oMKgIDQuNzAzODkyXcKgIGdldF9zaWduYWwrMHhlYy8weDg0OAo+Pj4+IFvCoMKgwqAgNC43MDcy
ODddwqAgZG9fbm90aWZ5X3Jlc3VtZSsweDIxYy8weDQ4MAo+Pj4+IFvCoMKgwqAgNC43MTEyOTBd
wqAgd29ya19wZW5kaW5nKzB4OC8weDEwCj4+Pj4gW8KgwqDCoCA0LjcxNDY4OV0gU01QOiBzdG9w
cGluZyBzZWNvbmRhcnkgQ1BVcwo+Pj4+IFvCoMKgwqAgNC43MTg2MDddIEtlcm5lbCBPZmZzZXQ6
IGRpc2FibGVkCj4+Pj4gW8KgwqDCoCA0LjcyMjA4OV0gQ1BVIGZlYXR1cmVzOiAweDAwMDIsMjEw
ODIwMDQKPj4+PiBbwqDCoMKgIDQuNzI2MDkwXSBNZW1vcnkgTGltaXQ6IG5vbmUKPj4+PiBbwqDC
oMKgIDQuNzI5MTQ1XSAtLS1bIGVuZCBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogQXR0ZW1w
dGVkIHRvIGtpbGwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGluaXQhIGV4aXRj
b2RlPTB4MDAwMDAwMDQgXS0tLQo+Pj4+Cj4+Pj4gQW55IGlkZWEgd2hhdCBjb3VsZCBiZSB3cm9u
ZyB3aXRoIG15IHNldHVwPwo+Pj4KPj4+IFBvc3RpbmcgdGhlIHJlbGV2YW50IHNlY3Rpb25zIG9m
IHlvdXIga2VybmVsIG1lc3NhZ2VzIHdvdWxkIGJlIGEgZ29vZAo+Pj4gc3RhcnQuCj4+Cj4+IE5v
dCBzdXJlIHdoYXQncyByZWxldmFudCwgc28gaGVyZSBhcmUgdGhlIGZ1bGwgYm9vdCBsb2dzOiB2
NS4xIFsxXSwKPj4gYm9vdHMgZmluZTsgdjUuNCBbMl0sIGhhbmdzIHdoZW4gbGF1bmNoaW5nIC9p
bml0IChhY3R1YWxseSBzZWVtcyB0byBiZQo+PiBzdHVjayBpbiBzb21lIGtpbmQgb2YgYWN0aXZl
IGxvb3AganVkZ2luZyBieSB0aGUgIlRIRVJNQUwgQUxBUk0iCj4+IG1lc3NhZ2UpOyB2NS40ICsg
dGhlIGFib3ZlIGNvbW1pdHMgcmV2ZXJ0ZWQgWzNdLCBib290cyBmaW5lIGFnYWluCj4+IChwbGVh
c2UgaWdub3JlIHRoZSBtZXNzYWdlICJvcHRlZTogUFRBX0NNRF9HRVRfREVWSUNFUyBpbnZva2Ug
ZnVuY3Rpb24KPj4gZXJyOiBmZmZmMDAwNiIgYXMgd2VsbCBhcyB0aGUgZXJyb3JzIGFib3V0IC9k
ZXYvdGVlKiwgdGhleSBhcmUgdW5yZWxhdGVkCj4+IGFuZCBhcmUgZml4ZWQgaW4gLW5leHQpLgo+
Pgo+PiBbMV0gaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcGo4dGI0UXIKPj4gWzJdIGh0dHBzOi8vcGFz
dGViaW4uY29tL3NRVE1ROHd1Cj4+IFszXSBodHRwczovL3Bhc3RlYmluLmNvbS81OFl5Y1NGNAo+
IAo+IEl0IGlzIGFtdXNpbmcgdGhhdCByZXZlcnRpbmcgdGhlIFZEU08gcGF0Y2hlcyBmaXhlcyBh
bnl0aGluZywgYXMgeW91cgo+IEhXIGlzIGFmZmVjdGVkIGJ5IEFSTSBlcnJhdHVtIDg1ODkyMSwg
Zm9yIHdoaWNoIHdlIHNob3VsZCAqZGlzYWJsZSogdGhlCj4gVkRTTyBhbHRvZ2V0aGVyICh0aGUg
Y291bnRlciBpcyBub3QgcmVsaWFibGUgYW5kIHdlIGhhdmUgdG8gd29ya2Fyb3VuZAo+IGl0IGlu
IHRoZSBrZXJuZWwgYW55d2F5LCBoZW5jZSBubyBmYXN0IGdldHRpbWVvZmRheSBmb3IgeW91KS4K
PiAKPiBJIGJldCB0aGF0IHRoZSBjb252ZXJzaW9uIHRvIHRoZSBnZW5lcmljIFZEU08gaGFzIHJl
c3VsdGVkIGluIGEgbG9zcwo+IG9mIHRoZSBWRFNPIGRpc2FibGluZyB3aGVuIG9ubHkgYSBzZWNv
bmRhcnkgQ1BVIGlzIGFmZmVjdGVkLi4uCj4gCj4gQ2FuIHlvdSBwbGVhc2UgdHJ5IHRoZSBmb2xs
b3dpbmcgaGFjayBmb3Igc2l6ZT8gaXQgaXMgYSB0ZXJyaWJsZSBoYWNrLAo+IGJ1dCBpdCBzaG91
bGQgZ2l2ZSB1cyBhbiBpbmRpY2F0aW9uIG9mIHdoZXRoZXIgbXkgaHVuY2ggaXMgY29ycmVjdAo+
IG9yIG5vdC4gSWYgdGhpcyB3b3Jrcywgd2UnbGwgbG9vayBhdCB0aGUgcmVhbCBzb2x1dGlvbi4g
T3RoZXJ3aXNlLCB3ZSdsbAo+IGtlZXAgZGlnZ2luZy4KCk5vcGUsIGRvZXNuJ3QgaGVscCB1bmZv
cnR1bmF0ZWx5IDotLwpCb290IGxvZyBmb3IgdjUuNCArIHRoaXMgcGF0Y2g6IGh0dHBzOi8vcGFz
dGViaW4uY29tLzlSbVZTTldFCgotLSAKSmVyb21lCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
