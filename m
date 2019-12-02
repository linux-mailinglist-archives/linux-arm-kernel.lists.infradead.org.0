Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7996410EB8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:30:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v5CAiY85j3Vz6YZRLUAu67ugKTF/Wyt0LWPRbcKWnjw=; b=FsBWkegQOn/w2epxu1QN4V7dk
	XaFYIIb2Ozar5x7ucOPLVhYZha9j1c7znb/lzxnQ3tPzKAc/ngk/2hdmj//0G9dZcuUU3Nmu+w32K
	jc58xG5foh/UAOg5eOfvl6z5uPpH00Dey7OC0QvR7Oh2js5hrRwzsYCczaVVcU28r5IorTOFvYrZ5
	R7E6zy0J2k4OQmbce94OE25R3A3weGdkYZzCQUsB6440/Zb1fCYyxiLO4/1WtHZ7WcuBhu4xb9peI
	6BRQpFDg9WQOK3EQIvFu7sxC9f9DVWt9oAy1ASZNNrzsAO33ie3hQjDO+4eT391rP//xtp5H2efe0
	Wu00fsJKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmig-0007T8-4E; Mon, 02 Dec 2019 14:30:34 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmiW-0007Se-MX
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:30:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575297022; x=1577889022;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p6fBFU5A+IN32mAeBCUeO/UmZqaZft4UfXNKhb9I5Z4=;
 b=CPSQBlvpQNgvLCyQaGWsr2R+cNUCqLQAa3wDfZ3++bMwEDx/NBj101av2AUs7piQ
 hjtTHVu2rgyZI1VMNysPJm/+jjYeL1bNZrCBEt5j9JfoNVh5PkhQrA4gPoNPBFIF
 LluBlndP0LoWggVipKbU/dtOQSp9oM3KEJfLe+fO9lk=;
X-AuditID: c39127d2-e0fff7000000408f-82-5de51ffe0617
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 6B.8E.16527.EFF15ED5;
 Mon,  2 Dec 2019 15:30:22 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120215302193-25911 ;
 Mon, 2 Dec 2019 15:30:21 +0100 
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
 <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
 <b4e1fb4d-6e0f-4501-17a4-ee837548ad86@phytec.de>
 <20191202141406.gvzc3lnxefczd33b@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <dc55f52f-c01b-1f9e-4149-740e2c6d9663@phytec.de>
Date: Mon, 2 Dec 2019 15:30:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191202141406.gvzc3lnxefczd33b@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 02.12.2019 15:30:21,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.12.2019 15:30:22
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOLMWRmVeSWpSXmKPExsWyRoCBS/ef/NNYg+lzNSye3bzFZvHwqr/F
 qqk7WSw2Pb7GatH1ayWzxYddV5ktWvceYbd4sUXcgcNj56y77B5PJ0xm99i0qpPNY/OSeo+N
 73YwefT/NQhgi+KySUnNySxLLdK3S+DKaPzey1KwTL/iw4M2pgbGl4pdjJwcEgImEjMb+hm7
 GLk4hAS2MkrcaZzABuGcYpQ4+GIWG0iVsEC4xLo1i1lAbBEBLYm/7f9ZQYqYBc4zSlx+18AK
 khAS6GCSaHwmB2KzCThJLD7fAdTMwcErYCPR/E0eJMwioCKx9PQtZhBbVCBC4vn2G4wgNq+A
 oMTJmU/A5nMK2Eqs2H2FCWS+hMAVRolfEx+xQpwqJHF68VmwZmYBM4l5mx9C2eISt57MZ4Kw
 tSWWLXzNPIFRaBaSubOQtMxC0jILScsCRpZVjEK5mcnZqUWZ2XoFGZUlqcl6KambGIGRc3ii
 +qUdjH1zPA4xMnEwHmKU4GBWEuHdJvE0Vog3JbGyKrUoP76oNCe1+BCjNAeLkjjvBt6SMCGB
 9MSS1OzU1ILUIpgsEwenVANj4PzABxOtCnzjz9y9GiWoF6v2qeD97wvL2Vebd9l/ZLJoqGNv
 uF03X17zz1PZpv7nTJ7GahZe1QofDoRMOPN3V4inYZ73jfkbsw0Tzp1uVfvS9G/JKsczJe/4
 Fy/hF52VwhKa89A68uKJN9P+Jjczh7x/ve+6eeyqlhtsO2/ybtxqxjLN+SuTEktxRqKhFnNR
 cSIAXoKQMooCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_063025_002732_754044E1 
X-CRM114-Status: GOOD (  24.11  )
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

