Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B607C10EB2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:55:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2dBumzuSYrvSnSH1w2xd+DO8CoFaYURf7oG4BCYaiUM=; b=aJFoNeN1nFvfUf+XTYHKmHNl+
	Isp8egRQ0RISkM8PfkJUXjfIID5gouc2HjihDl35slhQdaNhKxE5gqSib1rE41uCd9CormGCUiK+c
	5p0/PIZ6M7a7blDqAb8uem2q4i+Sxl6p5IN1LN/asBa8+3dzMlQ7bSnxq4chjdgOQSFmWaoo4Bk8s
	/syqe3dGPKL/NE7XH1bAE6HQELlRPUSmytta7SI4ihxQ4+5yQW73GgvEcdT8fjMxcmYwuMpGunQIu
	99KMxUaZJ0QD0/f73s8n8XwDx0s75gW2sv4KlDYsLCm5iEYf/inAuJqRP75kzXXIodnZTMU3edFol
	7nBR9Ln/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmAX-0003Vz-KJ; Mon, 02 Dec 2019 13:55:17 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmAO-00034d-UC
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:55:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575294905; x=1577886905;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Msylk1d5nAdwXkZVBFYFaAFjifhpb6mr+ear971zdSs=;
 b=DsdO+BGKQR31lB87wy+wRbd0QVTgGywJcsrVcDFIJ2gUENE05xt7clNwi4Ogo6LY
 9IHG+iluyIMO2lsfcr6pUGz/aN5rIabpeXfENpYVrxOoj54ijJSEnoSJpwNrIH0O
 vE10FepUQ5HPLceIxPymD0i7YDfIHgS7I80rIqW8GRU=;
X-AuditID: c39127d2-df9ff7000000408f-37-5de517b97a1a
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 38.4E.16527.9B715ED5;
 Mon,  2 Dec 2019 14:55:05 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120214550540-25452 ;
 Mon, 2 Dec 2019 14:55:05 +0100 
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
 <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <b4e1fb4d-6e0f-4501-17a4-ee837548ad86@phytec.de>
Date: Mon, 2 Dec 2019 14:55:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 02.12.2019 14:55:05,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.12.2019 14:55:05
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBLMWRmVeSWpSXmKPExsWyRoCBS3en+NNYg50H1S2e3bzFZvHwqr/F
 qqk7WSw2Pb7GatH1ayWzxYddV5ktWvceYbd4sUXcgcNj56y77B5PJ0xm99i0qpPNY/OSeo+N
 73YwefT/NQhgi+KySUnNySxLLdK3S+DKWD3xDXvBQvmKfzvfszQw/hbpYuTkkBAwkbh2ZDdj
 FyMXh5DAVkaJB6uusEE4pxgldh4+wgpSJSwQLrFuzWIWEFtEQEvib/t/VpAiZoHzjBKX3zWw
 QnQsYpS4cWMeO0gVm4CTxOLzHWwgNq+AjcSR63/BbBYBFYlDB3aC2aICERLPt99ghKgRlDg5
 8wnYBk4BW4nbsw8yQtx3hVHi3TlDCFtI4vTis8wgNrOAmcS8zQ+hbHGJW0/mM0HY2hLLFr5m
 nsAoNAvJ2FlIWmYhaZmFpGUBI8sqRqHczOTs1KLMbL2CjMqS1GS9lNRNjMDYOTxR/dIOxr45
 HocYmTgYDzFKcDArifBeV3oYK8SbklhZlVqUH19UmpNafIhRmoNFSZx3A29JmJBAemJJanZq
 akFqEUyWiYNTqoHR7CvfIpOZJx4GnNq/PVJ1R5JZsdKl7AiGYGW1ZZUSNk4q53+dUW98/F2N
 gS/3mH5/QjrfljDltqPbu1IurDbJPHzvAlumg/C1ZlexiqRN6hahZv0/HjsktQkufruqtkhp
 gcHqdzIeMdl5/I1eYS/M/WaapbZdPliycZ6Cz737MmLRO42tLJVYijMSDbWYi4oTAR4x1q+L
 AgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_055509_294961_1F276665 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: s.christ@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 shawnguo@kernel.org, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpPbiAwMi4xMi4xOSAxMzo0MiwgTWFyY28gRmVsc2NoIHdyb3RlOgo+IEhpIFN0
