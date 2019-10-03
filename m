Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69882CADAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bfbnk1illPzs3DlBYUxM2ucSApLTpFz7xDm/UfjtsSo=; b=D/nWMSOY38vzq9
	5LC9m3RV3c+ugVFZvSrWt68Zv35TOEdJlalJA7sjPz3wer029rWjtLpIl996jgR89QZ+910bm7tSl
	iuYrYkZ2c1VM8J5aN7gV3wRs0pwUCbQJ3bzWNURjJCGD6tKu9dT9AAbrhHjgwQD6ma3YAiEL0COEk
	zU/W1TWBFSdxuv2OxQg256F0vRI7dpuwKsLaNPBm0XODHBjdu4FEeI2Rw5yRdKFguStrdtYESiS/6
	3VR0asxXNbufKEn1hVwPZmtTWJpu8aHoheRdkdFpYhAvF/cP+WQcxPY9GiKovsTMkIUtzjvR+iH1i
	oij5rWyKWFfrga9MLJrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5Of-0005Zz-GP; Thu, 03 Oct 2019 18:00:13 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5OX-0004uk-Fw
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 18:00:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id j19so3801646lja.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 11:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=foBAlSvpvTkpQ7VEhjeGmdMB+F2z1Pq+N5FSEjakBEQ=;
 b=BjGNAQ1EvFbyh/Jpc8YYg2RIPXqZ4R9I8ANorOgy/RUlzr/T5SxOOyoXXLNem1wBig
 fqHvzGvwp26dRnxaSN5veub68aRdR46XhNn9lRdL7Ji0VLsUqKO86lLrF2JURYOI7cag
 UqF1lU6KVSt/GJN4HGlCRXmpLKttX9XKNc0h38yFpDQvPlmTmKe5l8ur6A9aMvGFr3kz
 9BlK+sVtaNimjLLJyR6cW+3zmiZuU5KQMP19mSACqTBAK+mqz/GSX2pgb2QpXhgmOLFU
 6oJ7RMHXIVfnnz6jSlQP6ZRKyZHOuQ0/Afdh8O0lwMsOh3yRQnVP0Kv5bzRFZOVhRTs9
 gDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=foBAlSvpvTkpQ7VEhjeGmdMB+F2z1Pq+N5FSEjakBEQ=;
 b=dQ+NeHyeGtqKcVLredKUlU468Yw3KxMA7q82VLoVsITK7kDPP9zflQi5QRQhLHpcn8
 G+L+72d1g3wfnk28c5Kx084+ET01f/4q43ZI/ExNWQNMFanGCpt+0J87Cwv6m7FB3iJz
 iJcFbuf16ytcVRcaaI68KF6k5dlhFpjO5AqDZbG++O7BMxAWqOPqPChT7VOnFnsZLhLr
 DmhIQ5nYN3zr8EDbz/8lNurlETbOfr1XLXghOIx5XghgYc0KuM0JW3DvRjTT6hJ8vLpm
 L0lW5TpFwa9WjlGs9wcbkh0M8k/v9hk8ZuO2lyT+SgoNtO1wjfC9Hi27mPSXAiTwpJHS
 +7AA==
X-Gm-Message-State: APjAAAVSLejarziiUvhy1eAmeuzVgKdq9bcsF3PFD58XaKIAWsFOk8bQ
 JI8PDBkgN/1/zpjwv6g3/ReyZJnk
X-Google-Smtp-Source: APXvYqzB/243LptNJmm7Ip7/LjxJnXggnO3AD2EBIARhaJ4sHQq87w/zqJnJG8wSIFdxHAk8F2VcqQ==
X-Received: by 2002:a2e:8603:: with SMTP id a3mr6867293lji.98.1570125602905;
 Thu, 03 Oct 2019 11:00:02 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.34.231])
 by smtp.googlemail.com with ESMTPSA id k7sm660392lja.19.2019.10.03.11.00.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 11:00:01 -0700 (PDT)
Subject: Re: [PATCH 2/4] ARM: tegra: Enable PLLP bypass during Tegra124 LP1
To: Stephen Warren <swarren@wwwdotorg.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
 <20191001211346.104400-2-swarren@wwwdotorg.org>
 <437f030b-9e20-43e5-42ce-f98430d2149b@gmail.com>
 <485c9828-120a-8e62-bf85-c5d8407d3513@wwwdotorg.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <89e0a7bd-e8e4-5c64-b9d0-a30794ed657e@gmail.com>
