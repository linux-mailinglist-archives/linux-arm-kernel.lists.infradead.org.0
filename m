Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451259BDB2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 14:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=InRI5g5AokZdMNtk2D59RChmn7zzNPIZM2/adDNPjpo=; b=lrsXIxqemsMp5mAVxKO77Uju2
	1Kln8Dhv/TyHGdrxn3C25pMmo9ct/mrIfOdo1Ay97Apvz94pEGKXAz37WIvECpS2DZXGJLnJ/Schw
	0tiAfFVsGtnKMy2KbTphB+Ed3MiB3gSaHCpUjOONqxwKOkRNAR47NCW7HTu1qUA4+fNFjbiiUr5xN
	d71vw1+xfC8kW+PCt13aNdi24aFv2YuqLv/SEzALXbsCJR/Tv3hss37wWq3MvRaVd4r+peoHC9dgo
	VuhbPy0rlXI92NhzMl56w6goDs6Wpr5B6cUvJQ/Sxdji5ub3UUe2rfwGv6DLxbtiJ8u8xBFqwor9H
	2LW6gdIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1VFL-0007lQ-T7; Sat, 24 Aug 2019 12:34:19 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1VEs-0007l0-OH; Sat, 24 Aug 2019 12:33:52 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 9A8A25FBFB;
 Sat, 24 Aug 2019 14:33:48 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="DWANO3d4"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 5CC561D8B1CD;
 Sat, 24 Aug 2019 14:33:48 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 5CC561D8B1CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566650028;
 bh=X8ATtyrMqmT/YMnCKVOUrBUJelm2/xxbILBBHnS4TAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DWANO3d4H8SO0dBLhQVfGgrUrMVK9Bf2ZmJQuUp69OmXDj+MJPhmCue+ENpt7H61c
 hwNAfZsrtHbOy53zH5uwmKK8HlR3quIGKtZGWK9oFlTENX0M6iQeko207s/kde+vZ7
 ZObJFzrTF4e4+OqlcX10rFjKqR5ZscMIU8ghiIcWBKnVgsuN5H8bQrCx/vJWyR9wUz
 ZszR7+W8v9bR5TGDdDxkQm9dKYilq6OZuxdd5tTRgcGag86HP90TP8ivUwNh0lFEZD
 bWnnz6QQC54UJ5HgyGhQGps9QqXQGnJsdZ77wDYgKgGuansdQwHik5gId/K6ZCHgho
 h2RdoB4njlRHQ==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sat, 24 Aug 2019 12:33:48 +0000
Date: Sat, 24 Aug 2019 12:33:48 +0000
Message-ID: <20190824123348.Horde.LdDLM3_wpuexnof5e7L-q-2@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next v3 1/3] net: ethernet: mediatek: Add basic
 PHYLINK support
References: <20190823134516.27559-1-opensource@vdorst.com>
 <20190823134516.27559-2-opensource@vdorst.com>
 <20190824091106.GC13294@shell.armlinux.org.uk>
In-Reply-To: <20190824091106.GC13294@shell.armlinux.org.uk>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_053351_341312_E4D36394 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Nelson Chang <nelson.chang@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwKClF1b3RpbmcgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIDxsaW51
eEBhcm1saW51eC5vcmcudWs+OgoKPiBPbiBGcmksIEF1ZyAyMywgMjAxOSBhdCAwMzo0NToxNFBN
ICswMjAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+IFRoaXMgY29udmVydCB0aGUgYmFzaWNz
IHRvIFBIWUxJTksgQVBJLgo+PiBTR01JSSBzdXBwb3J0IGlzIG5vdCBpbiB0aGlzIHBhdGNoLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3VyY2VAdmRvcnN0LmNv
bT4KPj4gLS0KPj4gdjItPnYzOgo+PiAqIE1ha2UgbGlua19kb3duKCkgc2ltaWxhciBhcyBsaW5r
X3VwKCkgc3VnZ2VzdGVkIGJ5IFJ1c3NlbGwgS2luZwo+Cj4gWWVwLCBhbG1vc3QgdGhlcmUsIGJ1
dC4uLgo+Cj4+ICtzdGF0aWMgdm9pZCBtdGtfbWFjX2xpbmtfZG93bihzdHJ1Y3QgcGh5bGlua19j
b25maWcgKmNvbmZpZywgIAo+PiB1bnNpZ25lZCBpbnQgbW9kZSwKPj4gKwkJCSAgICAgIHBoeV9p
bnRlcmZhY2VfdCBpbnRlcmZhY2UpCj4+ICt7Cj4+ICsJc3RydWN0IG10a19tYWMgKm1hYyA9IGNv
bnRhaW5lcl9vZihjb25maWcsIHN0cnVjdCBtdGtfbWFjLAo+PiArCQkJCQkgICBwaHlsaW5rX2Nv
bmZpZyk7Cj4+ICsJdTMyIG1jciA9IG10a19yMzIobWFjLT5odywgTVRLX01BQ19NQ1IobWFjLT5p
ZCkpOwo+Pgo+PiArCW1jciAmPSAoTUFDX01DUl9UWF9FTiB8IE1BQ19NQ1JfUlhfRU4pOwo+Cj4g
Li4uIHRoaXMgY2xlYXJzIGFsbCBiaXRzIF9leGNlcHRfIGZvciB0aGUgdHggYW5kIHJ4IGVuYWJs
ZSAod2hpY2ggd2lsbAo+IHJlbWFpbiBzZXQpIC0geW91IHByb2JhYmx5IHdhbnRlZCBhIH4gYmVm
b3JlIHRoZSAoLgoKWWVzIHRoYXQgaXMgd2hhdCBpdCBzaG91bGQgYmUuCkkgb25seSB3YW50IHRv
IGNsZWFyIHRoZSBUWF9FTiBlbiBSWF9FTiBiaXRzLgoKR3JlYXRzLAoKUmVuw6kKCj4KPiAtLQo+
IFJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Bl
ci9wYXRjaGVzLwo+IEZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6
IHN5bmMgYXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwCj4gQWNjb3JkaW5nIHRvIHNwZWVkdGVz
dC5uZXQ6IDExLjlNYnBzIGRvd24gNTAwa2JwcyB1cAoKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
