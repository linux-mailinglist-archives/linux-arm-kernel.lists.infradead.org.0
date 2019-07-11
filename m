Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B31E365E71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 19:25:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFFFAotQKDNsBWfUcOlWRsvDK+2/XupDTNDHvi865/U=; b=tSDaw0Gy2sFJsj
	rosPqTntWVSMVhjzFd4iXPNImdei+D4yraovEzISSJ4s9M+Jp3zgmcYDXwQjUS9j/rANgVKlsXUQt
	rC22UjHdk1KSEZIp7CyUjXxUREXOnm+B5D7hUm4hzZLaNkNvprCgr42u1WKQkemz2hTLNG5hR4eUX
	TU7ZB8/zS4xKcM6e1oG5PIjQt4V5Bz0pI9T5vMX5ApTmLTn68Efkj0Uc1dtrENfGmVP08TxHZisrb
	AhxaJIclxcoI7UbaQwvPsv5fYG+qFPu9/sx7+XSzjXeruNGJPv+uEavUrvYO2eTLjCeuw/ulA+yMT
	3HYbNCQq4O7Sy2OdLRgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlcpA-0005sk-4S; Thu, 11 Jul 2019 17:25:40 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlcoz-0005sH-3D
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 17:25:30 +0000
Received: by mail-lf1-x143.google.com with SMTP id 62so4607238lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 10:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2YMfHUBjXHpo+j06pyniNllvZMRnbJcOo4hnaLC71sE=;
 b=ApmKnjpVGrYMZYw9nmXLaN19GMQAPjPv7W7548PsMxVOiIztXhPoNpajU9makN5x2H
 OU0g1aGH+1kMbq6R3KOSnFMvkR8XhQ2jFY2cP+EMCN/4OFxDNNoOwETRn6/Xy+NtZtX4
 YKd4yvHwa1C/idpQfxRbeKHt3PemDXwQi4pah8oRvYDoaKqVfPRMzg0UDVwEfg5k4mUN
 mDTv06DQjk2qoQ+t7NqHgN5e1oupNpskmuphiTmuBMeSlkwl8o6yFHkJAk5PuqFp0gHM
 aTgj3TNmg6D7mj6G4ID7Ezg4KvEfhTp/OlYXv/nFMYo3JEp4+AtKyQmtxC3zmv1PZApN
 IqIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2YMfHUBjXHpo+j06pyniNllvZMRnbJcOo4hnaLC71sE=;
 b=fZbMWgsHr7PuhNIynOWAGDEoUrDmAaCIhkJGC+2RmD3+VGRaenf7BjTgmunPhzIl7h
 gB3ltoT4vdNThe9aKl8Wo4t5sTweZGPklRpdp37vY9oozXQOIZ7oIA2C7JbUs1IdTcDr
 t/fvenDaitgEvGjo8vlv0AnV63GoGwkL30Zomo1jemEuFHmJFg563Rx4X6SFWYn7+dNq
 pwqhzb8A1Z5srDkwC9O2phUsQgj2vKnFw1sl657JDvxjwRnwr3/Wg3IY4u5XBnXO2ly2
 M6UdsJy+8qNqfw5lgbQdqPxvesyReSPZl29p3fi2gtKPqKgAEKfcVKJuRSdyB/HqByid
 Kb6A==
X-Gm-Message-State: APjAAAVJMgaTCPYKmmGL18EhhNy9Ungiq/hriTLW6QKTfuoxS7A+CWQW
 tncH+aUA23TQt3urV+U8i53VcsWZ
X-Google-Smtp-Source: APXvYqzfDDUhalkCcqE0q9tb+NTPSe5zxtMtKXFg82as9QK71ou16O9M+55H/j8aZ6Ikhc++VBbZ9A==
X-Received: by 2002:ac2:52b7:: with SMTP id r23mr2490854lfm.120.1562865927145; 
 Thu, 11 Jul 2019 10:25:27 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id b1sm1084553ljj.26.2019.07.11.10.25.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 10:25:26 -0700 (PDT)
