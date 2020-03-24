Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9804D1913C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q174Vc4/JqDvy30zPSH1dNrpRPiMqPiXZiWBPpP9tso=; b=EEDaXzc17mUONZ
	1DLa5etPSBc+a/EZn9NvSMdVFBFyD6nMAmrpHzwCO+xfj6/4f/j0hUEJcK1zw+WAxSofo7M1cvbZF
	j9/TB8XulmzI2/ygSnF8jCnlbsNBbUVNCT4Q8sEfZy81mNdC748GtMHszrEIjkbfUDJv4wroink+2
	kk1ukvY9YH9OOOYDkJAfd2tA9SZy8JGc/wOO+snfunGORn0y6i/A9oN7cYcCnzUfg+jhnRxov8vIm
	ZNhJ3Lc0ixyFEjxF/5n7tEATELV/KCBbI+uP7eXsbdvSlM6xyyuBKexnCVCIyu7YPliAYEypa2aWT
	b/WthuYvTFFvhciT69pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGl1B-0008GY-0r; Tue, 24 Mar 2020 14:59:01 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGl10-0008G2-BX
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:58:52 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48mvX573BTz1qsbn;
 Tue, 24 Mar 2020 15:58:45 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48mvX568Smz1qqkB;
 Tue, 24 Mar 2020 15:58:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id M0_zbZnZCtKc; Tue, 24 Mar 2020 15:58:44 +0100 (CET)
X-Auth-Info: 8vb7VxajYF7rJyfc3sLb4njKBc1agXxPaCLxo1uQFOU=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 24 Mar 2020 15:58:44 +0100 (CET)
Subject: Re: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
To: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200323023145.3345133-1-marex@denx.de>
 <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
 <4ffd8b7c-eb7d-83a4-3f6e-e156d3600532@denx.de>
 <c26637b2-7cf6-b7e2-3301-fafbbfde508e@st.com>
 <028556ba-f088-bf04-4473-a69569157411@denx.de>
 <792e11db-d345-03d4-6d8f-3f9b8ed40576@st.com>
 <c399c8bb-3035-70e0-7499-71974f7c30f6@denx.de>
 <9492207e929c4185bda5a709ad879c15@SFHDAG3NODE2.st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <7723c340-067b-d780-0eb1-c47d50b11ee9@denx.de>
