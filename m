Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0FD19133D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+Dh3SgLQA3p1ZL+18I5j3dtKrwG14wxisYwjjhk768=; b=EdzmowH5xzTLy7
	OSM7yJZY+pyEwjbU0PNabFOuUtiiufFGE8y+fcZYUHC1r+h5fVsO7fWqu+Dj3TclCmOFwj2XVbCny
	y4L1hlcCDmpGlxkBsFyf3+nGb06XN7Ew9clZy/ZJz1R7gTclwsC+RWM8SxQKNO9811Lq75LfQ5qy7
	YUtMVB69a/XKRG/MB9b8KYKEOS0T0MiOaEGf1QtI2e1aZm9pnUhNgdiYS0dqtshK61hJueOGnQIkH
	Qvk0moLng+vpM8QfzsERadh+miyruDI2anv2Qfo2HSPiVA6BpXiiaZCz657WtdFz6f6nSMrTNt9f8
	4tPKVTVjKBAgkiUeasOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkad-0005ZS-N5; Tue, 24 Mar 2020 14:31:35 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkaV-0005Z7-Cm
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:31:28 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48mtwY2rLZz1rsX5;
 Tue, 24 Mar 2020 15:31:25 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48mtwY23bvz1qqkB;
 Tue, 24 Mar 2020 15:31:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id vaw1NEZvxq0c; Tue, 24 Mar 2020 15:31:24 +0100 (CET)
X-Auth-Info: miHAmcPxqbCI9uMRYc4B3ALYCWlABjufYm/QOFykDKE=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 24 Mar 2020 15:31:23 +0100 (CET)
Subject: Re: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200323023145.3345133-1-marex@denx.de>
 <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
 <4ffd8b7c-eb7d-83a4-3f6e-e156d3600532@denx.de>
 <c26637b2-7cf6-b7e2-3301-fafbbfde508e@st.com>
 <028556ba-f088-bf04-4473-a69569157411@denx.de>
 <792e11db-d345-03d4-6d8f-3f9b8ed40576@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <c399c8bb-3035-70e0-7499-71974f7c30f6@denx.de>
