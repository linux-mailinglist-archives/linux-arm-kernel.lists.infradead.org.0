Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE80DA7E38
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 10:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5luNg2+Zd+801FBGGueIMVORMlYXD7MobatSAqCoHro=; b=ONYpmYLUBOJFne
	J0jY5/iCbfN5Dyo+4FvA3enowGGmWSVeZEaO4+5OobkwT6AvjJVMqVHjs0Km+YDf33RvLESKV8Ash
	ZRWIwdp1YwcN/DWR6Vz8QsVtKdJ1ECqkcfK/iiRY9gJKtpiba6APe2dh4O1XKk3LAwSH3q3Kz6yNT
	rb0pivFYBs3wVX4g6IMMDG3kwGmVYoRQ/tYByrznUQOQ4qAX+E/S9hcLrBcI1tHwJKGVuLMZxOfKC
	H8VFt7L2IEeK3JF18zN6rL59YheOI4jzXv35Zn4gpKO1CoVHmBlXODZWse2WA5L67kzaWd48zYbqt
	ywRKBR35uM5KcxrPhXSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Qvc-0003LR-Qf; Wed, 04 Sep 2019 08:46:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5QvO-0003L2-Dc
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 08:45:59 +0000
Received: by mail-wm1-x343.google.com with SMTP id r195so2618276wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 01:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=UjxPLpoRTJDahkA20/YcDxWDLvHQIg0O7GSl3PV0lsA=;
 b=WcrfGicsOynEl7OkjgRdiLsuOPydRuyRn+4n1s6rO21+LFfWOpl0FghRZJI1Ef98WI
 cWd+g0HUb99J67J8QlASd1rE76yYeW9uBqbfIqS/d3FU89IAUFCJFCgAYjnxLrzGsvsH
 f/Fsj9E7guyAxHJIwOr7DNZAjKYtYGUdNWefvJVfSLG2fhs799yW7lxXp9UV/xfuQRmR
 +rpqBrqUxrCI9YPJu0Hi1uVMU4Js15p7OB2AKSdxSZN368zykUol1jt3VtUiXOrXjBct
 JuMo+E1yCHy6g0vZ+b1nDxb0b5JO+BnFpwgeeisQJtIyuYm7GmY0AzHU5irTfagIpLmu
 +oAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=UjxPLpoRTJDahkA20/YcDxWDLvHQIg0O7GSl3PV0lsA=;
 b=Niruurg0laC08MLGowm7VRHQATrTywi5HtDL+z1W+rsnOI7scWX2R41bT4dXDNC1MJ
 WmzRLLh4LJerrHBB3peStejCzyUNeMni+pQ0sDtI/ujkK3iGhvwA7QwdzWya/hb/cx1E
 u7LinmX1QFxuFrKJaWZ1zj8ZX9iKj3BBvVqY6vmm/je9j59Sfgan2axfhQS8C6+mbySC
 hkyPI2csgTG7X4TBLdiw/1z4KV5QqGt9RA59C9SeY/xywsCwxw2rmESJbZ5eKjbijZur
 emF/m8yojLX9VcA1OFxTk499yBgt5MfVqHakVR3gny3xOMgD9ImGQN/R67RKaxiamN+C
 cYKw==
X-Gm-Message-State: APjAAAXT4YEXwjX+OBe2No01eXHHCe6TZdzA+lwGalVj6zmFQItgCeU/
 2cUxIq/EkUSIZtsf+mH2IyJ0jw==
X-Google-Smtp-Source: APXvYqzgk+6NoC5ihZJP9WaAtvy/AF4VregIt4YQm3V0VC3hTz2SNpcE7xwKl4SyuMFlT5hJt8A/TA==
X-Received: by 2002:a1c:1aca:: with SMTP id a193mr3556661wma.120.1567586756696; 
 Wed, 04 Sep 2019 01:45:56 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id c132sm3367486wme.27.2019.09.04.01.45.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 01:45:56 -0700 (PDT)
Date: Wed, 4 Sep 2019 09:45:54 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/1] soc: qcom: geni: Provide parameter error checking
Message-ID: <20190904084554.GF26880@dell>
References: <20190903135052.13827-1-lee.jones@linaro.org>
 <20190904031922.GC574@tuxbook-pro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904031922.GC574@tuxbook-pro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_014558_488842_2A170893 
