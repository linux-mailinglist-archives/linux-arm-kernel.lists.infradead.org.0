Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD55518EAFA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 18:44:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TCNAvN46gbRN7bcyUqsE1sEt4auoxgMNBSQ5Gbcn6+U=; b=aRQyJANvugkcZoG3+5pWN+nEl
	GrNneoFnjH1c69IZA5j8/mWTEdFSwlFzD5NVIW2OcH/KDJTW5JySiXpvTvTYKYPivBy/z8bqCOWj6
	UJh1+USODYKKI/AiMNLsqXfx+aZm8/t3UK1Zs4iKq6bYZ1L7y914xX7C26upOsBeiJRK87iku2PuU
	1IhcR+E7MFbY0tgqNdNAqbPT/7H6UlfhetHW4gXI/cPN0GuC3vo6IDAOJd2kIiUOnCw7Ext6nAueb
	Jxb2L4vnID6rpO/imncxF92SVIcIREXtoCwFvUkbz26wxi8Sl3vnqIp5vHqTRu4y+IepXf0qPcQTt
	YYfQIHO1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG4dk-0000hU-3o; Sun, 22 Mar 2020 17:44:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG4db-0000fu-8T
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 17:43:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C6D8DAEEA;
 Sun, 22 Mar 2020 17:43:44 +0000 (UTC)
Subject: Re: [PATCH] dt-bindings: clock: Use "CLK_ETHERNET" for the Ethernet
 clock
To: Amit Singh Tomar <amittomer25@gmail.com>
References: <1584879089-12123-1-git-send-email-amittomer25@gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <2f0d4f51-203d-70aa-f64e-6bf663f06f9a@suse.de>
Date: Sun, 22 Mar 2020 18:43:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1584879089-12123-1-git-send-email-amittomer25@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_104351_448813_06242C84 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: robh@kernel.org, manivannan.sadhasivam@linaro.org,
 linux-arm-kernel@lists.infradead.org, andre.przywara@arm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW1pdCwKCkFtIDIyLjAzLjIwIHVtIDEzOjExIHNjaHJpZWIgQW1pdCBTaW5naCBUb21hcjoK
