Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D111024F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:56:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCN22mom9TeiND32e9XRLAFEsbcxZVFNa8J36UmlYhQ=; b=bNk4BdZxAWP2ic
	U+hIK75g9ucRpSOX9XHO6BAwYaRCnI6IGA+eZS3/oBG1wZz5b+5VVFUrgV8QQlXFAhtR0v9EeJKpY
	TJTZzua4hp2qIcO+LXrnKKnZL2irt6XmsKH4Du2NVK8KuNeScYywuigHhBDtmvdC1WIoW6j8KCOVR
	O7P5Kc5WbuVptiAMneEcrR9EJzazhCGLTVdnK69XCoD6i4fbulZNQldnohSm1PmXve+5wa1/qvrPA
	eTemTq5+FM+wZhLsfFXwWB0ImKs36is9Bx87T4BLEgfYgOatUIDqiWaC/ynMAEh7gjoYGv4shHd6G
	YCEisrssN0SWDsEcdiyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX33H-0001xd-Es; Tue, 19 Nov 2019 12:56:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX336-0001wn-Ox; Tue, 19 Nov 2019 12:56:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B8E32290BBA
Message-ID: <4135d35cd581b31d08b547852ac43e959957abf5.camel@collabora.com>
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for
 rkisp1 meta buffer format
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jacob Chen <jacobchen110@gmail.com>, Helen Koike
 <helen.koike@collabora.com>
Date: Tue, 19 Nov 2019 09:55:51 -0300
In-Reply-To: <CAFLEztRQfYE_Mssiq4KxK-QyJEe+KT4eTsvnLZQK5T=uVADUqA@mail.gmail.com>
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051242.14651-3-helen.koike@collabora.com>
 <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
 <9cb116f6-64f4-1510-b128-8657d6d4889b@collabora.com>
 <CAFLEztRQfYE_Mssiq4KxK-QyJEe+KT4eTsvnLZQK5T=uVADUqA@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_045604_942408_4BCDA09B 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Eddie Cai <eddie.cai.linux@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 gregkh@linuxfoundation.org, Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?UTF-8?Q?=E9=92=9F=E4=BB=A5=E5=B4=87?= <zyc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 robh+dt@kernel.org, Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jacob Chen <jacob-chen@rock-chips.com>, kernel@collabora.com,
 Shunqian Zheng <zhengsq@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gSmFjb2IsCgpUaGFua3MgZm9yIHRoZSBpbnNpZ2h0LgoKT24gVHVlLCAyMDE5LTExLTE5
