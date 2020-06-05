Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 457B91EFE9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 19:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99syFXKEtn6yL1nqHCRz16NhvVxULmeFBjffXvZhpRo=; b=XG68YlxBVXBmH1
	NWHoZGiFU+X6IWzYN1TiQSr7g+fmM3B67mT0EJ6N303s9hvs12afBPXlJppoCPdX7D/fvHEa62lBN
	WCtCY0fxm2sQfcUiqvuHbn73CWSc4MkEACq4NBML4J3g0nv0dD5TFflPoq/0ZJutpJLRgjhh0Dy9D
	CM36IEmwKB3PjGRgkW0QB4iVqhQwitdehztITXL52GVxT4tmme7DVDB5p+vtsbWZvbiWZpGXsJLfG
	xi5BsgXFuDWrdDcJoHKPwPay3/4UWpKSA58xarGGt/XbHwOounx457P7uLSxmiCbaHATbZnR+++2Z
	XJBYbrL+B8pZD/ra8iYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhFuR-0000Lt-Pt; Fri, 05 Jun 2020 17:13:35 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhFuJ-0000HG-DE
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 17:13:29 +0000
Received: by mail-qt1-x842.google.com with SMTP id i16so9072353qtr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 10:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=rHr7itMwj0PiPq9H+uXZajLfSOPoVtswSHCJ/uAQsm4=;
 b=sutPteYahxMet7Xu1/aGxvidF5fpONwql8J9iaHQeTBhuSlG6v0mzZ38XXiXamKUoM
 Q9bjjpMV6iFJF9aLhwAP1sQftb9ptsoD6ZFjHfMAc7Xhz6URLpNoU+aaKYk4Cx1QGn5W
 j5Y8rBcBDZvHhS1yGy1wXscJ5DawiiDp8glqEZph6kV145YTe2IzWnhm8sn1rbOiKhTJ
 ZiqMiNwkH4ivokp+lmARtcPH3HKz4yTg7J6FpDU0ZZ+vQ855hoT4gDcC4GGI4RlbGnAk
 piGBT5IG1Rt14Y1jV+wovSEk4uf1hnTfg34ZfceQu8ZDGMkECSQVk36/X2F5A8+5ccep
 SEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=rHr7itMwj0PiPq9H+uXZajLfSOPoVtswSHCJ/uAQsm4=;
 b=sGG4CHCDFUtdr/QNSuiLOUBFo8x9wS9t8N5JOclsk7A6NHGNRcGLOQ2WVg3VfurRdS
 6rJq6jCcvqPKqjBOGtGyRmpa9p+aw40WtTR4FFxKNeMnFIV0upRlOLAeoGBwGHcYDthQ
 dRcJMpCmes5bL+aUxnTIZm2/UdgBLVmzJDNCv/XJlOluKbluEfSwC8PeqcflniN2qH48
 XGLW4JpFJBxF5Wm5LvxnfKJtsEGQvCeTsLk702GXCUnIk9nTRqnfZPXzyXngwvbHCB5+
 morTmWsY+QolQpTD2a+870U4mhoLv+kv2Ur+SvtN2AVlzOz7gKnCK8aXM2yqOjvTi0K9
 9sfQ==
X-Gm-Message-State: AOAM533wJt+Rf2eLDhiPt36fCtE8qLaRpQaOqd7WPF0mZbcHXCSlwZVx
 HUlwRqdjRUdNeCHn4vkxRsdCIQ==
X-Google-Smtp-Source: ABdhPJzAo611o2M6HhEIIa1EkNwa7ONj9dewqWnD6aH1w0/QGIFAoQ8zEpfQ6p9WGA14HQA4Cqr5bQ==
X-Received: by 2002:ac8:4542:: with SMTP id z2mr10524331qtn.90.1591377205955; 
 Fri, 05 Jun 2020 10:13:25 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id o6sm289276qtd.59.2020.06.05.10.13.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 10:13:25 -0700 (PDT)
Message-ID: <981458bfa639bbb9dbc7577256fde0a4c6259d53.camel@ndufresne.ca>
Subject: Re: [PATCH 1/3] media: uapi: h264: update reference lists
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jernej Skrabec <jernej.skrabec@siol.net>, paul.kocialkowski@bootlin.com,
 mripard@kernel.org
