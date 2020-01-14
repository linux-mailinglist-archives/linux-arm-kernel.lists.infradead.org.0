Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E175413A2E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ekFe8ZFg2GCHfpiyW8k0Ws0VF5piP19s2bEURG3lN8=; b=LK4/ij8aRNFMzz
	OGkiwxImIOus4D2TZeF5f5to5/eQd0bih3nSU5QAZW8gao9etfeqwwihXo5/hxWeKnG7Md4PABzLf
	WfNOKQYfEZNyb2DxyCZW1K57HJ5j5f3uaQT9s+u+qBf5m5UsBIwd7KsbpESTGsDwPBwc4aUXZwskY
	D2e3Tn0pamt64rT+xGrUv3uon6TLegXorU1K26Mr1Mdo7lInyiU1glv+CIquKuwFim3n4sLz8hgpX
	KtUuvXwIhuUSybwXqOj05dcCvQ0E/0gGVbgzRMV7ODMNHSkua5aumiRbapYueV3NRBPltCseOSJgX
	H1TAQV+OkUV7x46YmK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHRo-0000G5-VO; Tue, 14 Jan 2020 08:21:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHRg-0000FO-BJ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 08:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578990061;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KuWgcBzyxfCZHiZvCkvjwdRcBMrfoCkxiwSI2/QXtic=;
 b=HzH8fFECxAfRzfQE/KjXlBg/5WnPq/LCPe04VDVuXX/IIoV8sUxLa1Z+7hOBUJAiptJ7C6
 wLfe2w4GVUG1HVWaGjHXFMXVHJjSgko61QqssWrwijFSKVTqmJfquqfc0iB6NypDer1qjC
 stwmQwUzLVSyMEjE+4aohi7wYr8sLkM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-QV_CL5bGPSqijPl5J2PZ6g-1; Tue, 14 Jan 2020 03:20:56 -0500
X-MC-Unique: QV_CL5bGPSqijPl5J2PZ6g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C4D7800A02;
 Tue, 14 Jan 2020 08:20:54 +0000 (UTC)
Received: from [10.36.117.108] (ovpn-117-108.ams2.redhat.com [10.36.117.108])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 592175D9E5;
 Tue, 14 Jan 2020 08:20:52 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm/arm64: vgic-its: Check hopefully the last
 DISCARD command error
To: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org
References: <20191225133014.1825-1-yuzenghui@huawei.com>
 <f9997198-c990-d638-24d0-41d6280a9d8a@redhat.com>
 <41c88abb-433a-f87c-c858-7f2eb4c40926@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <615c4713-d00e-e2f7-c2d4-fa8047355c9b@redhat.com>
