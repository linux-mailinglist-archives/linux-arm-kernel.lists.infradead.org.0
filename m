Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 521FC162C79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuIMXKgCWs5FqBJw2ba1A7K8qZvTKX0+sUya/flumrw=; b=qKMe45uUrbUdFv
	JU+seuhnZI2ai09zTEwnSxUwhijENy4v1zk9CfkIE+TtVTs4LWOkS5ZOd3D7jj9Seo3DnDMjb9fWj
	hhmCh02PjUSRcHBm00mzehRYshXzMOgLw6tLs4LJ1rYclWMfyQCNH4gojVUHjDgrTfZP4Bbe2K4Du
	qduBnZXA1piYxJGmCDmmVtA3MFat9dXkiTyqRi22tNLOyIBkDPV9tzJeDVFGolT6OZGiePRSlLx3w
	QyUqIO0SBWC+2wZOhl9rop7D6eJXwrHEGz3gHCNeq08oicY6eKha2ZuPtTTaaQpxc3/GHycQkoKHc
	xLX/QLFkO1+sFntkstZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46Vt-00077c-02; Tue, 18 Feb 2020 17:18:25 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46Vk-00076t-9Q
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582046293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ek37kVTDy+eubHSmBaHlU9802HiWJpZwSmyiNbGJoro=;
 b=GqRoJYmK9+ggf2tkU3bZD6KiC3z7tcsnhE0S3xQeoJ9QQWxLNko17NMIsn2LkLdjozEguA
 R3ckK/Nhr9yugFLNBW9jye2L/hg5DhtFJuwbfp+SskLLlUZ9yrrhkOD90XkKLW3lbnB7FP
 nuWbAGmU77FazF/anQZ1UcKsmZleqps=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-uC0VfL6AP3Ci3cM_MFvf2Q-1; Tue, 18 Feb 2020 12:18:10 -0500
X-MC-Unique: uC0VfL6AP3Ci3cM_MFvf2Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3CD648010FF;
 Tue, 18 Feb 2020 17:18:06 +0000 (UTC)
Received: from carbon (ovpn-200-26.brq.redhat.com [10.40.200.26])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D179990F70;
 Tue, 18 Feb 2020 17:17:53 +0000 (UTC)
Date: Tue, 18 Feb 2020 18:17:51 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: Re: [PATCH net-next v4] net: page_pool: API cleanup and comments
Message-ID: <20200218181751.1d7139d2@carbon>
In-Reply-To: <20200218141031.377860-1-ilias.apalodimas@linaro.org>
References: <20200218141031.377860-1-ilias.apalodimas@linaro.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091816_409137_AC9F2F3E 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, toke@redhat.com,
 John Fastabend <john.fastabend@gmail.com>, brouer@redhat.com,
 Alexei Starovoitov <ast@kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Jose Abreu <joabreu@synopsys.com>, linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, jonathan.lemon@gmail.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, bpf@vger.kernel.org,
 lorenzo@kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org, Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxOCBGZWIgMjAyMCAxNjoxMDozMSArMDIwMApJbGlhcyBBcGFsb2RpbWFzIDxpbGlh