Date: Fri, 05 Jun 2020 13:13:24 -0400
In-Reply-To: <21efb826506f23d348fa58ca8b29eaca8c9dae55.camel@ndufresne.ca>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <20200604185745.23568-2-jernej.skrabec@siol.net>
 <21efb826506f23d348fa58ca8b29eaca8c9dae55.camel@ndufresne.ca>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_101327_450657_B08620D6 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29ycnksIG1pc3NlZCBvbmUgdGhpbmcuCgpMZSB2ZW5kcmVkaSAwNSBqdWluIDIwMjAgw6AgMTM6
MDggLTA0MDAsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXQgOgo+IExlIGpldWRpIDA0IGp1aW4g
MjAyMCDDoCAyMDo1NyArMDIwMCwgSmVybmVqIFNrcmFiZWMgYSDDqWNyaXQgOgo+ID4gV2hlbiBk
ZWFsaW5nIHdpdGggd2l0aCBpbnRlcmxhY2VkIGZyYW1lcywgcmVmZXJlbmNlIGxpc3RzIG11c3Qg
dGVsbCBpZgo+ID4gZWFjaCBwYXJ0aWN1bGFyIHJlZmVyZW5jZSBpcyBtZWFudCBmb3IgdG9wIG9y
IGJvdHRvbSBmaWVsZC4gVGhpcyBpbmZvCj4gPiBpcyBjdXJyZW50bHkgbm90IHByb3ZpZGVkIGF0
IGFsbCBpbiB0aGUgSDI2NCByZWxhdGVkIGNvbnRyb2xzLgo+ID4gCj4gPiBNYWtlIHJlZmVyZW5j
ZSBsaXN0cyBob2xkIGEgc3RydWN0dXJlIHdoaWNoIHdpbGwgYWxzbyBob2xkIGZsYWdzIGFsb25n
Cj4gPiBpbmRleCBpbnRvIERQQiBhcnJheS4gRmxhZ3Mgd2lsbCB0ZWxsIGlmIHJlZmVyZW5jZSBp
cyBtZWFudCBmb3IgdG9wIG9yCj4gPiBib3R0b20gZmllbGQuCj4gPiAKPiA+IEN1cnJlbnRseSB0
aGUgb25seSB1c2VyIG9mIHRoZXNlIGxpc3RzIGlzIENlZHJ1cyB3aGljaCBpcyBqdXN0IGNvbXBp
bGUKPiA+IGZpeGVkIGhlcmUuIEFjdHVhbCB1c2FnZSBvZiBuZXdseSBpbnRyb2R1Y2VkIGZsYWdz
IHdpbGwgY29tZSBpbgo+ID4gZm9sbG93aW5nIGNvbW1pdC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1i
eTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+IAo+IFRoaXMgbG9v
a3MgbGlrZSB0aGUgcmlnaHQgYXBwcm9hY2ggdG8gbWUgYW5kIGlzIGV4dGVuc2libGUgaWYgYW55
dGhpbmcKPiBlbHNlIGlzIG5lZWRlZCBmb3IgTVZDIGFuZCBTVkMgc3BlY2lhbCByZWZlcmVuY2lu
ZyAoYXQgbGVhc3Qgd2lsbCBiZQo+IGVub3VnaCBmb3Igd2hhdCBILjI2NCBhY3R1YWxseSBzdXBw
b3J0cyBpbiB0aGlzIHJlZ2FyZCkuCj4gCj4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUg
PG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPiAKPiA+IC0tLQo+ID4gIC4uLi9tZWRp
YS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCAgICAgICAgICAgICB8IDQwICsrKysrKysrKysrKysr
KysrKy0KPiA+ICAuLi4vc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyAg
fCAgNiArLS0KPiA+ICBpbmNsdWRlL21lZGlhL2gyNjQtY3RybHMuaCAgICAgICAgICAgICAgICAg
ICAgfCAxMiArKysrKy0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDUxIGluc2VydGlvbnMoKyksIDcg
ZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QgYi9Eb2N1bWVudGF0aW9uL3VzZXJz
cGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPiA+IGluZGV4IGQwZDUwNmE0
NDRiMS4uNmMzNmQyOThkYjIwIDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4gPiArKysgYi9Eb2N1bWVudGF0
aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPiA+IEBAIC0x
ODQzLDEwICsxODQzLDEwIEBAIGVudW0gdjRsMl9tcGVnX3ZpZGVvX2gyNjRfaGllcmFyY2hpY2Fs
X2NvZGluZ190eXBlIC0KPiA+ICAgICAgKiAtIF9fdTMyCj4gPiAgICAgICAgLSBgYHNsaWNlX2dy
b3VwX2NoYW5nZV9jeWNsZWBgCj4gPiAgICAgICAgLQo+ID4gLSAgICAqIC0gX191OAo+ID4gKyAg
ICAqIC0gc3RydWN0IDpjOnR5cGU6YHY0bDJfaDI2NF9yZWZlcmVuY2VgCj4gPiAgICAgICAgLSBg
YHJlZl9waWNfbGlzdDBbMzJdYGAKPiA+ICAgICAgICAtIFJlZmVyZW5jZSBwaWN0dXJlIGxpc3Qg
YWZ0ZXIgYXBwbHlpbmcgdGhlIHBlci1zbGljZSBtb2RpZmljYXRpb25zCj4gPiAtICAgICogLSBf
X3U4Cj4gPiArICAgICogLSBzdHJ1Y3QgOmM6dHlwZTpgdjRsMl9oMjY0X3JlZmVyZW5jZWAKPiA+
ICAgICAgICAtIGBgcmVmX3BpY19saXN0MVszMl1gYAo+ID4gICAgICAgIC0gUmVmZXJlbmNlIHBp
Y3R1cmUgbGlzdCBhZnRlciBhcHBseWluZyB0aGUgcGVyLXNsaWNlIG1vZGlmaWNhdGlvbnMKPiA+
ICAgICAgKiAtIF9fdTMyCj4gPiBAQCAtMTkyNiw2ICsxOTI2LDQyIEBAIGVudW0gdjRsMl9tcGVn
X3ZpZGVvX2gyNjRfaGllcmFyY2hpY2FsX2NvZGluZ190eXBlIC0KPiA+ICAgICAgICAtIGBgY2hy
b21hX29mZnNldFszMl1bMl1gYAo+ID4gICAgICAgIC0KPiA+ICAKPiA+ICtgYFBpY3R1cmUgUmVm
ZXJlbmNlYGAKPiA+ICsKPiA+ICsuLiBjOnR5cGU6OiB2NGwyX2gyNjRfcmVmZXJlbmNlCj4gPiAr
Cj4gPiArLi4gY3NzY2xhc3M6OiBsb25ndGFibGUKPiA+ICsKPiA+ICsuLiBmbGF0LXRhYmxlOjog
c3RydWN0IHY0bDJfaDI2NF9yZWZlcmVuY2UKPiA+ICsgICAgOmhlYWRlci1yb3dzOiAgMAo+ID4g
KyAgICA6c3R1Yi1jb2x1bW5zOiAwCj4gPiArICAgIDp3aWR0aHM6ICAgICAgIDEgMSAyCj4gPiAr
Cj4gPiArICAgICogLSBfX3UxNgo+ID4gKyAgICAgIC0gYGBmbGFnc2BgCj4gPiArICAgICAgLSBT
ZWUgOnJlZjpgUGljdHVyZSBSZWZlcmVuY2UgRmxhZ3MgPGgyNjRfcmVmZXJlbmNlX2ZsYWdzPmAK
PiA+ICsgICAgKiAtIF9fdTgKPiA+ICsgICAgICAtIGBgaW5kZXhgYAo+ID4gKyAgICAgIC0KPiA+
ICsKPiA+ICsuLiBfaDI2NF9yZWZlcmVuY2VfZmxhZ3M6Cj4gPiArCj4gPiArYGBQaWN0dXJlIFJl
ZmVyZW5jZSBGbGFnc2BgCj4gPiArCj4gPiArLi4gY3NzY2xhc3M6OiBsb25ndGFibGUKPiA+ICsK
PiA+ICsuLiBmbGF0LXRhYmxlOjoKPiA+ICsgICAgOmhlYWRlci1yb3dzOiAgMAo+ID4gKyAgICA6
c3R1Yi1jb2x1bW5zOiAwCj4gPiArICAgIDp3aWR0aHM6ICAgICAgIDEgMSAyCj4gPiArCj4gPiAr
ICAgICogLSBgYFY0TDJfSDI2NF9SRUZFUkVOQ0VfRkxBR19UT1BfRklFTERgYAo+ID4gKyAgICAg
IC0gMHgwMDAwMDAwMQo+ID4gKyAgICAgIC0KPiA+ICsgICAgKiAtIGBgVjRMMl9IMjY0X1JFRkVS
RU5DRV9GTEFHX0JPVFRPTV9GSUVMRGBgCj4gPiArICAgICAgLSAweDAwMDAwMDAyCj4gPiArICAg
ICAgLQo+ID4gKwo+ID4gIGBgVjRMMl9DSURfTVBFR19WSURFT19IMjY0X0RFQ09ERV9QQVJBTVMg
KHN0cnVjdClgYAo+ID4gICAgICBTcGVjaWZpZXMgdGhlIGRlY29kZSBwYXJhbWV0ZXJzIChhcyBl
eHRyYWN0ZWQgZnJvbSB0aGUgYml0c3RyZWFtKQo+ID4gICAgICBmb3IgdGhlIGFzc29jaWF0ZWQg
SDI2NCBzbGljZSBkYXRhLiBUaGlzIGluY2x1ZGVzIHRoZSBuZWNlc3NhcnkKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMKPiA+IGluZGV4
IDU0ZWUyYWE0MjNlMi4uY2NlNTI3YmJkZjg2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFn
aW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jCj4gPiArKysgYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMKPiA+IEBAIC0xNjYsOCArMTY2
LDggQEAgc3RhdGljIHZvaWQgY2VkcnVzX3dyaXRlX2ZyYW1lX2xpc3Qoc3RydWN0IGNlZHJ1c19j
dHggKmN0eCwKPiA+ICAKPiA+ICBzdGF0aWMgdm9pZCBfY2VkcnVzX3dyaXRlX3JlZl9saXN0KHN0
cnVjdCBjZWRydXNfY3R4ICpjdHgsCj4gPiAgCQkJCSAgIHN0cnVjdCBjZWRydXNfcnVuICpydW4s
Cj4gPiAtCQkJCSAgIGNvbnN0IHU4ICpyZWZfbGlzdCwgdTggbnVtX3JlZiwKPiA+IC0JCQkJICAg
ZW51bSBjZWRydXNfaDI2NF9zcmFtX29mZiBzcmFtKQo+ID4gKwkJCQkgICBjb25zdCBzdHJ1Y3Qg
djRsMl9oMjY0X3JlZmVyZW5jZSAqcmVmX2xpc3QsCj4gPiArCQkJCSAgIHU4IG51bV9yZWYsIGVu
dW0gY2VkcnVzX2gyNjRfc3JhbV9vZmYgc3JhbSkKPiA+ICB7Cj4gPiAgCWNvbnN0IHN0cnVjdCB2
NGwyX2N0cmxfaDI2NF9kZWNvZGVfcGFyYW1zICpkZWNvZGUgPSBydW4tPmgyNjQuZGVjb2RlX3Bh
cmFtczsKPiA+ICAJc3RydWN0IHZiMl9xdWV1ZSAqY2FwX3E7Cj4gPiBAQCAtMTg4LDcgKzE4OCw3
IEBAIHN0YXRpYyB2b2lkIF9jZWRydXNfd3JpdGVfcmVmX2xpc3Qoc3RydWN0IGNlZHJ1c19jdHgg
KmN0eCwKPiA+ICAJCWludCBidWZfaWR4Owo+ID4gIAkJdTggZHBiX2lkeDsKPiA+ICAKPiA+IC0J
CWRwYl9pZHggPSByZWZfbGlzdFtpXTsKPiA+ICsJCWRwYl9pZHggPSByZWZfbGlzdFtpXS5pbmRl
eDsKPiA+ICAJCWRwYiA9ICZkZWNvZGUtPmRwYltkcGJfaWR4XTsKPiA+ICAKPiA+ICAJCWlmICgh
KGRwYi0+ZmxhZ3MgJiBWNEwyX0gyNjRfRFBCX0VOVFJZX0ZMQUdfQUNUSVZFKSkKPiA+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL21lZGlhL2gyNjQtY3RybHMuaCBiL2luY2x1ZGUvbWVkaWEvaDI2NC1j
dHJscy5oCj4gPiBpbmRleCAwODBmZDEyOTNjNDIuLjliMWNiYzliYzM4ZSAxMDA2NDQKPiA+IC0t
LSBhL2luY2x1ZGUvbWVkaWEvaDI2NC1jdHJscy5oCj4gPiArKysgYi9pbmNsdWRlL21lZGlhL2gy
NjQtY3RybHMuaAo+ID4gQEAgLTE0MCw2ICsxNDAsMTQgQEAgc3RydWN0IHY0bDJfaDI2NF9wcmVk
X3dlaWdodF90YWJsZSB7Cj4gPiAgI2RlZmluZSBWNEwyX0gyNjRfU0xJQ0VfRkxBR19ESVJFQ1Rf
U1BBVElBTF9NVl9QUkVECTB4MDQKPiA+ICAjZGVmaW5lIFY0TDJfSDI2NF9TTElDRV9GTEFHX1NQ
X0ZPUl9TV0lUQ0gJCTB4MDgKPiA+ICAKPiA+ICsjZGVmaW5lIFY0TDJfSDI2NF9SRUZFUkVOQ0Vf
RkxBR19UT1BfRklFTEQJCTB4MDEKPiA+ICsjZGVmaW5lIFY0TDJfSDI2NF9SRUZFUkVOQ0VfRkxB
R19CT1RUT01fRklFTEQJCTB4MDIKPiA+ICsKPiA+ICtzdHJ1Y3QgdjRsMl9oMjY0X3JlZmVyZW5j
ZSB7Cj4gPiArCV9fdTggZmxhZ3M7Cj4gPiArCV9fdTggaW5kZXg7Cj4gPiArfTsKPiA+ICsKPiA+
ICBzdHJ1Y3QgdjRsMl9jdHJsX2gyNjRfc2xpY2VfcGFyYW1zIHsKPiA+ICAJLyogU2l6ZSBpbiBi
eXRlcywgaW5jbHVkaW5nIGhlYWRlciAqLwo+ID4gIAlfX3UzMiBzaXplOwo+ID4gQEAgLTE4Miw4
ICsxOTAsOCBAQCBzdHJ1Y3QgdjRsMl9jdHJsX2gyNjRfc2xpY2VfcGFyYW1zIHsKPiA+ICAJICog
RW50cmllcyBvbiBlYWNoIGxpc3QgYXJlIGluZGljZXMgaW50bwo+ID4gIAkgKiB2NGwyX2N0cmxf
aDI2NF9kZWNvZGVfcGFyYW1zLmRwYltdLgo+ID4gIAkgKi8KClRoaXMgY29tbWVudCBuZWVkcyB0
byBiZSB1cGRhdGVkIG9yIG1vdmVkIGluc2lkZSB0aGUgc3RydWN0dXJlLgoKPiA+IC0JX191OCBy
ZWZfcGljX2xpc3QwWzMyXTsKPiA+IC0JX191OCByZWZfcGljX2xpc3QxWzMyXTsKPiA+ICsJc3Ry
dWN0IHY0bDJfaDI2NF9yZWZlcmVuY2UgcmVmX3BpY19saXN0MFszMl07Cj4gPiArCXN0cnVjdCB2
NGwyX2gyNjRfcmVmZXJlbmNlIHJlZl9waWNfbGlzdDFbMzJdOwo+ID4gIAo+ID4gIAlfX3UzMiBm
bGFnczsKPiA+ICB9OwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
