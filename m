Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CDF1C3569
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 11:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tSImXHAvKt1UBL99Qs4YYuyOsKZxu+UqJ2KOXUwZ/c=; b=Fm/LMeoNZGlvhL
	bYD4YItDfW/qvP7cQOgO9GKb2Gi/oXcV2a6i+PvoUP+eByzYFx+gAn/4WTEGPIVs5D6UuKJJOqsJu
	qWlfMbleVaE1BObh4CNh1lAinnvj/Ei7y+gJyO18jnOWABhQj0Qxs6wt54vsTywSoDjxkhTIinG3w
	sV4gtQpheKndVS4cbFzBIjNJo0Yu/uT2cIIMwwBFgxhxE7g9YFYNYdK+6pqa1uPUHXbeod3A1dskP
	HC4Q1QmrilSzzTtS6kIJeWK5GeiuETZ3rD2jAYsVFk8zJwYCCPEsY2/xkRKC/N8ABHSzh5/jKg57u
	xJ/OqlynXQR+uioeFrnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXFz-0003xw-Da; Mon, 04 May 2020 09:19:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXFs-0003wp-4H
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 09:19:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jVXFl-0000mc-RS; Mon, 04 May 2020 11:19:09 +0200
Message-ID: <97aa62e8aaf8fa1c462c7db117fca9b6ea9bfec0.camel@pengutronix.de>
Subject: Re: [PATCH] soc: imx: Add power domain driver support for i.mx8m
 family
From: Lucas Stach <l.stach@pengutronix.de>
To: Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Date: Mon, 04 May 2020 11:19:08 +0200
In-Reply-To: <AM6PR04MB504745F6EB1FB17F6DBDD9A387AF0@AM6PR04MB5047.eurprd04.prod.outlook.com>
References: <1587999532-30006-1-git-send-email-abel.vesa@nxp.com>
 <0d301ed303faea4895d30b682133ec5c9d44bd8b.camel@pengutronix.de>
 <AM6PR04MB504745F6EB1FB17F6DBDD9A387AF0@AM6PR04MB5047.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_021916_169589_94DFEAA4 