cy5hcGFsb2RpbWFzQGxpbmFyby5vcmc+IHdyb3RlOgoKPiBGdW5jdGlvbnMgc3RhcnRpbmcgd2l0
aCBfXyB1c3VhbGx5IGluZGljYXRlIHRob3NlIHdoaWNoIGFyZSBleHBvcnRlZCwKPiBidXQgc2hv
dWxkIG5vdCBiZSBjYWxsZWQgZGlyZWN0bHkuIFVwZGF0ZSBzb21lIG9mIHRob3NlIGRlY2xhcmVk
IGluIHRoZQo+IEFQSSBhbmQgbWFrZSBpdCBtb3JlIHJlYWRhYmxlLgo+IAo+IHBhZ2VfcG9vbF91
bm1hcF9wYWdlKCkgYW5kIHBhZ2VfcG9vbF9yZWxlYXNlX3BhZ2UoKSB3ZXJlIGRvaW5nCj4gZXhh
Y3RseSB0aGUgc2FtZSB0aGluZyBjYWxsaW5nIF9fcGFnZV9wb29sX2NsZWFuX3BhZ2UoKS4gIExl
dCdzCj4gcmVuYW1lIF9fcGFnZV9wb29sX2NsZWFuX3BhZ2UoKSB0byBwYWdlX3Bvb2xfcmVsZWFz
ZV9wYWdlKCkgYW5kCj4gZXhwb3J0IGl0IGluIG9yZGVyIHRvIHNob3cgdXAgb24gcGVyZiBsb2dz
IGFuZCBnZXQgcmlkIG9mCj4gcGFnZV9wb29sX3VubWFwX3BhZ2UoKS4KPiAKPiBGaW5hbGx5IHJl
bmFtZSBfX3BhZ2VfcG9vbF9wdXRfcGFnZSgpIHRvIHBhZ2VfcG9vbF9wdXRfcGFnZSgpIHNpbmNl
IHdlCj4gY2FuIG5vdyBkaXJlY3RseSBjYWxsIGl0IGZyb20gZHJpdmVycyBhbmQgcmVuYW1lIHRo
ZSBleGlzdGluZwo+IHBhZ2VfcG9vbF9wdXRfcGFnZSgpIHRvIHBhZ2VfcG9vbF9wdXRfZnVsbF9w
YWdlKCkgc2luY2UgdGhleSBkbyB0aGUgc2FtZQo+IHRoaW5nIGJ1dCB0aGUgbGF0dGVyIGlzIHRy
eWluZyB0byBzeW5jIHRoZSBmdWxsIERNQSBhcmVhLgo+IAo+IFRoaXMgcGF0Y2ggYWxzbyB1cGRh
dGVzIG5ldHNlYywgbXZuZXRhIGFuZCBzdG1tYWMgZHJpdmVycyB3aGljaCB1c2UKPiB0aG9zZSBm
dW5jdGlvbnMuCj4gCj4gQWNrZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUBy
ZWRoYXQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IElsaWFzIEFwYWxvZGltYXMgPGlsaWFzLmFwYWxv
ZGltYXNAbGluYXJvLm9yZz4KCkxHVE0gLSBvbiBhIHF1aWNrIHJldmlldyAobm90IGNvbXBpbGUg
dGVzdGVkLi4uKS4KCkFja2VkLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVk
aGF0LmNvbT4KCj4gLS0tCj4gQ2hhbmdlcyBzaW5jZQo+IHYxOgo+IC0gRml4ZWQgbmV0c2VjIGRy
aXZlciBjb21waWxhdGlvbiBlcnJvcgo+IHYyOgo+IC0gSW1wcm92ZWQgY29tbWVudCBkZXNjcmlw
dGlvbiBvZiBwYWdlX3Bvb2xfcHV0X3BhZ2UoKQo+IHYzOgo+IC0gUHJvcGVybHkgZGVmaW5lIHBh
Z2VfcG9vbF9yZWxlYXNlX3BhZ2UoKSBpbiB0aGUgaGVhZGVyIGZpbGUKPiAgIHdpdGhpbiBhbiBp
ZmRlZiBzaW5jZSB4ZHAuYyB1c2VzIGl0IGV2ZW4gaWYgQ09ORklHX1BBR0VfUE9PTCBpcyBub3Qg
c2VsZWN0ZWQKPiAtIHJlbmFtZSBfX3BhZ2VfcG9vbF9jbGVhbl9wYWdlIC0+IHBhZ2VfcG9vbF9y
ZWxlYXNlX3BhZ2UgYW5kIGdldCByaWQgb2YKPiBhbm90aGVyIHJlZHVuZGFudCBoZWxwZXIKCi0t
IApCZXN0IHJlZ2FyZHMsCiAgSmVzcGVyIERhbmdhYXJkIEJyb3VlcgogIE1TYy5DUywgUHJpbmNp
cGFsIEtlcm5lbCBFbmdpbmVlciBhdCBSZWQgSGF0CiAgTGlua2VkSW46IGh0dHA6Ly93d3cubGlu
a2VkaW4uY29tL2luL2Jyb3VlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
