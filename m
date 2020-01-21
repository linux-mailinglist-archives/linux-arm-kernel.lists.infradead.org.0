Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5480114412C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKltKtVuxXDVeKBPXSH8ixwLGDtDO0ZSsFep2DjeYOs=; b=O+pvzS1mkc9gQB
	nVThnYStYGtl84XpMrJxM8empMrA6P477WTHbbSbyDt+NWrAesbx7LRpTsVFkYzgnK/Ks08hkU+t3
	684T99p3/CJV0gRjprTSi++I9Mp1l2pdMJwCYAqvLeDyjG6Jz7m+q4WNlOBr/n+Y4xZAwt46GJ64z
	XuxEN7z9FVkLWS6mzARI8ktEzQWlocBeMQDYFlg73iqeTY1nKG1Dc+0koHNkdCHJS/Mm4iJ/2v8XT
	r1cLsQBOEf+Y1sj+f+1wsjHvErwd+DHpN8NGLgTd6r6eS1qtW6n7s7+XpdguM8q/wlT3jzMackLK2
	SQqEAcpJuhDS6YKfOWPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvyD-00039L-1E; Tue, 21 Jan 2020 16:01:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvxH-00033P-Dn; Tue, 21 Jan 2020 16:00:44 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so3694934wma.1;
 Tue, 21 Jan 2020 08:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ytwKdiKDkBrq5dWN34mZGZBl7UpibNepadICMkoJFGA=;
 b=A3g8phgaxu7x2jJLxOOrTVVNprEJJJPK5vGTb65L/lIrSnqdZod0XDVtme4mjiZWmB
 tbew2hAP3T/tHd19LKPUnuHOwrZhT0zt/NvwCaVQrx9VhHjbFJOK9+CKbCksBbq4sy/7
 1eOvdE6fyAYUUJfR6BjXc3TKC6jRXwx4dawndZh3kksTjoT+G7KX7yyuwfjEMc3z+6xn
 uUPo3msBSjzJ6zx4QL3Kg0YBK7HGBW67OG7ymS7ZOZ+CBl0D9gOmIxJ/im5KvK6tEDN0
 5xgt0RFB6O5JTrS1WJOljBYb3636Iy35GI1N22oQwN0sydZmNcXUeL03g/Uogpxhj9c8
 zbkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ytwKdiKDkBrq5dWN34mZGZBl7UpibNepadICMkoJFGA=;
 b=mZsBKPE5GQGfwyMGn72VhY0qIuQAEWMARkwnUG/h0KGjHjDyfNpXUWC7ryO/jxQHQ1
 FywOZu22GcJhEcHf5JVaIiwArsRXdvBWAM/H/2/vCF/8LoEsgHyNG+X2/csl/vKZ8l+g
 ZobKvHr98C4UHugWzHG7KXLAIl4UZRBeUkFA1PHN0B2qMgWc3LdM2ydqJGif3Ahykyaz
 5LjftqEvxtteEjctT6YQby9nEPlzATmJXLYOYukAzVh369/uRQDkDSISBepLTWbmR31m
 2R9AqrSbqhYkx6yXCLwfCKDW4OdF7zN6xRAsTArhnLBKns6JtdK9cB+FaXgQMBVYxHjx
 g+qg==
X-Gm-Message-State: APjAAAVsw26jIG/+1v61Lq0IkBwxPVfc4zFauQr51kGCWna14rNbOlMJ
 pHY9iHrp9LbFcKJTEhVwfaE=
X-Google-Smtp-Source: APXvYqw/5uPfelRwAOPcMQ/7ch5/ttpQTTV4/ZW3Orj4e+6tsxvKNnOwkfDYFwEyTwz4cepmMWDCIg==
X-Received: by 2002:a1c:3c89:: with SMTP id j131mr5150540wma.34.1579622436737; 
 Tue, 21 Jan 2020 08:00:36 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u1sm4335276wmc.5.2020.01.21.08.00.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 08:00:36 -0800 (PST)
Subject: Re: [PATCH v2] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
References: <6371f95f-8bf8-47c9-021e-b23006f25405@collabora.com>
 <573dc6d1-5857-f3ba-a392-67351db727b5@gmail.com>
 <7c79efd2-f5b0-6736-19b0-4d116714f887@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <633202b7-31cb-a2ff-9461-631652cd94c0@gmail.com>
Date: Tue, 21 Jan 2020 17:00:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <7c79efd2-f5b0-6736-19b0-4d116714f887@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_080039_464841_E794A1C6 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 airlied@linux.ie, dafna3@gmail.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, daniel@ffwll.ch,
 kernel@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxLzIxLzIwIDQ6MjYgUE0sIERhZm5hIEhpcnNjaGZlbGQgd3JvdGU6Cj4gCj4gCj4g
