Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114421E586D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJ0xjpRnp9XcKE/FNISPWvwVOraMs/nZ6oZxLV9Nreo=; b=IoJqI5qIwu77bQ
	vRGc1733oIi8BkWojvvCzv8rLs0kwP9PxdXVIiLyruurtm1eq0Y1anLfNksR0SMDDcTqdaiWT4rWI
	iDYyAK7lCzM56OOZs99RVw8KX3QxYSsbUhmPul5Is/1o0h46WcIEohPaMA+7rVdZPl70THJpvORgO
	Ccx5GIK/f3Ug5vpF8D/QQdNW0BghP9BAUZca/ihzOjEtci9fwpx5N/xJVt05QGZ6jxIIg1fPz4H/g
	CL0CD6MYWT6EV1uIbBMGP2EWl4HX7Ur+rswd7dI7ykiVI41M6LQ32ahWKBsLcSI6ghKc7FZw+Z57U
	9Mp7XYhYefNHJ8Ne3mYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCsY-0007De-L3; Thu, 28 May 2020 07:23:02 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCsK-0007DM-Rf
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 May 2020 07:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=zEBM0q4fZKyfjw7D1kyoHM1xb9sriIyKbIiYsNtDAYk=; b=o2mngaR/2MbShS6tZY8tZnQ9FB
 60lLTvJP8Q7Vf7WK/tCu0PrMX63qYTz8XJStgaXtRCPrSfETDSvCZeDXeBZxJzHFj1VHPVAYzUDJK
 QvyR10JKZ2Pc6gPHZAKaSxT7WMKl5tV8VdQJWhTrpl2UJYeBB+0ivMm/vbGXUUkUrpkM8QPiRAnpL
 8QdCa4KiDN8NYTmJPxRrO9LJkNOvkjFAHgEUbGeeGlsNF+JPo/Gbl7ZmgCfeLCmyUggmjc8w3HxhJ
 UR+mFspRc59u9rWyZiw+cPTaSJ46FMtkSOri7Ln4HABy12Urdk35N8jiYP2SsPN4ORTc+umY2TscS
 3QoNpCSg==;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCsH-0007H1-02
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590650517;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zEBM0q4fZKyfjw7D1kyoHM1xb9sriIyKbIiYsNtDAYk=;
 b=KgZbRJWmJOOTW8jTKbf6lqP3lTKEobDoLRc0+EYDE1JF68OXGYG+IJ3XSkcU9g+E6LgMZa
 4fvIqfuXB4+VPbYcA4Jha+Kw/vqc8rf9V6TBhyRPzmrXM8PUWA2DtsfNDztmNYXaRLpr5J
 ygg6nwLbYlAXcVNL2RcwlzvtwtaYATg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590650539;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zEBM0q4fZKyfjw7D1kyoHM1xb9sriIyKbIiYsNtDAYk=;
 b=i+/NXMFlqj+0vGByx4olXzLFYpsIIoZeXm+LAv82iLLJut9OWRITkK0eSZwWdvyAdzE3Wh
 8wSWxrDUZg9KB2yVhosr2wv28lOGGXNB641+Iy4nekL7jrp02Rru2yglOjyfnl3lUaWbyj
 SD9udv+oj7a2YlDQ2P9eXouB3js1A7Q=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590650563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zEBM0q4fZKyfjw7D1kyoHM1xb9sriIyKbIiYsNtDAYk=;
 b=d5tFP94yczCIRH4wOF7CP+EpribSr7UbPAfxnvRi+k61kqsi2R4D3Y4oQv+QxLCSqG7nAq
 hHoneiT650JwqhFHJXCDIlb9tn0ftfnmO91/jY47BJh5e0ml1MV8OZCVE/5gRc4OlzQjEA
 sDj4tjGEzdLQc1Fdf3SgMZFS7Qno0W0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-coeiy8M4OwqtVw4hX2GvfQ-1; Thu, 28 May 2020 03:21:55 -0400
X-MC-Unique: coeiy8M4OwqtVw4hX2GvfQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BCF0C107ACCD;
 Thu, 28 May 2020 07:21:53 +0000 (UTC)
Received: from [10.36.113.56] (ovpn-113-56.ams2.redhat.com [10.36.113.56])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B8AA410013DB;
 Thu, 28 May 2020 07:21:48 +0000 (UTC)
Subject: Re: [RFC PATCH] iommu/arm-smmu: Add module parameter to set msi iova
 address
To: Robin Murphy <robin.murphy@arm.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>
References: <1590595398-4217-1-git-send-email-srinath.mannam@broadcom.com>
 <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <8de9d9dd-16f9-482b-0ecf-f2f103ede86b@redhat.com>
