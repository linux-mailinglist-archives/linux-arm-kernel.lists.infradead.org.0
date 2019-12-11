Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9626E11B538
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEUgLeXJMaQ5Gzh/X6+6YlK80b+BjSmMzltQdLmpV8M=; b=NgdJxcsvkfTDqz
	X0jtEaC5TzKThcyi/NnzhY7DXn8AEnwexUnfjap8VyEdXKjvBKk73kPm4ViTpALqB+YdTEfvTlIiR
	p2+7Lu6lqK9UPrwwfpacgTjSyLZAVxsiKF86LfQXWC8SKZPQZsb9UszRDu5CsH3LB8h3VBQdklXPb
	4zE2mrUbB9nWn3vzzHC+WrD49htrVRP1xhV4R4wQkNBeUEFN+lfPcH26f5dpr8LyuQsoTIwPoPt86
	vLMGS1bRrpmKV/wX3VptVBNFOULg29rpljBgXHBoyqqncXJgmh7SRvKZS6xTzNKQu0zDP8PV15Yfa
	pSKm7yNpDeJQNnToJJHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4I1-0001Up-C9; Wed, 11 Dec 2019 15:52:37 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4GY-00004u-Qr; Wed, 11 Dec 2019 15:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576079456;
 bh=2vt6H9m6gvHEi1nJRDosEC6muzmSbOBdj9rDjM1l1RA=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=lMZl+kIoPaYLEgDwg7FkfY/A94edm93wzNwY31JVJL9mJ59RwugPR7R9LE4vc7Ur8
 iBiKKfHtfa01y0PnOzM6Adn98eyP45gTW9PCpXTAwThOKnWgfVyoaaaHTpk2MOpju4
 TwGciCpeCeN56jPE+/2waJvVQ5JFRtRghbCH5GY4=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.138.97]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MHuv7-1ii6fC1BvR-003hlf; Wed, 11
 Dec 2019 16:50:56 +0100
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
From: Soeren Moch <smoch@web.de>
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20191209223822.27236-1-smoch@web.de> <6162240.GiEx4hqPFh@diego>
 <d0cece6c-9f90-c691-eb68-a25547532f68@web.de> <3170826.NpdqLUR24W@diego>
 <5d3bde69-9102-cc81-c1d2-d71b60258906@web.de>
Message-ID: <4b98437b-0d6f-6cc3-b601-f273441db93b@web.de>
Date: Wed, 11 Dec 2019 16:50:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <5d3bde69-9102-cc81-c1d2-d71b60258906@web.de>
Content-Language: en-GB
X-Provags-ID: V03:K1:dFFyJ6iSHcoJx7Qh+68lCT8QQNP6FUWWUe9MP+9m/blQKF9T574
 tFfixMpTR2sAppfICTHWK6VA7KRK0dGSLSc1xifVMlUdZhJd5Qxw4mFwj/yXnEJO8avbllC
 jV85pQdoktREurcgt5K3JrlP9hif51zLdGDBxcGhc9jOoQjwcq7JpVCqvSh2kS3NKMtdmhQ
 f4684ea+mLx/qar9jeLgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lcTU9Hyg27Q=:kuXpUEu4NzA5u4RnHeC0ZO
 4j2m0tsrdcBVM9I1uILruzVFI+10E/Iu/jicWzIUOgyF+/U1t26o79R/8AzL5SAzX+5wdzFmw
 MzpcDbJfO245gdnM9yDtQ4M2LeCu2uUVhXF1FJtEMpxAc0FoWEel9IOagVQ4CeQISDt8U7VRM
 2yJ3oZ7+NeNak09PDzhTa0jckZqdRCvStr5gxU4La7hp6wGNcQPEl7MKQvCUYDadM8zX7Ogaa
 3DD+YU90cjyjGTtFwB2mVgLhUdrRuu/k2m5TWM6Zy9g0klHEQ4wLK1h8xMrjRL6E63WiDUBaj
 kTRzDeMM4hxKpaKF0ah3wmYM7IG+U/JlqU37TmaeGjQv+Y3hDtaEChVKtvXWdkjE8XIS48uCX
 HyURc3hSU9tSAgoN/oEbFBilnLnxsALgFwpwDRrTcHbkj/fMhDBLwo+6o9IZx8y6BNrDVfRGp
 NllLm5rcjY27dnntUt/K2GsyX3sdEbKkYQ457iKbsI2kj9Yyf1Rn8qLNFruVv7s0++b+gvwIk
 QHai3B+1xLf8Xx9ZFtfhWsOJM3X0/ZZ5Cop57bhKdn4AWW0CmSv+EXCFzMdoBymlygIHq+k6p
 K3Ooc8uB9XeRC0hnk5729MgEk5wXpkZf2JtZtyu9XUk9QSQ2Q9JAKXxtk6VXJshFT0+Df0Ij7
 FQKjomRAGIeOfd1zA8mLa5NU5Y7/ae8XISkDg4Qa1cVpGBBsUjTEe1iCORyqz8QIptfn503jS
 rCb1PyVsgJXeljdetFMOoYDBIvTX78nS6fuNqNSyCBdz7fQeoL7QL6Op6o8uTU23vD/ASRaIA
 2H6jUwxbjd/7kPlGBpq+PUCosK/4awixla60Ttm9RQi2wMvzrs0XSCs0e9st7xIo1a8PicQO1
 Vk96VloQylkSvdTKPkhWlVeGMus1bwDboKYvdoTTCBkgO6GEngCZ/t+SEBWleqo/o1RHqy5gH
 5+X2LyegYkRfbsvPxAHZC3DirVFcsQFHA2Y19iZBpQE2xcFRzU2qA9eoxfKZHcF7vJArNkkwZ
 2VIRyqsW5K8ubsPfdf6YeMD6WnwJQCYLIk9Dx/rzRxNh5wdJ2OT/t6n+CTzdwgNhFCOcEZbTN
 /w4Up/x6QDkCh8cGn0IVxj7uIV0VrJMQo58S7HEuRYi70Hk7gRMaZzvluCX+Eo4dTnACpgvCI
 NsbGEfvfNpEL8zu4tFi1SJBXE1Hy/zAF2707Dq0GHtGbm6h8R40J5mx9Ee77SM7fgVnr0MXg7
 RmBOykj9C4/SHUhg/egzPae+kDqGq7f7hSFiqhePbwcBq3G0zUMv1z5EABXo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_075107_190124_A535A6C6 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.4 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cmUtc2VuZCBhcyBwbGFpbiB0ZXh0IGZvciBtYWlsaW5nIGxpc3RzLCBzb3JyeS4KClNvZXJlbgoK