Subject: Re: [PATCH v2 2/6] ARM: tegra: Expose functions required for cpuidle
 driver
To: Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-3-digetx@gmail.com>
 <bc6e96be-91ee-5d94-cbc2-46d2e2f25bce@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <514c1cd6-2180-b55f-dacc-f0e08d9a366f@gmail.com>
Date: Thu, 11 Jul 2019 20:25:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <bc6e96be-91ee-5d94-cbc2-46d2e2f25bce@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_102529_142380_6E33986E 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTEuMDcuMjAxOSAxNTo0MiwgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+IAo+IE9uIDExLzA3LzIw
MTkgMDQ6MTMsIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gVGhlIHVwY29taW5nIHVuaWZpZWQg
Q1BVSURMRSBkcml2ZXIgd2lsbCBiZSBhZGRlZCB0byB0aGUgZHJpdmVycy9jcHVpZGxlLwo+PiBk
aXJlY3RvcnkgYW5kIGl0IHdpbGwgcmVxdWlyZSBhbGwgdGhlc2UgVGVncmEgUE0tY29yZSBmdW5j
dGlvbnMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWls
LmNvbT4KPj4gLS0tCj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL01ha2VmaWxlICB8ICAyICstCj4+
ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3BsYXRzbXAuYyB8ICAyIC0tCj4+ICBhcmNoL2FybS9tYWNo
LXRlZ3JhL3BtLmMgICAgICB8IDE2ICsrKysrKystLS0tLS0tLS0KPj4gIGFyY2gvYXJtL21hY2gt
dGVncmEvcG0uaCAgICAgIHwgIDMgLS0tCj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLmgg
ICB8ICAxIC0KPj4gIGluY2x1ZGUvbGludXgvY2xrL3RlZ3JhLmggICAgIHwgMTMgKysrKysrKysr
KysrKwo+PiAgaW5jbHVkZS9zb2MvdGVncmEvcG0uaCAgICAgICAgfCAyOCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4+ICA3IGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDE2
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9NYWtl
ZmlsZSBiL2FyY2gvYXJtL21hY2gtdGVncmEvTWFrZWZpbGUKPj4gaW5kZXggNWQ5M2EwYjM2ODY2
Li4yN2JkNWQ5ODY1ZTMgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL21hY2gtdGVncmEvTWFrZWZp
bGUKPj4gKysrIGIvYXJjaC9hcm0vbWFjaC10ZWdyYS9NYWtlZmlsZQo+PiBAQCAtMTMsNyArMTMs
NyBAQCBvYmotJChDT05GSUdfQVJDSF9URUdSQV8yeF9TT0MpCQkrPSBwbS10ZWdyYTIwLm8KPj4g
IG9iai0kKENPTkZJR19BUkNIX1RFR1JBXzN4X1NPQykJCSs9IHNsZWVwLXRlZ3JhMzAubwo+PiAg
b2JqLSQoQ09ORklHX0FSQ0hfVEVHUkFfM3hfU09DKQkJKz0gcG0tdGVncmEzMC5vCj4+ICBvYmot
JChDT05GSUdfU01QKQkJCSs9IHBsYXRzbXAubwo+PiAtb2JqLSQoQ09ORklHX0hPVFBMVUdfQ1BV
KSAgICAgICAgICAgICAgICs9IGhvdHBsdWcubwo+PiArb2JqLXkJCQkJCSs9IGhvdHBsdWcubwo+
PiAgCj4+ICBvYmotJChDT05GSUdfQVJDSF9URUdSQV8xMTRfU09DKQkrPSBzbGVlcC10ZWdyYTMw
Lm8KPj4gIG9iai0kKENPTkZJR19BUkNIX1RFR1JBXzExNF9TT0MpCSs9IHBtLXRlZ3JhMzAubwo+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9wbGF0c21wLmMgYi9hcmNoL2FybS9t
YWNoLXRlZ3JhL3BsYXRzbXAuYwo+PiBpbmRleCBlNjkxMWExNGMwOTYuLmM4YTYzNzE5YTE0MyAx
MDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9wbGF0c21wLmMKPj4gKysrIGIvYXJj
aC9hcm0vbWFjaC10ZWdyYS9wbGF0c21wLmMKPj4gQEAgLTE4Myw4ICsxODMsNiBAQCBjb25zdCBz
dHJ1Y3Qgc21wX29wZXJhdGlvbnMgdGVncmFfc21wX29wcyBfX2luaXRjb25zdCA9IHsKPj4gIAku
c21wX3ByZXBhcmVfY3B1cwk9IHRlZ3JhX3NtcF9wcmVwYXJlX2NwdXMsCj4+ICAJLnNtcF9zZWNv
bmRhcnlfaW5pdAk9IHRlZ3JhX3NlY29uZGFyeV9pbml0LAo+PiAgCS5zbXBfYm9vdF9zZWNvbmRh
cnkJPSB0ZWdyYV9ib290X3NlY29uZGFyeSwKPj4gLSNpZmRlZiBDT05GSUdfSE9UUExVR19DUFUK
Pj4gIAkuY3B1X2tpbGwJCT0gdGVncmFfY3B1X2tpbGwsCj4+ICAJLmNwdV9kaWUJCT0gdGVncmFf
Y3B1X2RpZSwKPj4gLSNlbmRpZgo+PiAgfTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gt
dGVncmEvcG0uYyBiL2FyY2gvYXJtL21hY2gtdGVncmEvcG0uYwo+PiBpbmRleCA2YWFhY2I1NzU3
ZTEuLmY5YzliY2U5ZTE1ZCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9wbS5j
Cj4+ICsrKyBiL2FyY2gvYXJtL21hY2gtdGVncmEvcG0uYwo+PiBAQCAtMTIzLDExICsxMjMsOSBA
QCB2b2lkIHRlZ3JhX2NsZWFyX2NwdV9pbl9scDIodm9pZCkKPj4gIAlzcGluX3VubG9jaygmdGVn
cmFfbHAyX2xvY2spOwo+PiAgfQo+PiAgCj4+IC1ib29sIHRlZ3JhX3NldF9jcHVfaW5fbHAyKHZv
aWQpCj4+ICt2b2lkIHRlZ3JhX3NldF9jcHVfaW5fbHAyKHZvaWQpCj4+ICB7Cj4+ICAJaW50IHBo
eV9jcHVfaWQgPSBjcHVfbG9naWNhbF9tYXAoc21wX3Byb2Nlc3Nvcl9pZCgpKTsKPj4gLQlib29s
IGxhc3RfY3B1ID0gZmFsc2U7Cj4+IC0JY3B1bWFza190ICpjcHVfbHAyX21hc2sgPSB0ZWdyYV9j
cHVfbHAyX21hc2s7Cj4+ICAJdTMyICpjcHVfaW5fbHAyID0gdGVncmFfY3B1X2xwMl9tYXNrOwo+
PiAgCj4+ICAJc3Bpbl9sb2NrKCZ0ZWdyYV9scDJfbG9jayk7Cj4+IEBAIC0xMzUsMTEgKzEzMyw3
IEBAIGJvb2wgdGVncmFfc2V0X2NwdV9pbl9scDIodm9pZCkKPj4gIAlCVUdfT04oKCpjcHVfaW5f
bHAyICYgQklUKHBoeV9jcHVfaWQpKSk7Cj4+ICAJKmNwdV9pbl9scDIgfD0gQklUKHBoeV9jcHVf
aWQpOwo+PiAgCj4+IC0JaWYgKChwaHlfY3B1X2lkID09IDApICYmIGNwdW1hc2tfZXF1YWwoY3B1
X2xwMl9tYXNrLCBjcHVfb25saW5lX21hc2spKQo+PiAtCQlsYXN0X2NwdSA9IHRydWU7Cj4+IC0K
Pj4gIAlzcGluX3VubG9jaygmdGVncmFfbHAyX2xvY2spOwo+PiAtCXJldHVybiBsYXN0X2NwdTsK
Pj4gIH0KPiAKPiBJIHRoaW5rIHRoYXQgdGhlIGNvbW1pdCBtZXNzYWdlIHNob3VsZCBkZXNjcmli
ZSB3aGF0IGlzIGdvaW5nIG9uIGhlcmUgb3IKPiB0aGlzIHNob3VsZCBiZSBhIHNlcGFyYXRlIGNo
YW5nZS4KCkluZGVlZCwgaXQgY291bGQgYmUgbm90IHZlcnkgb2J2aW91cyB3aGF0J3MgZ29pbmcg
b24gaGVyZSB3aXRob3V0IGEKdGhvcm91Z2ggcmV2aWV3LiBJJ2xsIGZhY3RvciBvdXQgYWxsIHRo
ZXNlIG1pbm9yIGNoYW5nZXMgaW50byBzZXBhcmF0ZQpjb21taXRzLgoKSW4gcGFydGljdWxhciB0
aGVyZSBpcyBubyBuZWVkIHRvIGtub3cgd2hldGhlciBDUFUgaXMgdGhlICJsYXN0X2NwdSIgZm9y
CnRoZSBuZXcgZHJpdmVyIGJlY2F1c2UgQ1BVMCBpcyBhbHdheXMgdGhlICJsYXN0IiBzaW5jZSBp
dCBhd2FpdHMgZm9yIHRoZQpzZWNvbmRhcmllcyBpbiB0aGUgY291cGxlZCBzdGF0ZS4KCj4+ICBz
dGF0aWMgaW50IHRlZ3JhX3NsZWVwX2NwdSh1bnNpZ25lZCBsb25nIHYycCkKPj4gQEAgLTE5NSwx
NCArMTg5LDE2IEBAIHN0YXRpYyB2b2lkIHRlZ3JhX3BtX3NldChlbnVtIHRlZ3JhX3N1c3BlbmRf
bW9kZSBtb2RlKQo+PiAgCXRlZ3JhX3BtY19lbnRlcl9zdXNwZW5kX21vZGUobW9kZSk7Cj4+ICB9
Cj4+ICAKPj4gLXZvaWQgdGVncmFfaWRsZV9scDJfbGFzdCh2b2lkKQo+PiAraW50IHRlZ3JhX2lk
bGVfbHAyX2xhc3Qodm9pZCkKPj4gIHsKPj4gKwlpbnQgZXJyOwo+PiArCj4+ICAJdGVncmFfcG1f
c2V0KFRFR1JBX1NVU1BFTkRfTFAyKTsKPj4gIAo+PiAgCWNwdV9jbHVzdGVyX3BtX2VudGVyKCk7
Cj4+ICAJc3VzcGVuZF9jcHVfY29tcGxleCgpOwo+PiAgCj4+IC0JY3B1X3N1c3BlbmQoUEhZU19P
RkZTRVQgLSBQQUdFX09GRlNFVCwgJnRlZ3JhX3NsZWVwX2NwdSk7Cj4+ICsJZXJyID0gY3B1X3N1
c3BlbmQoUEhZU19PRkZTRVQgLSBQQUdFX09GRlNFVCwgJnRlZ3JhX3NsZWVwX2NwdSk7Cj4+ICAK
Pj4gIAkvKgo+PiAgCSAqIFJlc3VtZSBMMiBjYWNoZSBpZiBpdCB3YXNuJ3QgcmUtZW5hYmxlZCBl
YXJseSBkdXJpbmcgcmVzdW1lLAo+PiBAQCAtMjE0LDYgKzIxMCw4IEBAIHZvaWQgdGVncmFfaWRs
ZV9scDJfbGFzdCh2b2lkKQo+PiAgCj4+ICAJcmVzdG9yZV9jcHVfY29tcGxleCgpOwo+PiAgCWNw
dV9jbHVzdGVyX3BtX2V4aXQoKTsKPj4gKwo+PiArCXJldHVybiBlcnI7Cj4+ICB9Cj4+ICAKPj4g
IGVudW0gdGVncmFfc3VzcGVuZF9tb2RlIHRlZ3JhX3BtX3ZhbGlkYXRlX3N1c3BlbmRfbW9kZSgK
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtdGVncmEvcG0uaCBiL2FyY2gvYXJtL21hY2gt
dGVncmEvcG0uaAo+PiBpbmRleCAxZTUxYTliNjM2ZWIuLjgxNTI1ZjVmNGE0NCAxMDA2NDQKPj4g
LS0tIGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9wbS5oCj4+ICsrKyBiL2FyY2gvYXJtL21hY2gtdGVn
cmEvcG0uaAo+PiBAQCAtMjMsOSArMjMsNiBAQCB2b2lkIHRlZ3JhMjBfc2xlZXBfY29yZV9pbml0
KHZvaWQpOwo+PiAgdm9pZCB0ZWdyYTMwX2xwMV9pcmFtX2hvb2sodm9pZCk7Cj4+ICB2b2lkIHRl
Z3JhMzBfc2xlZXBfY29yZV9pbml0KHZvaWQpOwo+PiAgCj4+IC12b2lkIHRlZ3JhX2NsZWFyX2Nw
dV9pbl9scDIodm9pZCk7Cj4+IC1ib29sIHRlZ3JhX3NldF9jcHVfaW5fbHAyKHZvaWQpOwo+PiAt
dm9pZCB0ZWdyYV9pZGxlX2xwMl9sYXN0KHZvaWQpOwo+PiAgZXh0ZXJuIHZvaWQgKCp0ZWdyYV90
ZWFyX2Rvd25fY3B1KSh2b2lkKTsKPj4gIAo+PiAgI2lmZGVmIENPTkZJR19QTV9TTEVFUAo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC5oIGIvYXJjaC9hcm0vbWFjaC10
ZWdyYS9zbGVlcC5oCj4+IGluZGV4IGQyMTk4NzJiNzU0Ni4uMGQ5OTU2ZTlhOGVhIDEwMDY0NAo+
PiAtLS0gYS9hcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLmgKPj4gKysrIGIvYXJjaC9hcm0vbWFj
aC10ZWdyYS9zbGVlcC5oCj4+IEBAIC0xMjQsNyArMTI0LDYgQEAgdm9pZCB0ZWdyYTMwX2hvdHBs
dWdfc2h1dGRvd24odm9pZCk7Cj4+ICAjZW5kaWYKPj4gIAo+PiAgdm9pZCB0ZWdyYTIwX3RlYXJf
ZG93bl9jcHUodm9pZCk7Cj4+IC1pbnQgdGVncmEzMF9zbGVlcF9jcHVfc2Vjb25kYXJ5X2Zpbmlz
aCh1bnNpZ25lZCBsb25nKTsKPj4gIHZvaWQgdGVncmEzMF90ZWFyX2Rvd25fY3B1KHZvaWQpOwo+
PiAgCj4+ICAjZW5kaWYKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvY2xrL3RlZ3JhLmgg
Yi9pbmNsdWRlL2xpbnV4L2Nsay90ZWdyYS5oCj4+IGluZGV4IGI4YWVmNjJjYzNmNS4uY2YwZjJj
YjVlMTA5IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2Nsay90ZWdyYS5oCj4+ICsrKyBi
L2luY2x1ZGUvbGludXgvY2xrL3RlZ3JhLmgKPj4gQEAgLTEwOCw2ICsxMDgsMTkgQEAgc3RhdGlj
IGlubGluZSB2b2lkIHRlZ3JhX2NwdV9jbG9ja19yZXN1bWUodm9pZCkKPj4gIAo+PiAgCXRlZ3Jh
X2NwdV9jYXJfb3BzLT5yZXN1bWUoKTsKPj4gIH0KPj4gKyNlbHNlCj4+ICtzdGF0aWMgaW5saW5l
IGJvb2wgdGVncmFfY3B1X3JhaWxfb2ZmX3JlYWR5KHZvaWQpCj4+ICt7Cj4+ICsJcmV0dXJuIGZh
bHNlOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgdGVncmFfY3B1X2Nsb2NrX3N1
c3BlbmQodm9pZCkKPj4gK3sKPj4gK30KPj4gKwo+PiArc3RhdGljIGlubGluZSB2b2lkIHRlZ3Jh
X2NwdV9jbG9ja19yZXN1bWUodm9pZCkKPj4gK3sKPj4gK30KPj4gICNlbmRpZgo+PiAgCj4+ICBl
eHRlcm4gdm9pZCB0ZWdyYTIxMF94dXNiX3BsbF9od19jb250cm9sX2VuYWJsZSh2b2lkKTsKPj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvc29jL3RlZ3JhL3BtLmggYi9pbmNsdWRlL3NvYy90ZWdyYS9w
bS5oCj4+IGluZGV4IDk1MWZjZDczOGQ1NS4uZmExOGMyZGY1MDI4IDEwMDY0NAo+PiAtLS0gYS9p
bmNsdWRlL3NvYy90ZWdyYS9wbS5oCj4+ICsrKyBiL2luY2x1ZGUvc29jL3RlZ3JhL3BtLmgKPj4g
QEAgLTIwLDYgKzIwLDEyIEBAIHRlZ3JhX3BtX3ZhbGlkYXRlX3N1c3BlbmRfbW9kZShlbnVtIHRl
Z3JhX3N1c3BlbmRfbW9kZSBtb2RlKTsKPj4gIAo+PiAgLyogbG93LWxldmVsIHJlc3VtZSBlbnRy
eSBwb2ludCAqLwo+PiAgdm9pZCB0ZWdyYV9yZXN1bWUodm9pZCk7Cj4+ICsKPj4gK2ludCB0ZWdy
YTMwX3NsZWVwX2NwdV9zZWNvbmRhcnlfZmluaXNoKHVuc2lnbmVkIGxvbmcgYXJnKTsKPj4gK3Zv
aWQgdGVncmFfY2xlYXJfY3B1X2luX2xwMih2b2lkKTsKPj4gK3ZvaWQgdGVncmFfc2V0X2NwdV9p
bl9scDIodm9pZCk7Cj4+ICtpbnQgdGVncmFfaWRsZV9scDJfbGFzdCh2b2lkKTsKPj4gK3ZvaWQg
dGVncmFfY3B1X2RpZSh1bnNpZ25lZCBpbnQgY3B1KTsKPj4gICNlbHNlCj4+ICBzdGF0aWMgaW5s
aW5lIGVudW0gdGVncmFfc3VzcGVuZF9tb2RlCj4+ICB0ZWdyYV9wbV92YWxpZGF0ZV9zdXNwZW5k
X21vZGUoZW51bSB0ZWdyYV9zdXNwZW5kX21vZGUgbW9kZSkKPj4gQEAgLTMwLDYgKzM2LDI4IEBA
IHRlZ3JhX3BtX3ZhbGlkYXRlX3N1c3BlbmRfbW9kZShlbnVtIHRlZ3JhX3N1c3BlbmRfbW9kZSBt
b2RlKQo+PiAgc3RhdGljIGlubGluZSB2b2lkIHRlZ3JhX3Jlc3VtZSh2b2lkKQo+PiAgewo+PiAg
fQo+PiArCj4+ICtzdGF0aWMgaW5saW5lIGludCB0ZWdyYTMwX3NsZWVwX2NwdV9zZWNvbmRhcnlf
ZmluaXNoKHVuc2lnbmVkIGxvbmcgYXJnKQo+PiArewo+PiArCXJldHVybiAtMTsKPj4gK30KPiAK
PiAtRU5PVFNVUFA/CgpHb29kIHBvaW50LCB0aGFua3MhCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