T24gMjEuMDEuMjAgMTY6MTEsIEpvaGFuIEpvbmtlciB3cm90ZToKPj4gSGkgRGFmbmEsCj4+Cj4+
Cj4+Pgo+Pj4KPj4+IE9uIDIxLjAxLjIwIDE1OjAzLCBSb2IgSGVycmluZyB3cm90ZToKPj4+PiBP
biBUdWUsIEphbiAyMSwgMjAyMCBhdCA2OjM1IEFNIERhZm5hIEhpcnNjaGZlbGQKPj4+PiA8ZGFm
bmEuaGlyc2NoZmVsZEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4+Pj4KPj4+Pj4gY29udmVydCB0
aGUgYmluZGluZyBmaWxlIHJvY2tjaGlwLWRybS50eHQgdG8geWFtbCBmb3JtYXQuCj4+Pj4+IFRo
aXMgd2FzIHRlc3RlZCBhbmQgdmVyaWZpZWQgd2l0aDoKPj4+Pj4gbWFrZSBkdF9iaW5kaW5nX2No
ZWNrCj4+Pj4+IERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC1kcm0ueWFtbAo+Pj4+Pgo+Pj4+Cj4+Pj4gQWxz
bywgbWFrZSBzdXJlIGp1c3QgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgcGFzc2VzIGFzIHRoYXQg
Y2hlY2tzIHRoZQo+Pj4+IGV4YW1wbGUgYWdhaW5zdCBhbGwgc2NoZW1hcy4KPj4+Cj4+PiBCdXQg
dGhpcyBhbHNvIGNoZWNrcyB0aGUgb3RoZXIgc2NoZW1hcyBpbiBnZW5lcmFsLCBhbmQgd2hlbiBy
dW5uaW5nIGl0LAo+Pj4gaXQgZmFpbHMgYmVjYXVzZSBvZiBidWdzIGluIG90aGVyIHNjaGVtYXMu
Cj4+Cj4+Cj4+PiBGb3IgZXhhbXBsZSB3aXRoIGFybT1BUk0gSSBnZXQ6Cj4+Cj4+IFVzZToKPj4K
Pj4gIyBlbmFibGUgUm9ja2NoaXAgYXJtIGluIG1lbnVjb25maWcKPj4gbWFrZSBBUkNIPWFybSBt
ZW51Y29uZmlnCj4+Cj4+IG1ha2UgQVJDSD1hcm0gZHRfYmluZGluZ19jaGVjawo+PiBEVF9TQ0hF
TUFfRklMRVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2No
aXAvcm9ja2NoaXAtZHJtLnlhbWwKPj4KPj4KPj4gYW5kIG5vdDoKPj4gYXJtPUFSTQo+Pgo+IHll
cywgc29ycnksIHRoaXMgaXMgd2hhdCBJIGRpZC4gV2hlbiBydW5uaW5nIHdpdGggdGhlIERUX1ND
SEVNQV9GSUxFUwo+IHNldCB0aGVuIGl0IHBhc3NlcyBib3RoIG9uIEFSTSBhbmQgQVJNNjQKPiBi
dXQgd2hlbiB0aGlzIHZhcmlhYmxlIGlzIG5vdCBzZXQgSSBnZXQgdGhlIGFib3ZlIGVycm9yLgoK
IyBmb3IgSW50ZWwgdXNlOgptYWtlIGR0YnNfY2hlY2sKRFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLWRybS55
YW1sCgoKIyBmb3IgUm9ja2NoaXAgdXNlOgptYWtlIEFSQ0g9YXJtIGR0YnNfY2hlY2sKRFRfU0NI
RU1BX0ZJTEVTPURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tj
aGlwL3JvY2tjaGlwLWRybS55YW1sCgptYWtlIEFSQ0g9YXJtNjQgZHRic19jaGVjawpEVF9TQ0hF
TUFfRklMRVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2No
aXAvcm9ja2NoaXAtZHJtLnlhbWwKCkFsc28gY2hhbmdlOgoKZXhhbXBsZToKICBSZWR1Y2Ugc29t
ZSBzcGFjZXMgaGVyZS4KCkFsc28gcmVtb3ZlICJ8IiBmcm9tIGRlc2NyaXB0aW9uLgoKU2VlOgpk
ZXNjcmlwdGlvbjogfAogIEEgbW9yZSBkZXRhaWxlZCBtdWx0aS1saW5lIGRlc2NyaXB0aW9uIG9m
IHRoZSBiaW5kaW5nLgoKICBEZXRhaWxzIGFib3V0IHRoZSBoYXJkd2FyZSBkZXZpY2UgYW5kIGFu
eSBsaW5rcyB0byBkYXRhc2hlZXRzIGNhbiBnbyBoZXJlLgoKICBMaXRlcmFsIGJsb2NrcyBhcmUg
bWFya2VkIHdpdGggdGhlICd8JyBhdCB0aGUgYmVnaW5uaW5nLiBUaGUgZW5kIGlzCm1hcmtlZCBi
eQogIGluZGVudGF0aW9uIGxlc3MgdGhhbiB0aGUgZmlyc3QgbGluZSBvZiB0aGUgbGl0ZXJhbCBi
bG9jay4gTGluZXMgYWxzbwpjYW5ub3QKICBiZWdpbiB3aXRoIGEgdGFiIGNoYXJhY3Rlci4KCj4g
Cj4gRGFmbmEKPiAKPj4KPj4+Cj4+PiDCoMKgwqAgRFRDwqDCoMKgwqAKPj4+IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9xY29tLGdjYy5leGFtcGxlLmR0LnlhbWwKPj4+
IEVycm9yOgo+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3Fjb20s
Z2NjLmV4YW1wbGUuZHRzOjExMS4yOC0yOQo+Pj4gc3ludGF4IGVycm9yCj4+PiBGQVRBTCBFUlJP
UjogVW5hYmxlIHRvIHBhcnNlIGlucHV0IHRyZWUKPj4+Cj4+PiBEYWZuYQo+Pj4KPj4+Pgo+Pj4+
PiBtYWtlIGR0YnNfY2hlY2sKPj4+Pj4gRFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLWRybS55YW1sCj4+Pj4+
Cj4+Pj4+Cj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
