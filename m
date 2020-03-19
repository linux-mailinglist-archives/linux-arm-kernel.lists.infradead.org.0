Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8F418B97E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EO8q1FUzISLqCDMg6XvtowtLwZhS1e9bq5hLarYocQA=; b=Gju/X58B/gx+Af
	89y0ytvysB644gd3XScva6ghyjl+7N2cw2MJrPXjm9RBK1kgLQut/bbjGLbkNZspPHGCRuPcgEr49
	v4+IMab1dl8nTHb59JBw3gZcbB0eE0whmHVRtBZ5LejxYZoBFOck1BZW+nlP9zWrkVXj95fnNKWvO
	8VgWeGBtkAFFSUnURSgfHryKSIiC/G0s9Iev7aYzvL8lMhl3Q6L46G3xqqjFL8/dp7VMY/1q3VWKl
	90EEca4xPDCNqC/qxNmqYPF/gzFKNPj4RxRIr7zDKws6dQVQnpJHExk/42/e/Eh7PUIHBKS3VkOKj
	ECBD4VZNCrNyr24qX2IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwHX-0003Vd-JD; Thu, 19 Mar 2020 14:36:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwH2-00037n-Ms
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 14:35:54 +0000
Received: by mail-lj1-x243.google.com with SMTP id 19so2736828ljj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 07:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bmjG9gaaQ2TjqqhPacVxow1nIQ7XMOuiMUqsv40Ng6o=;
 b=XmpgI+Y+l0jFiu9RRFFVsx/fMRXN5RVp8hXzK6areAV3SA9pKJhzAzFVKD+ZIz7Lac
 EDmMON+ML0dOFfhjj/aTkKoHI+PottLANy4nY7oyXJUZqzhRMJ3OU29lPITiEsvZMN2B
 TbA1StSWy8tSPAbdO4ZqQ9CYLUh0y5P6mLMg4DsiZRcLkrwQJmzpZbZmybOKXBOUEKGz
 A2Os30veyozq2yz57qv9ssa8gGlDrMJ5mfaQ3E4hboHejlF7WkZ+42yB8koqSN4Z8QMB
 DPvr3al6Il0yL46//2Cctu3+X6OpgxnEzxwA0Wkq/l8aZYmMsblNhAXzmrcj+kbfKOhs
 jJuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bmjG9gaaQ2TjqqhPacVxow1nIQ7XMOuiMUqsv40Ng6o=;
 b=jbFScGslxoT8AE5yQaiWayooUT6ltfABpw+niAQWfXuzwkIP3D2NZ9nGlXIMM442GG
 EQmuxXIbOjtRHxCEGKWjmzpeSXAAvqBl3FqiOio3t74a8xI1W83oMmKYOCScEYjNxxMP
 3fpMfWrOIU18mchG9Q+xYWFxZ/ypPYUJuw3JOAFoTaN7VbJd3iyOKkcSl1CH05hJDQxg
 pVWfVWsAn/Ow2ZgHiz3WyCfMkRo/0zsK5S4Us8IO11mbk/Rv/pxqgFv7L9C/+1OZvZXC
 sroyNjvMj7C3jJ5dpfhs1wIG3ql0GJixen5IH85zWf5/atpDD3ihCDTyeSAqF+WJXhb6
 2GcA==
X-Gm-Message-State: ANhLgQ3fPcjDoLm7+xg84tpPn5+sJ4HgzP/sjJsNepWEZTDgD14BTzI8
 zk61Oq32Q796iPh4H7E1PMw=
X-Google-Smtp-Source: ADFU+vvNHbniIt/Exu9Z3WwVvwUgASZbwJ83WhaQpJ0IQvhX+ql2mCobw2XN+J+nC1eqItfvQIw9hg==
X-Received: by 2002:a2e:984d:: with SMTP id e13mr2255298ljj.275.1584628551316; 
 Thu, 19 Mar 2020 07:35:51 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id i13sm1619509lja.73.2020.03.19.07.35.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 07:35:50 -0700 (PDT)
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Geert Uytterhoeven <geert@linux-m68k.org>
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
 <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
 <90c006f2-8c13-2976-008f-37139ca49f37@gmail.com>
 <20200319092535.GB25745@shell.armlinux.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <86239143-b7de-3385-5288-82ac94e7e5db@gmail.com>
