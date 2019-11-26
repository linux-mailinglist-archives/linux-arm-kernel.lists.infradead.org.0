Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCC3109C8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 11:49:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oD7Y0DOpD8chhUqqBo7bLSy9rvVOxwcwiNRS1RJD2ik=; b=I1lbC5BEyYHqhv
	5TjtDwe+sUpaUPExAomyGn3KiXcj30quU3/KaO4w80hxGsbAmmSSBt14EaXQUctKX3BeBIt1szRlw
	mpm4lrHyRLGMyiF5CNKaWLrjt0eJreuvw7arAv13mjSpkPcqGmqg4XkRmQDE5FIz4p/RqZid1rst3
	/0TxewWlZ3eKHYFgYkrePM65FOon6pyWOuJc/jPX3HkG9IEufalZ0yod2MVZzsgDbnlMXwkmo+xDO
	oviRMtoWgGkMZShQndgNP5bpaHiete483e7gfKXDzSbXWZiaQKXFbyYW4jrpWeSn/4nlCrMONGw0P
	DwHtVnhjRY2k3yEGIHZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZYPK-0003i1-Kd; Tue, 26 Nov 2019 10:49:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYOx-0003Tl-Dp
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 10:49:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F88530E;
 Tue, 26 Nov 2019 02:48:58 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 766FF3F52E;
 Tue, 26 Nov 2019 02:48:57 -0800 (PST)
Date: Tue, 26 Nov 2019 10:48:50 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Wen Yang <wenyang@linux.alibaba.com>
Subject: Re: [PATCH] firmware: arm_scmi: avoid double free in error flow
Message-ID: <20191126104850.GA5784@bogus>
References: <20191125155409.9948-1-wenyang@linux.alibaba.com>
 <20191125161313.GA1157@bogus>
 <21f4f7d6-9085-382d-42d3-a63484aca8a2@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21f4f7d6-9085-382d-42d3-a63484aca8a2@linux.alibaba.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_024859_523279_3AB22EF0 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDY6MjQ6NDdQTSArMDgwMCwgV2VuIFlhbmcgd3JvdGU6
Cj4KPgo+IE9uIDIwMTkvMTEvMjYgMTI6MTMg5LiK5Y2ILCBTdWRlZXAgSG9sbGEgd3JvdGU6Cj4g
PiBPbiBNb24sIE5vdiAyNSwgMjAxOSBhdCAxMTo1NDowOVBNICswODAwLCBXZW4gWWFuZyB3cm90
ZToKPiA+ID4gSWYgZGV2aWNlX3JlZ2lzdGVyKCkgZmFpbHMsIGJvdGggcHV0X2RldmljZSgpIGFu
ZCBrZnJlZSgpCj4gPiA+IGFyZSBjYWxsZWQsIGVuZGluZyB3aXRoIGEgZG91YmxlIGZyZWUgb2Yg
dGhlIHNjbWlfZGV2Lgo+ID4gPgo+ID4KPiA+IENvcnJlY3QuCj4gPgo+ID4gPiBDYWxsaW5nIGtm
cmVlKCkgaXMgbmVlZGVkIG9ubHkgd2hlbiBhIGZhaWx1cmUgaGFwcGVucyBiZXR3ZWVuIHRoZQo+
ID4gPiBhbGxvY2F0aW9uIG9mIHRoZSBzY21pX2RldiBhbmQgaXRzIHJlZ2lzdHJhdGlvbiwgc28g
bW92ZSBpdCB0bwo+ID4gPiB0aGVyZSBhbmQgcmVtb3ZlIGl0IGZyb20gdGhlIGVycm9yIGZsb3cu
Cj4gPiA+Cj4gPgo+ID4ga3N0cmR1cF9jb25zdCBjYW4gZmFpbCBhbmQgaW4gdGhhdCBjYXNlIGRl
dmljZSBpcyBub3QgeWV0IHJlZ2lzdGVyZWQsCj4gPiBzbyB3ZSBuZWVkIHRvIGZyZWUuIFNpbmNl
IGRldmljZV9yZWdpc3RlcigpIGNhbGxzIHB1dF9kZXZpY2UoKSBvbiBmYWlsdXJlCj4gPiB0b28s
IEkgd291bGQganVzdCBkcm9wIGl0IGFzIGl0J3MgdW5uZWNlc3NhcnksIG5vdCBzdXJlIHdoeSBJ
IGhhdmUgYWRkZWQKPiA+IGl0IGluIHRoZSBmaXJzdCBwbGFjZS4gQ2FuIHlvdSByZS1zcGluIHRo
ZSBwYXRjaCBkcm9wcGluZyBwdXRfZGV2aWNlCj4gPiBhbmQgcmVuYW1pbmcgcHV0X2RldiBsYWJl
bCB0byBzb21ldGhpbmcgbGlrZSBmcmVlX2NvbnN0Lgo+ID4KClBsZWFzZSBpZ25vcmUgdGhlIGFi
b3ZlIGNvbXBsZXRlbHkuIEkgaGF2ZSBtYWRlIHNvbWUgY2hhbmdlcyBsb2NhbGx5IGFuZApnb3Qg
Y29tcGxldGVseSBjb25mdXNlZCB3aGVuIEkgbG9va2VkIGF0IHlvdXIgcGF0Y2ggYW5kIGNvbXBh
cmVkIHdpdGgKdGhlIG1vZGlmaWVkIGNvbnRleHQgbG9jYWxseS4KCj4KPiBIaSBTdWRlZXAsCj4g
VGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLgo+IExldCdzIGNoZWNrIHRoZSBjb2RlIGxpa2UgdGhp
czoKPgo+IGludCBkZXZpY2VfcmVnaXN0ZXIoc3RydWN0IGRldmljZSAqZGV2KQo+IHsKPiAgICAg
ICAgIGRldmljZV9pbml0aWFsaXplKGRldik7ICAgLS0+IEluaXRpYWxpemUga29iai0+IGtyZWYg
dG8gMQo+ICAgICAgICAgcmV0dXJuIGRldmljZV9hZGQoZGV2KTsKPiB9Cj4KPiBpbnQgZGV2aWNl
X2FkZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gewo+IC4uLgo+ICAgICAgICAgZGV2ID0gZ2V0X2Rl
dmljZShkZXYpOyAgLS0+IGtvYmotPiBrcmVmIGluY3JlYXNlcyBieSAxCj4gLi4uCj4gZG9uZToK
PiAgICAgICAgIHB1dF9kZXZpY2UoZGV2KTsgIC0tPiBrb2JqLT4ga3JlZiBkZWNyZWFzZXMgYnkg
MSBhbmQgaXMgbm93IDEKPiAgICAgICAgIHJldHVybiBlcnJvcjsKPiAuLi4KPiB9Cj4KPiBTbyB3
ZSBhbHNvIG5lZWQgdG8gY2FsbCBwdXRfZGV2aWNlICgpLAo+IGFuZCB0aGUgb3JpZ2luYWwgcGF0
Y2ggc2hvdWxkIGJlIGZpbmUuCj4gUGxlYXNlIGtpbmRseSBoZWxwIHRvIGNoZWNrIGFnYWluLCB0
aGFuayB5b3UuCj4KCllvdSBhcmUgcmlnaHQsIHNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLiBJIHdp
bGwgYXBwbHkgeW91ciBvcmlnaW5hbCBwYXRjaC4KVGhhbmtzIGFnYWluIGZvciB0aGUgcGF0Y2gu
CgotLQpSZWdhcmRzLApTdWRlZXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
