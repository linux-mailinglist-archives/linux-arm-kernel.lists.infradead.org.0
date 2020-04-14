Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82341A79F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Vgfi8h4tG403XYkizg76oEMn1ZJfY9flVam/ZwPwz0=; b=VhAPPRImMSQkdJ
	nNv2thRmLCUn4hTawfSi1SAcvZAEVYyPPD0xRx5VWhZCjF/huGtb6hUujT/H2icTfsJN1bHQHTjL7
	IL9z0XXxcBdJCVSipYKbCZHZef5LBuh8U7ETY7+m8kSHQhD3UCBf5u0UZN9uOuU6256R2auKdno8s
	3sGFHl+850nuV6cV0vDufRY/nDq/wAgJBR/+JOfNS1mxvswPtu9hPIr2npvQjYBDimWl07D+5qFzG
	podA5FUUhJ/kVAYFLdOfsCbQt2l4xSRpSxEN+DxdsK3E57kYulBZNemrrfUhsK+Lx6fUzZ+uqVGLY
	fsPX7QHydylwbsJ6c29g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOK19-0004Rw-4C; Tue, 14 Apr 2020 11:46:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOK04-0001pz-Gz; Tue, 14 Apr 2020 11:45:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id z6so13613874wml.2;
 Tue, 14 Apr 2020 04:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=H1H+WW/rfol3XCr99+J5WEL3zWbHBKA7AHfmHx0QHrA=;
 b=ZYG/M7Mv2RWSGdB7XWVJLwSLyM1KyjyOyAfs0l5PvfKAF/NfeSrXtK33UlQq+rFubE
 BRvv0vA7QQXSsW3JqL9zAlN9/3dMqPpj8Eq4itpJSB4SbUOuxZFzAthjQ3miYsn+SfLY
 7YhdSlC6Y2DnoBFYV4YkmtjQAN4sq/PplVYxPMUbjEt9DFXbRLbqL3s9qftHjsVwy4oR
 OjgRKMZQY0luC92TIO8UwzayBEblh3B4uyPpMk/4OLLp0mE8z+ciUxb8viesohCqxkv8
 qIM95iwTmYHxCugZrUp05M/ypr/Xs2d9AYlV5QT9Sd3bdtc+wB46oDSZNM3r/Fi6kYGK
 qyqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H1H+WW/rfol3XCr99+J5WEL3zWbHBKA7AHfmHx0QHrA=;
 b=ISmQsZCW7bvsHA/rJ1KOZViRG+dQ/eXDKykDmmiogfnWEERFAo8CPGDbNj4heA9hEX
 I+pG5ILJ71rMZWnZTO2modQtnOVJSSW2Gqf4GbAwiMRugz6rJL0QehnMXTAre20bYZfD
 +rJZXZ0WMOuXJMTODUJHpHULMF9YH14j5/mnIxlqW52HOgmReWvmUh2tW6nwxswnHZm1
 O27Lg5eAmrdSBAZNVkHNFNQhxMVmz9d5OXyYwZEdLhcZnbewwtk6ePC25d2wyWaBKS85
 aGpxl3Lq2lImMc4dpmQZB+fF0qKW+7FK870TwiZyephqH/79rjHgY1lQnTCNThZjGFF5
 oHQA==
X-Gm-Message-State: AGi0PuZYXEdP0h87wqT+5NYgY2trEaZq57UQU4xy71T3Nzsa+/R3Otzk
 9Blv8XRJQaRLZUN8qW6N6PhR6E1q
X-Google-Smtp-Source: APiQypI+pzhmOtvHbjeu5Az00+oZWfw3LuLDn5G0O9eSh9lLsvK6ekfBlcuQ+ZBlenp/Szsmw7pxdg==
X-Received: by 2002:a1c:ded4:: with SMTP id
 v203mr23311735wmg.106.1586864703169; 
 Tue, 14 Apr 2020 04:45:03 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 138sm19207778wmb.14.2020.04.14.04.45.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 04:45:02 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in
 rk3308.dtsi
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
References: <20200413193652.1952-1-jbx6244@gmail.com>
 <20c81edc-247c-8db0-2b3c-a6c2fcad6b4e@arm.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <f19b6b48-2950-abca-7dee-31c24118c3ef@gmail.com>