T24gMTEuMTIuMTkgMTY6NDMsIFNvZXJlbiBNb2NoIHdyb3RlOgo+Cj4KPiBPbiAxMC4xMi4xOSAx
MToxMywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+IEFtIERpZW5zdGFnLCAxMC4gRGV6ZW1iZXIg
MjAxOSwgMTE6MDg6MTggQ0VUIHNjaHJpZWIgU29lcmVuIE1vY2g6Cj4+PiBIaSBIZWlrbywKPj4+
Cj4+PiBPbiAxMC4xMi4xOSAwMjoxOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+Pj4gSGkgU29l
cmVuLAo+Pj4+Cj4+Pj4gQW0gRGllbnN0YWcsIDEwLiBEZXplbWJlciAyMDE5LCAwMDoyOToyMSBD
RVQgc2NocmllYiBTb2VyZW4gTW9jaDoKPj4+Pj4gT24gMTAuMTIuMTkgMDA6MDgsIEhlaWtvIFN0
w7xibmVyIHdyb3RlOgo+Pj4+Pj4gQW0gTW9udGFnLCA5LiBEZXplbWJlciAyMDE5LCAyMzozODoy
MiBDRVQgc2NocmllYiBTb2VyZW4gTW9jaDoKPj4+Pj4+PiBSb2NrUHJvNjQgc3VwcG9ydHMgYW4g
QW1wYWsgQVA2MzU5U0EgYmFzZWQgd2lmaS9idCBjb21ibyBtb2R1bGUuCj4+Pj4+Pj4gVGhlIEJD
TTQzNTkvOSB3aWZpIGNvbnRyb2xsZXIgaW4gdGhpcyBtb2R1bGUgaXMgY29ubmVjdGVkIHRvIHNk
aW8wLAo+Pj4+Pj4+IGVuYWJsZSB0aGlzIGludGVyZmFjZS4KPj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25l
ZC1vZmYtYnk6IFNvZXJlbiBNb2NoIDxzbW9jaEB3ZWIuZGU+Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4g
Tm90IHN1cmUgd2hlcmUgdG8gcGxhY2UgZXhhY3RseSB0aGUgc2RpbzAgbm9kZSBpbiB0aGUgZHRz
IGJlY2F1c2UKPj4+Pj4+PiBleGlzdGluZyBzZCBub2RlcyBhcmUgbm90IHNvcnRlZCBhbHBoYWJl
dGljYWxseS4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoaXMgbGFzdCBwYXRjaCBpbiB0aGlzIGJyY21mbWFj
IHBhdGNoIHNlcmllcyBwcm9iYWJseSBzaG91bGQgYmUgcGlja2VkCj4+Pj4+Pj4gdXAgYnkgSGVp
a28gaW5kZXBlbmRlbnRseSBvZiB0aGUgcmVzdCBvZiB0aGlzIHNlcmllcy4gSXQgd2FzIHNlbnQg
dG9nZXRoZXIKPj4+Pj4+PiB0byBzaG93IGhvdyB0aGlzIGJyY21mbWFjIGV4dGVuc2lvbiBmb3Ig
NDM1OS1zZGlvIHN1cHBvcnQgd2l0aCBSU0RCIGlzCj4+Pj4+Pj4gdXNlZCBhbmQgdGVzdGVkLgo+
Pj4+Pj4gbm9kZSBwbGFjZW1lbnQgbG9va3MgZ29vZCBzbyBJIGNhbiBhcHBseSBpdCwganVzdCBh
IGdlbmVyYWwgcXVlc3Rpb25zCj4+Pj4+PiBJIG9ubHkgZ290IHBhdGNoIDgvOCBhcmUgcGF0Y2hl
cyAxLTcgcmVsZXZhbnQgZm9yIHRoaXMgb25lIGFuZCB3aGF0IGFyZSB0aGV5Pwo+Pj4+PiBQYXRj
aGVzIDEtNyBhcmUgdGhlIHBhdGNoZXMgdG8gc3VwcG9ydCB0aGUgQkNNNDM1OSBjaGlwc2V0IHdp
dGggU0RJTwo+Pj4+PiBpbnRlcmZhY2UgaW4gdGhlIGxpbnV4IGJyY21mbWFjIG5ldC13aXJlbGVz
cyBkcml2ZXIsIHNlZSBbMV0uCj4+Pj4+Cj4+Pj4+IFNvIHRoaXMgcGF0Y2ggc2VyaWVzIGhhcyAy
IHBhcnRzOgo+Pj4+PiBwYXRjaGVzIDEtNzogYWRkIHN1cHBvcnQgZm9yIHRoZSB3aWZpIGNoaXBz
ZXQgaW4gdGhlIHdpcmVsZXNzIGRyaXZlciwKPj4+Pj4gdGhpcyBoYXMgdG8gZ28gdGhyb3VnaCBu
ZXQtd2lyZWxlc3MKPj4+Pj4gcGF0Y2ggODogZW5hYmxlIHRoZSB3aWZpIG1vZHVsZSB3aXRoIHRo
aXMgY2hpcHNldCBvbiBSb2NrUHJvNjQsIHRoaXMgcGF0Y2gKPj4+PiBUaGFua3MgZm9yIHRoZSBj
bGFyaWZpY2F0aW9uIDotKSAuCj4+Pj4KPj4+PiBBcyBwYXRjaCA4ICJvbmx5IiBkb2VzIHRoZSBj
b3JlIHNkaW8gbm9kZSwgaXQgZG9lc24ndCByZWFsbHkgZGVwZW5kIG9uIHRoZQo+Pj4+IGVhcmxp
ZXIgb25lcyBhbmQgeW91IGNhbiBzdWJtaXQgYW55IHVhcnQtaG9va3MgZm9yIGJsdWV0b290aCBv
bmNlIHRoZQo+Pj4+IG90aGVyIHBhdGNoZXMgbGFuZCBJIGd1ZXNzLgo+Pj4gVGhlIHVhcnQgcGFy
dCBmb3IgYmx1ZXRvb3RoIGFscmVhZHkgaXMgaW46IHVhcnQwLgo+Pj4gSG93ZXZlciwgSSBoYXZl
bid0IHRlc3RlZCBpZiBpdCByZWFsbHkgd29ya3MuCj4+IEluIHRoZSBuZXcgd29ybGQgdGhlcmUg
aXMgbm93IGFsc28gYSB3YXkgdG8gYWN0dWFsbHkgaG9vayB0aGUgYnQtdWFydCB0bwo+PiB0aGUg
d2lmaSBkcml2ZXIgd2l0aG91dCB1c2Vyc3BhY2UgaW50ZXJ2ZW50aW9uLCBhbmQgeW91IG1pZ2h0
IHdhbnQgdG8gaG9vawo+PiB1cCB0aGUgaW50ZXJydXB0IGFzIHdlbGwgZm9yIHNkaW8/Cj4+ICBG
b3IgZXhhbXBsZSBsb29rIGF0IHRoZSByb2NrOTYwOgo+IFRoYW5rcyBmb3IgdGhlIGV4YW1wbGVz
Lgo+PiBzZGlvLWludGVycnVwdDogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHNpI241MTAKPiBUaGUgc2lnbmFsIG5hbWUgd2lmaV9o
b3N0X3dha2VfbCBzdWdnZXN0cyB0aGF0IHRoaXMgaXMgYW4gYWN0aXZlLWxvdwo+IHdha2UtdXAg
c2lnbmFsLCBwcm9iYWJseSB1c2VkIGZvciB3YWtlLW9uLXdpZmkuIEJ1dCBpbiBmYWN0IHRoaXMg
aXMKPiB0aGUgYWN0aXZlLWhpZ2ggb3V0LW9mLWJhbmQgc2RpbyBpbnRlcnJ1cHQgYW5kIGNhbiBh
bHNvIGJlIHVzZWQgYXMKPiBzdWNoIG9uIFJvY2tQcm82NCB3aGVuIGZvbGxvd2luZyB5b3VyIGV4
YW1wbGUuCj4gSG93ZXZlciwgd2l0aCB0aGlzIGV4dGVybmFsIGludGVycnVwdCBlbmFibGVkwqAg
d2lmaSBydW5zIHVuc3RhYmxlLAo+IG1heWJlIGJlY2F1c2UgYm9hcmQgZGVzaWduZXJzIChwcm9i
YWJseSBjb25mdXNlZCBieSB0aGVpciBvd24gbmFtaW5nCj4gc3R5bGUpIG1peGVkIGluIHRoZSBQ
Q0ktRXhwcmVzcy1XQUtFIyBzaWduYWwgdG8gcm91dGUgdGhpcyB0byB0aGUgc2FtZQo+IEdQSU8u
Cj4KPiBTbyBJIHdhbnQgdG8gdXNlIHRoZSBpbi1iYW5kIHNkaW8gaW50ZXJydXB0IGluc3RlYWQg
b24gUm9ja1BybzY0LAo+IHdoaWNoIHdvcmtzIHBlcmZlY3RseSBmaW5lLgo+IHx8fHwKPj4gdWFy
dC1tYWdpYzogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
dG9ydmFsZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcm9jazk2MC5kdHNpI241NTcKPiBPSywgcGVvcGxlIHByb2JhYmx5IGxpa2UgdG8gc2VlIEJs
dWV0b290aCBzdXBwb3J0LiBJIHdpbGwgYWRkIGl0Lgo+Cj4gU29lcmVuCj4+IEhlaWtvCj4+Cj4+
Pj4+IElmIHRoaXMgd2FzIGNvbmZ1c2luZywgd2hhdCB3b3VsZCBiZSB0aGUgaWRlYWwgd2F5IHRv
IHBvc3Qgc3VjaCBzZXJpZXM/Cj4+Pj4gSSB0aGluayBldmVyeSBtYWludGFpbmVyIGhhcyBzb21l
IHNsaWdodGx5IGRpZmZlcmVudCBwZXJzcGVjdGl2ZSBvbiB0aGlzLAo+Pj4+IGJ1dCBwZXJzb25h
bGx5IEkgbGlrZSBnZXR0aW5nIHRoZSB3aG9sZSBzZXJpZXMgdG8gZm9sbG93IHRoZSBkaXNjdXNz
aW9uIGJ1dAo+Pj4+IGFsc28gdG8ganVzdCBzZWUgd2hlbiB0aGUgZHJpdmVyLXNpZGUgY2hhbmdl
cyBnZXQgbWVyZ2VkLCBhcyB0aGUgZHRzLXBhcnRzCj4+Pj4gbmVlZCB0byB3YWl0IGZvciB0aGF0
IGluIGEgbG90IG9mIGNhc2VzLgo+Pj4gT0ssIHRoYW5rcy4KPj4+IEkgd2lsbCBhZGQgeW91IGZv
ciB0aGUgd2hvbGUgc2VyaWVzIHdoZW4gc2VuZGluZyBhIHYyLgo+Pj4KPj4+IFNvZXJlbgo+Pj4+
IEhlaWtvCj4+Pj4KPj4+Pgo+Pj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9w
cm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvP3Nlcmllcz0yMTM5NTEKPj4+Pj4+IFRoYW5rcwo+
Pj4+Pj4gSGVpa28KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgo+Pj4+Pj4+IENjOiBLYWxsZSBWYWxvIDxrdmFsb0Bjb2RlYXVyb3JhLm9y
Zz4KPj4+Pj4+PiBDYzogbGludXgtd2lyZWxlc3NAdmdlci5rZXJuZWwub3JnCj4+Pj4+Pj4gQ2M6
IGJyY204MDIxMS1kZXYtbGlzdC5wZGxAYnJvYWRjb20uY29tCj4+Pj4+Pj4gQ2M6IGJyY204MDIx
MS1kZXYtbGlzdEBjeXByZXNzLmNvbQo+Pj4+Pj4+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3Jn
Cj4+Pj4+Pj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+Pj4+
IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4+Pj4gQ2M6IGxpbnV4
LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4+Pj4+PiAtLS0KPj4+Pj4+PiAgLi4uL2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzICAgIHwgMjEgKysrKysrKysrKysrLS0tLS0t
LQo+Pj4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9ja3BybzY0LmR0cwo+Pj4+Pj4+IGluZGV4IDdmNGIyZWJhMzFkNC4uOWZhOTI3OTBk
NmUwIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LXJvY2twcm82NC5kdHMKPj4+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+Pj4+Pj4gQEAgLTcxLDEzICs3MSw2IEBACj4+Pj4+
Pj4gIAkJY2xvY2stbmFtZXMgPSAiZXh0X2Nsb2NrIjsKPj4+Pj4+PiAgCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+Pj4+Pj4+ICAJCXBpbmN0cmwtMCA9IDwmd2lmaV9lbmFibGVfaD47Cj4+
Pj4+Pj4gLQo+Pj4+Pj4+IC0JCS8qCj4+Pj4+Pj4gLQkJICogT24gdGhlIG1vZHVsZSBpdHNlbGYg
dGhpcyBpcyBvbmUgb2YgdGhlc2UgKGRlcGVuZGluZwo+Pj4+Pj4+IC0JCSAqIG9uIHRoZSBhY3R1
YWwgY2FyZCBwb3B1bGF0ZWQpOgo+Pj4+Pj4+IC0JCSAqIC0gU0RJT19SRVNFVF9MX1dMX1JFR19P
Tgo+Pj4+Pj4+IC0JCSAqIC0gUEROIChwb3dlciBkb3duIHdoZW4gbG93KQo+Pj4+Pj4+IC0JCSAq
Lwo+Pj4+Pj4+ICAJCXJlc2V0LWdwaW9zID0gPCZncGlvMCBSS19QQjIgR1BJT19BQ1RJVkVfTE9X
PjsKPj4+Pj4+PiAgCX07Cj4+Pj4+Pj4KPj4+Pj4+PiBAQCAtNjUwLDYgKzY0MywyMCBAQAo+Pj4+
Pj4+ICAJc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+ICB9Owo+Pj4+Pj4+Cj4+Pj4+Pj4gKyZzZGlv
MCB7Cj4+Pj4+Pj4gKwlidXMtd2lkdGggPSA8ND47Cj4+Pj4+Pj4gKwljYXAtc2QtaGlnaHNwZWVk
Owo+Pj4+Pj4+ICsJY2FwLXNkaW8taXJxOwo+Pj4+Pj4+ICsJZGlzYWJsZS13cDsKPj4+Pj4+PiAr
CWtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPj4+Pj4+PiArCW1tYy1wd3JzZXEgPSA8JnNkaW9fcHdy
c2VxPjsKPj4+Pj4+PiArCW5vbi1yZW1vdmFibGU7Cj4+Pj4+Pj4gKwlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+Pj4+Pj4+ICsJcGluY3RybC0wID0gPCZzZGlvMF9idXM0ICZzZGlvMF9jbWQg
JnNkaW8wX2Nsaz47Cj4+Pj4+Pj4gKwlzZC11aHMtc2RyMTA0Owo+Pj4+Pj4+ICsJc3RhdHVzID0g
Im9rYXkiOwo+Pj4+Pj4+ICt9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiAgJnNkbW1jIHsKPj4+Pj4+PiAg
CWJ1cy13aWR0aCA9IDw0PjsKPj4+Pj4+PiAgCWNhcC1zZC1oaWdoc3BlZWQ7Cj4+Pj4+Pj4gLS0K
Pj4+Pj4+PiAyLjE3LjEKPj4+Pj4+Pgo+Pgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