X-CRM114-Status: GOOD (  25.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTW9udGFnLCBkZW4gMjcuMDQuMjAyMCwgMTU6MzcgKzAwMDAgc2NocmllYiBKYWNreSBCYWk6
Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogTHVjYXMgU3RhY2ggPGwu
c3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiBTZW50OiBNb25kYXksIEFwcmlsIDI3LCAyMDIwIDEx
OjExIFBNCj4gPiBUbzogQWJlbCBWZXNhIDxhYmVsLnZlc2FAbnhwLmNvbT47IEphY2t5IEJhaSA8
cGluZy5iYWlAbnhwLmNvbT47IFNoYXduCj4gPiBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+OyBT
YXNjaGEgSGF1ZXIgPGtlcm5lbEBwZW5ndXRyb25peC5kZT47IExpYW0KPiA+IEdpcmR3b29kIDxs
Z2lyZHdvb2RAZ21haWwuY29tPjsgTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgo+ID4g
Q2M6IEFpc2hlbmcgRG9uZyA8YWlzaGVuZy5kb25nQG54cC5jb20+OyBkbC1saW51eC1pbXgKPiA+
IDxsaW51eC1pbXhAbnhwLmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsgTGludXggS2VybmVsCj4gPiBNYWlsaW5nIExpc3QgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc+Cj4gPiBTdWJqZWN0OiBSZTogW1BBVENIXSBzb2M6IGlteDogQWRkIHBvd2VyIGRvbWFp
biBkcml2ZXIgc3VwcG9ydCBmb3IgaS5teDhtCj4gPiBmYW1pbHkKPiA+IAo+ID4gQW0gTW9udGFn
LCBkZW4gMjcuMDQuMjAyMCwgMTc6NTggKzAzMDAgc2NocmllYiBBYmVsIFZlc2E6Cj4gPiA+IEZy
b206IEphY2t5IEJhaSA8cGluZy5iYWlAbnhwLmNvbT4KPiA+ID4gCj4gPiA+IFRoZSBpLk1YOE0g
ZmFtaWx5IGlzIGEgc2V0IG9mIE5YUCBwcm9kdWN0IGZvY3VzIG9uIGRlbGl2ZXJpbmcgdGhlCj4g
PiA+IGxhdGVzdCBhbmQgZ3JlYXRlc3QgdmlkZW8gYW5kIGF1ZGlvIGV4cGVyaWVuY2UgY29tYmlu
aW5nCj4gPiA+IHN0YXRlLW9mLXRoZS1hcnQgbWVkaWEtc3BlY2lmaWMgZmVhdHVyZXMgd2l0aCBo
aWdoLXBlcmZvcm1hbmNlCj4gPiA+IHByb2Nlc3Npbmcgd2hpbGUgb3B0aW1pemVkIGZvciBsb3dl
c3QgcG93ZXIgY29uc3VtcHRpb24uCj4gPiA+IAo+ID4gPiBpLk1YOE1RLCBpLk1YOE1NLCBpLk1Y
OE1OLCBldmVuIHRoZSBmdXJ0dXJlIGkuTVg4TVAgYXJlIGFsbCBiZWxvbmcgdG8KPiA+ID4gdGhp
cyBmYW1pbHkuIEEgR1BDIG1vZHVsZSBpcyB1c2VkIHRvIG1hbmFnZSBhbGwgdGhlIFBVIHBvd2Vy
IGRvbWFpbgo+ID4gPiBvbi9vZmYuIEJ1dCB0aGUgc2l0dWF0aW9uIGlzIHRoYXQgdGhlIG51bWJl
ciBvZiBwb3dlciBkb21haW5zICYgdGhlCj4gPiA+IHBvd2VyIHVwIHNlcXVlbmNlIGhhcyBzaWdu
aWZpY2F0ZSBkaWZmZXJlbmNlIG9uIHRob3NlIFNvQ3MuIEV2ZW4gb24KPiA+ID4gdGhlIHNhbWUg
U29DLiBUaGUgcG93ZXIgdXAgc2VxdWVuY2Ugc3RpbGwgaGFzIGJpZyBkaWZmZXJlbmNlLiBJdCBt
YWtlcwo+ID4gPiB1cyBoYXJkIHRvIHJldXNlIHRoZSBHUEN2MiBkcml2ZXIgdG8gY292ZXIgdGhl
IHdob2xlIGkuTVg4TSBmYW1pbHkuCj4gPiA+IEVhY2ggdGltZSBhIG5ldyBTb0MgaXMgc3VwcG9y
dGVkIGluIHRoZSBtYWlubGluZSBrZXJuZWwsIHdlIG5lZWQgdG8KPiA+ID4gbW9kaWZ5IHRoZSBH
UEN2MiBkcml2ZXIgdG8gc3VwcG9ydCBpdC4gV2UgbmVlZCB0byBhZGQgb3IgbW9kaWZ5Cj4gPiA+
IGh1bmRyZWQgbGluZXMgb2YgY29kZSBpbiB3b3JzdCBjYXNlLgo+ID4gPiBJdCBpcyBhIGJhZCBw
cmFjdGljZSBmb3IgdGhlIGRyaXZlciBtYWludGFpbmFiaWxpdHkuCj4gPiA+IAo+ID4gPiBUaGlz
IGRyaXZlciBhZGQgYSBtb3JlIGdlbmVyaWMgcG93ZXIgZG9tYWluIGRyaXZlciB0aGF0IHRoZSBh
Y3R1YWwKPiA+ID4gcG93ZXIgb24vb2ZmIGlzIGRvbmUgYnkgVEYtQSBjb2RlLiB0aGUgYWJzdHJh
Y3Rpb24gZ2l2ZSB1cyB0aGUKPiA+ID4gcG9zc2liaWxpdHkgdGhhdCB1c2luZyBvbmUgZHJpdmVy
IHRvIGNvdmVyIHRoZSB3aG9sZSBpLk1YOE0gZmFtaWx5IGluCj4gPiA+IGtlcm5lbCBzaWRlLgo+
ID4gPiAKPiA+IAo+ID4gQWdhaW46IHdoYXQgZG9lcyB0aGlzIGRyaXZlciBicmluZyB0byB0aGUg
dGFibGUsIG90aGVyIHRoYW4gbW92aW5nIGEgZnJhY3Rpb24gb2YKPiA+IHRoZSBwb3dlciBkb21h
aW4gZnVuY3Rpb25hbGl0eSBpbnRvIHRoZSBmaXJtd2FyZT8KPiA+IAo+ID4gVGhlIGRpc2N1c3Np
b25zIG9uIHRoZSBsYXN0IHN1Ym1pc3Npb25zIG9mIHRoaXMgZHJpdmVyIGFscmVhZHkgZXN0YWJs
aXNoZWQgdGhhdAo+ID4gd2UgY2FuJ3QgbW92ZSBhbGwgZnVuY3Rpb25hbGl0eSBmb3IgdGhlIHBv
d2VyIGRvbWFpbnMgaW50byB0aGUgZmlybXdhcmUsIGFzCj4gPiBjb250cm9sbGluZyByZWd1bGF0
b3JzIGlzIHByb2JhYmx5IG5vdCBlYXN5IHRvIGRvIGZyb20gdGhpcyBjb250ZXh0LiBBbHNvIHRo
ZQo+ID4gVEYtQSBzaWRlIGltcGxlbWVudGF0aW9uIG9mIHRoaXMgZHJpdmVyIGlzICJpbnRlcmVz
dGluZyIgSU1ITywgaXQgZG9lcyBzdHVmZiBsaWtlCj4gPiBhY2Nlc3NpbmcgdGhlIGNsb2NrIGNv
bnRyb2xsZXIgcmVnaXN0ZXJzIHdpdGhvdXQgYW55IGxvY2tpbmcgb3Igb3RoZXIgbWVhbnMgb2YK
PiA+IG11dHVhbCBleGNsdXNpb24gd2l0aCB0aGUgTGludXgga2VybmVsIGNsb2NrIGNvbnRyb2xs
ZXIgZHJpdmVyLgo+ID4gCj4gCj4gVGhlIGNsb2NrIGhhbmRsaW5nIGlzIGluIGtlcm5lbCBzaWRl
IHRocm91Z2ggQ0NGLCBub3QgaW4gQVRGLiBTZWUgdGhlIHBhdGNoIGJlbG93Lgo+IAo+ID4gV2h5
IGNhbid0IHdlIGp1c3QgZXh0ZW5kIHRoZSBleGlzdGluZyBHUEN2MiBkcml2ZXIgd2l0aCBzdXBw
b3J0IGZvciB0aGUgb3RoZXIKPiA+IGkuTVg4TSBmYW1pbHkgbWVtYmVycz8KPiA+IAo+IAo+IFRo
ZSByZWFzb24gdGhhdCB3aHkgSSBkb27igJl0IGxpa2UgdG8gZXh0ZW5kIHRoZSBHUEN2MiBpcyB0
aGF0IHdoZW4gZG9pbmcgZG9tYWluIG9uL29mZiwKPiBXZSBuZWVkIHRvIGFjY2VzcyBzb21lIHNw
ZWNpYWwgY29udHJvbCByZWdpc3RlciBpbiBlYWNoIGRvbWFpbiAmIGRvIHNvbWUgc3BlY2lhbCBm
bG93LAo+IFRoZXNlIGNvbnRyb2wgcmVnaXN0ZXIobWVkaWFtaXggYmxvY2sgY29udHJvbCwgdnB1
bWl4IGJsb2NrIGNvbnRyb2wpIGlzIG5vdCBpbiBHUEMKPiBtb2R1bGUncyBhZGRyZXNzIHJhbmdl
LiBObyBiZW5lZml0IHRvIHJldXNlIHRoZSBHUEN2Mi4gT25seSBicmluZyBjb21wbGV4aXR5IHRv
IHRoZQo+IEdQQ3YyIGRyaXZlciBlYWNoIHRpbWUgYSBuZXcgU29DIGlzIGFkZGVkLgo+IAo+IFll
cywgdGhlIGkuTVg4TSBwb3dlciBkb21haW4gc3VwcG9ydCBoYXMgYmVlbiBwZW5kaW5nIGZvciBh
IHdoaWxlLiBBUk0gZ3V5cyByZWplY3RlZCB0aGlzIHBhdGNoc2V0Cj4gYmVjYXVzZSB0aGV5IHN1
Z2dlc3QgdXMgdG8gdXNlIFNDTUkgcmF0aGVyIHRoYW4gU2lQLiBCdXQgU0NNSSBpcyBvbmx5IHBh
cnRpYWwgc3VpdGFibGUgZm9yIG91cgo+IGNhc2UuCgpDYW4geW91IHBsZWFzZSBwb2ludCBtZSB0
byB0aGUgbW9zdCByZXNlbnQgdmVyc2lvbiBvZiB0aGUgVEYtQSBzaWRlCmltcGxlbWVudGF0aW9u
IG9mIHRoaXM/IFRoZSBpLk1YOE1NIGltcGxlbWVudGF0aW9uIGluIHRoZQppbXhfNS40LjNfMi4w
LjAgYnJhbmNoIGluIHRoZSBjb2RlYXVyb3JhIGlteC1hdGYgcmVwbyBzdGlsbCBjb250YWlucwp3
cml0ZXMgdG8gdGhlIGNsb2NrIGNvbnRyb2xsZXIgcmVnaXN0ZXIgcmFuZ2UuCgpBbHNvIEkgd291
bGQgbG92ZSB0byBsZWFybiB3aHkgdGhlIEdQQyBuZWVkcyB0byBhY2Nlc3MgTWVkaWFtaXggYW5k
ClZQVW1peCBkb21haW4gcmVnaXN0ZXJzLiBJZiB5b3UgYXJlIHRhbGtpbmcgYWJvdXQgdGhlIE5P
QyBjb25maWd1cmF0aW9uCkkgd291bGQgc3Ryb25nbHkgc3VnZ2VzdCB0aGF0IHRob3NlIHNob3Vs
ZCBiZSBoYW5kbGVkIGJ5IGEgTGludXggc2lkZQppbnRlcmNvbm5lY3QgZHJpdmVyLCB0aGlzIGhh
cyBub3RoaW5nIHRvIGRvIHdpdGggdGhlIHBvd2VyIGRvbWFpbgpzZXF1ZW5jaW5nLCBpdCBqdXN0
IGhhcHBlbnMgdG8gbG9zZSBzdGF0ZSBvdmVyIHRoZSBwb3dlciBkb3duIGFuZCBuZWVkcwp0byBi
ZSByZXByb2dyYW1tZWQgYWZ0ZXIgcG93ZXIgb24uIFRoZSBOT0MgY29uZmlndXJhdGlvbiB0aG91
Z2ggaXMgdXNlLQpjYXNlIGRlcGVuZGVudCwgc28gdGhpcyBzaG91bGQgYmUgcHJvcGVybHkgaGFu
ZGxlZCBpbiBhIHJpY2ggT1MgZHJpdmVyLgoKU3VyZSB3ZSBuZWVkcyB0byBleHRlbmQgdGhlIExp
bnV4IHNpZGUgR1BDIGRyaXZlciBmb3IgZWFjaCBuZXcgU29DCmdlbmVyYXRpb24sIGJ1dCB0aGF0
J3Mgbm8gZGlmZmVyZW50IGZyb20gYW55IG90aGVyIGhhcmR3YXJlIGRyaXZlciBpbgpMaW51eC4g
RHJpdmVycyBhcmUgdGhlIGFic3RyYWN0aW9uIGFyb3VuZCB0aGUgaGFyZHdhcmUsIHRoZXJlIGlz
IG5vCm5lZWQgdG8gaW52ZW50IGFub3RoZXIgb25lIGlmIHRoZXJlIGFyZSBubyBjbGVhciBiZW5l
Zml0cy4KClJlZ2FyZHMsCkx1Y2FzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