Date: Thu, 19 Mar 2020 17:35:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200319092535.GB25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_073552_770070_A5BEF236 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTkuMDMuMjAyMCAxMjoyNSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluINC/0LjRiNC1
0YI6Cj4gT24gVGh1LCBNYXIgMTksIDIwMjAgYXQgMDQ6MTE6MDBBTSArMDMwMCwgRG1pdHJ5IE9z
aXBlbmtvIHdyb3RlOgo+PiAyNS4wMi4yMDIwIDE0OjQwLCBHZWVydCBVeXR0ZXJob2V2ZW4g0L/Q
uNGI0LXRgjoKPj4+IEhpIE1hcmVrLAo+Pj4KPj4+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0IDEy
OjI0IFBNIE1hcmVrIFN6eXByb3dza2kKPj4+IDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+IHdy
b3RlOgo+Pj4+IE9uIDI3LjAxLjIwMjAgMTU6MDcsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToK
Pj4+Pj4gQ3VycmVudGx5LCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBtZW1vcnkgaXMg
b2J0YWluZWQgYnkgbWFza2luZwo+Pj4+PiB0aGUgcHJvZ3JhbSBjb3VudGVyIHdpdGggYSBmaXhl
ZCBtYXNrIG9mIDB4ZjgwMDAwMDAuICBUaGlzIG1hc2sgdmFsdWUKPj4+Pj4gd2FzIGNob3NlbiBh
cyBhIGJhbGFuY2UgYmV0d2VlbiB0aGUgcmVxdWlyZW1lbnRzIG9mIGRpZmZlcmVudCBwbGF0Zm9y
bXMuCj4+Pj4+IEhvd2V2ZXIsIHRoaXMgZG9lcyByZXF1aXJlIHRoYXQgdGhlIHN0YXJ0IGFkZHJl
c3Mgb2YgcGh5c2ljYWwgbWVtb3J5IGlzCj4+Pj4+IGEgbXVsdGlwbGUgb2YgMTI4IE1pQiwgcHJl
Y2x1ZGluZyBib290aW5nIExpbnV4IG9uIHBsYXRmb3JtcyB3aGVyZSB0aGlzCj4+Pj4+IHJlcXVp
cmVtZW50IGlzIG5vdCBmdWxmaWxsZWQuCj4+Pj4+Cj4+Pj4+IEZpeCB0aGlzIGxpbWl0YXRpb24g
Ynkgb2J0YWluaW5nIHRoZSBzdGFydCBhZGRyZXNzIGZyb20gdGhlIERUQiBpbnN0ZWFkLAo+Pj4+
PiBpZiBhdmFpbGFibGUgKGVpdGhlciBleHBsaWNpdGx5IHBhc3NlZCwgb3IgYXBwZW5kZWQgdG8g
dGhlIGtlcm5lbCkuCj4+Pj4+IEZhbGwgYmFjayB0byB0aGUgdHJhZGl0aW9uYWwgbWV0aG9kIHdo
ZW4gbmVlZGVkLgo+Pj4+Pgo+Pj4+PiBUaGlzIGFsbG93cyB0byBib290IExpbnV4IG9uIHI3czky
MTAvcnphMm1ldmIgdXNpbmcgdGhlIDY0IE1pQiBvZiBTRFJBTQo+Pj4+PiBvbiB0aGUgUlpBMk1F
VkIgc3ViIGJvYXJkLCB3aGljaCBpcyBsb2NhdGVkIGF0IDB4MEMwMDAwMDAgKENTMyBzcGFjZSks
Cj4+Pj4+IGkuZS4gbm90IGF0IGEgbXVsdGlwbGUgb2YgMTI4IE1pQi4KPj4+Pj4KPj4+Pj4gU3Vn
Z2VzdGVkLWJ5OiBOaWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+Pj4+
PiBSZXZpZXdlZC1ieTogTmljb2xhcyBQaXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPj4+Pj4gLS0t
Cj4+Pj4+IEFnYWluc3QgYXJtL2Zvci1uZXh0Lgo+Pj4+Cj4+Pj4gVGhpcyBwYXRjaCBsYW5kZWQg
cmVjZW50bHkgaW4gbGludXgtbmV4dC4gSXQgYnJlYWtzIGxlZ2FjeSBib290aW5nIGZyb20KPj4+
PiB0aGUgekltYWdlICsgYXBwZW5kZWQgRFQgKyBjbWRsaW5lL21lbW9yeSBpbmZvIHByb3ZpZGVk
IHZpYSBBVEFHcy4gSQo+Pj4+IHdpbGwgZGVidWcgaXQgZnVydGhlciBvbmNlIEkgZmluZCBzb21l
IHNwYXJlIHRpbWUuIFdoYXQgSSBub3RpY2VkIHNvCj4+Pj4gZmFyLCB0aGUgY21kbGluZS9tZW1v
cnkgaW5mbyBpcyBub3QgcmVhZCBmcm9tIHRoZSBBVEFHcywgb25seSB0aGUgdmFsdWVzCj4+Pj4g
cHJvdmlkZWQgdmlhIGFwcGVuZGVkIERUIGFyZSB1c2VkLgo+Pj4KPj4+IE9vcHMsIHNvbWV0aGlu
ZyBoYXBwZW5pbmcgbGlrZSB0aGlzIHdhcyBvbmUgb2YgbXkgYmlnZ2VzdCB3b3JyaWVzIHdoZW4K
Pj4+IHBvc3RpbmcgdGhpcyBwYXRjaC4uLiBTb3JyeSBmb3IgdGhlIGJyZWFrYWdlLgo+Pj4KPj4+
IElJVUlDLCB0aGUga2VybmVsIHN0aWxsIGJvb3RzLCBidXQganVzdCBkb2Vzbid0IHVzZSB0aGUg
aW5mbyBwYXNzZWQgYnkgQVRBR3M/Cj4+Pgo+Pj4gSSdsbCBoYXZlIGEgY2xvc2VyIGxvb2sgbGF0
ZXIgdG9kYXkuCj4+PiBJbiB0aGUgbWVhbiB0aW1lLCBJJ3ZlIHNlbnQgc29tZSBkZWJ1ZyBjb2Rl
IEkgdXNlZCB3aGVuIGRldmVsb3BpbmcKPj4+IHRoaXMgcGF0Y2gsIHdoaWNoIG1heSBiZSB1c2Vm
dWwsIGhvcGVmdWxseS4KPj4KPj4gSGVsbG8sCj4+Cj4+IE5WSURJQSBUZWdyYSBpcyBhbHNvIGFm
ZmVjdGVkIGJ5IHRoaXMgcGF0Y2guIEEgd2VlayBhZ28gYW4gdXBkYXRlZAo+PiB2ZXJzaW9uIG9m
IHRoZSBwYXRjaCB3YXMgcHVzaGVkIGludG8gbGludXgtbmV4dCBhbmQgbm93IG1hY2hpbmUgZG9l
c24ndAo+PiBib290IGF0IGFsbC4KPj4KPj4gSSBjb3VsZG4ndCBmaW5kIHYzIG9uIHRoZSBNTCwg
c28gcmVwbHlpbmcgdG8gdGhlIHYyLiBQbGVhc2UgdGFrZSBhIGxvb2sKPj4gYW5kIGZpeCB0aGUg
cHJvYmxlbSwgb3IgcmV2ZXJ0L2Ryb3AgdGhlIG9mZmVuZGluZyBwYXRjaCwgdGhhbmtzIGluIGFk
dmFuY2UuCj4gCj4gSSdsbCBkcm9wIHRoZSBwYXRjaC4gSXQncyBjbGVhciB0aGF0IHRoaXMgaXMg
Z29pbmcgdG8gYmUgZGlmZmljdWx0LAo+IHNvIEkgd291bGQgYXNrIHlvdSB0byB0ZXN0IHRoZSBu
ZXh0IHZlcnNpb24sIHJhdGhlciB0aGFuIHdhaXRpbmcgZm9yCj4gaXQgdG8gYXBwZWFyIGluIGxp
bnV4LW5leHQuCgpUaGFuayB5b3UgdmVyeSBtdWNoISBJJ2xsIGJlIGhhcHB5IHRvIHRyeSB2NCwg
cGxlYXNlIGZlZWwgZnJlZSB0byBDQyBtZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
