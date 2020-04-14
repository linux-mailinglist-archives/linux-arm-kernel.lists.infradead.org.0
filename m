Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D6C1A8E6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 00:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZT48L7yKUqdalAFegxGq+aTf/BmuHP0BnnZsBvov5A=; b=f0tGFCJ5Hd8Ghx
	z+DPZQkdUBqfxjpI0u9TB9JN7nN832QPIQ64gs4dqkwdVAersgWhrNxcpKT54ZndkDeY9FrShvahX
	yZSlcqdhWENWDFhaOf4OX+QLukO59TGapQbTJR/8+OA+Jz4FrmjqfELgOWszQzK5qEYbYlUnL34JZ
	XLZrjoDMp/vl6SCCZxE5g0fV5w6HIsIddrQfOLphuIhm7IxlE+7EHtYlwPh1HpPRT0bHMELltaN8e
	SZyH1yQw9NlEnUhBIjFTd7hWo1CY/ClcntyB/oCpuKDxmQpoFNzRM4flFqBSM6kzP2G91cF9hOXki
	3IYQRfq+EwExveoVUC3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOTps-0005PF-SK; Tue, 14 Apr 2020 22:15:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOTpX-0005HV-42
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 22:14:56 +0000
Received: by mail-wr1-x441.google.com with SMTP id u13so15950119wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 15:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tFNbkDDuu+xJJGMOQnSsTSZToEf+DrCp0hBRrSm4NEc=;
 b=qabW9Cwsrm5flCJViset/DUU4XAV92iY6uYTR6CKgMWINRrDE/p0FdK2jJYOTZGz+/
 s7esIJSyksYapk5/fn6o0kQ6QRp0KX+QMW66qQvkBQ321UC34lorcDk1XNHw9XKLl4sn
 Van8EM9t8zDbWrbFSGieU/bvQFG4SG7dKeGOGtTc4P1ZhF99ggZrLcsQm+hS+o5GYs7y
 HaRMSFJD3RGWsF683rGYkcbQOUo4/wYjoAOfk4jrsHcsH8OZOojhBUoAvY1OlwRaXLoL
 P5tjnf86p6ZwIpdaDB7apkv1IHWCqfM8M8CYXECtoj4tIYqk6jV/clruQ0aO0t1jf6qX
 yELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tFNbkDDuu+xJJGMOQnSsTSZToEf+DrCp0hBRrSm4NEc=;
 b=b6kbEn/a20cIIk3wrYWVievWsS9cPbaetEFt2EvMcdNHHF/idd2Sb5faZyDkIPjYJ2
 mbFylCyE0DXD8M77T52R3A+oRY6B9KCeBEFZ3wp9MMQDUt4Hw7K+UNpGenYY3/aebFrG
 IecE39SAJnACCf04pIAxu0soNXIZ4t0+Z0dexjR8f2r5BA8Q0OrJoyZ2jOt2cUN1oadt
 7MUFSn3nhxtRjlFwC1IPHSf99YWOdirfT8JfhWXv2huyjrbDENBPxFK5LexbEFvGQHUj
 BnCQBS90hRxZaZW8T7aHDlAiNslFG5+aQvMUoJreQiSU5U6R/XM7cIU0SdkFWi0FGaij
 jW4w==
X-Gm-Message-State: AGi0Pua87ZAqY1bfqW+tZBaJ5eCBVKA6ildgdxZOMulkoi4ibBvWljrT
 LEgfTqPdHIjRwPlPM5N81AgPLQ==
X-Google-Smtp-Source: APiQypJCM7RZYbnn05d5p3O23E+0h2bnGY34lOEUBW3XV9QKLjxerTTj5VEgsJydss45wo2Ye1GFqg==
X-Received: by 2002:adf:fc4c:: with SMTP id e12mr25646050wrs.265.1586902493086; 
 Tue, 14 Apr 2020 15:14:53 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id k184sm20036949wmf.9.2020.04.14.15.14.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 15:14:52 -0700 (PDT)