Date: Tue, 14 Jan 2020 09:20:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <41c88abb-433a-f87c-c858-7f2eb4c40926@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_002104_459934_8C3990D3 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andre.przywara@arm.com, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 wanghaibin.wang@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWmVuZ2h1aSwKCk9uIDEvMTQvMjAgODoxMCBBTSwgWmVuZ2h1aSBZdSB3cm90ZToKPiBIaSBF
cmljLAo+IAo+IE9uIDIwMjAvMS8xMCAxNjozNywgQXVnZXIgRXJpYyB3cm90ZToKPj4gSGkgWmVu
Z2h1aSwKPj4KPj4gT24gMTIvMjUvMTkgMjozMCBQTSwgWmVuZ2h1aSBZdSB3cm90ZToKPj4+IERJ
U0NBUkQgY29tbWFuZCBlcnJvciBvY2N1cnMgaWYgYW55IG9mIHRoZSBmb2xsb3dpbmcgYXBwbHk6
Cj4+Pgo+Pj4gwqAgLSBbIC4uLiAodGhvc2Ugd2hpY2ggd2UgaGF2ZSBhbHJlYWR5IGhhbmRsZWQp
IF0KPj4gbml0OiBJIHdvdWxkIHJlbW92ZSB0aGUgYWJvdmUgYW5kIHNpbXBseSBzYXkgdGhlIGRp
c2NhcmQgaXMgc3VwcG9zZWQgdG8KPj4gZmFpbCBpZiB0aGUgY29sbGVjdGlvbiBpcyBub3QgbWFw
cGVkIHRvIGFueSB0YXJnZXQgcmVkaXN0cmlidXRvci4gSWYgYW4KPj4gSVRFIGV4aXN0cyB0aGVu
IHRoZSBpdGUtPmNvbGxlY3Rpb24gaXMgbm9uIE5VTEwuCj4gCj4gSSB0aGluayB0aGlzIGlzIG5v
dCBhbHdheXMgdHJ1ZS4gTGV0J3MgdGFsayBhYm91dCB0aGUgZm9sbG93aW5nIHNjZW5hcmlvCj4g
KGEgYml0IGluc2FuZSwgdGhvdWdoKToKPiAKPiAxLiBGaXJzdCBtYXAgYSBMUEkgdG8gYW4gdW5t
YXBwZWQgQ29sbGVjdGlvbiwgdGhlbiBpdGUtPmNvbGxlY3Rpb24gaXMKPiDCoMKgIG5vbiBOVUxM
IGFuZCBpdHMgdGFyZ2V0X2FkZHIgaXMgQ09MTEVDVElPTl9OT1RfTUFQUEVELgo+IAo+IDIuIFRo
ZW4gaXNzdWUgTUFQQyBhbmQgdW5NQVBDKFY9MCkgY29tbWFuZHMgb24gdGhpcyBDb2xsZWN0aW9u
LCB0aGUKPiDCoMKgIGl0ZS0+Y29sbGVjdGlvbiB3aWxsIGJlIE5VTEwsIHNlZSB2Z2ljX2l0c19m
cmVlX2NvbGxlY3Rpb24oKS4KWW91J3JlIHJpZ2h0IEkgbWlzc2VkIHRoYXQgY2FzZS4KPiAKPiBE
aXNjYXJkIHRoZSBMUEkgbWFwcGluZyBhZnRlciAiMSIgb3IgIjIiLCB3ZSB3aWxsIGJvdGggZW5j
b3VudGVyIHRoZQo+IHVubWFwcGVkIGNvbGxlY3Rpb24gY29tbWFuZCBlcnJvci4KPiAKPj4gV2hh
dCBuZWVkcyB0byBiZSBjaGVja2VkIGlzIGl0c19pc19jb2xsZWN0aW9uX21hcHBlZCgpLgo+Pgo+
PiBCeSB0aGUgd2F5IHVwZGF0ZV9hZmZpbml0eV9jb2xsZWN0aW9uKCkgYWxzbyB0ZXN0cyBpdGUt
PmNvbGxlY3Rpb24uIEkKPj4gdGhpbmsgdGhpcyBpcyB1c2VsZXNzIG9yIGRvIEkgbWlzcyBzb21l
dGhpbmc/Cj4gCj4gWWVhaCwgSSBhZ3JlZS4gV2UgbWFuYWdlZCB0byBpbnZva2UgdXBkYXRlX2Fm
ZmluaXR5X2NvbGxlY3Rpb24oLCwgY29sbCksCj4gZW5zdXJlIHRoYXQgdGhlICdjb2xsJyBjYW4g
X25vdF8gYmUgTlVMTC4KPiBTbyAnIWl0ZS0+Y29sbGVjdGlvbicgaXMgYWxyZWFkeSBhIHN1YmNh
c2Ugb2YgJ2NvbGwgIT0gaXRlLT5jb2xsZWN0aW9uJy4KPiBXZSBjYW4gc2FmZWx5IGdldCByaWQg
b2YgaXQuCk9LLiBCdXQgdGhhdCdzIG5vdCBmb3IgdGhlICh3cm9uZykgcmVhc29uIEkgbWVudGlv
bmVkIGFib3ZlLiBTbyBpdCBpcyBhCm1pbm9yIGNsZWFudXAgYW5kIHlvdSBtYXkganVzdCBsZWF2
ZSBpdCBhcyBpcyBhbmQganVzdCBmb2N1cyBvbiB0aGlzIGZpeC4KClRoYW5rcwoKRXJpYwo+IAo+
Pgo+PiBSZXZpZXdlZC1ieTogRXJpYyBBdWdlciA8ZXJpYy5hdWdlckByZWRoYXQuY29tPgo+Pgo+
IAo+IFRoYW5rcyBmb3IgdGhhdC4gSSdsbCBjaGFuZ2UgdGhlIGNvbW1pdCBtZXNzYWdlIHdpdGgg
eW91ciBzdWdnZXN0aW9uIGFuZAo+IGFkZCB5b3VyIFItYiBpbiB2Mi4KPiAKPiAKPiBUaGFua3Ms
Cj4gWmVuZ2h1aQo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