Date: Thu, 28 May 2020 09:21:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <f9b221cf-1c7f-9f95-133b-dca65197b6c2@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA1LzI3LzIwIDc6MzAgUE0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyMDIwLTA1
LTI3IDE3OjAzLCBTcmluYXRoIE1hbm5hbSB3cm90ZToKPj4gVGhpcyBwYXRjaCBnaXZlcyB0aGUg
cHJvdmlzaW9uIHRvIGNoYW5nZSBkZWZhdWx0IHZhbHVlIG9mIE1TSSBJT1ZBIGJhc2UKPj4gdG8g
cGxhdGZvcm0ncyBzdWl0YWJsZSBJT1ZBIHVzaW5nIG1vZHVsZSBwYXJhbWV0ZXIuIFRoZSBwcmVz
ZW50Cj4+IGhhcmRjb2RlZCBNU0kgSU9WQSBiYXNlIG1heSBub3QgYmUgdGhlIGFjY2Vzc2libGUg
SU9WQSByYW5nZXMgb2YKPj4gcGxhdGZvcm0uCj4gCj4gVGhhdCBpbiBpdHNlbGYgZG9lc24ndCBz
ZWVtIGVudGlyZWx5IHVucmVhc29uYWJsZTsgSUlSQyB0aGUgY3VycmVudAo+IGFkZHJlc3MgaXMg
anVzdCBhbiBhcmJpdHJhcnkgY2hvaWNlIHRvIGZpdCBuaWNlbHkgaW50byBRZW11J3MgbWVtb3J5
Cj4gbWFwLApjb3JyZWN0CiBhbmQgdGhlcmUgd2FzIGFsd2F5cyB0aGUgcG9zc2liaWxpdHkgdGhh
dCBpdCB3b3VsZG4ndCBzdWl0IGV2ZXJ5dGhpbmcuCgpJbmRlZWQgSSBhbHNvIHJlY2VudGx5IGhh
ZCB0aGlzIGNhc2Ugb2YgUENJIGhvc3QgYnJpZGdlIGNvbGxpc2lvbiB3aXRoCnRoZSBTVyBNU0kg
cmVzZXJ2ZWQgd2luZG93IC0gbWF5YmUgdGhhdCdzIHRoZSBzYW1lIDstKSAtLgo+IAo+PiBTaW5j
ZSBjb21taXQgYWFkYWQwOTdjZDQ2ICgiaW9tbXUvZG1hOiBSZXNlcnZlIElPVkEgZm9yIFBDSWUg
aW5hY2Nlc3NpYmxlCj4+IERNQSBhZGRyZXNzIiksIGluYWNjZXNzaWJsZSBJT1ZBIGFkZHJlc3Mg
cmFuZ2VzIHBhcnNlZCBmcm9tIGRtYS1yYW5nZXMKPj4gcHJvcGVydHkgYXJlIHJlc2VydmVkLgo+
IAo+IFRoYXQsIGhvd2V2ZXIsIGRvZXNuJ3Qgc2VlbSB0byBmaXQgaGVyZTsgaW9tbXUtZG1hIG1h
cHMgTVNJIGRvb3JiZWxscwo+IGR5bmFtaWNhbGx5LCBzbyB0aGV5IGFyZW4ndCBhZmZlY3RlZCBi
eSByZXNlcnZlZCByZWdpb25zIGFueSBtb3JlIHRoYW4KPiByZWd1bGFyIERNQSBwYWdlcyBhcmUu
IEluIGZhY3QsIGl0IGV4cGxpY2l0bHkgaWdub3JlcyB0aGUgc29mdHdhcmUgTVNJCj4gcmVnaW9u
LCBzaW5jZSBhcyB0aGUgY29tbWVudCBzYXlzLCBpdCAqaXMqIHRoZSBzb2Z0d2FyZSB0aGF0IG1h
bmFnZXMgdGhvc2UuCj4gCj4gVGhlIE1TSV9JT1ZBX0JBU0UgcmVnaW9uIGV4aXN0cyBmb3IgVkZJ
TywgcHJlY2lzZWx5IGJlY2F1c2UgaW4gdGhhdCBjYXNlCj4gdGhlIGtlcm5lbCAqZG9lc24ndCog
Y29udHJvbCB0aGUgYWRkcmVzcyBzcGFjZSwgYnV0IHN0aWxsIG5lZWRzIHNvbWUgd2F5Cj4gdG8g
c3RlYWwgYSBiaXQgb2YgaXQgZm9yIE1TSXMgdGhhdCB0aGUgZ3Vlc3QgZG9lc24ndCBuZWNlc3Nh
cmlseSBrbm93Cj4gYWJvdXQsIGFuZCBnaXZlIHVzZXJzcGFjZSBhIGZpZ2h0aW5nIGNoYW5jZSBv
ZiBrbm93aW5nIHdoYXQgaXQncyB0YWtlbi4KPiBJIHRoaW5rIGF0IHRoZSB0aW1lIHdlIGRpc2N1
c3NlZCB0aGUgaWRlYSBvZiBhZGRpbmcgc29tZXRoaW5nIHRvIHRoZQo+IFZGSU8gdWFwaSBzdWNo
IHRoYXQgdXNlcnNwYWNlIGNvdWxkIG1vdmUgdGhpcyBhcm91bmQgaWYgaXQgd2FudGVkIG9yCj4g
bmVlZGVkIHRvLCBidXQgZGVjaWRlZCB3ZSBjb3VsZCBsaXZlIHdpdGhvdXQgdGhhdCBpbml0aWFs
bHkuCgpZZXMgaW5kZWVkIDstKQoKIFBlcmhhcHMgbm93Cj4gdGhlIHRpbWUgaGFzIGNvbWU/CgpE
byB5b3UgbWVhbiB5b3Ugd291bGQgd2VsY29tZSBhIFZGSU8gYmFzZWQgYXBwcm9hY2ggb3Igd291
bGQgYSBkcml2ZXIKcGFyYW1ldGVyIGJlIHN1ZmZpY2llbnQ/CgpUaGFua3MKCkVyaWMKCgo+IAo+
IFJvYmluLgo+IAo+PiBJZiBhbnkgcGxhdGZvcm0gaGFzIHRoZSBsaW1pdGFpb24gdG8gYWNjZXNz
IGRlZmF1bHQgTVNJIElPVkEsIHRoZW4gaXQgY2FuCj4+IGJlIGNoYW5nZWQgdXNpbmcgImFybS1z
bW11Lm1zaV9pb3ZhX2Jhc2U9MHhhMDAwMDAwMCIgY29tbWFuZCBsaW5lCj4+IGFyZ3VtZW50Lgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTcmluYXRoIE1hbm5hbSA8c3JpbmF0aC5tYW5uYW1AYnJvYWRj
b20uY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9pb21tdS9hcm0tc21tdS5jIHwgNSArKysrLQo+
PiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMgYi9kcml2ZXJzL2lvbW11L2Fy
bS1zbW11LmMKPj4gaW5kZXggNGYxYTM1MC4uNWU1OWM5ZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9pb21tdS9hcm0tc21tdS5jCj4+ICsrKyBiL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUuYwo+PiBA
QCAtNzIsNiArNzIsOSBAQCBzdGF0aWMgYm9vbCBkaXNhYmxlX2J5cGFzcyA9Cj4+IMKgIG1vZHVs
ZV9wYXJhbShkaXNhYmxlX2J5cGFzcywgYm9vbCwgU19JUlVHTyk7Cj4+IMKgIE1PRFVMRV9QQVJN
X0RFU0MoZGlzYWJsZV9ieXBhc3MsCj4+IMKgwqDCoMKgwqAgIkRpc2FibGUgYnlwYXNzIHN0cmVh
bXMgc3VjaCB0aGF0IGluY29taW5nIHRyYW5zYWN0aW9ucyBmcm9tCj4+IGRldmljZXMgdGhhdCBh
cmUgbm90IGF0dGFjaGVkIHRvIGFuIGlvbW11IGRvbWFpbiB3aWxsIHJlcG9ydCBhbiBhYm9ydAo+
PiBiYWNrIHRvIHRoZSBkZXZpY2UgYW5kIHdpbGwgbm90IGJlIGFsbG93ZWQgdG8gcGFzcyB0aHJv
dWdoIHRoZSBTTU1VLiIpOwo+PiArc3RhdGljIHVuc2lnbmVkIGxvbmcgbXNpX2lvdmFfYmFzZSA9
IE1TSV9JT1ZBX0JBU0U7Cj4+ICttb2R1bGVfcGFyYW0obXNpX2lvdmFfYmFzZSwgdWxvbmcsIFNf
SVJVR08pOwo+PiArTU9EVUxFX1BBUk1fREVTQyhtc2lfaW92YV9iYXNlLCAibXNpIGlvdmEgYmFz
ZSBhZGRyZXNzLiIpOwo+PiDCoCDCoCBzdHJ1Y3QgYXJtX3NtbXVfczJjciB7Cj4+IMKgwqDCoMKg
wqAgc3RydWN0IGlvbW11X2dyb3VwwqDCoMKgwqDCoMKgwqAgKmdyb3VwOwo+PiBAQCAtMTU2Niw3
ICsxNTY5LDcgQEAgc3RhdGljIHZvaWQgYXJtX3NtbXVfZ2V0X3Jlc3ZfcmVnaW9ucyhzdHJ1Y3QK
Pj4gZGV2aWNlICpkZXYsCj4+IMKgwqDCoMKgwqAgc3RydWN0IGlvbW11X3Jlc3ZfcmVnaW9uICpy
ZWdpb247Cj4+IMKgwqDCoMKgwqAgaW50IHByb3QgPSBJT01NVV9XUklURSB8IElPTU1VX05PRVhF
QyB8IElPTU1VX01NSU87Cj4+IMKgIC3CoMKgwqAgcmVnaW9uID0gaW9tbXVfYWxsb2NfcmVzdl9y
ZWdpb24oTVNJX0lPVkFfQkFTRSwgTVNJX0lPVkFfTEVOR1RILAo+PiArwqDCoMKgIHJlZ2lvbiA9
IGlvbW11X2FsbG9jX3Jlc3ZfcmVnaW9uKG1zaV9pb3ZhX2Jhc2UsIE1TSV9JT1ZBX0xFTkdUSCwK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJvdCwgSU9N
TVVfUkVTVl9TV19NU0kpOwo+PiDCoMKgwqDCoMKgIGlmICghcmVnaW9uKQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0dXJuOwo+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
