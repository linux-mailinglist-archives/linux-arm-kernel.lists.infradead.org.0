Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC3514F35D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 21:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GY7E2GFO0t0cwTrKwIUAGm4HFFWpF0fJmGPGt0w7XDA=; b=OkDVc73k5SF3aO
	2gnUzDmgY3IPj6cWUU+7KbRBkOcJlVLy3Ro/vnHZIXsm+xWdQHB69JrUpF1j3rXNgan3Qt4wePqFS
	2rz00Lr5Cl7JO9Lkis+btw4T2C+8yi7iixBN1K16n+phERwuIYRBrK0fzIyt2foM87/hXMra4b4QH
	/AEtmay8P/My7ewd5ZLcRKviuPgBERV+M8dzghGYyxkPyBkqAKYCHVaRV0VEc2H4qJdoyWMily91i
	TZmj5nTJdLph9hRRNyCfD2FuVZQp8aXNhfzxBZ9fZFoZE8xPsRsVm+N9ZKWM72yVoj0yXJSKC00+g
	ABhuFdf8cLwB9FMD2QDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixdG2-0008VS-1f; Fri, 31 Jan 2020 20:51:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixdFs-0008Uq-Pf
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 20:51:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id k3so4102230pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 12:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Gz7hT2tygEwD6nceUGAt7bKWyydcJ2UC17mizbip3uc=;
 b=Rjdbkl178kIn2Jgf7Y7Mjim4nCgMqZXASWFNjkmJZHutnT/cO0lk0UvLouRDwNDj7G
 hbAZOQfDc0wUq05v1YLbH+wj6tQknnJX143U1lnNuj2XeSN7OSWDFNZ4fHNqHDMa4Aho
 YstXpOpWw+HiO9dMOIflNbgj0aJHAaWk8vFYWZ0O2tfDxJ9Hq8cfKzFzBSFJz95GtBhD
 hN7wydpa7sw6SL5Zjm66TBo9mZs5wvbv1IaVYVmhNHtZT3bBClr9HCVyoNPCU5GDdQ28
 IPe6WIfryYDjIHuAA7Abiw+cF9Q2+zGvX9MRrxULBn3WTGg9bBHxM5tZkrlyHBEy0chf
 h3dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Gz7hT2tygEwD6nceUGAt7bKWyydcJ2UC17mizbip3uc=;
 b=ukMiwpR4qZTe8Qi1tnTanAH7DYUdgx45uIRGxwi2S1E027n4ZbZ09ax57S+70WA48M
 STxguNt199yqvBKNcjGoIMy2R3YDUGZaRjv3JzWAe7KW0HfkBGejnYIeAy22WbRpcoIT
 RdAUxAyWS9QbUC17UYnwh6OKZai7bUHfxDAhD7He7o+D7E16yAOwP8Wf5r90WujXFJdH
 HrgeNbfn4RWmdtmWkdWE59jTfL40U8nfNn+qgbmDOhimPlo5LaHwxmMm2JZS34vkEDdq
 CnlvbIypd33TlkgOkboMVssx8n15t76hpk/CJxkVAMPI3Zj/fAZ8O9ioIq5Qwzy/dhtA
 YRIw==
X-Gm-Message-State: APjAAAV0qeMzjzgnb5YGjAqzjSi9R1D/a2Bwm0FGXdAWZ6EQ76Zxpr8H
 cN427Z54g67OPatUuiZrJOaK/xdO
X-Google-Smtp-Source: APXvYqzEKbF29q60efRnkcFKCynbuqxPymfdpk04gq6LT3W2Oox7TGhiPZLUEI6lDBC6NOg7ywiwVw==
X-Received: by 2002:a63:1853:: with SMTP id 19mr11852184pgy.170.1580503865584; 
 Fri, 31 Jan 2020 12:51:05 -0800 (PST)