Date: Thu, 3 Oct 2019 21:00:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <485c9828-120a-8e62-bf85-c5d8407d3513@wwwdotorg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_110005_541821_3FEC0BBC 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDMuMTAuMjAxOSAxOTozNCwgU3RlcGhlbiBXYXJyZW4g0L/QuNGI0LXRgjoKPiBPbiAxMC8zLzE5
IDU6MjcgQU0sIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gMDIuMTAuMjAxOSAwMDoxMywgU3Rl
cGhlbiBXYXJyZW4g0L/QuNGI0LXRgjoKPj4+IEZyb206IFN0ZXBoZW4gV2FycmVuIDxzd2FycmVu
QG52aWRpYS5jb20+Cj4+Pgo+Pj4gRm9yIGEgbGl0dGxlIG92ZXIgYSB5ZWFyLCBVLUJvb3QgaGFz
IGNvbmZpZ3VyZWQgdGhlIGZsb3cgY29udHJvbGxlciB0bwo+Pj4gcGVyZm9ybSBhdXRvbWF0aWMg
UkFNIHJlLXJlcGFpciBvbiBvZmYtPm9uIHBvd2VyIHRyYW5zaXRpb25zIG9mIHRoZSBDUFUKPj4+
IHJhaWwxXS4gVGhpcyBpcyBtYW5kYXRvcnkgZm9yIGNvcnJlY3Qgb3BlcmF0aW9uIG9mIFRlZ3Jh
MTI0LiBIb3dldmVyLCBSQU0KPj4+IHJlLXJlcGFpciByZWxpZXMgb24gY2VydGFpbiBjbG9ja3Ms
IHdoaWNoIHRoZSBrZXJuZWwgbXVzdCBlbmFibGUgYW5kCj4+PiBsZWF2ZSBydW5uaW5nLiBQTExQ
IGlzIG9uZSBvZiB0aG9zZSBjbG9ja3MuIFRoaXMgY2xvY2sgaXMgc2h1dCBkb3duCj4+PiBkdXJp
bmcgTFAxIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuIEVuYWJsZSBieXBhc3MgKHdoaWNoIEkgYmVs
aWV2ZSByb3V0ZXMKPj4+IG9zY19kaXZfY2xrLCBlc3NlbnRpYWxseSB0aGUgY3J5c3RhbCBjbG9j
aywgdG8gdGhlIFBMTCBvdXRwdXQpIHNvIHRoYXQKPj4+IHRoaXMgY2xvY2sgc2lnbmFsIHRvZ2ds
ZXMgZXZlbiB0aG91Z2ggdGhlIFBMTCBpcyBub3QgYWN0aXZlLiBUaGlzIGlzCj4+PiByZXF1aXJl
ZCBzbyB0aGF0IExQMSBwb3dlciBtb2RlIChzeXN0ZW0gc3VzcGVuZCkgb3BlcmF0ZXMgY29ycmVj
dGx5Lgo+Pj4KPj4+IFRoZSBieXBhc3MgY29uZmlndXJhdGlvbiBtdXN0IHRoZW4gYmUgdW5kb25l
IHdoZW4gcmVzdW1pbmcgZnJvbSBMUDEsIHNvCj4+PiB0aGF0IGFsbCBwZXJpcGhlcmFsIGNsb2Nr
cyBydW4gYXQgdGhlIGV4cGVjdGVkIHJhdGUuIFdpdGhvdXQgdGhpcywgbWFueQo+Pj4gcGVyaXBo
ZXJhbHMgd29uJ3Qgd29yayBjb3JyZWN0bHk7IGZvciBleGFtcGxlLCB0aGUgVUFSVCBiYXVkIHJh
dGUgd291bGQKPj4+IGJlIGluY29ycmVjdC4KPj4+Cj4+PiBOVklESUEncyBkb3duc3RyZWFtIGtl
cm5lbCBjb2RlIG9ubHkgZG9lcyB0aGlzIGlmIG5vdCBjb21waWxlZCBmb3IKPj4+IFRlZ3JhMzAs
IHNvIHRoZSBhZGRlZCBjb2RlIGlzIG1hZGUgY29uZGl0aW9uYWwgdXBvbiB0aGUgY2hpcCBJRC4g
TlZJRElBJ3MKPj4+IGRvd25zdHJlYW0gY29kZSBtYWtlcyB0aGlzIGNoYW5nZSBjb25kaXRpb25h
bCB1cG9uIHRoZSBhY3RpdmUgQ1BVCj4+PiBjbHVzdGVyLiBUaGUgdXBzdHJlYW0ga2VybmVsIGN1
cnJlbnRseSBkb2Vzbid0IHN1cHBvcnQgY2x1c3RlciBzd2l0Y2hpbmcsCj4+PiBzbyB0aGlzIHBh
dGNoIGRvZXNuJ3QgdGVzdCB0aGUgYWN0aXZlIENQVSBjbHVzdGVyIElELgo+Pj4KPj4+IFsxXSAz
Y2M3OTQyYTRhZTUgQVJNOiB0ZWdyYTogaW1wbGVtZW50IFJBTSByZXBhaXIKPj4+Cj4+PiBSZXBv
cnRlZC1ieTogSm9uYXRoYW4gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KPj4+IENjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCj4+PiBTaWduZWQtb2ZmLWJ5OiBTdGVwaGVuIFdhcnJlbiA8
c3dhcnJlbkBudmlkaWEuY29tPgo+Pj4gLS0tCj4+PiDCoCBhcmNoL2FybS9tYWNoLXRlZ3JhL3Ns
ZWVwLXRlZ3JhMzAuUyB8IDExICsrKysrKysrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTEg
aW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXRlZ3JhL3Ns
ZWVwLXRlZ3JhMzAuUyBiL2FyY2gvYXJtL21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TCj4+PiBp
bmRleCBiNDA4ZmE1NmViODkuLjY5MjJkZDhkM2UyZCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJt
L21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TCj4+PiArKysgYi9hcmNoL2FybS9tYWNoLXRlZ3Jh
L3NsZWVwLXRlZ3JhMzAuUwo+Pj4gQEAgLTM3MCw2ICszNzAsMTQgQEAgX3BsbF9tX2NfeF9kb25l
Ogo+Pj4gwqDCoMKgwqDCoCBwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTENfQkFTRQo+
Pj4gwqDCoMKgwqDCoCBwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTFhfQkFTRQo+Pj4g
wqAgK8KgwqDCoCB0ZWdyYV9nZXRfc29jX2lkIFRFR1JBX0FQQl9NSVNDX0JBU0UsIHIxCj4+PiAr
wqDCoMKgIGNtcMKgwqDCoCByMSwgI1RFR1JBMzAKPj4+ICvCoMKgwqAgYmVxwqDCoMKgIDFmCj4+
Cj4+IFdoYXQgYWJvdXQgVDExNCwgb3IgZG9lcyBpdCBuZWVkIGVuYWJsZWQgUExMUCBhcyB3ZWxs
Pwo+IAo+IEknbSBub3doZXJlIG5lYXIgYXMgZmFtaWxpYXIgd2l0aCBUMTE0IGFzIFQxMjQsIHNv
IEkgY2FuJ3QgYmUgMTAwJSBzdXJlLiBIb3dldmVyLCBhIHZlcnkKPiBxdWljayBsb29rIGF0IHRo
ZSBDQVIgc2VjdGlvbiBpbiB0aGUgVDExNCBUUk0gZG9lcyBzaG93IHRoZSBzYW1lIGdhdGUvbXV4
IHN0cnVjdHVyZSBhcm91bmQKPiBhIHJlc2hpZnQgYW5kIGZ1c2UgY2xvY2ssIHNvIEkgYXNzdW1l
IHRoZSByZXF1aXJlbWVudCBpcyBpZGVudGljYWwgdGhlcmUuCgpJbmRlZWQsIFQxMTQgVFJNIHN1
Z2dlc3RzIHRoYXQgaXQgaGFzIHRoZSBzYW1lIHJlcXVpcmVtZW50LgoKPiBBbHNvLCBOVklESUEn
cyBkb3duc3RyZWFtIGtlcm5lbCBoYXMgYSBjb21waWxlLXRpbWUgaWZkZWYgYXJvdW5kIHRoZSBj
b2RlIEkndmUgYWRkZWQgaGVyZS4KPiBJdCdzIG5vdCBjb21waWxlZCBmb3IgVDMwIHNwZWNpZmlj
YWxseSwgYW5kIGlzIGNvbXBpbGVkIGZvciBhbnl0aGluZyBlbHNlLCB3aGljaCBJIGJlbGlldmUK
PiBtZWFucyBib3RoIFQxMTQgYW5kIFQxMjQuCj4gCj4gSW4gcGF0Y2ggMSBpbiB0aGlzIHNlcmll
cywgSSBvbmx5IGVuYWJsZWQgdGhlIGZ1c2UgY2xvY2sgZm9yIFQxMjQsIHNpbmNlIEkgZG9uJ3Qg
aGF2ZSBhCj4gVDExNCBzeXN0ZW0gdG8gdGVzdCBhbnkgbW9yZS4gSG93ZXZlciwgdGhlIHJldmlz
ZWQgcGF0Y2ggMSB0aGF0IFRoaWVycnkgYW5kIEkgYXJlCj4gZGlzY3Vzc2luZyB3b3VsZCBlbmFi
bGUgdGhlIGZ1c2UgY2xvY2sgb24gYWxsIFNvQ3MsIGFuZCBoZW5jZSBtYWtlIHRoZSBjb2RlIHdv
cmsKPiBpZGVudGljYWxseSBvbiBUMTE0IGFzIGl0IGRvZXMgb24gVDEyNC4KClRoYW5rcyBmb3Ig
dGhlIGNsYXJpZmljYXRpb24uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