X-CRM114-Status: GOOD (  31.72  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwMyBTZXAgMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBUdWUgMDMg
U2VwIDA2OjUwIFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBXaGVuIGJvb3Rpbmcg
d2l0aCBBQ1BJLCB0aGUgR2VuaSBTZXJpYWwgRW5naW5lIGlzIG5vdCBzZXQgYXMgdGhlIEkyQy9T
UEkKPiA+IHBhcmVudCBhbmQgdGh1cywgdGhlIHdyYXBwZXIgKHBhcmVudCBkZXZpY2UpIGlzIHVu
YXNzaWduZWQuICBUaGlzIGNhdXNlcwo+ID4gdGhlIGtlcm5lbCB0byBjcmFzaCB3aXRoIGEgbnVs
bCBkZXJlZmVyZW5jZSBlcnJvci4KPiA+IAo+IAo+IE5vdyBJIHNlZSB3aGF0IHlvdSBkaWQgaW4g
OGJjNTI5YjI1MzU0OyBpLmUuIHN0dWJiZWQgYWxsIHRoZSBvdGhlciBjYWxscwo+IGJldHdlZW4g
dGhlIFNFIGFuZCB3cmFwcGVyLgo+IAo+IERvIHlvdSB0aGluayBpdCB3b3VsZCBiZSBwb3NzaWJs
ZSB0byByZXNvbHZlIHRoZSBfREVQIGxpbmsgdG8gUUdQWzAxXQo+IHNvbWVob3c/CgpJIGxvb2tl
ZCBhdCBRR1B7MCwxfSwgYnV0IGRpZCBub3Qgc2VlIGl0IHJlcHJlc2VudGVkIGluIHRoZSBjdXJy
ZW50CkRldmljZSBUcmVlIGltcGxlbWVudGF0aW9uIGFuZCB0aHVzIGZhaWxlZCB0byBpZGVudGlm
eSBpdC4gIERvIHlvdQprbm93IHdoYXQgaXQgaXM/ICBEb2VzIGl0IGhhdmUgYSBkcml2ZXIgaW4g
TGludXggYWxyZWFkeT8KCj4gRm9yIHRoZSBjbG9ja3Mgd29ya2Fyb3VuZHMgdGhpcyBjb3VsZCBi
ZSByZXNvbHZlZCBieSB1cwo+IHJlcHJlc2VudGluZyB0aGF0IHJlbGF0aW9uc2hpcCB1c2luZyBk
ZXZpY2VfbGluayBhbmQganVzdCByZWx5IG9uCj4gcG1fcnVudGltZSB0byBwcm9wYWdhdGUgdGhl
IGNsb2NrIHN0YXRlLgoKVGhhdCBpcyBub3QgYWxsb3dlZCB3aGVuIGJvb3RpbmcgQUNQSS4gIFRo
ZSBDbG9jay9SZWd1bGF0b3IgZnJhbWV3b3JrcwphcmUgbm90IHRvIGJlIHVzZWQgaW4gdGhpcyB1
c2UtY2FzZSwgaGVuY2Ugd2h5IGFsbCBvZiB0aGUgY2FsbHMgdG8KdGhlc2UgZnJhbWV3b3JrcyBh
cmUgInN0dWJiZWQgb3V0Ii4gIElmIHdlIHdhbnRlZCB0byBwcm9wZXJseQppbXBsZW1lbnQgcG93
ZXIgbWFuYWdlbWVudCwgd2Ugd291bGQgaGF2ZSB0byBjcmVhdGUgYSBkcml2ZXIvc3Vic3lzdGVt
CnNpbWlsYXIgdG8gdGhlICJXaW5kb3dzLWNvbXBhdGlibGUgU3lzdGVtIFBvd2VyIE1hbmFnZW1l
bnQgQ29udHJvbGxlciIKKFBFUCkuICBXaXRob3V0IGRvY3VtZW50YXRpb24gZm9yIHRoZSBQRVAs
IHRoaXMgd291bGQgYmUgYW4gaW1wb3NzaWJsZQp0YXNrLiAgQSByZXF1ZXN0IGZvciB0aGUgYWZv
cmVtZW50aW9uZWQgZG9jdW1lbnRhdGlvbiBoYXMgYmVlbiBwdXQgaW4KdG8gTGVub3ZvL1F1YWxj
b21tLiAgSG9wZWZ1bGx5IHNvbWV0aGluZyBhcHBlYXJzIHNvb24uCgo+IEZvciB0aGUgRE1BIG9w
ZXJhdGlvbiwgaWl1YyBpdCdzIHRoZSB3cmFwcGVyIHRoYXQgaW1wbGVtZW50cyB0aGUgRE1BCj4g
ZW5naW5lIGludm9sdmVkLCBidXQgSSdtIGd1ZXNzaW5nIHRoZSBtYWluIHJlYXNvbiBmb3IgbWFw
cGluZyBidWZmZXJzIG9uCj4gdGhlIHdyYXBwZXIgaXMgc28gdGhhdCBpdCBlbmRzIHVwIGJlaW5n
IGFzc29jaWF0ZWQgd2l0aCB0aGUgaW9tbXUKPiBjb250ZXh0IG9mIHRoZSB3cmFwcGVyLgoKSnVk
Z2luZyBieSB0aGUgY29kZSBhbG9uZSwgdGhlIHdyYXBwZXIgZG9lc24ndCBzb3VuZCBsaWtlIGl0
IGRvZXMgbXVjaAphdCBhbGwuICBJdCBzZWVtcyB0byBvbmx5IGhhdmUgYSBzaW5nbGUgKHZlcnNp
b24pIHJlZ2lzdGVyIChhdCBsZWFzdAp0aGF0IGlzIHRoZSBvbmx5IHJlZ2lzdGVyIHRoYXQncyB1
c2VkKS4gIFRoZSBvbmx5IHJlZ2lzdGVycyBpdApyZWFkcy93cml0ZXMgYXJlIHRob3NlIG9mIHRo
ZSBjYWxsaW5nIGRldmljZSwgd2hldGhlciB0aGF0IGJlIEkyQywgU1BJCm9yIFVBUlQuCgpEZXZp
Y2UgVHJlZSByZXByZXNlbnRzIHRoZSB3cmFwcGVyJ3MgcmVsYXRpb25zaGlwIHdpdGggdGhlIEky
QyAoYW5kClNQSS9VQVJUKSBTZXJpYWwgRW5naW5lIChTRSkgZGV2aWNlcyBhcyBwYXJlbnQtY2hp
bGQgb25lcywgd2l0aCB0aGUKd3JhcHBlciBiZWluZyB0aGUgcGFyZW50IGFuZCBTRSB0aGUgY2hp
bGQuICBXaGV0aGVyIHRoaXMgaXMgYSB0cnVlCnJlcHJlc2VudGF0aW9uIG9mIHRoZSBoYXJkd2Fy
ZSBvciBqdXN0IGEgdGFjdGljIHVzZWQgZm9yIGNvbnZlbmllbmNlCmlzIG5vdCBjbGVhciwgYnV0
IHRoZSBzYW1lIHJlcHJlc2VudGF0aW9uIGRvZXMgbm90IGV4aXN0IGluIEFDUEkuCgpJbiB0aGUg
Y3VycmVudCBMaW51eCBpbXBsZW1lbnRhdGlvbiwgdGhlIGJ1ZmZlciBiZWxvbmdzIHRvIHRoZSBT
RQoob2J0YWluZWQgYnkgdGhlIGNoaWxkIChlLmcuIEkyQykgU0UgYnkgZmV0Y2hpbmcgdGhlIHBh
cmVudCdzCih3cmFwcGVyJ3MpIGRldmljZSBkYXRhIHVzaW5nIHRoZSBzdGFuZGFyZCBwbGF0Zm9y
bSBoZWxwZXJzKSBidXQgdGhlCnJlZ2lzdGVyLXNldCB1c2VkIHRvIGNvbnRyb2wgdGhlIERNQSB0
cmFuc2FjdGlvbnMgYmVsb25nIHRvIHRoZSBTRQpkZXZpY2VzLgoKPiBBcmUgdGhlIFNNTVUgY29u
dGV4dHMgYXQgYWxsIHJlcHJlc2VudGVkIGluIHRoZSBBQ1BJIHdvcmxkIGFuZCBpZiBzbyBkbwo+
IHlvdSBrbm93IGhvdyB0aGUgd3JhcHBlciB2cyBTRXMgYXJlIGJvdW5kIHRvIGNvbnRleHRzPyBD
YW4gd2UgbWFwIG9uCj4gc2UtPmRldiB3aGVuIHdyYXBwZXIgaXMgTlVMTCAob3IgcGVyaGFwcyBh
bHdheXM/KT8KClllcywgdGhlIFNNTVUgZGV2aWNlcyBhcmUgcmVwcmVzZW50ZWQgaW4gQUNQSSAo
TU1VMCkgYW5kIChNTVUxKS4gIFRoZXkKc2hhcmUgdGhlIHNhbWUgcmVnaXN0ZXIgYWRkcmVzc2Vz
IGFzIHRoZSBTTU1VIGRldmljZXMgbG9jYXRlZCBpbgphcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
c2RtODQ1LmR0c2kuCgpXaXRoIHRoaXMgc2ltcGxlIHBhcmFtZXRlciBjaGVja2luZyBwYXRjaCwg
dGhlIFNFIGZhbGxzIGJhY2sgdG8gdXNpbmcKRklGTyBtb2RlIHRvIHRyYW5zbWl0IGRhdGEgYW5k
IGNvbnRpbnVlcyB0byB3b3JrIGZsYXdsZXNzbHkuICBJTUhPCnRoaXMgc2hvdWxkIGJlIGFwcGxp
ZWQgaW4gdGhlIGZpcnN0IGluc3RhbmNlLCBhcyBpdCBmaXhlcyBhIHJlYWwgKG51bGwKZGVyZWZl
cmVuY2UpIGJ1ZyB3aGljaCBjdXJyZW50bHkgcmVzaWRlcyBpbiB0aGUgTWFpbmxpbmUga2VybmVs
LgoKTW92aW5nIGZvcndhcmQgd2UgY2FuIHRyeSB0byBjb21lIHVwIHdpdGggYSBzdWl0YWJsZSBw
bGFuIHRvIGltcGxlbWVudApETUEgaW4gdGhlIEFDUEkgdXNlLWNhc2UgLSBidXQgYWdhaW4sIHRo
aXMgaXMgZmVhdHVyZSBhZGRpbmcgd29yawp3aGljaCBzaG91bGQgYmUgY2FycmllZCBvdXQgYWdh
aW5zdCAtbmV4dCwgd2hlcmUgYXMgdGhpcyBwYXRjaCBuZWVkcwp0byBnbyBpbiB2aWEgdGhlIGN1
cnJlbnQgLXJjcyBBU0FQLgoKPiA+IEZpeGVzOiA4YmM1MjliMjUzNTQgKCJzb2M6IHFjb206IGdl
bmk6IEFkZCBzdXBwb3J0IGZvciBBQ1BJIikKPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8
bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+IFNpbmNlIHdlIGFyZSBhbHJlYWR5IGF0
IC1yYzcgdGhpcyBwYXRjaCBzaG91bGQgYmUgcHJvY2Vzc2VkIEFTQVAgLSB0aGFuayB5b3UuCj4g
PiAKPiA+IGRyaXZlcnMvc29jL3Fjb20vcWNvbS1nZW5pLXNlLmMgfCA2ICsrKysrKwo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc29jL3Fjb20vcWNvbS1nZW5pLXNlLmMgYi9kcml2ZXJzL3NvYy9xY29tL3Fjb20tZ2VuaS1z
ZS5jCj4gPiBpbmRleCBkNWNmOTUzYjQzMzcuLjdkNjIyZWExMjc0ZSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvc29jL3Fjb20vcWNvbS1nZW5pLXNlLmMKPiA+ICsrKyBiL2RyaXZlcnMvc29jL3Fj
b20vcWNvbS1nZW5pLXNlLmMKPiA+IEBAIC02MzAsNiArNjMwLDkgQEAgaW50IGdlbmlfc2VfdHhf
ZG1hX3ByZXAoc3RydWN0IGdlbmlfc2UgKnNlLCB2b2lkICpidWYsIHNpemVfdCBsZW4sCj4gPiAg
CXN0cnVjdCBnZW5pX3dyYXBwZXIgKndyYXBwZXIgPSBzZS0+d3JhcHBlcjsKPiA+ICAJdTMyIHZh
bDsKPiA+ICAKPiA+ICsJaWYgKCF3cmFwcGVyKQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAr
Cj4gPiAgCSppb3ZhID0gZG1hX21hcF9zaW5nbGUod3JhcHBlci0+ZGV2LCBidWYsIGxlbiwgRE1B
X1RPX0RFVklDRSk7Cj4gPiAgCWlmIChkbWFfbWFwcGluZ19lcnJvcih3cmFwcGVyLT5kZXYsICpp
b3ZhKSkKPiA+ICAJCXJldHVybiAtRUlPOwo+ID4gQEAgLTY2Myw2ICs2NjYsOSBAQCBpbnQgZ2Vu
aV9zZV9yeF9kbWFfcHJlcChzdHJ1Y3QgZ2VuaV9zZSAqc2UsIHZvaWQgKmJ1Ziwgc2l6ZV90IGxl
biwKPiA+ICAJc3RydWN0IGdlbmlfd3JhcHBlciAqd3JhcHBlciA9IHNlLT53cmFwcGVyOwo+ID4g
IAl1MzIgdmFsOwo+ID4gIAo+ID4gKwlpZiAoIXdyYXBwZXIpCj4gPiArCQlyZXR1cm4gLUVJTlZB
TDsKPiA+ICsKPiA+ICAJKmlvdmEgPSBkbWFfbWFwX3NpbmdsZSh3cmFwcGVyLT5kZXYsIGJ1Ziwg
bGVuLCBETUFfRlJPTV9ERVZJQ0UpOwo+ID4gIAlpZiAoZG1hX21hcHBpbmdfZXJyb3Iod3JhcHBl
ci0+ZGV2LCAqaW92YSkpCj4gPiAgCQlyZXR1cm4gLUVJTzsKCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