Date: Tue, 24 Mar 2020 15:58:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <9492207e929c4185bda5a709ad879c15@SFHDAG3NODE2.st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_075850_696336_64ACCEEA 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNC8yMCAzOjM5IFBNLCBBbGV4YW5kcmUgVE9SR1VFIHdyb3RlOgo+IAo+IAo+PiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5k
ZT4KPj4gU2VudDogbWFyZGkgMjQgbWFycyAyMDIwIDE1OjMxCj4+IFRvOiBBbGV4YW5kcmUgVE9S
R1VFIDxhbGV4YW5kcmUudG9yZ3VlQHN0LmNvbT47IGxpbnV4LWFybS0KPj4ga2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPj4gQ2M6IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVlbGluLnN0bTMyQGdt
YWlsLmNvbT47IFBhdHJpY2UgQ0hPVEFSRAo+PiA8cGF0cmljZS5jaG90YXJkQHN0LmNvbT47IFBh
dHJpY2sgREVMQVVOQVkgPHBhdHJpY2suZGVsYXVuYXlAc3QuY29tPjsgbGludXgtCj4+IHN0bTMy
QHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPj4gU3ViamVjdDogUmU6IFtQQVRDSF0gW1JG
Q10gQVJNOiBkdHM6IHN0bTMyOiBBZGQgRFRzIGZvciBTVE0zMk1QMTV4IHZhcmlhbnRzCj4+IG9m
IHRoZSBESCBTT00gYW5kIFBESzIKPj4KPj4gT24gMy8yNC8yMCAzOjI4IFBNLCBBbGV4YW5kcmUg
VG9yZ3VlIHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiAzLzI0LzIwIDM6MTUgUE0sIE1hcmVrIFZhc3V0
IHdyb3RlOgo+Pj4+IE9uIDMvMjQvMjAgMzowNyBQTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToK
Pj4+Pj4KPj4+Pj4KPj4+Pj4gT24gMy8yNC8yMCAyOjIyIFBNLCBNYXJlayBWYXN1dCB3cm90ZToK
Pj4+Pj4+IE9uIDMvMjQvMjAgMjowNCBQTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+Pj4+
Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gT24gMy8yMy8yMCAzOjMxIEFNLCBNYXJlayBWYXN1dCB3cm90ZToK
Pj4+Pj4+Pj4gVGhlIERIIFBESzIgY2FuIGJlIHBvcHVsYXRlZCB3aXRoIFNvTSB3aXRoIGFueSBT
VE0zMk1QMTV4IHZhcmlhbnQuCj4+Pj4+Pj4+IEFkZCB0aGUgRFRzIGRlc2NyaWJpbmcgdGhlIHJl
bWFpbmluZyBjb21iaW5hdGlvbnMuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE1h
cmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPgo+Pj4+Pj4+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8
YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+Cj4+Pj4+Pj4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1j
b3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4+Pj4+Pj4+IENjOiBQYXRyaWNlIENob3RhcmQgPHBh
dHJpY2UuY2hvdGFyZEBzdC5jb20+Cj4+Pj4+Pj4+IENjOiBQYXRyaWNrIERlbGF1bmF5IDxwYXRy
aWNrLmRlbGF1bmF5QHN0LmNvbT4KPj4+Pj4+Pj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxt
YW4uc3Rvcm1yZXBseS5jb20KPj4+Pj4+Pj4gVG86IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4gTk9URTogSXMgdGhlcmUgYSBiZXR0ZXIg
d2F5IHRvIGRvIHRoaXMgdGhhbiB0byBoYXZlIHRoaXMga2luZCBvZgo+Pj4+Pj4+PiBhCj4+Pj4+
Pj4+IMKgwqDCoMKgwqDCoGNvbWJpbmF0b3JpYWwgZXhwbG9zaW9uIG9mIERUcyA/Cj4+Pj4+Pj4K
Pj4+Pj4+PiBJIGhhdmUgbm8gYmV0dGVyIGlkZWEuIFF1ZXN0aW9uIHdhcyB0aGUgc2FtZSBmb3Ig
c3RtMzIgYm9hcmRzLCBhbmQKPj4+Pj4+PiBJIGNob3NlIHRvIHRha2UgdGhpcyBvcHRpb24uCj4+
Pj4+Pgo+Pj4+Pj4gT25lIG9wdGlvbiB3b3VsZCBiZSB0byBqdXN0IGhhdmUgRFQgZm9yIHRoZSBt
b3N0IGZlYXR1cmUtY29tcGxldGUKPj4+Pj4+IG9wdGlvbgo+Pj4+Pj4gKDE1NykgYW5kIHRoZW4g
aGF2ZSBVLUJvb3QgcmVtb3ZlIHRoZSBub2RlcyBmb3IgSFcgd2hpY2ggaXMgbm90Cj4+Pj4+PiBw
cmVzZW50IG9uIHRoZSBwYXJ0aWN1bGFyIFNvQyBvcHRpb24gaWYgaXQncyBvbmUgb2YgdGhlIG1v
cmUKPj4+Pj4+IGxpbWl0ZWQgb25lcyAoMTUzLCAxNTEpLgo+Pj4+Pj4KPj4+Pj4KPj4+Pj4gWWVz
IGl0IHdhcyBhIHBvc3NpYmlsaXR5IHRoYXQgSSBkaXNjdXNzZWQgd2l0aCBrZXZpbiBILiBhdCB0
aGUKPj4+Pj4gbGF0ZXN0IEVMQ0UgYnV0IGF0IHRoZSBlbmQgdGhlIGJlc3Qgd2F5IHRvIGZvbGxv
dyB3YXMgdG8gZW5oYW5jZQo+Pj4+PiBudW1iZXIgb2YgZHRzIGZpbGVzLiBUaGUgYmVzdCB3b3Vs
ZCBiZSB0byBoYXZlIGRlZGljYXRlZCBmb2xkZXJzIGJ1dAo+Pj4+PiBpdCBpcyBhbm90aGVyIHN0
b3J5Lgo+Pj4+Cj4+Pj4gT3IgdXNlIERUIG92ZXJsYXlzIHNvbWVob3cgPyBVLUJvb3QgY2FuIGFw
cGx5IERUT3Mgb250byBEVCBiZWZvcmUKPj4+PiBib290aW5nIExpbnV4Lgo+Pj4+Cj4+Pj4gSGF2
aW5nIHRvbnMgb2YgRFRzIG9uIGEgc3lzdGVtIGlzIGEgbG90IG9mIGR1cGxpY2F0aW9uLCBJIGRv
bid0Cj4+Pj4gcmVhbGx5IGxpa2UgdGhhdC4KPj4+Cj4+PiBJIGFncmVlIHRoYXQgdG8gbWFpbnRh
aW4gaXQncyBhIG5pZ2h0bWFyZSwgYnV0IGl0J3MgYSB3YXkgdG8gaGVscCBEVCB1c2Vycy4KPj4+
Cj4+Pj4KPj4+PiBCdXQgZm9yIHN0YXJ0ZXJzLCBmZWVsIGZyZWUgdG8gcmV2aWV3IHRoaXMgcGF0
Y2guCj4+Pj4KPj4+Cj4+PiBZb3VyIHBhdGNoIHNvdW5kcyBnb29kLgo+Pgo+PiBUaGVuIGZlZWwg
ZnJlZSB0byBhcHBseSBpdCwgdGhhbmtzLgo+Pgo+PiBidHcgZG9uJ3QgeW91IGhhdmUgYSAibmV4
dCIgdHJlZSBzb21ld2hlcmUgd2l0aCBhbGwgdGhlIHBhdGNoZXMgcXVldWVkIHVwIGZvcgo+PiBu
ZXh0IHJlbGVhc2UgPyBJZiBJIHJlYmFzZSBvbiBsaW51eCBuZXh0LCBJIHN0aWxsIGhhdmUgcXVp
dGUgYSBmZXcgc3RtMzJtcDEgRFQKPj4gcGF0Y2hlcyBpbiBteSB0cmVlIHdoaWNoIGFyZSBwcmVz
dW1hYmx5IGFwcGxpZWQsIGJ1dCBJIGRvbid0IHNlZSB0aGVtIGluIGxpbnV4IG5leHQuCj4gCj4g
Cj4gWWVzIGJ1dCBpdCBpcyBub3QgbWVyZ2VkIGludG8gTGludXgtbmV4dC4gU2VlOiBnaXQ6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXRvcmd1ZS9zdG0zMi5naXQK
PiAKPiBCcmFuY2ggc3RtMzItbmV4dAoKVGhhbmtzLiBXb3VsZG4ndCBpdCBiZSBtb3JlIGNvbnZl
bmllbnQgYW5kIHJlY2VpdmUgbW9yZSB0ZXN0aW5nIGlmIGl0CndlcmUgdG8gYmUgbWVyZ2VkIGlu
dG8gbmV4dCwganVzdCBsaWtlIHRoZSBvdGhlciB0cmVlcyBhcmUgPwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