SGkgTWFyY28sCgpPbiAwMi4xMi4xOSAxNToxNCwgTWFyY28gRmVsc2NoIHdyb3RlOgo+IEhpIFN0
ZWZhbiwKPiAKPiBPbiAxOS0xMi0wMiAxNDo1NSwgU3RlZmFuIFJpZWRtw7xsbGVyIHdyb3RlOgo+
PiBIaSBNYXJjbywKPj4KPj4gT24gMDIuMTIuMTkgMTM6NDIsIE1hcmNvIEZlbHNjaCB3cm90ZToK
Pj4+IEhpIFN0ZWZhbiwKPj4+Cj4+PiBPbiAxOS0xMi0wMiAxMTowOSwgU3RlZmFuIFJpZWRtw7xs
bGVyIHdyb3RlOgo+Pj4+IEhpIE1hcmNvLAo+Pj4+Cj4+Pj4geW91ciBwcm9wb3NlZCBzZXR0aW5n
IGlzIG9ubHkgdmFsaWQgZm9yIHRoZSBMRE8gZW5hYmxlZCBjYXNlIGJ1dCBub3QgZm9yIHRoZQo+
Pj4+IGNhc2Ugd2hlcmUgdGhlIExETydzIGFyZSBpbiBieXBhc3MgbW9kZS4gSXMgdGhhdCBpbnRl
bmRlZD8gSW4gYnlwYXNzIG1vZGUgaXQKPj4+PiBhY3R1YWxseSBuZWVkcyB0byBiZSAwLjkyNSBW
IG1pbiBmb3IgQVJNIGFuZCAxLjE1IFYgbWluIGZvciBTT0MuCj4+Pgo+Pj4gVGhlIGNhc2UgaXMg
dGhhdCB0aGUgZHJpdmVyIGRvZXNuJ3Qgc3VwcG9ydCB0aGUgYnlwYXNzIG1vZGUgY3VycmVudGx5
IHNvCj4+PiB5ZXMgaXQgd2FzIGludGVuZGVkLgo+Pgo+PiBPaywgSSBzZWUuCj4+Cj4+Pgo+Pj4+
IERpZCB5b3UgZXhwZXJpZW5jZSBhbiBpc3N1ZSB3aXRoIHRoZSBjdXJyZW50IHNldHRpbmdzIG9y
IGlzIHRoaXMganVzdCBhCj4+Pj4gY29zbWV0aWMgY2hhbmdlPwo+Pj4KPj4+IFRoZXJlIGlzIGN1
cnJlbnRseSBubyBpc3N1ZSBiZWNhdXNlIHRoZSBpbnRlcm5hbGx5IExETydzIGRvbid0IHRyeSB0
bwo+Pj4gYXBwbHkgc3VjaCBhIGxvdyB2b2x0YWdlIHZhbHVlLiBCdXQgSSB0aGluayBpdCBpc24n
dCBhIGNvc21ldGljIGNoYW5nZQo+Pj4gYmVjYXVzZSB0aGlzIHZhbHVlIGlzIHdyb25nLiBXZSBu
ZWVkIHRvIHNwZWNpZnkgdGhlIHZhbGlkIHZvbHRhZ2UgcmFuZ2UuCj4+Cj4+IFBsZWFzZSBjb3Jy
ZWN0IG1lIGlmIEknbSB3cm9uZywgYnV0IGlzbid0IHRoZSByZWd1bGF0b3ItbWluIGFuZAo+PiBy
ZWd1bGF0b3ItbWF4IHZhbHVlcyBzdXBwb3NlZCB0byByZWZsZWN0IHRoZSBtaW4gYW5kIG1heCB2
YWx1ZXMgdGhpcwo+PiByZWd1bGF0b3IgY2FuIGRlbGl2ZXI/Cj4gCj4gTm9wZSwgdGhlIGNvbnN0
cmFpbnRzIGFyZSBoYXJkIGNvZGVkIHdpdGhpbiB0aGUgZHJpdmVyIGUuZy4gZGE5MDYyOiA+Cj4g
ODwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+IC8qIFJlZ3VsYXRvciBvcGVyYXRpb25zICovCj4gCj4gLyogQ3VycmVudCBs
aW1pdHMgYXJyYXkgKGluIHVBKQo+ICAgKiAtIERBOTA2MV9JRF9bQlVDSzF8QlVDSzNdCj4gICAq
IC0gREE5MDYyX0lEX1tCVUNLMXxCVUNLMnxCVUNLNF0KPiAgICogRW50cnkgaW5kZXhlcyBjb3Jy
ZXNwb25kcyB0byByZWdpc3RlciB2YWx1ZXMuCj4gICAqLwo+IHN0YXRpYyBjb25zdCB1bnNpZ25l
ZCBpbnQgZGE5MDYyX2J1Y2tfYV9saW1pdHNbXSA9IHsKPiAJNTAwMDAwLCAgNjAwMDAwLCAgNzAw
MDAwLCAgODAwMDAwLCAgOTAwMDAwLCAxMDAwMDAwLAo+IAkxMTAwMDAwLCAxMjAwMDAwLAo+IAkx
MzAwMDAwLCAxNDAwMDAwLCAxNTAwMDAwLCAxNjAwMDAwLCAxNzAwMDAwLAo+IAkxODAwMDAwLCAx
OTAwMDAwLCAyMDAwMDAwCj4gfTsKPiAKPiAvKiBDdXJyZW50IGxpbWl0cyBhcnJheSAoaW4gdUEp
Cj4gICAqIC0gREE5MDYxX0lEX0JVQ0syCj4gICAqIC0gREE5MDYyX0lEX0JVQ0szCj4gICAqIEVu
dHJ5IGluZGV4ZXMgY29ycmVzcG9uZHMgdG8gcmVnaXN0ZXIgdmFsdWVzLgo+ICAgKi8KPiBzdGF0
aWMgY29uc3QgdW5zaWduZWQgaW50Cj4gZGE5MDYyX2J1Y2tfYl9saW1pdHNbXSA9IHsKPiAJMTUw
MDAwMCwgMTYwMDAwMCwgMTcwMDAwMCwgMTgwMDAwMCwKPiAJMTkwMDAwMCwgMjAwMDAwMCwgMjEw
MDAwMCwgMjIwMDAwMCwKPiAJMjMwMDAwMCwgMjQwMDAwMCwgMjUwMDAwMCwKPiAJMjYwMDAwMCwg
MjcwMDAwMCwgMjgwMDAwMCwKPiAJMjkwMDAwMCwgMzAwMDAwMAo+IH07Cj4gCj4gODwtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQo+IAoKVGhlc2UgYXJlIHRoZSBhdmFpbGFibGUgY3VycmVudCBsaW1pdHMgZm9yIHRoZSBidWNr
IHJlZ3VsYXRvcnMuIEkgZG9uJ3Qgc2VlIAp3aGVyZSB0aGV5IGNvcnJlc3BvbmQgdG8gdGhlIG1p
bi9tYXggc2V0dGFibGUgb3V0cHV0IHZvbHRhZ2UuIE1heWJlIEkgbWlzc2VkIApzb21ldGhpbmc/
CgpUaGUgcmVndWxhdG9yIGJpbmRpbmdzIHN0YXRlOgotIHJlZ3VsYXRvci1taW4tbWljcm92b2x0
OiBzbWFsbGVzdCB2b2x0YWdlIGNvbnN1bWVycyBtYXkgc2V0IAoKLSByZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdDogbGFyZ2VzdCB2b2x0YWdlIGNvbnN1bWVycyBtYXkgc2V0CgpGb3IgbWUgdGhhdCBp
cyBkZXZpY2UgZGVwZW5kZWQgYW5kIG5vdCBkZXNpZ24gZGVwZW5kZWQuCgpXaGF0IGlzIHRoZSBz
Y2VuYXJpbyB5b3UncmUgdGhpbmtpbmcgYWJvdXQgd2hpY2ggd291bGQgY2F1c2UgdGhlIFNPQywg
YXMgYSAKY29uc3VtZXIsIHRvIHJlcXVlc3QgYSBsb3dlciB2b2x0YWdlIGFzIGl0IG5lZWRzPwoK
UmVnYXJkcywKU3RlZmFuCgo+IFNvIHlvdSBoYXZlIHRvIHNwZWNpZnkgdGhlIG1pbi9tYXggdm9s
dGFnZSBmb3IgeW91ciBkZXNpZ24uCj4gCj4gUmVnYXJkcywKPiAgICBNYXJjbwo+IAo+PiBNYXli
ZSB5b3VyIGNoYW5nZSBpcyBiZXR0ZXIgcGxhY2VkIGluIHRoZSBhbmF0b3AgcmVndWxhdG9ycy4g
QnR3IHRoZXkgYWxzbwo+PiBoYXZlIGEgMC43MjUgViBtaW5pbXVtIHZvbHRhZ2U6Cj4+Cj4+ICBG
cm9tIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwuZHRzaToKPj4KPj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVnX2FybTogcmVndWxhdG9yLXZkZGNvcmUgewo+Pgo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGFu
YXRvcC1yZWd1bGF0b3IiOwo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1uYW1lID0gInZkZGFybSI7Cj4+Cj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NzI1MDAwPjsK
Pj4KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3It
bWF4LW1pY3Jvdm9sdCA9IDwxNDUwMDAwPjsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pgo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGFuYXRvcC1yZWctb2Zmc2V0ID0gPDB4MTQwPjsKPj4K
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbmF0b3Atdm9sLWJp
dC1zaGlmdCA9IDwwPjsKPj4KPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBhbmF0b3Atdm9sLWJpdC13aWR0aCA9IDw1PjsKPj4KPj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBhbmF0b3AtZGVsYXktcmVnLW9mZnNldCA9IDwweDE3MD47
Cj4+Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYW5hdG9wLWRl
bGF5LWJpdC1zaGlmdCA9IDwyND47Cj4+Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYW5hdG9wLWRlbGF5LWJpdC13aWR0aCA9IDwyPjsKPj4KPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbmF0b3AtbWluLWJpdC12YWwgPSA8MT47
Cj4+Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYW5hdG9wLW1p
bi12b2x0YWdlID0gPDcyNTAwMD47Cj4+Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYW5hdG9wLW1heC12b2x0YWdlID0gPDE0NTAwMDA+Owo+Pgo+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+Pgo+Pgo+PiBSZWdhcmRzLAo+PiBTdGVmYW4K
Pj4KPj4+Cj4+PiBSZWdhcmRzLAo+Pj4gICAgIE1hcmNvCj4+Pgo+Pj4+IFJlZ2FyZHMsCj4+Pj4g
U3RlZmFuCj4+Pj4KPj4+Pgo+Pj4+IE9uIDI5LjExLjE5IDE3OjQ4LCBNYXJjbyBGZWxzY2ggd3Jv
dGU6Cj4+Pj4+IFRoZSBjdXJyZW50IHNldCBtaW5pbXVtIHZvbHRhZ2Ugb2YgNzMwMDAwbVYgc2Vl
bXMgdG8gYmUgd3JvbmcuIEkgZG9uJ3QKPj4+Pj4ga25vdyB0aGUgZG9jdW1lbnQgd2hpY2ggc3Bl
Y2lmaWVzIHRoYXQgYnV0IHRoZSBpbXg2cWRsIGRhdGFzaGVldHMgc2F5cwo+Pj4+PiB0aGF0IHRo
ZSBtaW5pbXVtIHZvbHRhZ2Ugc2hvdWxkIGJlIDEuMDVWIGZvciBWRERfQVJNIChMRE8gZW5hYmxl
ZCwgbG93ZXN0Cj4+Pj4+IG9wcCkgYW5kIDEuMjc1ViBmb3IgVkREX1NPQyAoTERPIGVuYWJsZWQs
IGxvd2VzdCBvcHApLgo+Pj4+Pgo+Pj4+PiBGaXhlczogZGRlYzVkMWMwMDQ3ICgiQVJNOiBkdHM6
IGlteDY6IEFkZCBpbml0aWFsIHN1cHBvcnQgZm9yIHBoeUNPUkUtaS5NWCA2IFNPTSIpCj4+Pj4+
IFNpZ25lZC1vZmYtYnk6IE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hAcGVuZ3V0cm9uaXguZGU+Cj4+
Pj4+IC0tLQo+Pj4+PiAgICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1waHl0ZWMtcGh5Y29y
ZS1zb20uZHRzaSB8IDQgKystLQo+Pj4+PiAgICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
b3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kgYi9hcmNoL2FybS9ib290L2R0
cy9pbXg2cWRsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpCj4+Pj4+IGluZGV4IDY0ODZkZjNlMjk0
Mi4uNDZkNDk1M2M1NTg4IDEwMDY0NAo+Pj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2
cWRsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpCj4+Pj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kKPj4+Pj4gQEAgLTEwNywxNCArMTA3LDE0
IEBACj4+Pj4+ICAgICAJCXJlZ3VsYXRvcnMgewo+Pj4+PiAgICAgCQkJdmRkX2FybTogYnVjazEg
ewo+Pj4+PiAgICAgCQkJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9hcm0iOwo+Pj4+PiAtCQkJCXJl
Z3VsYXRvci1taW4tbWljcm92b2x0ID0gPDczMDAwMD47Cj4+Pj4+ICsJCQkJcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8MTA1MDAwMD47Cj4+Pj4+ICAgICAJCQkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MTM4MDAwMD47Cj4+Pj4+ICAgICAJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4+
Pj4gICAgIAkJCX07Cj4+Pj4+ICAgICAJCQl2ZGRfc29jOiBidWNrMiB7Cj4+Pj4+ICAgICAJCQkJ
cmVndWxhdG9yLW5hbWUgPSAidmRkX3NvYyI7Cj4+Pj4+IC0JCQkJcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8NzMwMDAwPjsKPj4+Pj4gKwkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwx
Mjc1MDAwPjsKPj4+Pj4gICAgIAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMzgwMDAw
PjsKPj4+Pj4gICAgIAkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4+PiAgICAgCQkJfTsKPj4+
Pj4KPj4+Pgo+Pj4KPj4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
