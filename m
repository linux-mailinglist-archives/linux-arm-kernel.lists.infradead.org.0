Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52C66816B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 00:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5W7rpKl3dWcxuzyGdW81ZTBKKqo8fn845hKCfMeuXAg=; b=ZDw9CdN8pXTR4a
	vLSkrhvrCHi2TYVz+yy3oYIB2biDfc/kOzsvz+rQFaNabzrbUA4Of5jGiFT1Hw9v2qx2z6ZnhjHDt
	+CRNpNv35RIwWALyc53MPSS4QTDhMmYEzSzA4Azpm3RgdmAgw78rcl6w+bgS7kjoW5fBUa/JRM/RN
	qfCIyMEJ9BUpIfNg71k/MsnW1ejFdtPiseE+/1OOJOtWns9SR84vs4dNiBeURM4F/hnnxlUDQEXvO
	+ICeaycnwI5P5pv98/LIo8weNeA68JBF8bDnEhGAAZ/HU7hzwxTonCBXAjtFA48Xwja8Oav6qHtRN
	h/JW4My/kF1Y2rn3P12Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmmqJ-00024N-3i; Sun, 14 Jul 2019 22:19:39 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmmq7-00023X-Cd
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 22:19:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id z28so14246873ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jul 2019 15:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=umaBieZkHQlpvJRlI46BSRt17eppj53ySrGsxMxyEG4=;
 b=dGKKLVKd7gLPwY113cgCcCqC8J9kg/7znMzw2eIin4M0OqAI8R1bMUlioeGfBhTuua
 1fJ+VcSaWusysnmOtj+aP2D1/1x6iH02Mx6tcBtMO61wRkky5YMAfLL/GwRVZ0DnVSj5
 t3m5yi8C6KAXvrdHImfzVLHECQIgWX8W/fDQq3eS6yhQhTIk2vffF/X7nYKkvgy0+6+e
 Vh3xeXl7utyhVns7hBMuMQLqF0FLhcYi9fdnPt9L+3P7vWW5MpDYKi9q8Q2f6/Jlp7rz
 DiavHy2pWYz4nX//uHpnICAGCVYN7OFvzh+Gex1JGb7yeVVJt03QUB+hTEWj9zUojiYq
 Z2nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=umaBieZkHQlpvJRlI46BSRt17eppj53ySrGsxMxyEG4=;
 b=L2I5QHSU+Ugt0jDCSAa/mUIvXVFL1EYG1zC3IRs1qcF7VjOaE2tJx06fV4F1EV5Nra
 bobRsYETcaf7JQaIUTn5evvoKPt0iKbvTifewtZ7lDtXLPfo0fw5iEi842/cKpovmnlU
 A3VvuZkH320pi35OpGclV9EPD8JGIaPWlAloha3n+ZNfTQq01RKbNgyu+HgzuGa+s18o
 efiznT1Uccwm0TLgE2+hq7WhdumB/vuXFzU3RvbLsPHbhzzusQZ4ODSAr5PR2EJUCQnu
 HkzgHIdhdowx08ntJEyXIfEAorI43y1B/CgbSPW9QyLMpVKX3HoPziW5NCqnt1JXl7Yj
 KTeQ==
X-Gm-Message-State: APjAAAX30yFnb+fC5iH0r6vEAOCPLRwrobMouX7sE2Hm5rL4ZUWsxtXT
 UdBKR4llCEu8QxksrY5M9CM=
X-Google-Smtp-Source: APXvYqy5XOMeWNWyjwppmpufMHj4Zd2QTGvWzxwnDt18HRH4CsnVfOJOY5AjnP74wL5x0w0XxPawFQ==
X-Received: by 2002:a2e:2d12:: with SMTP id t18mr12325112ljt.175.1563142761276; 
 Sun, 14 Jul 2019 15:19:21 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id n10sm2064700lfe.24.2019.07.14.15.19.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 15:19:20 -0700 (PDT)