Received: from [10.67.48.234] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id o16sm11115591pgl.58.2020.01.31.12.51.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jan 2020 12:51:04 -0800 (PST)
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Robin Murphy <robin.murphy@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus> <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
 <20200128171639.GA36496@bogus> <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
 <6a6ba7ff-7ed9-e573-63ca-66fca609075b@arm.com>
 <c4d5c46a-7f90-ff2b-9496-26102114c5e6@st.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <e370fb7a-02a6-f5f3-c87d-cd09a80d69ec@gmail.com>
Date: Fri, 31 Jan 2020 12:51:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <c4d5c46a-7f90-ff2b-9496-26102114c5e6@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_125108_839221_364F9E05 
X-CRM114-Status: GOOD (  26.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, "robh@kernel.org" <robh@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8yOS8yMCA1OjQwIEFNLCBCZW5qYW1pbiBHQUlHTkFSRCB3cm90ZToKPiAKPiBPbiAxLzI4
LzIwIDExOjA2IFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDIwMjAtMDEtMjggODowNiBw
bSwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6Cj4+Pgo+Pj4gT24gMS8yOC8yMCA2OjE3IFBNLCBT
dWRlZXAgSG9sbGEgd3JvdGU6Cj4+Pj4gT24gVHVlLCBKYW4gMjgsIDIwMjAgYXQgMDQ6NDY6NDFQ
TSArMDAwMCwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6Cj4+Pj4+IE9uIDEvMjgvMjAgNTozNiBQ
TSwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCBKYW4gMjgsIDIwMjAgYXQgMDQ6
Mzc6NTlQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+Pj4+Pj4gQnVzIGZpcmV3
YWxsIGZyYW1ld29yayBhaW1zIHRvIHByb3ZpZGUgYSBrZXJuZWwgQVBJIHRvIHNldCB0aGUgCj4+
Pj4+Pj4gY29uZmlndXJhdGlvbgo+Pj4+Pj4+IG9mIHRoZSBoYXJ3YXJlIGJsb2NrcyBpbiBjaGFy
Z2Ugb2YgYnVzc2VzIGFjY2VzcyBjb250cm9sLgo+Pj4+Pj4+Cj4+Pj4+Pj4gRnJhbWV3b3JrIGFy
Y2hpdGVjdHVyZSBpcyBpbnNwaXJhdGVkIGJ5IHBpbmN0cmwgZnJhbWV3b3JrOgo+Pj4+Pj4+IC0g
YSBkZWZhdWx0IGNvbmZpZ3VyYXRpb24gY291bGQgYmUgYXBwbGllZCBiZWZvcmUgYmluZCB0aGUg
ZHJpdmVyLgo+Pj4+Pj4+IMKgwqDCoMKgIElmIGEgY29uZmlndXJhdGlvbiBjb3VsZCBub3QgYmUg
YXBwbGllZCB0aGUgZHJpdmVyIGlzIG5vdCBiaW5kCj4+Pj4+Pj4gwqDCoMKgwqAgdG8gYXZvaWQg
ZG9pbmcgYWNjZXNzZXMgb24gcHJvaGliaXRlZCByZWdpb25zLgo+Pj4+Pj4+IC0gY29uZmlndXJh
dGlvbnMgY291bGQgYmUgYXBsbGllZCBkeW5hbWljYWxseSBieSBkcml2ZXJzLgo+Pj4+Pj4+IC0g
ZGV2aWNlIG5vZGUgcHJvdmlkZXMgdGhlIGJ1cyBmaXJld2FsbCBjb25maWd1cmF0aW9ucy4KPj4+
Pj4+Pgo+Pj4+Pj4+IEFuIGV4YW1wbGUgb2YgYnVzIGZpcmV3YWxsIGNvbnRyb2xsZXIgaXMgU1RN
MzIgRVRaUEMgaGFyZHdhcmUgYmxvY2sKPj4+Pj4+PiB3aGljaCBnb3QgMyBwb3NzaWJsZSBjb25m
aWd1cmF0aW9uczoKPj4+Pj4+PiAtIHRydXN0OiBoYXJkd2FyZSBibG9ja3MgYXJlIG9ubHkgYWNj
ZXNzaWJsZSBieSBzb2Z0d2FyZSBydW5uaW5nIAo+Pj4+Pj4+IG9uIHRydXN0Cj4+Pj4+Pj4gwqDC
oMKgwqAgem9uZSAoaS5lIG9wLXRlZSBmaXJtd2FyZSkuCj4+Pj4+Pj4gLSBub24tc2VjdXJlOiBo
YXJkd2FyZSBibG9ja3MgYXJlIGFjY2Vzc2libGUgYnkgbm9uLXNlY3VyZSAKPj4+Pj4+PiBzb2Z0
d2FyZSAoaS5lLgo+Pj4+Pj4+IMKgwqDCoMKgIGxpbnV4IGtlcm5lbCkuCj4+Pj4+Pj4gLSBjb3By
b2Nlc3NvcjogaGFyZHdhcmUgYmxvY2tzIGFyZSBvbmx5IGFjY2Vzc2libGUgYnkgdGhlIAo+Pj4+
Pj4+IGNvcHJvY2Vzc29yLgo+Pj4+Pj4+IFVwIHRvIDk0IGhhcmR3YXJlIGJsb2NrcyBvZiB0aGUg
c29jIGNvdWxkIGJlIG1hbmFnZWQgYnkgRVRaUEMuCj4+Pj4+Pj4KPj4+Pj4+IC9tZSBjb25mdXNl
ZC4gSXMgRVRaUEMgYWNjZXNzaWJsZSBmcm9tIHRoZSBub24tc2VjdXJlIGtlcm5lbCBzcGFjZSB0
bwo+Pj4+Pj4gYmVnaW4gd2l0aCA/IElmIHNvLCBpcyBpdCBhbGxvd2VkIHRvIGNvbmZpZ3VyZSBo
YXJkd2FyZSBibG9ja3MgYXMgCj4+Pj4+PiBzZWN1cmUKPj4+Pj4+IG9yIHRydXN0ZWQgPyBJIGFt
IGZhaWxpbmcgdG8gdW5kZXJzdGFuZCB0aGUgb3ZlcmFsbCBkZXNpZ24gb2YgYSAKPj4+Pj4+IHN5
c3RlbQo+Pj4+Pj4gd2l0aCBFVFpQQyBjb250cm9sbGVyLgo+Pj4+PiBOb24tc2VjdXJlIGtlcm5l
bCBjb3VsZCByZWFkIHRoZSB2YWx1ZXMgc2V0IGluIEVUWlBDLCBpZiBpdCBkb2Vzbid0IAo+Pj4+
PiBtYXRjaAo+Pj4+PiB3aXRoIHdoYXQgaXMgcmVxdWlyZWQgYnkgdGhlIGRldmljZSBub2RlIHRo
ZSBkcml2ZXIgd29uJ3QgYmUgcHJvYmVkLgo+Pj4+Pgo+Pj4+IE9LLCBidXQgSSB3YXMgdW5kZXIg
dGhlIGltcHJlc3Npb24gdGhhdCBpdCB3YXMgbWFkZSBjbGVhciB0aGF0IExpbnV4IGlzCj4+Pj4g
bm90IGZpcm13YXJlIHZhbGlkYXRpb24gc3VpdGUuIFRoZSBmaXJtd2FyZSBuZWVkIHRvIGVuc3Vy
ZSBhbGwgdGhlIAo+Pj4+IGRldmljZXMKPj4+PiB0aGF0IGFyZSBub3QgYWNjZXNzaWJsZSBpbiB0
aGUgTGludXgga2VybmVsIGFyZSBtYXJrZWQgYXMgZGlzYWJsZWQgYW5kCj4+Pj4gdGhpcyBuZWVk
cyB0byBoYXBwZW4gYmVmb3JlIGVudGVyaW5nIHRoZSBrZXJuZWwuIFNvIGlmIHRoaXMgaXMgd2hh
dCAKPj4+PiB0aGlzCj4+Pj4gcGF0Y2ggc2VyaWVzIGFjaGlldmVzLCB0aGVuIHRoZXJlIGlzIG5v
IG5lZWQgZm9yIGl0LiBQbGVhc2Ugc3RvcCAKPj4+PiBwdXJzdWluZwo+Pj4+IHRoaXMgYW55IGZ1
cnRoZXIgb3IgcHJvdmlkZSBhbnkgb3RoZXIgcmVhc29ucyhpZiBhbnkpIHRvIGhhdmUgaXQuIFVu
dGlsCj4+Pj4geW91IGhhdmUgb3RoZXIgcmVhc29ucywgTkFDSyBmb3IgdGhpcyBzZXJpZXMuCj4+
Pgo+Pj4gTm8gaXQgZG9lc24ndCBkaXNhYmxlIHRoZSBub2Rlcy4KPj4+Cj4+PiBXaGVuIHRoZSBm
aXJtd2FyZSBkaXNhYmxlIGEgbm9kZSBiZWZvcmUgdGhlIGtlcm5lbCB0aGF0IG1lYW5zIGl0IGNo
YW5nZQo+Pj4KPj4+IHRoZSBEVEIgYW5kIHRoYXQgaXMgYSBwcm9ibGVtIHdoZW4geW91IHdhbnQg
dG8gc2lnbiBpdC4gV2l0aCBteSBwcm9wb3NhbAo+Pj4KPj4+IHRoZSBEVEIgcmVtYWlucyB0aGUg
c2FtZS4KPj4KPj4gPz8/Cj4+Cj4+IDovCj4+Cj4+IFRoZSBEVEIgaXMgdXNlZCB0byBwYXNzIHRo
ZSBrZXJuZWwgY29tbWFuZCBsaW5lLCBtZW1vcnkgcmVzZXJ2YXRpb25zLCAKPj4gcmFuZG9tIHNl
ZWRzLCBhbmQgYWxsIG1hbm5lciBvZiBvdGhlciB0aGluZ3MgZHluYW1pY2FsbHkgZ2VuZXJhdGVk
IGJ5IAo+PiBmaXJtd2FyZSBhdCBib290LXRpbWUuIEFwb2xvZ2llcyBmb3IgYmVpbmcgYmx1bnQg
YnV0IGlmICJjaGFuZ2luZyB0aGUgCj4+IERUQiIgaXMgY29uc2lkZXJlZCBhIHByb2JsZW0gdGhl
biBJIGNhbid0IGhlbHAgYnV0IHRoaW5rIHlvdSdyZSBkb2luZyAKPj4gaXQgd3JvbmcuCj4gCj4g
WWVzIGJ1dCBJIHdvdWxkIGxpa2UgdG8gbGltaXQgdGhlIG51bWJlciBvZiBjYXNlcyB3aGVyZSBh
IGZpcm13YXJlIGhhcyAKPiB0byBjaGFuZ2UgdGhlIERUQi4KPiAKPiBXaXRoIHRoaXMgcHJvcG9z
YWwgbm9kZXMgcmVtYWluIHRoZSBzYW1lIGFuZCBlbWJlZGRlZCB0aGUgZmlyZXdhbGwgCj4gY29u
ZmlndXJhdGlvbihzKS4KPiAKPiBVbnRpbCBub3cgZmlyZXdhbGwgY29uZmlndXJhdGlvbiBpcyAi
c3RhdGljIiwgdGhlIGZpcm13YXJlIGRpc2FibGUgKG9yIAo+IHJlbW92ZSkgdGhlIG5vZGVzIG5v
dCBhY2Nlc3NpYmxlIGZyb20gTGludXguCj4gCj4gSWYgTGludXggY2FuIHJlbHkgb24gbm9kZSdz
IGZpcmV3YWxsIGluZm9ybWF0aW9uIGl0IGNvdWxkIGFsbG93IHN3aXRjaCAKPiBkeW5hbWljYWxs
eSBhbiBoYXJkd2FyZSBibG9jayBmcm9tIExpbnV4IHRvIGEgY29wcm9jZXNzb3IuCj4gCj4gRm9y
IGV4YW1wbGUgTGludXggY291bGQgbWFuYWdlIHRoZSBkaXNwbGF5IHBpcGUgY29uZmlndXJhdGlv
biBhbmQgd2hlbiAKPiBnb2luZyB0byBzdXNwZW5kIGhhbmRvdmVyIHRoZSBkaXNwbGF5IGhhcmR3
YXJlIGJsb2NrIHRvIGEgY29wcm9jZXNzb3IgaW4gCj4gY2hhcmdlIGEgcmVmcmVzaGluZyBvbmx5
IHNvbWUgcGl4ZWxzLgoKT0ssIGxldCdzIGNvbnRpbnVlIHRoYXQgZXhhbXBsZSwgd291bGQgbm90
IGl0IG1ha2Ugc2Vuc2UgdGhlbiB0byBqdXN0CnN0ZWFsIHRoZSBwZXJpcGhlcmFsIGF3YXkgZnJv
bSBMaW51eCBieSBlbnN1cmluZyB0aGF0IExpbnV4IGlzIG5vIGxvbmdlcgpydW5uaW5nIGFuZCB0
aGUgb25seSB0aGluZyB0aGF0IHlvdSBuZWVkIHRvIG1ha2Ugc3VyZSBvZiBpcyB0aGF0IGVpdGhl
cgp5b3UgcmVzdG9yZSB0aGUgSFcgaW4gdGhlIGV4YWN0IHNhbWUgdGhhdCB5b3Ugc3RvbGUgaXQg
ZnJvbSwgb3IgdGhhdApMaW51eCBpcyBjYXBhYmxlIG9mIHJlZnJlc2hpbmcgaXRzIHN0YXRlIGFn
YWluc3Qgd2hhdCB0aGUgSFcgc3RhdGUgd2FzCmxlZnQgaW4/CgpJZiB5b3UgaGF2ZSBhIHNldCBv
ZiBkaXNwbGF5IHBpcGVsaW5lIGRyaXZlcnMsIG9uIHlvdXIgd2F5IHRvIHN1c3BlbmQsCnlvdSBj
YW4gZGVmaW5lIGEgcHJvdG9jb2wgd2l0aCB0aGUgY28tcHJvY2Vzc29yIHNvIGFzIHRvIHNpZ25h
bCBhbgpvd25lcnNoaXAgY2hhbmdlLCBhbmQgdGhlIGNvLXByb2Nlc3NvciBjYW4gdGFrZSBjb250
cm9sIGZyb20gdGhlcmUuCgpJbiB5b3VyIGV4YW1wbGUsIGl0IHNvdW5kcyBsaWtlIHRoZSBmaXJl
d2FsbCBjb3VsZCBiZSBtZWFudCB0byBkZXRlY3QKdW5jb29yZGluYXRlZCBjb25jdXJyZW50IGFj
Y2Vzc2VzIHRvIHRoZSBzYW1lIEhXIGJsb2NrIGJldHdlZW4gZGlmZmVyZW50ClNXL0ZXIGVudGl0
aWVzLiBJZiB0aGF0IGlzIHRoZSBjYXNlLCB0aGlzIGlzIG1vc3QgbGlrZWx5IGEgYnVnIGFuZCB5
b3UKY2FuIHByb2JhYmx5IGp1c3QgZ2V0IGF3YXkgd2l0aCBkb2luZyByZXBvcnRpbmcgaW5zdGVh
ZCBvZiBhbiBlbnRpcmVseQpuZXcgc3Vic3lzdGVtPwotLSAKRmxvcmlhbgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