Date: Tue, 14 Apr 2020 13:45:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20c81edc-247c-8db0-2b3c-a6c2fcad6b4e@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_044508_592511_AAB7561D 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sIEhlaWtvLAoKSWYgdGhlIFJvY2tjaGlwIERUIG1haW50YWluZXJzKD0gSGVpa28p
IGFncmVlIHRoYXQgdGhlIG5ldyBsaW5lIGZvciB0aGUKJ2J1cy13aWR0aCcgcHJvcGVydGllcyBp
cyB0aGF0IGl0IHNob3VsZCBiZSBwbGFjZWQgaW4gZHRzaSBJJ2xsIHByb2R1Y2UKYSB2ZXJzaW9u
IDIuIFBsZWFzZSBhZHZpc2Ugd2hhdCBzaG91bGQgYmUgZG9uZSB3aXRoIHRoZSBvdGhlciBSb2Nr
Y2hpcApTb0NzLiBDaGFuZ2UgdGhlbSB0b28/CgpKb2hhbi4KCk9uIDQvMTQvMjAgMTI6MDIgUE0s
IFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyMDIwLTA0LTEzIDg6MzYgcG0sIEpvaGFuIEpvbmtl
ciB3cm90ZToKPj4gVGhlICdidXMtd2lkdGgnIHByb3BlcnR5IGZvciBtbWMgbm9kZXMgaXMgZGVm
aW5lZCBib3RoIGluCj4+ICdyazMzMDguZHRzaScgYW5kICdyazMzMDgtcm9jLWNjLmR0cycuCj4+
IEluIGxpbmUgd2l0aCB0aGUgb3RoZXIgUm9ja2NoaXAgU29DcyBkZWZpbmUgdGhhdCBpbiBhIHVz
ZXIgZHRzIG9ubHksCj4+IHNvIHJlbW92ZSBhbGwgZW50cmllcyBmcm9tIG1tYyBub2RlcyBpbiAn
cmszMzA4LmR0c2knLgo+IAo+IEp1ZGdpbmcgYnkgdGhlIHBpbmN0cmwgZW50cmllcywgdGhlc2Ug
cmVwcmVzZW50IHRoZSBudW1iZXIgb2YgcGlucwo+IHByb3ZpZGVkIGJ5IHRoZSBTb0MgaXRzZWxm
LiBPYnZpb3VzbHkgYm9hcmRzIG5lZWQgdG8gb3ZlcnJpZGUgdGhhdCBpZgo+IGZvciBzb21lIHJl
YXNvbiB0aGV5IGRvbid0IHdpcmUgdXAgYWxsIHRoZSBhdmFpbGFibGUgZGF0YSBsaW5lcywgYnV0
IGl0Cj4gc2VlbXMgYmFja3dhcmRzIHRvIGhhdmUgZXZlcnkgYm9hcmQgcmVzdGF0ZSB0aGUgU29D
J3MgZGVmYXVsdCB2YWx1ZS4KPiAKPiBJbiBmYWN0LCBoYXZpbmcgYnJvdWdodCBpdCB1cCwgZm9y
IHRoaXMgcGFydGljdWxhciBjYXNlIHRoZSBwaW5jdHJsCj4gc2V0dGluZyBpcyBpbmhlcmVudGx5
IHJlbGF0ZWQgdG8gdGhlIGJ1cyB3aWR0aCwgc28gaGF2aW5nIG9uZSB3aXRob3V0Cj4gdGhlIG90
aGVyIGluIGVpdGhlciBwbGFjZSBkb2Vzbid0IHNtZWxsIHJpZ2h0Lgo+IAo+IFJvYmluLgo+IAo+
PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+PiAtLS0K
Pj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMDguZHRzaSB8IDMgLS0tCj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMDguZHRzaQo+PiBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzA4LmR0c2kKPj4gaW5kZXggYTliOTg1NTVkLi4xMzA3NzFlZGUg
MTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzA4LmR0c2kK
Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMDguZHRzaQo+PiBAQCAt
NTg3LDcgKzU4Nyw2IEBACj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInJvY2tj
aGlwLHJrMzMwOC1kdy1tc2hjIiwKPj4gInJvY2tjaGlwLHJrMzI4OC1kdy1tc2hjIjsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDAgMHhmZjQ4MDAwMCAweDAgMHg0MDAwPjsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8R0lDX1NQSSA3NiBJUlFfVFlQRV9MRVZFTF9I
SUdIPjsKPj4gLcKgwqDCoMKgwqDCoMKgIGJ1cy13aWR0aCA9IDw0PjsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIGNsb2NrcyA9IDwmY3J1IEhDTEtfU0RNTUM+LCA8JmNydSBTQ0xLX1NETU1DPiwKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNydSBTQ0xLX1NETU1DX0RSVj4sIDwmY3J1
IFNDTEtfU0RNTUNfU0FNUExFPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzID0g
ImJpdSIsICJjaXUiLCAiY2l1LWRyaXZlIiwgImNpdS1zYW1wbGUiOwo+PiBAQCAtNjAyLDcgKzYw
MSw2IEBACj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzMw
OC1kdy1tc2hjIiwKPj4gInJvY2tjaGlwLHJrMzI4OC1kdy1tc2hjIjsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIHJlZyA9IDwweDAgMHhmZjQ5MDAwMCAweDAgMHg0MDAwPjsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIGludGVycnVwdHMgPSA8R0lDX1NQSSA3NyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4g
LcKgwqDCoMKgwqDCoMKgIGJ1cy13aWR0aCA9IDw4PjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNs
b2NrcyA9IDwmY3J1IEhDTEtfRU1NQz4sIDwmY3J1IFNDTEtfRU1NQz4sCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPCZjcnUgU0NMS19FTU1DX0RSVj4sIDwmY3J1IFNDTEtfRU1NQ19T
QU1QTEU+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiYml1IiwgImNpdSIs
ICJjaXUtZHJpdmUiLCAiY2l1LXNhbXBsZSI7Cj4+IEBAIC02MTUsNyArNjEzLDYgQEAKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzA4LWR3LW1zaGMiLAo+
PiAicm9ja2NoaXAscmszMjg4LWR3LW1zaGMiOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0g
PDB4MCAweGZmNGEwMDAwIDB4MCAweDQwMDA+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDc4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiAtwqDCoMKgwqDCoMKg
wqAgYnVzLXdpZHRoID0gPDQ+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjcnUg
SENMS19TRElPPiwgPCZjcnUgU0NMS19TRElPPiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA8JmNydSBTQ0xLX1NESU9fRFJWPiwgPCZjcnUgU0NMS19TRElPX1NBTVBMRT47Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJiaXUiLCAiY2l1IiwgImNpdS1kcml2ZSIs
ICJjaXUtc2FtcGxlIjsKPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