Subject: Re: [RFC v2 3/9] thermal: Properly handle mode values in .set_mode()
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-pm@vger.kernel.org
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <20200414180105.20042-1-andrzej.p@collabora.com>
 <20200414180105.20042-4-andrzej.p@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <e7ed4bcf-8605-c6ad-4412-acb33251a0b3@linaro.org>
Date: Wed, 15 Apr 2020 00:14:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200414180105.20042-4-andrzej.p@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_151455_180053_551F9211 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIEFuZHJ6ZWosCgp5b3UgY2FuIGRyb3AgdGhpcyBwYXRjaC4gSXQgaXMgbm90IHVzZWZ1bCBh
cyB0aGUgY2FsbGVyIGNoZWNrcyB0aGUKY29ycmVjdG5lc3Mgb2YgdGhlIHZhbHVlcyBpbiB0aGUg
cGF0Y2ggNC85LgoKTW9yZW92ZXIgdGhlIHBhdGNoIGlzIGJvZ3VzIGJlY2F1c2UgaXQgcmV0dXJu
cyBiZWZvcmUgcmVsZWFzaW5nIHRoZSBsb2NrLgoKT24gMTQvMDQvMjAyMCAyMDowMCwgQW5kcnpl
aiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IEFsbG93IG9ubHkgVEhFUk1BTF9ERVZJQ0VfRU5BQkxF
RCBhbmQgVEhFUk1BTF9ERVZJQ0VfRElTQUJMRUQgYXMgdmFsaWQKPiBzdGF0ZXMgdG8gdHJhbnNp
dGlvbiB0by4KCgoKCj4gU2lnbmVkLW9mZi1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRy
emVqLnBAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFu
b3gvbWx4c3cvY29yZV90aGVybWFsLmMgfCA4ICsrKysrKy0tCj4gIGRyaXZlcnMvcGxhdGZvcm0v
eDg2L2FjZXJoZGYuYyAgICAgICAgICAgICAgICAgICAgIHwgNCArKysrCj4gIGRyaXZlcnMvdGhl
cm1hbC9pbXhfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgICAgIHwgNCArKystCj4gIGRyaXZl
cnMvdGhlcm1hbC9pbnRlbC9pbnRlbF9xdWFya19kdHNfdGhlcm1hbC5jICAgIHwgNSArKysrLQo+
ICBkcml2ZXJzL3RoZXJtYWwvb2YtdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgICAgICB8IDQg
KysrLQo+ICA1IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seHN3L2Nv
cmVfdGhlcm1hbC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4c3cvY29yZV90
aGVybWFsLmMKPiBpbmRleCBjZTBhNjgzN2RhYTMuLmNkNDM1Y2E3YWRiZSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHhzdy9jb3JlX3RoZXJtYWwuYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seHN3L2NvcmVfdGhlcm1hbC5jCj4g
QEAgLTI5Niw4ICsyOTYsMTAgQEAgc3RhdGljIGludCBtbHhzd190aGVybWFsX3NldF9tb2RlKHN0
cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0emRldiwKPiAgCj4gIAlpZiAobW9kZSA9PSBUSEVS
TUFMX0RFVklDRV9FTkFCTEVEKQo+ICAJCXR6ZGV2LT5wb2xsaW5nX2RlbGF5ID0gdGhlcm1hbC0+
cG9sbGluZ19kZWxheTsKPiAtCWVsc2UKPiArCWVsc2UgaWYgKG1vZGUgPT0gVEhFUk1BTF9ERVZJ
Q0VfRElTQUJMRUQpCj4gIAkJdHpkZXYtPnBvbGxpbmdfZGVsYXkgPSAwOwo+ICsJZWxzZQo+ICsJ
CXJldHVybiAtRUlOVkFMOwo+ICAKPiAgCW11dGV4X3VubG9jaygmdHpkZXYtPmxvY2spOwo+ICAK
PiBAQCAtNDg2LDggKzQ4OCwxMCBAQCBzdGF0aWMgaW50IG1seHN3X3RoZXJtYWxfbW9kdWxlX21v
ZGVfc2V0KHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0emRldiwKPiAgCj4gIAlpZiAobW9k
ZSA9PSBUSEVSTUFMX0RFVklDRV9FTkFCTEVEKQo+ICAJCXR6ZGV2LT5wb2xsaW5nX2RlbGF5ID0g
dGhlcm1hbC0+cG9sbGluZ19kZWxheTsKPiAtCWVsc2UKPiArCWVsc2UgaWYgKG1vZGUgPT0gVEhF
Uk1BTF9ERVZJQ0VfRElTQUJMRUQpCj4gIAkJdHpkZXYtPnBvbGxpbmdfZGVsYXkgPSAwOwo+ICsJ
ZWxzZQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICAKPiAgCW11dGV4X3VubG9jaygmdHpkZXYtPmxv
Y2spOwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvYWNlcmhkZi5jIGIv
ZHJpdmVycy9wbGF0Zm9ybS94ODYvYWNlcmhkZi5jCj4gaW5kZXggOGNjODZmNGUzYWMxLi5kNTE4
OGMxZDY4OGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvYWNlcmhkZi5jCj4g
KysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvYWNlcmhkZi5jCj4gQEAgLTQzMSw2ICs0MzEsMTAg
QEAgc3RhdGljIGludCBhY2VyaGRmX2dldF9tb2RlKHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNl
ICp0aGVybWFsLAo+ICBzdGF0aWMgaW50IGFjZXJoZGZfc2V0X21vZGUoc3RydWN0IHRoZXJtYWxf
em9uZV9kZXZpY2UgKnRoZXJtYWwsCj4gIAkJCSAgICBlbnVtIHRoZXJtYWxfZGV2aWNlX21vZGUg
bW9kZSkKPiAgewo+ICsJaWYgKG1vZGUgIT0gVEhFUk1BTF9ERVZJQ0VfRElTQUJMRUQgJiYKPiAr
CSAgICBtb2RlICE9IFRIRVJNQUxfREVWSUNFX0VOQUJMRUQpCj4gKwkJcmV0dXJuIC1FSU5WQUw7
Cj4gKwo+ICAJaWYgKG1vZGUgPT0gVEhFUk1BTF9ERVZJQ0VfRElTQUJMRUQgJiYga2VybmVsbW9k
ZSkKPiAgCQlhY2VyaGRmX3JldmVydF90b19iaW9zX21vZGUoKTsKPiAgCWVsc2UgaWYgKG1vZGUg
PT0gVEhFUk1BTF9ERVZJQ0VfRU5BQkxFRCAmJiAha2VybmVsbW9kZSkKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvaW14X3RoZXJt
YWwuYwo+IGluZGV4IGU3NjFjOWI0MjIxNy4uMzZiMTkyNGYxOTM4IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvdGhlcm1hbC9pbXhfdGhlcm1hbC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL2lteF90
aGVybWFsLmMKPiBAQCAtMzYxLDcgKzM2MSw3IEBAIHN0YXRpYyBpbnQgaW14X3NldF9tb2RlKHN0
cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0eiwKPiAgCQkJZGF0YS0+aXJxX2VuYWJsZWQgPSB0
cnVlOwo+ICAJCQllbmFibGVfaXJxKGRhdGEtPmlycSk7Cj4gIAkJfQo+IC0JfSBlbHNlIHsKPiAr
CX0gZWxzZSBpZiAobW9kZSA9PSBUSEVSTUFMX0RFVklDRV9ESVNBQkxFRCkgewo+ICAJCXJlZ21h
cF93cml0ZShtYXAsIHNvY19kYXRhLT5zZW5zb3JfY3RybCArIFJFR19DTFIsCj4gIAkJCSAgICAg
c29jX2RhdGEtPm1lYXN1cmVfdGVtcF9tYXNrKTsKPiAgCQlyZWdtYXBfd3JpdGUobWFwLCBzb2Nf
ZGF0YS0+c2Vuc29yX2N0cmwgKyBSRUdfU0VULAo+IEBAIC0zNzQsNiArMzc0LDggQEAgc3RhdGlj
IGludCBpbXhfc2V0X21vZGUoc3RydWN0IHRoZXJtYWxfem9uZV9kZXZpY2UgKnR6LAo+ICAJCQlk
aXNhYmxlX2lycShkYXRhLT5pcnEpOwo+ICAJCQlkYXRhLT5pcnFfZW5hYmxlZCA9IGZhbHNlOwo+
ICAJCX0KPiArCX0gZWxzZSB7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gIAo+ICAJZGF0
YS0+bW9kZSA9IG1vZGU7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9pbnRlbC9pbnRl
bF9xdWFya19kdHNfdGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL2ludGVsL2ludGVsX3F1YXJr
X2R0c190aGVybWFsLmMKPiBpbmRleCBkNzA0ZmMxMDRjZmQuLjExZDdkYjg5NTEyNSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvaW50ZWwvaW50ZWxfcXVhcmtfZHRzX3RoZXJtYWwuYwo+
ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9pbnRlbC9pbnRlbF9xdWFya19kdHNfdGhlcm1hbC5jCj4g
QEAgLTMyNSw4ICszMjUsMTEgQEAgc3RhdGljIGludCBzeXNfc2V0X21vZGUoc3RydWN0IHRoZXJt
YWxfem9uZV9kZXZpY2UgKnR6ZCwKPiAgCW11dGV4X2xvY2soJmR0c191cGRhdGVfbXV0ZXgpOwo+
ICAJaWYgKG1vZGUgPT0gVEhFUk1BTF9ERVZJQ0VfRU5BQkxFRCkKPiAgCQlyZXQgPSBzb2NfZHRz
X2VuYWJsZSh0emQpOwo+IC0JZWxzZQo+ICsJZWxzZSBpZiAobW9kZSA9PSBUSEVSTUFMX0RFVklD
RV9ESVNBQkxFRCkKPiAgCQlyZXQgPSBzb2NfZHRzX2Rpc2FibGUodHpkKTsKPiArCWVsc2UKPiAr
CQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gIAltdXRleF91bmxvY2soJmR0c191cGRhdGVfbXV0ZXgp
Owo+ICAKPiAgCXJldHVybiByZXQ7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9vZi10
aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvb2YtdGhlcm1hbC5jCj4gaW5kZXggODc0YTQ3ZDY5
MjNmLi4zNmJlYmY2MjM5ODAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL29mLXRoZXJt
YWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9vZi10aGVybWFsLmMKPiBAQCAtMjg5LDkgKzI4
OSwxMSBAQCBzdGF0aWMgaW50IG9mX3RoZXJtYWxfc2V0X21vZGUoc3RydWN0IHRoZXJtYWxfem9u
ZV9kZXZpY2UgKnR6LAo+ICAJaWYgKG1vZGUgPT0gVEhFUk1BTF9ERVZJQ0VfRU5BQkxFRCkgewo+
ICAJCXR6LT5wb2xsaW5nX2RlbGF5ID0gZGF0YS0+cG9sbGluZ19kZWxheTsKPiAgCQl0ei0+cGFz
c2l2ZV9kZWxheSA9IGRhdGEtPnBhc3NpdmVfZGVsYXk7Cj4gLQl9IGVsc2Ugewo+ICsJfSBlbHNl
IGlmIChtb2RlID09IFRIRVJNQUxfREVWSUNFX0RJU0FCTEVEKSB7Cj4gIAkJdHotPnBvbGxpbmdf
ZGVsYXkgPSAwOwo+ICAJCXR6LT5wYXNzaXZlX2RlbGF5ID0gMDsKPiArCX0gZWxzZSB7Cj4gKwkJ
cmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gIAo+ICAJbXV0ZXhfdW5sb2NrKCZ0ei0+bG9jayk7Cj4g
CgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNl
Ym9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEv
bGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+
IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