Subject: Re: [PATCH v2 1/6] ARM: tegra: Remove cpuidle drivers
From: Dmitry Osipenko <digetx@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-2-digetx@gmail.com>
 <c087a5cb-2ffa-1cf6-f0bf-631234759a22@nvidia.com>
 <a6e4b43e-369c-c501-6d2e-69d5b940ff9c@gmail.com>
 <73781434-d25a-b17b-aacb-95ace5ac5f95@nvidia.com>
 <9d79ed3e-a37f-af9c-0696-31dc33bbdefd@gmail.com>
Message-ID: <0a04f2f3-a2bd-b750-d6db-06dae481fb0b@gmail.com>
Date: Mon, 15 Jul 2019 01:19:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <9d79ed3e-a37f-af9c-0696-31dc33bbdefd@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_151927_457258_6CA09BF5 
X-CRM114-Status: GOOD (  25.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTIuMDcuMjAxOSAxOToyMywgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMTIuMDcuMjAx
OSAxMjozOSwgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+Pgo+PiBPbiAxMS8wNy8yMDE5IDE4OjAz
LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+PiAxMS4wNy4yMDE5IDEyOjI2LCBKb24gSHVudGVy
INC/0LjRiNC10YI6Cj4+Pj4KPj4+PiBPbiAxMS8wNy8yMDE5IDA0OjEzLCBEbWl0cnkgT3NpcGVu
a28gd3JvdGU6Cj4+Pj4+IFJlbW92ZSB0aGUgb2xkIGRyaXZlcnMgdG8gcmVwbGFjZSB0aGVtIGNs
ZWFubHkgd2l0aCBhIG5ldyBvbmUgbGF0ZXIgb24uCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICBhcmNo
L2FybS9tYWNoLXRlZ3JhL01ha2VmaWxlICAgICAgICAgICB8ICAxMyAtLQo+Pj4+PiAgYXJjaC9h
cm0vbWFjaC10ZWdyYS9jcHVpZGxlLXRlZ3JhMTE0LmMgfCAgODkgLS0tLS0tLS0tLS0KPj4+Pj4g
IGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS10ZWdyYTIwLmMgIHwgMjEyIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS10ZWdyYTMw
LmMgIHwgMTMyIC0tLS0tLS0tLS0tLS0tLQo+Pj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVp
ZGxlLmMgICAgICAgICAgfCAgNTAgLS0tLS0tCj4+Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL2Nw
dWlkbGUuaCAgICAgICAgICB8ICAyMSAtLS0KPj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvaXJx
LmMgICAgICAgICAgICAgIHwgIDE4IC0tLQo+Pj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9pcnEu
aCAgICAgICAgICAgICAgfCAgMTEgLS0KPj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvcG0uYyAg
ICAgICAgICAgICAgIHwgICA3IC0KPj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvcG0uaCAgICAg
ICAgICAgICAgIHwgICAxIC0KPj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEvcmVzZXQtaGFuZGxl
ci5TICAgIHwgIDExIC0tCj4+Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3Jlc2V0LmggICAgICAg
ICAgICB8ICAgOSArLQo+Pj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10ZWdyYTIwLlMg
ICAgfCAxOTAgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+PiAgYXJjaC9hcm0vbWFjaC10ZWdy
YS9zbGVlcC5oICAgICAgICAgICAgfCAgMTIgLS0KPj4+Pj4gIGFyY2gvYXJtL21hY2gtdGVncmEv
dGVncmEuYyAgICAgICAgICAgIHwgICAzIC0KPj4+Pj4gIGRyaXZlcnMvc29jL3RlZ3JhL0tjb25m
aWcgICAgICAgICAgICAgIHwgICAxIC0KPj4+Pj4gIGluY2x1ZGUvc29jL3RlZ3JhL2NwdWlkbGUu
aCAgICAgICAgICAgIHwgICA0IC0KPj4+Pj4gIDE3IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgNzc5IGRlbGV0aW9ucygtKQo+Pj4+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
L21hY2gtdGVncmEvY3B1aWRsZS10ZWdyYTExNC5jCj4+Pj4+ICBkZWxldGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm0vbWFjaC10ZWdyYS9jcHVpZGxlLXRlZ3JhMjAuYwo+Pj4+PiAgZGVsZXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS10ZWdyYTMwLmMKPj4+Pj4gIGRlbGV0
ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXRlZ3JhL2NwdWlkbGUuYwo+Pj4+PiAgZGVsZXRl
IG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21hY2gtdGVncmEvY3B1aWRsZS5oCj4+Pj4+ICBkZWxldGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC10ZWdyYS9pcnEuaAo+Pj4+Cj4+Pj4gQnkgcmVtb3Zp
bmcgYWxsIHRoZSBhYm92ZSwgaXQgaXMgcmVhbGx5IGhhcmQgdG8gcmV2aWV3IHRoZSBkaWZmLiBJ
cwo+Pj4+IHRoZXJlIGFueSB3YXkgeW91IGNvdWxkIGZpcnN0IGNvbnNvbGlkYXRlIHRoZSBjcHVp
ZGxlIGRyaXZlcnMgaW50byBzYXkKPj4+PiB0aGUgZXhpc3RpbmcgYXJjaC9hcm0vbWFjaC10ZWdy
YS9jcHVpZGxlLXRlZ3JhMjAuYyBhbmQgdGhlbiBtb3ZlIHRvCj4+Pj4gZHJpdmVycy9jcHVpZGxl
Pwo+Pj4KPj4+IEknbSBhZnJhaWQgdGhhdCBpdCB3aWxsIG1ha2UgcmV2aWV3aW5nIGV2ZW4gbW9y
ZSBkaWZmaWN1bHQgYmVjYXVzZQo+Pj4gZXZlcnl0aGluZyB0aGF0IGlzIHJlbW92ZWQgaGVyZSBp
cyBub3QgcmV0dXJuZWQgaW4gdGhlIGZ1cnRoZXIgcGF0Y2hlcy4KPj4+IFRoZSBuZXcgZHJpdmVy
IGlzIGJhc2VkIG9uIHRoZSBvbGRlciBvbmVzLCBidXQgSSB3cm90ZSBpdCBmcm9tIHNjcmF0Y2gK
Pj4+IGFuZCBpdCdzIG5vdCBvbmx5IGxvb2tzIGRpZmZlcmVudCwgYnV0IGFsc28gd29ya3MgYSBi
aXQgZGlmZmVyZW50IGFzIHlvdQo+Pj4gbWF5IHNlZS4KPj4+Cj4+PiBDb3VsZCB5b3UgcGxlYXNl
IGNsYXJpZnkgd2hhdCBleGFjdGx5IG1ha2VzIGl0IGhhcmQgdG8gcmV2aWV3PyBUaGUgZGlmZgo+
Pj4gbG9va3MgcHJldHR5IGNsZWFuIHRvIG1lLCB3aGlsZSBzcXVhc2hpbmcgZXZlcnl0aGluZyBp
bnRvIGV4aXN0aW5nCj4+PiBkcml2ZXIgc2hvdWxkIGJlIHF1aXRlIGEgbWVzcy4KPj4KPj4gSWRl
YWxseSBhIHBhdGNoIHNob3VsZCBzdGFuZGFsb25lIGFuZCBjYW4gYmUgcmV2aWV3ZWQgYnkgaXRz
ZWxmLgo+PiBIb3dldmVyLCB0byByZXZpZXcgdGhpcywgd2UgbmVlZCB0byByZXZpZXcgcGF0Y2hl
cyAxLCAyIGFuZCAzIGF0IHRoZQo+PiBzYW1lIHRpbWUuIFNvIElNTyBpdCBpcyBub3QgdGhhdCBj
b252ZW5pZW50IGZyb20gYSByZXZpZXdlcnMKPj4gcGVyc3BlY3RpdmUuIEZ1cnRoZXJtb3JlLCBw
YXRjaGVzIDEgYW5kIDMgYXJlIGxhcmdlIGFuZCBzbyBlYXN5IHRvIG1pc3MKPj4gc29tZXRoaW5n
Lgo+Pgo+PiBJcyB0aGVyZSByZWFsbHkgbm8gd2F5IHRvIGhhdmUgYSBwYXRjaCB0byBjb21iaW5l
ZCB0aGUgZXhpc3RpbmcgZHJpdmVycywKPj4gdGhlbiBhIHBhdGNoIHRvIGNvbnZlcnQgdGhlbSBp
bnRvIHRoZSBuZXdlciByZXdyaXR0ZW4gdmVyc2lvbiB5b3UgaGF2ZQo+PiBpbXBsZW1lbnRlZCwg
dGhlbiBtb3ZlIHRoZSBkcml2ZXI/Cj4gCj4gUHJvYmFibHkgSSBzcGVudCBhIGJpdCB0b28gbXVj
aCB0aW1lIHdpdGggdGhhdCBjb2RlLCBzbyBub3cgeW91cnMKPiBzdWdnZXN0aW9uIGxvb2tzIHRv
IG1lIGxpa2UgYW4gdW5uZWNlc3Nhcnkgc3RlcC4gQnV0IEkgd2lsbCB0cnkgYW5kIHNlZQo+IGhv
dyBpdCBnb2VzLCBhdCBsZWFzdCBpdCBzaG91bGQgYmUgcG9zc2libGUgdG8gYnJlYWsgZG93biB0
aGUgcGF0Y2ggMSBhCj4gYml0IG1vcmUsIGhvcGVmdWxseSBpdCB3aWxsIGhlbHAgdG8gYmV0dGVy
IHVuZGVyc3RhbmQgd2hhdCdzIGdvaW5nIG9uIGluCj4gdGhlIGZ1cnRoZXIgcGF0Y2hlcyBpZiB5
b3UncmUgbm90IGZhbWlsaWFyIG9yIGRvbid0IHJlbWVtYmVyIGhvdyBpdCBhbGwKPiB3b3Jrcy4K
CkkgdHJpZWQgKGluIHNldmVyYWwgYXR0ZW1wdHMpIGFuZCBjb3VsZG4ndCBmaW5kIGEgd2F5IGhv
dyB0bwptZWFuaW5nZnVsbHkgc3F1YXNoIHRoZSBvbGQgZHJpdmVycy4gSXQncyBhIGxvdCBvZiB1
bm5lY2Vzc2FyeSBjaHVybmluZwp0aGF0IHdvbid0IGhlbHAgd2l0aCByZXZpZXdpbmcgb2YgdGhl
IGNvZGUgYXQgYWxsIGJlY2F1c2UgbmV3IGRyaXZlciBpcwpzdHJ1Y3R1cmVkIGRpZmZlcmVudGx5
IGFuZCBiZWF0aW5nIG9mIG9sZCBkcml2ZXJzIHVudGlsIHRoZXkgcmVzZW1ibGUKdGhlIG5ldyBv
bmUganVzdCBub3Qgd29ydGggaXQuIEknbGwgd3JpdGUgYSBiaXQgbW9yZSBkZXRhaWxlZCBjb21t
aXQKbWVzc2FnZSwgZW1waGFzaXppbmcgdGhlIGRldGFpbHMsIGhvcGUgaXQgd2lsbCBiZSBoZWxw
ZnVsLiBUaGUgb2xkCmRyaXZlcnMgYXJlIH4yMDAgTE9DIGVhY2ggYW5kIHRoZSBuZXcgb25lIHdp
bGwgYmUgfjMwMCBMT0MgKyA1MCBsaW5lcyBvZgpjb21tZW50cywgSSBkb24ndCB0aGluayB0aGF0
IGl0J3MgcmVhbGx5IHZlcnkgaGFyZCB0byByZXZpZXcgYXMgaXQgaXQKbWF5IGluaXRpYWxseSBs
b29rZWQgbGlrZSB0byB5b3UsIEpvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
