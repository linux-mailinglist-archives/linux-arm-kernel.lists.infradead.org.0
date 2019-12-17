Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088E6122629
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOfwVR9PNdW6tO0aGRDf3JnsTftk11xD847h/bLuKGw=; b=uR7JGlGcdfK/ul
	YyM6eSHv0oJKkZCeEAU84+M10iF7hSy5pbYpyvqwWNf3MdyMQHYMWKe0MrRtoSCRVLWFLwU/XkEsW
	INRBH9ytNzP+MPK/KbXZO01jxmipSGxGV++osbNm6rxszYnJ5+DlaFukSSpA0VYLXeG21MRV/tlmd
	t1guHggOoPegA95bDkswRhKb0gnzWH+ey8gtNxhpY+3ndg5e67KK4fhEPX2BX6SqBeuaz8fNnZOi5
	OsPZ3BGfueaMog7E7oTnUpSLyO//7SXNmbESL6GM97J0SshLPn5MJqmI8RkK6Y080hZYJi9q/o+5X
	uqvbBIOhaxmo3CRSflKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7p9-00040X-52; Tue, 17 Dec 2019 08:03:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7oy-0003zn-1l; Tue, 17 Dec 2019 08:03:09 +0000
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74F2924676;
 Tue, 17 Dec 2019 08:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576569787;
 bh=25HsI9t+Bqog4y9A5SHa9MC0k7uJ8M9CNTOiEeQd6Js=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DvMpZbB7IMXqeX4QWcO8IidCczC9xn9mkLwwqoYLgM5vsug6dsyrsPkNlUjElcdjj
 o7hy5AimWrV23+EW+uPpkq77mQ7qWPhxDGeFqm4k5dgwaFkhibUekR6YfYCfhrZZsp
 wyJwXhekHJQfP01vpqFUQkUgm9WV1sjfrFo2bYIw=
Received: by mail-wr1-f42.google.com with SMTP id y17so10201143wrh.5;
 Tue, 17 Dec 2019 00:03:07 -0800 (PST)
X-Gm-Message-State: APjAAAWt4LWBLoSeKCualy9pEtTQhfkNr5A2I8rliES8X/4NOuhwyRO+
 xQm7kClLxEjhd6psmcxE/6nIHaoyDLho6r+tCWE=
X-Google-Smtp-Source: APXvYqzf3OsaJa9aVxYfyxYMjeroNjRrzOjIIzFzUrGof8GRCCHuk/JVJP69n/Ph+I/wKcqIgvXDGi2L7XlZJ9tfLAY=
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr36083863wrx.178.1576569785910; 
 Tue, 17 Dec 2019 00:03:05 -0800 (PST)
MIME-Version: 1.0
References: <20191217052328.25633-1-wens@kernel.org>
 <7f2be28d-9bf5-79a8-8720-4615a4e9f463@linaro.org>
