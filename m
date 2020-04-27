Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA461BAE05
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8nElVrJebicwgSUARQMsjLxNqR9vdYaU8a3ZAp+/EU=; b=CrmEDSLDbacMFt
	HeQNzwLblcMQ4Cv8e2NTSJD1EQ0ORRGByJxbvFmeGZ43IpElywPy/lC9NCbrF+JZMhK6UyL0vM+bC
	qYXPDCpSS01WgiIt7IKkKF4M0sqtm4GhNzI3jJqwN8ZvXeX/zm2mWRniNpcOXtsICZHEP4ABED6NZ
	g426pq9XWrYT6WBxZx95Pom6U5UhEvMiQanc0/UbHURIXMVrtYuRMAHiz5wX4V2PaCHGFJ0EUL/rx
	PwPBNOkmkwrDhQFUk8/R6eKnZTsNQ8TlVKtzo0Npkm8X+PQpySulNfp6CvSVcP42UVZJJwX/YW9g4
	KRzMG0swIUb+mzPs+/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9Uq-0003Bi-My; Mon, 27 Apr 2020 19:32:52 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9Uf-0003At-BT; Mon, 27 Apr 2020 19:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588015951;
 bh=yriEMMSw+mJO9UE3z78SkastypBUctvQc/BJwAY/K4I=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Pg6N2DaRHMhT1lufSSwrpSjQulFWPHLusHx2KYsgA1AstCjKQCU37JxSq57fBen5O
 mkcNuvp2Y9hug36QYI2/BkDdI+r4UkAN/FZjBUv9PhBHA2r+Vf3DRrTsJoX92AS86m
 JSbVr9O1gLzWmbMNFqyHzL5I+35tU0Vobvs6VfRc=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.31] ([89.12.68.2]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lmu5s-1izaV90Loi-00h2Py; Mon, 27
 Apr 2020 21:32:31 +0200
Subject: Re: [BUG] PCI: rockchip: rk3399: pcie switch support
To: Robin Murphy <robin.murphy@arm.com>, Shawn Lin <shawn.lin@rock-chips.com>
References: <4d03dd8c-14f9-d1ef-6fd2-095423be3dd3@web.de>
 <3e9d2c53-4f0d-0c97-fbfa-6d799e223747@arm.com>
 <b088ad0e-bab1-0cff-dc43-eb5709555902@web.de>
 <1f180d4b-9e5d-c829-555b-c9750940361e@web.de>
 <d02e0b72-5fb3-dd47-468c-08b86db07a9a@arm.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <213ff8e4-0921-6e06-a98e-e7d955ca279d@web.de>
Date: Mon, 27 Apr 2020 21:32:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <d02e0b72-5fb3-dd47-468c-08b86db07a9a@arm.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:egsP99ZUL8Q+NhjQ+Y0Iq7o0uFlAWiM0eMjSXXzuHmfsXEl14dK
 U+SWHY1f5u+fSuvX1bzSu9vM8qM9x4WbC7UKxeiyUDxrX0H3bR+c3qytIupN6N4fiUGsfyP
 xob3RNlqojne4h78YczVbCiQxUE33jECVf0HPYdAowDfEMU7a+9vSMQLH+/Tx+LOh0+6Fio
 ET093r0Woc7k+juuvDXPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y5F9Zlf49Qc=:1ioKBA093oWxuGDt9c4A2E
 p/qMSJASroWOWPbQc/Z59EoXV03oc4p9t/klcXOEbGaeh55bxbSCCZ9y4Wl3BvnI916xQv5NF
 o3ULvV7wCbFURDG1VwnSKPYMsPlEIPmHUXCojGwopZ37EflqIg5DJeS1vsCh1ZX1//Uczbkqb
 U0MKh0b1gcQOln/XrSrHmnC9UWsbmv5W84OeKr9BqyFqbXoE0BnbqocnN9K7EOMY++aMQrt/S
 NkUIudEWyHz4SmFjEdHapCKkyVqlTifSjaOlx97Z+iaX+DOBYXKpcmIUH+rshr24iJoBDsCGR
 /IVw1vPp2qqb9hpd6vtVX9k2wlXu06WBHPcZpOm9SmcJ2aJQIXTDjJfspNycBCQVmeOBEeAkT
 nB8Ku7wdcAK/dkUs5LzkZ88GJ+Cmx9quOtEK8FBSzpo00XpP1339fbqVuqF5Poa6CkeOVaNFT
 gvNVBqQjq2HH+PYA8ZZX+yR8OTv+BlAalrGpQPysBGUUdMI1LF+0FCs33T+/rvDZZ/0VVXc0I
 qj6hL56m3b4w1OW3sWoE5j0VdM3ZkS2XxdFoPcnmjFUJAW73yrvyA4kroeOJWlYNPZjVWwwJg
 ebFvYfAFD0L67b5pI7+idEWKJiBnkzBow+nXPo6NJiN4PPxNfCgAn9sRHb8X0d/3/iBQxy/Kz
 MEKHJMHhs6KoDAPMO0mKcQxmbE9W74i/UnKI1FWWF8nuH4XcXLN74wcR/Y3jO8xcIsi/lnnEg
 +GEEwkH0+meGkRtyRG+LU8kFAwQJvAErPaDLetVzTdv3fwi1pbTAiEmngtLsaL3Ysd4tODFp4
 xGrVsiaY7ebrZ/+JELnb+IsIHq2Ez0qKudErn01vwaftQKoRCxtB1pQErDKKgO0AXLypLJisA
 rEDkU8fO0d+JTACZeXrUNzuloNHFo61IbBBVLVlqu+Xu5UU1o9s/F0iYN0ePsTEzBW1sWM+Fe
 UE9Q6iVtSL5GZ3p3X2+VUVGnpgGCSTxKJrBcdLdbZce957fg0jU1pIf11pIbhu085pLNqVz95
 cpe9pmUlgaL7hd/g1gLu3mXyyEnJnq1Wg/RIXS/qDV8fASdLCnaDHq309ajeSSgYX3H7Sh2ML
 IgV7O5+lt4q70BzLUDhQjZohr1oCooliHekSIjJ5W/KtpEu4Q29dm7bvFr1xXZxNI/WidsSji
 6LTVl6wI7oJTnqdBh9WU++h0CRw5Tjx+lW23wFhh1gx4T77raKEeRnx+sCC5RNPHCIdMp4OpF
 5RVZo2UFFJWwx9B3Y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_123241_687553_6ED20210 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [smoch[at]web.de]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQuMDQuMjAgMTQ6MjgsIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyMDIwLTA0LTE0IDEy
OjM1IHBtLCBTb2VyZW4gTW9jaCB3cm90ZToKPj4gT24gMDYuMDQuMjAgMTk6MTIsIFNvZXJlbiBN
b2NoIHdyb3RlOgo+Pj4gT24gMDYuMDQuMjAgMTQ6NTIsIFJvYmluIE11cnBoeSB3cm90ZToKPj4+
PiBPbiAyMDIwLTA0LTA0IDc6NDEgcG0sIFNvZXJlbiBNb2NoIHdyb3RlOgo+Pj4+PiBJIHdhbnQg
dG8gdXNlIGEgUENJZSBzd2l0Y2ggb24gYSBSSzMzOTkgYmFzZWQgUm9ja1BybzY0IFYyLjEgYm9h
cmQuCj4+Pj4+ICJOb3JtYWwiIFBDSWUgY2FyZHMgd29yayAobW9zdGx5KSBqdXN0IGZpbmUgb24g
dGhpcyBib2FyZC4gVGhlIFBDSWUKPj4+Pj4gc3dpdGNoZXMgKEkgdHJpZWQgUGVyaWNvbSBhbmQg
QVNNZWRpYSBiYXNlZCBzd2l0Y2hlcykgYWxzbyB3b3JrCj4+Pj4+IGZpbmUgb24KPj4+Pj4gb3Ro
ZXIgYm9hcmRzLiBUaGUgUkszMzk5IFBDSWUgY29udHJvbGxlciB3aXRoIHBjaWVfcm9ja2NoaXBf
aG9zdAo+Pj4+PiBkcml2ZXIKPj4+Pj4gYWxzbyByZWNvZ25pc2VzIHRoZSBzd2l0Y2gsIGJ1dCBm
YWlscyB0byBpbml0aWFsaXplIHRoZSBidXNlcwo+Pj4+PiBiZWhpbmQgdGhlCj4+Pj4+IGJyaWRn
ZSBwcm9wZXJseSwgc2VlIHN5c2xvZyBmcm9tIGxpbnV4LTUuNi4wLgo+Pj4+Pgo+Pj4+PiBBbnkg
aWRlYXMgd2hhdCBJIGRvIHdyb25nLCBvciBhbnkgc3VnZ2VzdGlvbnMgd2hhdCBJIGNhbiB0ZXN0
IGhlcmU/Cj4+Pj4gU2VlIHRoZSB0aHJlYWQgaGVyZToKPj4+Pgo+Pj4+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xpbnV4LXBjaS9DQU1kWXpZb1R3akt6NEVOOFB0RDVwWmZ1MytTWCs2OEpMK2Rm
dm1DclNuTEw9SzZGZXdAbWFpbC5nbWFpbC5jb20vCj4+Pj4KPj4+Pgo+Pj4gVGhhbmtzIFJvYmlu
IQo+Pj4KPj4+IEkgYWxzbyBmb3VuZCBvdXQgaW4gdGhlIG1lYW50aW1lIHRoYXQgZGV2aWNlIGVu
dW1lcmF0aW9uIGZhaWxzIGluIHRoaXMKPj4+IGZhdGFsIHdheSB3aGVuIHByb2Jpbmcgbm9uLWV4
aXN0ZW50IGRldmljZXMuIFNvIGlmIEkgaGFjayBteSBjb21wbGV0ZQo+Pj4gYnVzIHRvcG9sb2d5
IGludG8gcm9ja2NoaXBfcGNpZV92YWxpZF9kZXZpY2UsIHRoZW4gYWxsIGV4aXN0aW5nIGRldmlj
ZXMKPj4+IGNvbWUgdXAgcHJvcGVybHkuIE9mIGNvdXJzZSB0aGlzIGlzIG5vdCBob3cgUENJZSBz
aG91bGQgd29yay4KPj4+PiBUaGUgY29uY2x1c2lvbiB0aGVyZSBzZWVtcyB0byBiZSB0aGF0IHRo
ZSBSSzMzOTkgcm9vdCBjb21wbGV4IGp1c3QKPj4+PiBkb2Vzbid0IGhhbmRsZSBjZXJ0YWluIHR5
cGVzIG9mIHJlc3BvbnNlIGluIGEgc2Vuc2libGUgbWFubmVyLCBhbmQKPj4+PiB0aGVyZSdzIG5v
dCBtdWNoIHRoYXQgY2FuIHJlYXNvbmFibHkgYmUgZG9uZSB0byBjaGFuZ2UgdGhhdC4KPj4+IEht
LCBhdCBsZWFzdCB0aGVyZSBpcyB0aGUgcHJvbWlzaW5nIHN1Z2dlc3Rpb24gdG8gdGFrZSBvdmVy
IHRoZSBTRXJyb3IKPj4+IGhhbmRsZXIsIG1heWJlIGluIEFURiwgYXMgd29ya2Fyb3VuZC4KPj4g
VW5mb3J0dW5hdGVseSBpdCBzZWVtcyB0byBiZSBub3QgdGhhdCBlYXN5LiBPbmx5IHdoZW4gUENJ
ZSBkZXZpY2UKPj4gcHJvYmluZyBydW5zIG9uIG9uZSBvZiB0aGUgQ29ydGV4LUE3MiBjb3JlcyBv
ZiByazMzOTkgd2Ugc2VlIHRoZSBTRXJyb3IuCj4+IFdoZW4gcHJvYmluZyBydW5zIG9uIG9uZSBv
ZiB0aGUgQTUzIGNvcmVzLCB3ZSBnZXQgYSBzeW5jaHJvbm91cyBleHRlcm5hbAo+PiBhYm9ydCBp
bnN0ZWFkLgo+Pgo+PiBJcyB0aGlzIGV4cGVjdGVkIHRvIHNlZSBkaWZmZXJlbnQgZXJyb3IgdHlw
ZXMgb24gYmlnLkxJVFRMRSBzeXN0ZW1zPyBPcgo+PiBpcyB0aGlzIGFub3RoZXIgc3BlY2lhbCBw
cm9wZXJ0eSBvZiB0aGUgcmszMzk5IHBjaWUgY29udHJvbGxlcj8KPgo+IEFzIGZhciBhcyBJJ20g
YXdhcmUsIHRoZSBDUFUgbWljcm9hcmNoaXRlY3R1cmUgaXMgaW5kZWVkIG9uZSBvZiB0aGUKPiBm
YWN0b3JzIGluIHdoZXRoZXIgaXQgdGFrZXMgYSBnaXZlbiBleHRlcm5hbCBhYm9ydCBzeW5jaHJv
bm91c2x5IG9yCj4gYXN5bmNocm9ub3VzbHksIHNvIHllcywgSSdkIHNheSB0aGF0IHByb2JhYmx5
IGlzIGV4cGVjdGVkLiBJIHdvdWxkbid0Cj4gbmVjZXNzYXJpbHkgZXZlbiByZWx5IG9uIGEgc2lu
Z2xlIG1pY3JvYXJjaGl0ZWN0dXJlIG9ubHkgYmVoYXZpbmcgb25lCj4gd2F5LCBzaW5jZSBpbiBw
cmluY2lwbGUgaXQncyBwb3NzaWJsZSB0aGF0IHN1cnJvdW5kaW5nIGluc3RydWN0aW9ucwo+IG1p
Z2h0IGFmZmVjdCB3aGV0aGVyIHRoZSBjb3JlIHN0aWxsIGhhcyBlbm91Z2ggY29udGV4dCBsZWZ0
IHRvIHRha2UKPiB0aGUgZXhjZXB0aW9uIHN5bmNocm9ub3VzbHkgb3Igbm90IGF0IHRoZSBwb2lu
dCB0aGUgYWJvcnQgZG9lcyBjb21lIGJhY2suCj4KPiBJbiBnZW5lcmFsIGV4dGVybmFsIGFib3J0
cyBhcmUgYSAic2hvdWxkIG5ldmVyIGhhcHBlbiIga2luZCBvZiB0aGluZywKPiBzbyB0aGV5J3Jl
IG5vdCBuZWNlc3NhcmlseSBleHBlY3RlZCB0byBiZSByZWNvdmVyYWJsZSAoSSB0aGluayB0aGUg
UkFTCj4gZXh0ZW5zaW9ucyBtaWdodCBhZGQgYSBtb3JlIHJvYnVzdG5lc3MgaW4gdGVybXMgb2Yg
cmVwb3J0aW5nLCBidXQKPiBhcmVuJ3QgcmVsZXZhbnQgaGVyZSBlaXRoZXIgd2F5KS4KPgpPa2F5
LiBJbiBhbiBpZGVhbCB3b3JsZCB3ZSB3b3VsZCBub3QgbmVlZCBzb2Z0d2FyZSB3b3JrYXJvdW5k
cyBmb3IKaGFyZHdhcmUgYnVncy4KCkBTaGF3bjogQ2FuIHlvdSBwb2ludCBtZSB0byB0aGUgcmsz
Mzk5IGVycmF0YSB5b3UgbWVudGlvbmVkIGluIGNvbW1pdAo3MTJmYTE3NzcyMDdjMmYyNzAzYTZl
YjYxOGE5Njk5MDk5Y2JlMzdiID8KClRoYW5rcy4KCgo+IEF0IHRoaXMgcG9pbnQgSSdtIHN0YXJ0
aW5nIHRvIHdvbmRlciB3aGV0aGVyIGl0IG1pZ2h0IGJlIHBvc3NpYmxlIHRvCj4gZG8gc29tZXRo
aW5nIHNpbWlsYXIgdG8gdGhlIEFybSBOMVNEUCB3b3JrYXJvdW5kIHVzaW5nIHRoZSBDb3J0ZXgt
TTAsCj4gYWxiZWl0IHdpdGggdGhlIGNvbXBsaWNhdGlvbiB0aGF0IHByb2Jpbmcgd291bGQgcmVh
bGlzdGljYWxseSBoYXZlIHRvCj4gYmUgZXhwbGljaXRseSBpbnZva2VkIGZyb20gdGhlIExpbnV4
IGRyaXZlciBkdWUgdG8gY2xvY2tzIGFuZCBleHRlcm5hbAo+IHJlZ3VsYXRvcnMuLi4gOi8KPgpT
b3VuZHMgY29tcGxpY2F0ZWQuCkZvciBtZSBJIHVzZSB0aGUgcGF0Y2ggYmVsb3cuIE9mIGNvdXJz
ZSB0aGlzIGhhY2sgaXMgbm90IGludGVuZGVkIGZvcgptZXJnaW5nLCBqdXN0IGFzIHJlZmVyZW5j
ZSB0byBjb25jbHVkZSB0aGlzIGRpc2N1c3Npb24uCgpJZiBzb21lb25lIGNvbWVzIHVwIHdpdGgg
YSBiZXR0ZXIgc29sdXRpb24sIEknbSBoYXBweSB0byB0ZXN0IHRoaXMuCgpUaGFua3MsClNvZXJl
bgoKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTg8LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCkZyb20gOWYyZTI2MTg2YmJmODY3ZjFiYWFkYTA1N2JjYmQ4NDNjNDY1YzM4MSBN
b24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKRnJvbTogU29lcmVuIE1vY2ggPHNtb2NoQHdlYi5kZT4K
RGF0ZTogRnJpLCAxNyBBcHIgMjAyMCAxMjoxNDowNCArMDIwMApTdWJqZWN0OiBbUEFUQ0hdIFBD
STogcm9ja2NoaXA6IHJrMzM5OTogcGNpZSBzd2l0Y2ggc3VwcG9ydAoKRHVlIHRvIGEgaGFyZHdh
cmUgYnVnIHRoZSByazMzOTkgUENJZSBjb250cm9sbGVyIHNpZ25hbHMgZXJyb3IgY29uZGl0aW9u
cwp0byB0aGUgY3B1IHdoZW4gc2Nhbm5pbmcgZm9yIFBDSWUgZGV2aWNlcywgd2hpY2ggYXJlIG5v
dCBhdmFpbGFibGUuIFNvClBDSWUgYnJpZGdlcyBhcmUgbm90IHN1cHBvcnRlZC4KClRoZSByazMz
OTkgQ29ydGV4LUE3MiBjb3JlcyBnZW5lcmF0ZSBTRXJyb3IgaW50ZXJydXB0cyBmb3IgdGhlc2Ug
ZmFsc2UKUENJZSBlcnJvcnMsIENvcnRleC1BNTMgY29yZXMgZ2VuZXJhdGUgU3luY2hyb251b3Mg
RXh0ZXJuYWwgQWJvcnRzLgoKVGhpcyBoYWNrIGVuYWJsZXMgUENJZSBkZXZpY2UgcHJvYmluZyBv
biBidXNlcyBiZWhpbmQgYnJpZGdlcyBieQppZ25vcmluZyB0aGUgZ2VuZXJhdGVkIFNFcnJvci4g
RGV2aWNlIHByb2JpbmcgbmVlZHMgdG8gYmUgZG9uZSBvbgpDb3J0ZXgtQTcyIGNvcmVzLCBlLmcu
IHVzZQp0YXNrc2V0IC1jIDQgbW9kcHJvYmUgcGNpZV9yb2NrY2hpcF9ob3N0CgpTaWduZWQtb2Zm
LWJ5OiBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRlPgotLS0KwqBhcmNoL2FybTY0L2tlcm5lbC90
cmFwcy5jIHwgMTAgKysrKysrKysrLQrCoDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC90cmFwcy5jIGIv
YXJjaC9hcm02NC9rZXJuZWwvdHJhcHMuYwppbmRleCBjZjQwMmJlNWM1NzMuLmRhMmI2NGQyNjEz
ZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvdHJhcHMuYworKysgYi9hcmNoL2FybTY0
L2tlcm5lbC90cmFwcy5jCkBAIC05MDYsOCArOTA2LDE2IEBAIGJvb2wgYXJtNjRfaXNfZmF0YWxf
cmFzX3NlcnJvcihzdHJ1Y3QgcHRfcmVncwoqcmVncywgdW5zaWduZWQgaW50IGVzcikKwqAKwqBh
c21saW5rYWdlIHZvaWQgZG9fc2Vycm9yKHN0cnVjdCBwdF9yZWdzICpyZWdzLCB1bnNpZ25lZCBp
bnQgZXNyKQrCoHsKLcKgwqDCoCBjb25zdCBib29sIHdhc19pbl9ubWkgPSBpbl9ubWkoKTsKK8Kg
wqDCoCBib29sIHdhc19pbl9ubWk7CsKgCivCoMKgwqAgLyogaWdub3JlIFNFcnJvciB0byBlbmFi
bGUgcmszMzk5IFBDSWUgYnVzIGVudW1lcmF0aW9uICovCivCoMKgwqAgaWYgKGVzciA+PiBFU1Jf
RUx4X0VDX1NISUZUID09IEVTUl9FTHhfRUNfU0VSUk9SKSB7CivCoMKgwqAgwqDCoMKgIHByX2Rl
YnVnKCJpZ25vcmluZyBTRXJyb3IgSW50ZXJydXB0IG9uIENQVSVkXG4iLAorwqDCoMKgIMKgwqDC
oCDCoMKgwqAgwqDCoMKgIHNtcF9wcm9jZXNzb3JfaWQoKSk7CivCoMKgwqAgwqDCoMKgIHJldHVy
bjsKK8KgwqDCoCB9CisKK8KgwqDCoCB3YXNfaW5fbm1pID0gaW5fbm1pKCk7CsKgwqDCoMKgIGlm
ICghd2FzX2luX25taSkKwqDCoMKgwqAgwqDCoMKgIG5taV9lbnRlcigpOwrCoAotLQoyLjE3LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