PiBSaWdodCBub3csIGR0IGNsb2NrIGJpbmRpbmcgZm9yIGV0aGVybmV0IHVzZXMgZGlmZmVyZW50
IG5hbWVzIENMS19FVEhfTUFDIGZvciBTOTAwCj4gYW5kIENMS19FVEhFUk5FVCBmb3IgUzcwMCwg
d2hpbGUgZHQgY2xvY2sgYmluZGluZyBmb3IgbW9zdCBvZiB0aGUgb3RoZXIgZGV2aWNlcyB1c2Vz
Cj4gc2FtZSBuYW1lKGZvciBpbnN0YW5jZSwgdGhlIFVBUlQgY2xvY2sgYmluZGluZyB0aGF0IHVz
ZXMgQ0xLX1VBUlR4KS4KPiAKPiBMZXQncyB1c2Ugc2FtZSBuYW1lIENMS19FVEhFUk5FVCBmb3Ig
Ym90aCBTNzAwIGFuZCBTOTAwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFtaXQgU2luZ2ggVG9tYXIg
PGFtaXR0b21lcjI1QGdtYWlsLmNvbT4KPiAtLS0KPiBOb3RpY2VkIGl0IHdoaWxlIHdvcmtpbmcg
b24gVS1CT09UIEV0aGVybmV0IHN1cHBvcnQgZm9yIFM3MDAgd2hlcmUgd2UgaGF2ZSBjb21tb24g
Y2xvY2sgZHJpdmVyIHVzZWQKPiBieSBTNzAwIGFuZCBTOTAwLiBQYXRjaFsxXSB3YXMgaW5pdGlh
bGx5IHNlbnQgdG8gVS1CT09UIGxpc3QuCj4gCj4gWzFdOiBodHRwczovL3BhdGNod29yay5vemxh
YnMub3JnL3BhdGNoLzEyMjkyMTkvCj4gLS0tCj4gICBkcml2ZXJzL2Nsay9hY3Rpb25zL293bC1z
OTAwLmMgICAgICAgICAgICAgICB8IDIgKy0KPiAgIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2sv
YWN0aW9ucyxzOTAwLWNtdS5oIHwgMiArLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpOZXZlciBtaXggY2hhbmdlcyB0byBiaW5kaW5ncyBhbmQg
ZHJpdmVycy4gU2VwYXJhdGluZyB0aGVtIGV4cG9zZXMgdGhlIApkaWZmaWN1bHR5IGluIHRoZSBj
aGFuZ2UgeW91ciBwcm9wb3Npbmc6Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9hY3Rpb25z
L293bC1zOTAwLmMgYi9kcml2ZXJzL2Nsay9hY3Rpb25zL293bC1zOTAwLmMKPiBpbmRleCA3OTA4
OTA5Li41MjkzMDg2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL2FjdGlvbnMvb3dsLXM5MDAu
Ywo+ICsrKyBiL2RyaXZlcnMvY2xrL2FjdGlvbnMvb3dsLXM5MDAuYwo+IEBAIC02NDgsNyArNjQ4
LDcgQEAgc3RhdGljIHN0cnVjdCBjbGtfaHdfb25lY2VsbF9kYXRhIHM5MDBfaHdfY2xrcyA9IHsK
PiAgIAkJW0NMS19ERTBdCQk9ICZkZV9jbGsuY29tbW9uLmh3LAo+ICAgCQlbQ0xLX0RNTV0JCT0g
JmRtbV9jbGsuY29tbW9uLmh3LAo+ICAgCQlbQ0xLX0VEUF0JCT0gJmVkcF9jbGsuY29tbW9uLmh3
LAo+IC0JCVtDTEtfRVRIX01BQ10JCT0gJmV0aF9tYWNfY2xrLmNvbW1vbi5odywKPiArCQlbQ0xL
X0VUSEVSTkVUXQkJPSAmZXRoX21hY19jbGsuY29tbW9uLmh3LAo+ICAgCQlbQ0xLX0dQVV9DT1JF
XQkJPSAmZ3B1X2NvcmVfY2xrLmNvbW1vbi5odywKPiAgIAkJW0NMS19HUFVfTUVNXQkJPSAmZ3B1
X21lbV9jbGsuY29tbW9uLmh3LAo+ICAgCQlbQ0xLX0dQVV9TWVNdCQk9ICZncHVfc3lzX2Nsay5j
b21tb24uaHcsCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYWN0aW9u
cyxzOTAwLWNtdS5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9hY3Rpb25zLHM5MDAtY211
LmgKPiBpbmRleCA3YzEyNTE1Li4yMjQ3ZjFjIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvY2xvY2svYWN0aW9ucyxzOTAwLWNtdS5oCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5n
cy9jbG9jay9hY3Rpb25zLHM5MDAtY211LmgKPiBAQCAtMTIxLDcgKzEyMSw3IEBACj4gICAjZGVm
aW5lIENMS19ERFIxCQkJOTcKPiAgICNkZWZpbmUgQ0xLX0RNTQkJCQk5OAo+ICAgCj4gLSNkZWZp
bmUgQ0xLX0VUSF9NQUMJCQk5OQo+ICsjZGVmaW5lIENMS19FVEhFUk5FVAkJCTk5CgpUaGUgYmlu
ZGluZ3MgYXJlIG5vdCBzdXBwb3NlZCB0byBjaGFuZ2UgaW4gYnJlYWtpbmcgd2F5cy4gV2hhdCB5
b3UgY291bGQgCmNvbnNpZGVyIGluc3RlYWQgaXMgdG8gZGVmaW5lIENMS19FVEhFUk5FVCBhcyBh
bGlhcywga2VlcGluZyBDTEtfRVRIX01BQyAKZm9yIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LgoK
UmVnYXJkcywKQW5kcmVhcwoKPiAgICNkZWZpbmUgQ0xLX1JNSUlfUkVGCQkJMTAwCj4gICAKPiAg
ICNkZWZpbmUgQ0xLX05SX0NMS1MJCQkoQ0xLX1JNSUlfUkVGICsgMSkKCi0tIApTVVNFIFNvZnR3
YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJn
LCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcp
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