In-Reply-To: <7f2be28d-9bf5-79a8-8720-4615a4e9f463@linaro.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 17 Dec 2019 16:02:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v65TA0patyNO_xw0gpWR62N4Q_40amFW9OUh7jat3f9J8g@mail.gmail.com>
Message-ID: <CAGb2v65TA0patyNO_xw0gpWR62N4Q_40amFW9OUh7jat3f9J8g@mail.gmail.com>
Subject: Re: [PATCH] thermal: rockchip: enable hwmon
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_000308_133111_CAC167BD 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMTcsIDIwMTkgYXQgNDowMSBQTSBEYW5pZWwgTGV6Y2Fubwo8ZGFuaWVsLmxl
emNhbm9AbGluYXJvLm9yZz4gd3JvdGU6Cj4KPgo+IEhpIENoZW4tWXUsCj4KPiBPbiAxNy8xMi8y
MDE5IDA2OjIzLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiBGcm9tOiBDaGVuLVl1IFRzYWkgPHdl
bnNAY3NpZS5vcmc+Cj4gPgo+ID4gQnkgZGVmYXVsdCBvZi1iYXNlZCB0aGVybWFsIGRyaXZlciBk
byBub3QgaGF2ZSBod21vbiBlbnRyaWVzIHJlZ2lzdGVyZWQuCj4gPgo+ID4gRG8gdGhpcyBleHBs
aWNpdGx5IHNvIHVzZXJzIGNhbiB1c2Ugc3RhbmRhcmQgaHdtb24gaW50ZXJmYWNlcyBhbmQgdG9v
bHMKPiA+IHRvIHJlYWQgdGhlIHRlbXBlcmF0dXJlLgo+ID4KPiA+IFRoaXMgaXMgYmFzZWQgb24g
c2ltaWxhciBjaGFuZ2VzIGZvciBiY20yODM1X3RoZXJtYWwgaW4gY29tbWl0Cj4gPiBkNTZjMTlk
MDdlMGIgKCJ0aGVybWFsOiBiY20yODM1OiBlbmFibGUgaHdtb24gZXhwbGljaXRseSIpLgo+Cj4g
VGhhbmtzIGZvciBzdWJtaXR0aW5nIHRoaXMgcGF0Y2gsIGJ1dCBpdCBpcyBkdXBsaWNhdGUgd2l0
aDoKPgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvMjAxOTEyMTIw
NjE3MDIuQkZFMkQ2RTg1NjAzQGNvcm9uYS5jcmFiZGFuY2UuY29tLwo+Cj4gd2hpY2ggSSBwaWNr
ZWQgdXAuCgpObyBwcm9ibGVtLiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLgoKQ2hlbll1Cgo+ICAg
LS0gRGFuaWVsCj4KPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUu
b3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyB8IDgg
KysrKysrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFs
LmMgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gPiBpbmRleCA5ZWQ4MDg1
YmI3OTIuLmQ1M2JhN2RhYmYxNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yb2Nr
Y2hpcF90aGVybWFsLmMKPiA+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFs
LmMKPiA+IEBAIC0xOSw2ICsxOSw4IEBACj4gPiAgI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24u
aD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcGluY3RybC9jb25zdW1lci5oPgo+ID4KPiA+ICsjaW5j
bHVkZSAidGhlcm1hbF9od21vbi5oIgo+ID4gKwo+ID4gIC8qCj4gPiAgICogSWYgdGhlIHRlbXBl
cmF0dXJlIG92ZXIgYSBwZXJpb2Qgb2YgdGltZSBIaWdoLAo+ID4gICAqIHRoZSByZXN1bHRpbmcg
VFNIVVQgZ2F2ZSBDUlUgbW9kdWxlLGxldCBpdCByZXNldCB0aGUgZW50aXJlIGNoaXAsCj4gPiBA
QCAtMTIxMCw3ICsxMjEyLDExIEBAIHJvY2tjaGlwX3RoZXJtYWxfcmVnaXN0ZXJfc2Vuc29yKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gPiAgICAgICAgICAgICAgIHJldHVybiBlcnJv
cjsKPiA+ICAgICAgIH0KPiA+Cj4gPiAtICAgICByZXR1cm4gMDsKPiA+ICsgICAgIC8qIHRoZXJt
YWxfem9uZSBkb2Vzbid0IGVuYWJsZSBod21vbiBhcyBkZWZhdWx0LCBlbmFibGUgaXQgaGVyZSAq
Lwo+ID4gKyAgICAgc2Vuc29yLT50emQtPnR6cC0+bm9faHdtb24gPSBmYWxzZTsKPiA+ICsgICAg
IGVycm9yID0gdGhlcm1hbF9hZGRfaHdtb25fc3lzZnMoc2Vuc29yLT50emQpOwo+ID4gKwo+ID4g
KyAgICAgcmV0dXJuIGVycm9yOwo+ID4gIH0KPiA+Cj4gPiAgLyoqCj4gPgo+Cj4KPiAtLQo+ICA8
aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdh
cmUgZm9yIEFSTSBTb0NzCj4KPiBGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2su
Y29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo+IDxodHRwOi8vdHdpdHRlci5jb20vIyEvbGlu
YXJvb3JnPiBUd2l0dGVyIHwKPiA8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4g
QmxvZwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