IGF0IDE4OjE2ICswODAwLCBKYWNvYiBDaGVuIHdyb3RlOgo+IEhpIEhlbGVuICwKPiAKPiBIZWxl
biBLb2lrZSA8aGVsZW4ua29pa2VAY29sbGFib3JhLmNvbT4g5LqOMjAxOeW5tDEx5pyIMTTml6Xl
kajlm5sg5LiL5Y2INjo1OeWGmemBk++8mgo+ID4gCj4gPiAKPiA+IE9uIDExLzE0LzE5IDY6MjEg
QU0sIEhhbnMgVmVya3VpbCB3cm90ZToKPiA+ID4gT24gMTEvMTQvMTkgNjoxMiBBTSwgSGVsZW4g
S29pa2Ugd3JvdGU6Cj4gPiA+ID4gRnJvbTogSmFjb2IgQ2hlbiA8amFjb2IyLmNoZW5Acm9jay1j
aGlwcy5jb20+Cj4gPiA+ID4gCj4gPiA+ID4gVGhpcyBjb21taXQgYWRkIGRvY3VtZW50IGZvciBy
a2lzcDEgbWV0YSBidWZmZXIgZm9ybWF0Cj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
SmFjb2IgQ2hlbiA8amFjb2ItY2hlbkByb2NrLWNoaXBzLmNvbT4KPiA+ID4gPiBbcmVmYWN0b3Jl
ZCBmb3IgdXBzdHJlYW1dCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSGVsZW4gS29pa2UgPGhlbGVu
LmtvaWtlQGNvbGxhYm9yYS5jb20+Cj4gPiA+IAo+ID4gPiBjaGVja3BhdGNoIGdpdmVzIG1lOgo+
ID4gPiAKPiA+ID4gV0FSTklORzogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWlu
YWwgcGF0Y2ggYXV0aG9yICdKYWNvYiBDaGVuIDxqYWNvYjIuY2hlbkByb2NrLWNoaXBzLmNvbT4n
Cj4gPiA+IAo+ID4gPiBMb29raW5nIGF0IHRoaXMgc2VyaWVzIEkgc2VlIGR1cGxpY2F0ZSBTaWdu
ZWQtb2ZmLWJ5IGVudHJpZXMgZm9yIEphY29iIENoZW4gYW5kIGEgdG90YWwKPiA+ID4gb2YgdGhy
ZWUgZGlmZmVyZW50IGVtYWlsIGFkZHJlc3NlczoKPiA+ID4gCj4gPiA+IGphY29iMi5jaGVuQHJv
Y2stY2hpcHMuY29tCj4gPiA+IGphY29iLWNoZW5Acm9jay1jaGlwcy5jb20KPiA+ID4gY2NAcm9j
ay1jaGlwcy5jb20KPiA+IAo+ID4gQW5kIEkgc2VlIGEgbmFtZSBpbiB0aGUgTWFpbnRhaW5lcnMg
ZmlsZSBhcyBKYWNvYiBDaGVuIDxqYWNvYi1jaGVuQGlvdHdydC5jb20+Lgo+ID4gSSB3YXMgd29u
ZGVyaW5nIGlmIEkgY291bGQgcmVwbGFjZSB0aGUgZW1haWwgYnkgamFjb2ItY2hlbkBpb3R3cnQu
Y29tLCBvciBpZiBJIHNob3VsZAo+ID4ga2VlcCB0aGUgb3JpZ2luYWwgb25lcy4KPiA+IAo+ID4g
SGVsZW4KPiA+IAo+IAo+ICJqYWNvYjIuY2hlbkByb2NrLWNoaXBzLmNvbSIvImphY29iLWNoZW5A
cm9jay1jaGlwcy5jb20iIGlzIG1lIGFuZAo+ICJjY0Byb2NrLWNoaXBzLmNvbSIgaXMgYW5vdGhl
ciBvbmUuCj4gJyBqYWNvYi1jaGVuQHJvY2stY2hpcHMuY29tJyBpcyBpbnZhbGlkIG5vdywgIHNv
IHlvdSBjb3VsZCByZXBsYWNlIHRoZQo+IGVtYWlsIGJ5ICdqYWNvYi1jaGVuQGlvdHdydC5jb20n
Lgo+IAoKQXV0aG9yc2hpcCBhbmQgU09CIGNhbid0IGJlIGNoYW5nZWQgZnJlZWx5LCB0aGUgb3Jp
Z2luYWwgbXVzdCBiZSByZXRhaW5lZCwKYmVjYXVzZSB0aGlzIGdpdmVzIHByb3BlciBjcmVkaXQg
dG8gdGhlIGNvbXBhbnkgdGhhdCBzcG9uc29yZWQgdGhlIHdvcmsuCgpJLmUuIGlmIHlvdXIgbWFp
bCB1c2VkIHRvIGJlIGphY29iMi5jaGVuIGF0IHJvY2stY2hpcHMuY29tLCB0aGVuIEkgdGhpbmsK
d2UgY2FuIHVzZSB0aGF0LiBBbmQgaWYgY2MgYXQgcm9jay1jaGlwcy5jb20gaXMgYSBkaWZmZXJl
bnQgZW5naW5lZXIsCmFsc28gbmFtZWQgSmFjb2IgQ2hlbiwgcGVyaGFwcyB3ZSBjYW4gbWVudGlv
biB0aGF0IHNvbWV3aGVyZSB0byByZWR1Y2UgdGhlCmNvbmZ1c2lvbi4KClRoYW5rcywKRXplcXVp
ZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
