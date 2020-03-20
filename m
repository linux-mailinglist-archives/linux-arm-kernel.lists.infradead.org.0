Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDED18CD1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVnNIVuQm7546plXAv43w08AREuhlDOpwiLts6hcl68=; b=cbbE/QA3kttlZO
	z5pvLeoJ06o9voJa1rvKCVQDc2Jh75aHzetUyLgsN3JSX+UxClU+w5jYIYA7NWJxTOhDYH83stevn
	cZZYVBVLzs1hCepy+AUelu+Vgh7azwTtMTjvZ3lHjTf5vozdPYUdMlYnTIgelMTjaZey/4wlJiVcY
	S7JWEwz7QyZdOXLYShmDuyscJgclytV0mwv02XYhqvcGELxRLHOI4hY9NiWe2n0DGWpAjLWcXAhhy
	TPyke7vyojovw5TwC6W7I4EW9Wp0KT3pqtF8cqJVGHgEkxcS7Zi9cnrWtja710Gye6RfM1bBGioKT
	kueXc+fE6IeqoY9d7OZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFxq-0003l5-FC; Fri, 20 Mar 2020 11:37:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFxf-0003kL-JE
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:37:13 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02KBb5Xh099445;
 Fri, 20 Mar 2020 06:37:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584704225;
 bh=joxAB+O4SqQZwX3n4Af5CO92e1MegnF30hqTdkdbGSg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nSyzmw4RlT/aBrT+NFcgF7HfFhJgenxhVnBG9RvS6CPQtZxQobcpEhWdJSXuI0dVz
 6zsc5ufVb1CAlIQkFNtr5buQv2uWoaCaIXX1h0XBRIu0ftrAIc6NDXl7vFWa8z3OBx
 aq5CHeyXHc2FcqnhjxntX3DVdQFRCwcLwaMBV3+A=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02KBb5q5060695
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Mar 2020 06:37:05 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Mar 2020 06:37:05 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Mar 2020 06:37:05 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02KBb2NS099381;
 Fri, 20 Mar 2020 06:37:03 -0500
