Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382C61BC14B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jLaR7nT7a0Wkt9Jjzw/dQ7lHg19ntsuWPEWO0WxJ8o=; b=NQBQ+5EYTpkV/1
	VVUjQTza8PZTZmMzos0EN+VUwDB2rxAylAfBuMunr8eRPIIy1aMU8aynYN4JyrmqMzKf1dtjqVGrY
	2lLlXLoyIv54VfCnl0Y8bkO2q4gf4CKF2fl8GnMYuiD3FqmloVl/nZZPCgVmSfYUKxeade/qv8Xts
	YTCuX2iHjaTijZUvPy23x2zOUXSskLcGeA1DbnEDu89vMFmlGuqcEOkqkBwRGDDXnqpfO5g/X8bYP
	UIimt3bzDQqz/6rUjeQKMRQpF84PKPfmXhmo6s7EQ87Mvxb/oMjbm/c/qVsvCiRoPYjX1XRVKE8M9
	6rYTqILr7hr3x5vjFhaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRFo-0003vc-Tg; Tue, 28 Apr 2020 14:30:32 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRFa-0003ug-O3
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:30:20 +0000
Received: by mail-il1-x141.google.com with SMTP id s10so20444635iln.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 07:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JpPVmG/ic6yi3Tk4GAQi6DB6GCxhlbKT5nO4XO5x++4=;
 b=ipeT6iMZnvOHZp+nbd29xbN+3F4XtHwR0HnaFmlAEmd3xsb6RDgzYxpn8ZDFijCYEg
 k5dE7yv8JOff1Dab/0/7fyVTh8hv9JYG0FS71e5AcxWqUdORGAbesb0dvPXwh1bd7SE3
 2KXB1xW4WKiSNttBfEbuY0YajvNaFl3KBw9K/5UguM9ltO3Xh+cwo3UvTXFYIPSlQEVU
 89Yv8GHfhnkWkqvurh/CSL5ZV7W4f4gxQVRs92epAMEt3+I020alJpPqA5Zrq6RFiq3k
 SI/Zo/DpQTeQNAX792L6jXTTfLOIV8qrs5YTgzwEC+PTpLjlw7RAm1bM3s1bop8fdG2l
 TZ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JpPVmG/ic6yi3Tk4GAQi6DB6GCxhlbKT5nO4XO5x++4=;
 b=Tx2eBXsdttGnndUbcYc7ZnMwsWJVaJ+uksCBHvxERAKuoO2JV+CWouAC8cYgu4jo5a
 Qvwyk5XjiwL7Q4lXSWlNGX1rvRcikTwXvcPunnAXS1/HglsJqe3LSUBWtrYvPhhL5PCW
 bms6MGQlOnRrSIJmPDAMfM/A3gDIcu0tBtwZ514j3O6BqyHBgtBGQJgXsxTCTAsAh4hp
 KAcoBQIVII3jD8wZfb1gx0G+2MR1GLKjFFiinz+suRkL0iCGBySG/5ORVvdT9Yxsl/Ys
 xmBK6fXN+ShdmwudQD1CPw1RVU7MfV2xg5VjqCFgEiTyGtOUgsICv0hxl4svcrQPk0k8
 Lk1Q==
X-Gm-Message-State: AGi0Pub51cvE1G/Vd13E44j7E9O4B6q83tB2jFCFm/bt+R9wzcaWaUzv
 T0T5hJbFVJW5F/RU9Cl4KnLgrNvtX9p3byYbIxw=
X-Google-Smtp-Source: APiQypJoCBUTROFxqXlwhz34VHgNyehOqvvky/DAp7KIJoHxTKkUUYKeoBF1v3WwiPOZFL3Hm+dNa1O7Cnx/FGJIbW0=
X-Received: by 2002:a92:d151:: with SMTP id t17mr4772428ilg.35.1588084217885; 
 Tue, 28 Apr 2020 07:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200428142629.8950-1-peron.clem@gmail.com>