ZWZhbiwKPiAKPiBPbiAxOS0xMi0wMiAxMTowOSwgU3RlZmFuIFJpZWRtw7xsbGVyIHdyb3RlOgo+
PiBIaSBNYXJjbywKPj4KPj4geW91ciBwcm9wb3NlZCBzZXR0aW5nIGlzIG9ubHkgdmFsaWQgZm9y
IHRoZSBMRE8gZW5hYmxlZCBjYXNlIGJ1dCBub3QgZm9yIHRoZQo+PiBjYXNlIHdoZXJlIHRoZSBM
RE8ncyBhcmUgaW4gYnlwYXNzIG1vZGUuIElzIHRoYXQgaW50ZW5kZWQ/IEluIGJ5cGFzcyBtb2Rl
IGl0Cj4+IGFjdHVhbGx5IG5lZWRzIHRvIGJlIDAuOTI1IFYgbWluIGZvciBBUk0gYW5kIDEuMTUg
ViBtaW4gZm9yIFNPQy4KPiAKPiBUaGUgY2FzZSBpcyB0aGF0IHRoZSBkcml2ZXIgZG9lc24ndCBz
dXBwb3J0IHRoZSBieXBhc3MgbW9kZSBjdXJyZW50bHkgc28KPiB5ZXMgaXQgd2FzIGludGVuZGVk
LgoKT2ssIEkgc2VlLgoKPiAKPj4gRGlkIHlvdSBleHBlcmllbmNlIGFuIGlzc3VlIHdpdGggdGhl
IGN1cnJlbnQgc2V0dGluZ3Mgb3IgaXMgdGhpcyBqdXN0IGEKPj4gY29zbWV0aWMgY2hhbmdlPwo+
IAo+IFRoZXJlIGlzIGN1cnJlbnRseSBubyBpc3N1ZSBiZWNhdXNlIHRoZSBpbnRlcm5hbGx5IExE
TydzIGRvbid0IHRyeSB0bwo+IGFwcGx5IHN1Y2ggYSBsb3cgdm9sdGFnZSB2YWx1ZS4gQnV0IEkg
dGhpbmsgaXQgaXNuJ3QgYSBjb3NtZXRpYyBjaGFuZ2UKPiBiZWNhdXNlIHRoaXMgdmFsdWUgaXMg
d3JvbmcuIFdlIG5lZWQgdG8gc3BlY2lmeSB0aGUgdmFsaWQgdm9sdGFnZSByYW5nZS4KClBsZWFz
ZSBjb3JyZWN0IG1lIGlmIEknbSB3cm9uZywgYnV0IGlzbid0IHRoZSByZWd1bGF0b3ItbWluIGFu
ZCAKcmVndWxhdG9yLW1heCB2YWx1ZXMgc3VwcG9zZWQgdG8gcmVmbGVjdCB0aGUgbWluIGFuZCBt
YXggdmFsdWVzIHRoaXMgCnJlZ3VsYXRvciBjYW4gZGVsaXZlcj8KCk1heWJlIHlvdXIgY2hhbmdl
IGlzIGJldHRlciBwbGFjZWQgaW4gdGhlIGFuYXRvcCByZWd1bGF0b3JzLiBCdHcgdGhleSBhbHNv
IApoYXZlIGEgMC43MjUgViBtaW5pbXVtIHZvbHRhZ2U6CgogRnJvbSBhcmNoL2FybS9ib290L2R0
cy9pbXg2cWRsLmR0c2k6CgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWdfYXJt
OiByZWd1bGF0b3ItdmRkY29yZSB7IAoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBjb21wYXRpYmxlID0gCiJmc2wsYW5hdG9wLXJlZ3VsYXRvciI7CiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmRkYXJtIjsg
CgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4t
bWljcm92b2x0ID0gPDcyNTAwMD47IAoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IAo8MTQ1MDAwMD47CiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsgCgogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuYXRvcC1yZWctb2Zmc2V0ID0g
PDB4MTQwPjsgCgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuYXRv
cC12b2wtYml0LXNoaWZ0ID0gPDA+OyAKCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgYW5hdG9wLXZvbC1iaXQtd2lkdGggPSA8NT47IAoKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBhbmF0b3AtZGVsYXktcmVnLW9mZnNldCA9IDwweDE3MD47
IAoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbmF0b3AtZGVsYXkt
Yml0LXNoaWZ0ID0gPDI0PjsgCgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGFuYXRvcC1kZWxheS1iaXQtd2lkdGggPSA8Mj47IAoKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBhbmF0b3AtbWluLWJpdC12YWwgPSA8MT47IAoKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbmF0b3AtbWluLXZvbHRhZ2UgPSA8NzI1
MDAwPjsgCgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuYXRvcC1t
YXgtdm9sdGFnZSA9IDwxNDUwMDAwPjsgCgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB9OwoKClJlZ2FyZHMsClN0ZWZhbgoKPiAKPiBSZWdhcmRzLAo+ICAgIE1hcmNvCj4gCj4+IFJl
Z2FyZHMsCj4+IFN0ZWZhbgo+Pgo+Pgo+PiBPbiAyOS4xMS4xOSAxNzo0OCwgTWFyY28gRmVsc2No
IHdyb3RlOgo+Pj4gVGhlIGN1cnJlbnQgc2V0IG1pbmltdW0gdm9sdGFnZSBvZiA3MzAwMDBtViBz
ZWVtcyB0byBiZSB3cm9uZy4gSSBkb24ndAo+Pj4ga25vdyB0aGUgZG9jdW1lbnQgd2hpY2ggc3Bl
Y2lmaWVzIHRoYXQgYnV0IHRoZSBpbXg2cWRsIGRhdGFzaGVldHMgc2F5cwo+Pj4gdGhhdCB0aGUg
bWluaW11bSB2b2x0YWdlIHNob3VsZCBiZSAxLjA1ViBmb3IgVkREX0FSTSAoTERPIGVuYWJsZWQs
IGxvd2VzdAo+Pj4gb3BwKSBhbmQgMS4yNzVWIGZvciBWRERfU09DIChMRE8gZW5hYmxlZCwgbG93
ZXN0IG9wcCkuCj4+Pgo+Pj4gRml4ZXM6IGRkZWM1ZDFjMDA0NyAoIkFSTTogZHRzOiBpbXg2OiBB
ZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBwaHlDT1JFLWkuTVggNiBTT00iKQo+Pj4gU2lnbmVkLW9m
Zi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4KPj4+IC0tLQo+Pj4g
ICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaSB8IDQg
KystLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1waHl0ZWMt
cGh5Y29yZS1zb20uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNv
cmUtc29tLmR0c2kKPj4+IGluZGV4IDY0ODZkZjNlMjk0Mi4uNDZkNDk1M2M1NTg4IDEwMDY0NAo+
Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20uZHRz
aQo+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20u
ZHRzaQo+Pj4gQEAgLTEwNywxNCArMTA3LDE0IEBACj4+PiAgICAJCXJlZ3VsYXRvcnMgewo+Pj4g
ICAgCQkJdmRkX2FybTogYnVjazEgewo+Pj4gICAgCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9h
cm0iOwo+Pj4gLQkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw3MzAwMDA+Owo+Pj4gKwkJ
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMDUwMDAwPjsKPj4+ICAgIAkJCQlyZWd1bGF0
b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMzgwMDAwPjsKPj4+ICAgIAkJCQlyZWd1bGF0b3ItYWx3YXlz
LW9uOwo+Pj4gICAgCQkJfTsKPj4+ICAgIAkJCXZkZF9zb2M6IGJ1Y2syIHsKPj4+ICAgIAkJCQly
ZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfc29jIjsKPj4+IC0JCQkJcmVndWxhdG9yLW1pbi1taWNyb3Zv
bHQgPSA8NzMwMDAwPjsKPj4+ICsJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTI3NTAw
MD47Cj4+PiAgICAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTM4MDAwMD47Cj4+PiAg
ICAJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4+ICAgIAkJCX07Cj4+Pgo+Pgo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