Subject: Re: [PATCH net-next v5 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Grygorii Strashko <grygorii.strashko@ti.com>, Rob Herring
 <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>, "David S . Miller"
 <davem@davemloft.net>, netdev <netdev@vger.kernel.org>, Roger Quadros
 <rogerq@ti.com>, <devicetree@vger.kernel.org>, Jakub Kicinski
 <kuba@kernel.org>
References: <20200319162806.25705-1-grygorii.strashko@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <4146920e-5ca7-161c-badc-711683aa5a9b@ti.com>
Date: Fri, 20 Mar 2020 13:37:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200319162806.25705-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_043711_763892_D08A6484 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Murali Karicheri <m-karicheri2@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3J5Z29yaWksCgpPbiAxOS8wMy8yMDIwIDE4LjI3LCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90
ZToKPiBIaQo+IAo+IFRoaXMgdjUgc2VyaWVzIGFkZHMgYmFzaWMgbmV0d29ya2luZyBzdXBwb3J0
IHN1cHBvcnQgVEkgSzMgQU02NTR4L0o3MjFFIFNvQyB3aGljaAo+IGhhdmUgaW50ZWdyYXRlZCBH
aWdhYml0IEV0aGVybmV0IE1BQyAoTWVkaWEgQWNjZXNzIENvbnRyb2xsZXIpIGludG8gZGV2aWNl
IE1DVQo+IGRvbWFpbiBhbmQgbmFtZWQgTUNVX0NQU1cwIChDUFNXMkcgTlVTUykuCj4gCj4gRm9y
bWFsbHkgVFJNcyByZWZlciBDUFNXMkcgTlVTUyBhcyB0d28tcG9ydCBHaWdhYml0IEV0aGVybmV0
IFN3aXRjaCBzdWJzeXN0ZW0KPiB3aXRoIHBvcnQgMCBiZWluZyB0aGUgQ1BQSSBETUEgaG9zdCBw
b3J0IGFuZCBwb3J0IDEgYmVpbmcgdGhlIGV4dGVybmFsIEV0aGVybmV0Cj4gcG9ydCwgYnV0IGZv
ciAxIGV4dGVybmFsIHBvcnQgZGV2aWNlIGl0J3MganVzdCBQb3J0IDAgPC0+IEFMRSA8LT4gUG9y
dCAxIGFuZCBpdCdzCj4gcmF0aGVyIGRldmljZSB3aXRoIEhXIGZpbHRlcmluZyBjYXBhYmlsaXRp
ZXMgdGhlbiBhY3R1YWxseSBzd2l0Y2hpbmcgZGV2aWNlLgo+IEl0J3MgZXhwZWN0ZWQgdG8gaGF2
ZSBzaW1pbGFyIGRldmljZXMsIGJ1dCB3aXRoIG1vcmUgZXh0ZXJuYWwgcG9ydHMuCj4gCj4gVGhl
IG5ldyBIb3N0IHBvcnQgMCBDb21tdW5pY2F0aW9ucyBQb3J0IFByb2dyYW1taW5nIEludGVyZmFj
ZSAoQ1BQSTUpIGlzCj4gb3BlcmF0aW5nIGJ5IFRJIEFNNjU0eC9KNzIxRSBOQVZTUyBVbmlmaWVk
IERNQSBQZXJpcGhlcmFsIFJvb3QgQ29tcGxleCAoVURNQS1QKQo+IGNvbnRyb2xsZXIgWzFdLgo+
IAo+IFRoZSBDUFNXMkcgY29udGFpbnMgYmVsb3cgbW9kdWxlcyBmb3Igd2hpY2ggZXhpc3Rpbmcg
Y29kZSBpcyByZS11c2VkOgo+ICAtIE1BQyBTTDogY3Bzd19zbC5jCj4gIC0gQWRkcmVzcyBMb29r
dXAgRW5naW5lIChBTEUpOiBjcHN3X2FsZS5jLCBiYXNpY2FsbHkgY29tcGF0aWJsZSB3aXRoIEsy
IDY2QUsyRS9HCj4gIC0gTWFuYWdlbWVudCBEYXRhIElucHV0L091dHB1dCBpbnRlcmZhY2UgKE1E
SU8pOiBkYXZpbmNpX21kaW8uYywgZnVsbHkgCj4gICAgY29tcGF0aWJsZSB3aXRoIFRJIEFNMy80
LzUgZGV2aWNlcwo+IAo+IEJhc2ljIGZlYXR1cmVzIHN1cHBvcnRlZCBieSBDUFNXMkcgTlVTUyBk
cml2ZXI6Cj4gIC0gVkxBTiBzdXBwb3J0LCA4MDIuMVEgY29tcGxpYW50LCBBdXRvIGFkZCBwb3J0
IFZMQU4gZm9yIHVudGFnZ2VkIGZyYW1lcyBvbgo+ICAgIGluZ3Jlc3MsIEF1dG8gVkxBTiByZW1v
dmFsIG9uIGVncmVzcyBhbmQgYXV0byBwYWQgdG8gbWluaW11bSBmcmFtZSBzaXplLgo+ICAtIG11
bHRpY2FzdCBmaWx0ZXJpbmcKPiAgLSBwcm9taXNjIG1vZGUKPiAgLSBUWCBtdWx0aXEgc3VwcG9y
dCBpbiBSb3VuZCBSb2JpbiBvciBGaXhlZCBwcmlvcml0eSBtb2Rlcwo+ICAtIFJYIGNoZWNrc3Vt
IG9mZmxvYWQgZm9yIG5vbi1mcmFnbWVudGVkIElQdjQvSVB2NiBUQ1AvVURQIHBhY2tldHMKPiAg
LSBUWCBjaGVja3N1bSBvZmZsb2FkIHN1cHBvcnQgZm9yIElQdjQvSVB2NiBUQ1AvVURQIHBhY2tl
dHMgKEo3MjFFIG9ubHkpLgo+IAo+IEZlYXR1cmVzIHVuZGVyIGRldmVsb3BtZW50Ogo+ICAtIFN1
cHBvcnQgZm9yIElFRUUgMTU4OCBDbG9jayBTeW5jaHJvbml6YXRpb24uIFRoZSBDUFNXMkcgTlVT
UyBpbmNsdWRlcyBuZXcKPiAgICB2ZXJzaW9uIG9mIENvbW1vbiBQbGF0Zm9ybSBUaW1lIFN5bmMg
KENQVFMpCj4gIC0gdGMtbXFwcmlvOiBwcmlvcml0eSBsZXZlbCBRdWFsaXR5IE9mIFNlcnZpY2Ug
KFFPUykgc3VwcG9ydCAoODAyLjFwKQo+ICAtIHRjLWNiczogU3VwcG9ydCBmb3IgQXVkaW8vVmlk
ZW8gQnJpZGdpbmcgKFA4MDIuMVFhdi9ENi4wKSBIVyBzaGFwZXJzCj4gIC0gdGMtdGFwcmlvOiBJ
RUVFIDgwMi4xUWJ2L0QyLjIgRW5oYW5jZW1lbnRzIGZvciBTY2hlZHVsZWQgVHJhZmZpYwo+ICAt
IGZyYW1lIHByZWVtcHRpb246IElFRUUgUDkwMi4zYnIvRDIuMCBJbnRlcnNwZXJzaW5nIEV4cHJl
c3MgVHJhZmZpYywgODAyLjFRYnUKPiAgLSBleHRlbmRlZCBBTEUgZmVhdHVyZXM6IGNsYXNzaWZp
ZXIvcG9saWNlcnMsIGF1dG8tYWdpbmcKPiAKPiBQYXRjaGVzIDEtNiBhcmUgaW50ZW5kZWQgZm9y
IG5ldGRldiwgUGF0Y2hlcyA3LTExIGFyZSBpbnRlbmRlZCBmb3IgSzMgUGxhdGZvcm0KPiB0cmVl
IGFuZCBwcm92aWRlZCBoZXJlIGZvciB0ZXN0aW5nIHB1cnBvc2VzLgoKTmVlZGVkIHRvIHBpY2sg
dHdvIHBhdGNoZXM6CmFybTY0OiBkdHM6IHRpOiBrMy1qNzIxZS1tY3U6IGFkZCBzY20gbm9kZSBh
bmQgcGh5LWdtaWktc2VsIG5vZGVzCmFybTY0OiBkdHM6IHRpOiBrMy1hbTY1LW1jdTogYWRkIHBo
eS1nbWlpLXNlbCBub2RlCgpXaXRoIHRob3NlIGFwcGxpZWQsIE5GUyByb290ZnMgaXMgd29ya2lu
ZyBvbiB0b3Agb2YgbGludXgtbmV4dCwgcHJldHR5IGNvb2whCgpUZXN0ZWQtYnk6IFBldGVyIFVq
ZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cgo+IENoYW5nZXMgaW4gdjU6Cj4gIC0gcmVu
YW1lZCBmaWxlcyBrMy11ZG1hLWRlc2MtcG9vbC4qICBrMy11ZG1hLWRlc2MtcG9vbCB0byBrMy1j
cHBpLWRlc2MtcG9vbC4qLAo+ICAgIGFuZCBBUEkgdG8gazNfY3BwaV9kZXNjX3Bvb2xfKiBhcyBy
ZXF1ZXN0ZWQgYnkgUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KPiAgLSBm
aXhlZCBjb3B5LXBhc3RlIGVyciBpbiBhbTY1X2Nwc3dfbnVzc19uZG9fc2xhdmVfc2V0X3J4X21v
ZGUoKSB3aGljaCBibG9ja2VkCj4gICAgcmVjaWV2aW5nIG9mIG1jYXN0IGZyYW1lcy4KPiAgLSBh
ZGRlZCBUZXN0ZWQtYnk6IE11cmFsaSBLYXJpY2hlcmkgPG0ta2FyaWNoZXJpMkB0aS5jb20+IAo+
IAo+IENoYW5nZXMgaW4gdjQ6Cj4gIC0gZml4ZWQgbWlub3IgY29tbWVudHMgZnJvbSBKYWt1YiBL
aWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPgo+ICAtIGRlcGVuZGVuY2llcyByZXNvbHZlZDogcmVx
dWlyZWQgcGh5LXJtaWktc2VsIGNoYW5nZXMgWzJdIHF1ZXVlZCBmb3IgbWVyZ2UKPiAgICBleGNl
cHQgb25lIFszXSB3aGljaCBpcyBpbmNsdWRlZCBpbiB0aGlzIHNlcmllcyB3aXRoIEtpc2hvbidz
IGFzay4KPiAKPiBDaGFuZ2VzIGluIHYzOgo+ICAtIGFkZCBBUk02NCBkZWZjb25maWcgY2hhbmdl
cyBmb3IgdGVzdGluZyBwdXJwb3Nlcwo+ICAtIGZpeGVkIERUIHlhbWwgZGVmaW5pdGlvbgo+ICAt
IGZpeGVkIGNvbW1lbnRzIGZyb20gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4KPiAK
PiBDaGFuZ2VzIGluIHYyOgo+ICAtIGZpeGVkIERUIHlhbWwgZGVmaW5pdGlvbgo+ICAtIGZpeGVk
IGNvbW1lbnRzIGZyb20gRGF2aWQgTWlsbGVyCj4gCj4gdjQ6IGh0dHBzOi8vcGF0Y2h3b3JrLm96
bGFicy5vcmcvY292ZXIvMTI1NjA5Mi8KPiB2MzogaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9y
Zy9jb3Zlci8xMjU0NTY4Lwo+IHYyOiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL2NvdmVy
LzEyNTA2NzQvCj4gdjE6IGh0dHBzOi8vbHduLm5ldC9BcnRpY2xlcy84MTMwODcvCj4gCj4gVFJN
czoKPiAgQU02NTQ6IGh0dHA6Ly93d3cudGkuY29tL2xpdC91Zy9zcHJ1aWQ3ZS9zcHJ1aWQ3ZS5w
ZGYKPiAgSjcyMUU6IGh0dHA6Ly93d3cudGkuY29tL2xpdC91Zy9zcHJ1aWwxYS9zcHJ1aWwxYS5w
ZGYKPiAKPiBQcmVsaW1pbmFyeSBkb2N1bWVudGF0aW9uIGNhbiBiZSBmb3VuZCBhdDoKPiAgaHR0
cDovL3NvZnR3YXJlLWRsLnRpLmNvbS9wcm9jZXNzb3Itc2RrLWxpbnV4L2VzZC9kb2NzL2xhdGVz
dC9saW51eC9Gb3VuZGF0aW9uYWxfQ29tcG9uZW50cy9LZXJuZWwvS2VybmVsX0RyaXZlcnMvTmV0
d29yay9LM19DUFNXMmcuaHRtbAo+IAo+IFsxXSBodHRwczovL2x3bi5uZXQvQXJ0aWNsZXMvODA4
MDMwLwo+IFsyXSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC8yLzIyLzEwMAo+IFszXSBodHRw
czovL2xrbWwub3JnL2xrbWwvMjAyMC8zLzMvNzI0Cj4gR3J5Z29yaWkgU3RyYXNoa28gKDExKToK
PiAgIHBoeTogdGk6IGdtaWktc2VsOiBzaW1wbGlmeSBjb25maWcgZGVwZW5kZW5jaWVzIGJldHdl
ZW4gbmV0IGRyaXZlcnMKPiAgICAgYW5kIGdtaWkgcGh5Cj4gICBuZXQ6IGV0aGVybmV0OiB0aTog
YWxlOiBmaXggc2VlaW5nIHVucmVnIG1jYXN0IHBhY2tldHMgd2l0aCBwcm9taXNjCj4gICAgIGFu
ZCBhbGxtdWx0aSBkaXNhYmxlZAo+ICAgbmV0OiBldGhlcm5ldDogdGk6IGFsZTogYWRkIHN1cHBv
cnQgZm9yIG1hYy1vbmx5IG1vZGUKPiAgIG5ldDogZXRoZXJuZXQ6IHRpOiBhbGU6IGFtNjU6IGFk
ZCBzdXBwb3J0IGZvciBkZWZhdWx0IHRocmVhZCBjZmcKPiAgIGR0LWJpbmRpbmc6IHRpOiBhbTY1
eDogZG9jdW1lbnQgbWN1IGNwc3cgbnVzcwo+ICAgbmV0OiBldGhlcm5ldDogdGk6IGludHJvZHVj
ZSBhbTY1eC9qNzIxZSBnaWdhYml0IGV0aCBzdWJzeXN0ZW0gZHJpdmVyCj4gICBhcm02NDogZHRz
OiB0aTogazMtYW02NS1tY3U6IGFkZCBjcHN3IG51c3Mgbm9kZQo+ICAgYXJtNjQ6IGR0czogazMt
YW02NTQtYmFzZS1ib2FyZDogYWRkIG1jdSBjcHN3IG51c3MgcGlubXV4IGFuZCBwaHkgZGVmcwo+
ICAgYXJtNjQ6IGR0czogdGk6IGszLWo3MjFlLW1jdTogYWRkIG1jdSBjcHN3IG51c3Mgbm9kZQo+
ICAgYXJtNjQ6IGR0czogdGk6IGszLWo3MjFlLWNvbW1vbi1wcm9jLWJvYXJkOiBhZGQgbWN1IGNw
c3cgbnVzcyBwaW5tdXgKPiAgICAgYW5kIHBoeSBkZWZzCj4gICBhcm02NDogZGVmY29uZmlnOiB0
aTogazM6IGVuYWJsZSBkbWEgYW5kIG5ldHdvcmtpbmcKPiAKPiAgLi4uL2JpbmRpbmdzL25ldC90
aSxrMy1hbTY1NC1jcHN3LW51c3MueWFtbCAgIHwgIDIyNiArKwo+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3RpL2szLWFtNjUtbWN1LmR0c2kgICAgICAgfCAgIDQ5ICsKPiAgYXJjaC9hcm02NC9ib290
L2R0cy90aS9rMy1hbTY1LmR0c2kgICAgICAgICAgIHwgICAgMSArCj4gIC4uLi9hcm02NC9ib290
L2R0cy90aS9rMy1hbTY1NC1iYXNlLWJvYXJkLmR0cyB8ICAgNDIgKwo+ICAuLi4vZHRzL3RpL2sz
LWo3MjFlLWNvbW1vbi1wcm9jLWJvYXJkLmR0cyAgICAgfCAgIDQzICsKPiAgLi4uL2Jvb3QvZHRz
L3RpL2szLWo3MjFlLW1jdS13YWtldXAuZHRzaSAgICAgIHwgICA0OSArCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvdGkvazMtajcyMWUuZHRzaSAgICAgICAgICB8ICAgIDEgKwo+ICBhcmNoL2FybTY0
L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAgICAgfCAgICAzICsKPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvdGkvS2NvbmZpZyAgICAgICAgICAgICAgIHwgICAyMCArLQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC90aS9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgICAzICsKPiAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvdGkvYW02NS1jcHN3LWV0aHRvb2wuYyAgIHwgIDc0NyArKysrKysrCj4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNzLmMgICAgICB8IDE5NjUgKysr
KysrKysrKysrKysrKysKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvYW02NS1jcHN3LW51c3Mu
aCAgICAgIHwgIDE0MiArKwo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9jcHN3X2FsZS5jICAg
ICAgICAgICAgfCAgIDM4ICsKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvY3Bzd19hbGUuaCAg
ICAgICAgICAgIHwgICAgNCArCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2szLWNwcGktZGVz
Yy1wb29sLmMgICB8ICAxMjYgKysKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvazMtY3BwaS1k
ZXNjLXBvb2wuaCAgIHwgICAzMCArCj4gIGRyaXZlcnMvcGh5L3RpL0tjb25maWcgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgIDMgLQo+ICAxOCBmaWxlcyBjaGFuZ2VkLCAzNDg3IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3RpLGszLWFtNjU0LWNwc3ctbnVzcy55YW1sCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctZXRodG9v
bC5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNw
c3ctbnVzcy5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9h
bTY1LWNwc3ctbnVzcy5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5l
dC90aS9rMy1jcHBpLWRlc2MtcG9vbC5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25l
dC9ldGhlcm5ldC90aS9rMy1jcHBpLWRlc2MtcG9vbC5oCj4gCgotIFDDqXRlcgoKVGV4YXMgSW5z
dHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClkt
dHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNp
bmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
