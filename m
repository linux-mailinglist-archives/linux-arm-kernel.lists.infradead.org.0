Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE89D4B375
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 09:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FMgW0GgwIsC2HmC1xObW2AW4cIHEjUkhLB/7ZMZFKU=; b=Ss3nAlqUp2Icrp
	rlkhpEVOwXy5jpXROjFNUtJC7vNl/v5v9tnZ6/wloqQbs8kY+nEgVyl9eDWtPfLf9cDlSbQPPDQgl
	tnhj4oAL22/xxFJKxQ38QP3s41AR6HgpQlv/gEnaU9CdrNsKNWJYn0QDJc9R2ZUudpxO7rzjNlt82
	EWDUMOrcMrWynVggejYl35b8Pa9BQpxNGQgeo7OjQ+dgQlpGsuUs1BUPcKzUuqMTIRAu1RyIQaFBN
	TaSE2+iQ42BYdfs5SMh78PtjLvSlAvzddxzAtE8jEV+o3MRjT9ZO6pWIWpdwo8ChTo+Pq7tQE9zzT
	ezi/k4THU2UDMb7KorgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdVTW-0007KS-Ps; Wed, 19 Jun 2019 07:57:46 +0000
Received: from smtp107.iad3a.emailsrvr.com ([173.203.187.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdVSi-0006av-C9; Wed, 19 Jun 2019 07:56:59 +0000
Received: from smtp14.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp14.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 13EA02509F;
 Wed, 19 Jun 2019 03:56:51 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1560931011;
 bh=nlytxzqSkiORuqwDCgMfTH9qNAct2oY4cbvvUdkDmD8=;
 h=Subject:From:Date:To:From;
 b=wbMriODlEZVzbkMl+dZQ8pc7VzwKjFcgTCbrZo8pzgMGQGr1i+U1/4jzUShGXKiOa
 HwpqntUTNAqJNVXffSSPd54NnunG+nA2gNm5mK40kSKL3HIgjabmab/pjr4nU0XMYA
 TDHGaZi4p1i+RXhOXL60GJhvKVTofxgrxbwepR0k=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp14.relay.iad3a.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id EA61F20FDE; 
 Wed, 19 Jun 2019 03:56:49 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from [10.0.3.33] (c-73-96-52-102.hsd1.or.comcast.net [73.96.52.102])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Wed, 19 Jun 2019 03:56:50 -0400
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v4] i2c: bcm2835: Model Divider in CCF
From: Annaliese McDermond <nh6z@nh6z.net>
In-Reply-To: <cd25e228-c3e1-2a01-14e3-fe9a5198c78d@i2se.com>
Date: Wed, 19 Jun 2019 00:56:48 -0700
Message-Id: <EBC4BB44-5ED9-4C88-B371-A85774DB16B4@nh6z.net>
References: <20190529042912.12956-1-nh6z@nh6z.net>
 <20190608171443.14484-1-nh6z@nh6z.net>
 <cd25e228-c3e1-2a01-14e3-fe9a5198c78d@i2se.com>
To: Stefan Wahren <stefan.wahren@i2se.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_005657_111852_C798F2F8 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [173.203.187.107 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, swarren@wwwdotorg.org, wsa@the-dreams.de,
 team@nwdigitalradio.com, eric@anholt.net, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3RlZmFuIC0tCgo+IE9uIEp1biAxOSwgMjAxOSwgYXQgMTI6MTYgQU0sIFN0ZWZhbiBXYWhyZW4g
PHN0ZWZhbi53YWhyZW5AaTJzZS5jb20+IHdyb3RlOgo+IAo+IEhpIEFubmFsaWVzZSwKPiAKPiBP
biAwOC4wNi4xOSAxOToxNCwgQW5uYWxpZXNlIE1jRGVybW9uZCB3cm90ZToKPj4gTW9kZWwgdGhl
IEkyQyBidXMgY2xvY2sgZGl2aWRlciBhcyBhIHBhcnQgb2YgdGhlIENvcmUgQ2xvY2sgRnJhbWV3
b3JrLgo+PiBQcmltYXJpbHkgdGhpcyByZW1vdmVzIHRoZSBjbGtfZ2V0X3JhdGUoKSBjYWxsIGZy
b20gZWFjaCB0cmFuc2Zlci4KPj4gVGhpcyBjYWxsIGNhdXNlcyBwcm9ibGVtcyBmb3Igc2xhdmUg
ZHJpdmVycyB0aGF0IHRoZW1zZWx2ZXMgaGF2ZQo+PiBpbnRlcm5hbCBjbG9jayBjb21wb25lbnRz
IHRoYXQgYXJlIGNvbnRyb2xsZWQgYnkgYW4gSTJDIGludGVyZmFjZS4KPj4gV2hlbiB0aGUgc2xh
dmUncyBpbnRlcm5hbCBjbG9jayBjb21wb25lbnQgaXMgcHJlcGFyZWQsIHRoZSBwcmVwYXJlCj4+
IGxvY2sgaXMgb2J0YWluZWQsIGFuZCBpdCBtYWtlcyBjYWxscyB0byB0aGUgSTJDIHN1YnN5c3Rl
bSB0bwo+PiBjb21tYW5kIHRoZSBoYXJkd2FyZSB0byBhY3RpdmF0ZSB0aGUgY2xvY2suICBJbiBv
cmRlciB0byBwZXJmb3JtCj4+IHRoZSBJMkMgdHJhbnNmZXIsIHRoaXMgZHJpdmVyIHNldHMgdGhl
IGRpdmlkZXIsIHdoaWNoIHJlcXVpcmVzCj4+IGl0IHRvIGdldCB0aGUgcGFyZW50IGNsb2NrIHJh
dGUsIHdoaWNoIGl0IGRvZXMgd2l0aCBjbGtfZ2V0X3JhdGUoKS4KPj4gVW5mb3J0dW5hdGVseSwg
dGhpcyBmdW5jdGlvbiB3aWxsIHRyeSB0byB0YWtlIHRoZSBjbG9jayBwcmVwYXJlCj4+IGxvY2ss
IHdoaWNoIGlzIGFscmVhZHkgaGVsZCBieSB0aGUgc2xhdmUncyBpbnRlcm5hbCBjbG9jayBjYWxs
cwo+PiBjcmVhdGluZyBhIGRlYWRsb2NrLgo+PiAKPj4gTW9kZWxpbmcgdGhlIGRpdmlkZXIgaW4g
dGhlIENDRiBuYXRpdmVseSByZW1vdmVzIHRoaXMgZGVwZW5kZW5jeQo+PiBhbmQgdGhlIGRpdmlk
ZXIgdmFsdWUgaXMgb25seSBzZXQgdXBvbiBjaGFuZ2luZyB0aGUgYnVzIGNsb2NrCj4+IGZyZXF1
ZW5jeSBvciBjaGFuZ2VzIGluIHRoZSBwYXJlbnQgY2xvY2sgdGhhdCBjYXNjYWRlIGRvd24gdG8g
dGhpcwo+PiBkaXZpc29yLiAgVGhpcyBvYnZpYXRlcyB0aGUgbmVlZCB0byBzZXQgdGhlIGRpdmlk
ZXIgd2l0aCBldmVyeQo+PiB0cmFuc2ZlciBhbmQgYXZvaWRzIHRoZSBkZWFkbG9jayBkZXNjcmli
ZWQgYWJvdmUuICBJdCBhbHNvIHNob3VsZAo+PiBwcm92aWRlIGJldHRlciBjbG9jayBkZWJ1Z2dp
bmcgYW5kIHNhdmUgYSBmZXcgY3ljbGVzIG9uIGVhY2gKPj4gdHJhbnNmZXIgZHVlIHRvIG5vdCBo
YXZpbmcgdG8gcmVjYWxjdWF0ZSB0aGUgZGl2aWRlciB2YWx1ZS4KPj4gCj4gaSd2ZSBzZWVuIHJl
cG9ydHMgWzFdLCBbMl0gdGhhdCB0aGlzIGNvbW1pdCBjYXVzZXMgdHJvdWJsZS4KPiAKPiBDb3Vs
ZCB5b3UgcGxlYXNlIGxvb2sgaW50byB0aGVtPwoKCknigJlsbCBzZWUgaWYgSSBjYW4gbG9vayBp
bnRvIHRoZXNlIGFuZCBzZWUgd2hhdOKAmXMgdXAuCgoKPiBUaGFua3MKPiAKPiBbMV0gLSBodHRw
czovL3d3dy5yYXNwYmVycnlwaS5vcmcvZm9ydW1zL3ZpZXd0b3BpYy5waHA/Zj00NCZ0PTI0Mjg1
Ngo+IFsyXSAtIGh0dHBzOi8vYXJjaGxpbnV4YXJtLm9yZy9mb3J1bS92aWV3dG9waWMucGhwP2Y9
MjMmdD0xMzcxOQoKLS0KQW5uYWxpZXNlIE1jRGVybW9uZApuaDZ6QG5oNnoubmV0Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