Date: Tue, 24 Mar 2020 15:31:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <792e11db-d345-03d4-6d8f-3f9b8ed40576@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_073127_726211_6C46F2EC 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNC8yMCAzOjI4IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IAo+IAo+IE9uIDMv
MjQvMjAgMzoxNSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDMvMjQvMjAgMzowNyBQTSwg
QWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gMy8yNC8yMCAyOjIyIFBNLCBN
YXJlayBWYXN1dCB3cm90ZToKPj4+PiBPbiAzLzI0LzIwIDI6MDQgUE0sIEFsZXhhbmRyZSBUb3Jn
dWUgd3JvdGU6Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IE9uIDMvMjMvMjAgMzozMSBBTSwgTWFyZWsgVmFz
dXQgd3JvdGU6Cj4+Pj4+PiBUaGUgREggUERLMiBjYW4gYmUgcG9wdWxhdGVkIHdpdGggU29NIHdp
dGggYW55IFNUTTMyTVAxNXggdmFyaWFudC4KPj4+Pj4+IEFkZCB0aGUgRFRzIGRlc2NyaWJpbmcg
dGhlIHJlbWFpbmluZyBjb21iaW5hdGlvbnMuCj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTog
TWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4+Pj4+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8
YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+Cj4+Pj4+PiBDYzogTWF4aW1lIENvcXVlbGluIDxtY29x
dWVsaW4uc3RtMzJAZ21haWwuY29tPgo+Pj4+Pj4gQ2M6IFBhdHJpY2UgQ2hvdGFyZCA8cGF0cmlj
ZS5jaG90YXJkQHN0LmNvbT4KPj4+Pj4+IENjOiBQYXRyaWNrIERlbGF1bmF5IDxwYXRyaWNrLmRl
bGF1bmF5QHN0LmNvbT4KPj4+Pj4+IENjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3Jt
cmVwbHkuY29tCj4+Pj4+PiBUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4+Pj4+PiAtLS0KPj4+Pj4+IE5PVEU6IElzIHRoZXJlIGEgYmV0dGVyIHdheSB0byBkbyB0aGlz
IHRoYW4gdG8gaGF2ZSB0aGlzIGtpbmQgb2YgYQo+Pj4+Pj4gwqDCoMKgwqDCoMKgY29tYmluYXRv
cmlhbCBleHBsb3Npb24gb2YgRFRzID8KPj4+Pj4KPj4+Pj4gSSBoYXZlIG5vIGJldHRlciBpZGVh
LiBRdWVzdGlvbiB3YXMgdGhlIHNhbWUgZm9yIHN0bTMyIGJvYXJkcywgYW5kIEkKPj4+Pj4gY2hv
c2UgdG8gdGFrZSB0aGlzIG9wdGlvbi4KPj4+Pgo+Pj4+IE9uZSBvcHRpb24gd291bGQgYmUgdG8g
anVzdCBoYXZlIERUIGZvciB0aGUgbW9zdCBmZWF0dXJlLWNvbXBsZXRlCj4+Pj4gb3B0aW9uCj4+
Pj4gKDE1NykgYW5kIHRoZW4gaGF2ZSBVLUJvb3QgcmVtb3ZlIHRoZSBub2RlcyBmb3IgSFcgd2hp
Y2ggaXMgbm90IHByZXNlbnQKPj4+PiBvbiB0aGUgcGFydGljdWxhciBTb0Mgb3B0aW9uIGlmIGl0
J3Mgb25lIG9mIHRoZSBtb3JlIGxpbWl0ZWQgb25lcyAoMTUzLAo+Pj4+IDE1MSkuCj4+Pj4KPj4+
Cj4+PiBZZXMgaXQgd2FzIGEgcG9zc2liaWxpdHkgdGhhdCBJIGRpc2N1c3NlZCB3aXRoIGtldmlu
IEguIGF0IHRoZSBsYXRlc3QKPj4+IEVMQ0UgYnV0IGF0IHRoZSBlbmQgdGhlIGJlc3Qgd2F5IHRv
IGZvbGxvdyB3YXMgdG8gZW5oYW5jZSBudW1iZXIgb2YgZHRzCj4+PiBmaWxlcy4gVGhlIGJlc3Qg
d291bGQgYmUgdG8gaGF2ZSBkZWRpY2F0ZWQgZm9sZGVycyBidXQgaXQgaXMgYW5vdGhlcgo+Pj4g
c3RvcnkuCj4+Cj4+IE9yIHVzZSBEVCBvdmVybGF5cyBzb21laG93ID8gVS1Cb290IGNhbiBhcHBs
eSBEVE9zIG9udG8gRFQgYmVmb3JlCj4+IGJvb3RpbmcgTGludXguCj4+Cj4+IEhhdmluZyB0b25z
IG9mIERUcyBvbiBhIHN5c3RlbSBpcyBhIGxvdCBvZiBkdXBsaWNhdGlvbiwgSSBkb24ndCByZWFs
bHkKPj4gbGlrZSB0aGF0Lgo+IAo+IEkgYWdyZWUgdGhhdCB0byBtYWludGFpbiBpdCdzIGEgbmln
aHRtYXJlLCBidXQgaXQncyBhIHdheSB0byBoZWxwIERUIHVzZXJzLgo+IAo+Pgo+PiBCdXQgZm9y
IHN0YXJ0ZXJzLCBmZWVsIGZyZWUgdG8gcmV2aWV3IHRoaXMgcGF0Y2guCj4+Cj4gCj4gWW91ciBw
YXRjaCBzb3VuZHMgZ29vZC4KClRoZW4gZmVlbCBmcmVlIHRvIGFwcGx5IGl0LCB0aGFua3MuCgpi
dHcgZG9uJ3QgeW91IGhhdmUgYSAibmV4dCIgdHJlZSBzb21ld2hlcmUgd2l0aCBhbGwgdGhlIHBh
dGNoZXMgcXVldWVkCnVwIGZvciBuZXh0IHJlbGVhc2UgPyBJZiBJIHJlYmFzZSBvbiBsaW51eCBu
ZXh0LCBJIHN0aWxsIGhhdmUgcXVpdGUgYQpmZXcgc3RtMzJtcDEgRFQgcGF0Y2hlcyBpbiBteSB0
cmVlIHdoaWNoIGFyZSBwcmVzdW1hYmx5IGFwcGxpZWQsIGJ1dCBJCmRvbid0IHNlZSB0aGVtIGlu
IGxpbnV4IG5leHQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