In-Reply-To: <20200428142629.8950-1-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 Apr 2020 16:30:06 +0200
Message-ID: <CAJiuCcevho5fGxW+WLHtJAqfYw+desy5-PipBvtz_vbH6EXVPQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: allwinner: h6: Use dummy regulator for
 Tanix TX6
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_073018_789700_C8FF14B0 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Piotr Oniszczuk <warpme@o2.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLCBXYXJwbWUsCgpPbiBUdWUsIDI4IEFwciAyMDIwIGF0IDE2OjI2LCBDbMOpbWVu
dCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IFRhbml4IFRYNiBoYXMg
YSBmaXhlZCByZWd1bGF0b3IuIEFzIERWRlMgaXMgaW5zdHJ1Y3RlZCB0byBjaGFuZ2UKPiB2b2x0
YWdlIHRvIG1lZXQgT1BQIHRhYmxlLCB0aGUgRFZGUyBpcyBub3Qgd29ya2luZyBhcyBleHBlY3Rl
ZC4KPgo+IEF2b2lkIHRvIGludHJvZHVjZSBhIG5ldyBkZWRpY2F0ZWQgT1BQIFRhYmxlIHdoZXJl
IHZvbHRhZ2UgYXJlCj4gZXF1YWxzIHRvIHRoZSBmaXhlZCByZWd1bGF0b3IgYXMgaXQgd2lsbCBv
bmx5IGR1cGxpY2F0ZSBhbGwgdGhlIE9QUHMuCj4gSW5zdGVhZCByZW1vdmUgdGhlIGZpeGVkIHJl
Z3VsYXRvciBzbyB0aGUgRFZGUyBmcmFtZXdvcmsgd2lsbCBjcmVhdGUKPiBkdW1teSByZWd1bGF0
b3IgYW5kIHdpbGwgaGF2ZSB0aGUgc2FtZSBiZWhhdmlvci4KPgo+IEFkZCBzb21lIGNvbW1lbnRz
IHRvIGV4cGxhaW4gdGhpcyBpbiB0aGUgZGV2aWNlLXRyZWUuCgpDaGFuZ2VzIHNpbmNlIHYxOgpJ
IGhhdmUgY2hhbmdlIHRoaXMgcGF0Y2ggdG8gdXNlIGR1bW15IHJlZ3VsYXRvciBhbmQgYWRkIGNv
bW1lbnQgYWJvdXQKdGhpcyBjaG9pY2UuCkkgdGhpbmsgaXQncyBhIGJpdCBiZXR0ZXIgdGhhbiBq
dXN0IGRyb3BwaW5nIHRoZSByZWd1bGF0b3IuCgpAUGlvdHIgT25pc3pjenVrOgpQbGVhc2UgYWRk
IHlvdXIgdGVzdGVkLWJ5IHRhZywgdG8gYmUgc3VyZSB0aGlzIGlzIHdvcmtpbmcgYXMgZXhwZWN0
ZWQgIQoKVGhhbmtzICYgUmVnYXJkcwpDbGVtZW50Cgo+Cj4gUmVwb3J0ZWQtYnk6IFBpb3RyIE9u
aXN6Y3p1ayA8d2FycG1lQG8yLnBsPgo+IEZpeGVzOiBhZGQxZTI3ZmI3MDMgKCJhcm02NDogZHRz
OiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIG9wcCB0YWJsZXMgZm9yIFRhbml4IFRYNiIpCj4g
U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KPiAt
LS0KPiAgLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2LmR0cyB8IDE4
ICsrKysrKysrKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtdGFuaXgtdHg2LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi10YW5peC10eDYuZHRzCj4gaW5kZXggYmU4MTMzMGRiMTRmLi4zZTk2ZmNi
MzE3ZWEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBp
LWg2LXRhbml4LXR4Ni5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYtdGFuaXgtdHg2LmR0cwo+IEBAIC00OCw3ICs0OCwxNSBAQAo+ICB9Owo+Cj4gICZj
cHUwIHsKPiAtICAgICAgIGNwdS1zdXBwbHkgPSA8JnJlZ192ZGRfY3B1X2dwdT47Cj4gKyAgICAg
ICAvKgo+ICsgICAgICAgICogRG9uJ3Qgc3BlY2lmeSB0aGUgQ1BVIHJlZ3VsYXRvciwgYXMgaXQn
cyBhIGZpeGVkCj4gKyAgICAgICAgKiByZWd1bGF0b3IgRFZGUyB3aWxsIG5vdCB3b3JrIGFzIGl0
IGlzIGludHJ1Y3RlZAo+ICsgICAgICAgICogdG8gcmVhY2ggYSB2b2x0YWdlIHdoaWNoIGNhbid0
IGJlIHJlYWNoZWQuCj4gKyAgICAgICAgKiBOb3Qgc3BlY2lmeWluZyBhIHJlZ3VsYXRvciB3aWxs
IGNyZWF0ZSBhIGR1bW15Cj4gKyAgICAgICAgKiByZWd1bGF0b3IgYWxsb3dpbmcgYWxsIE9QUHMu
Cj4gKyAgICAgICAgKgo+ICsgICAgICAgICogY3B1LXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1
PjsKPiArICAgICAgICAqLwo+ICB9Owo+Cj4gICZkZSB7Cj4gQEAgLTY4LDcgKzc2LDEzIEBACj4g
IH07Cj4KPiAgJmdwdSB7Cj4gLSAgICAgICBtYWxpLXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1
PjsKPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBEb24ndCBzcGVjaWZ5IHRoZSBHUFUgcmVndWxh
dG9yLCBzZWUgY29tbWVudAo+ICsgICAgICAgICogYWJvdmUgZm9yIHRoZSBDUFUgc3VwcGx5Lgo+
ICsgICAgICAgICoKPiArICAgICAgICAqIG1hbGktc3VwcGx5ID0gPCZyZWdfdmRkX2NwdV9ncHU+
Owo+ICsgICAgICAgICovCj4gKwo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+Cj4g
LS0KPiAyLjIwLjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
