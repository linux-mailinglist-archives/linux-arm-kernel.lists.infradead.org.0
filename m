Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A639C36A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 15:16:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e9Ar2p5xKAhq7iB7o4tWokGINi88jEJ1kAMg6pDoXQU=; b=RVmlAkXSnOqJqVpvmX4dTALdw
	s+qjlGpf+kqZ6xuHmWbSyHalcr7N/RWyzg0dfXSJ57o12wsRxb2hYeYiQ5iU5H4fMPOu9+l4o8hRI
	HicKUBTB72mlHgqbR3SSG72bakTfKgclg2zbL5GKHbCkDRcBAkIlbdsHiX9bgk8OqysUY3UAvkgvG
	yT5te668oUzFed3Bps6Eaf/1vmH66WGT+n3MSv1AB67PMYqQVH1mWSurPWabtuRnlzrVfoslmrvjl
	JigO/p+WjPUB2VRzbKaqDGPjEagJuUExa6J/WeXj7oOlRFeakGidN2MemZLoM2qnJXX0ZBdgDwApG
	mXcPB2/Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1sN6-0000eD-G7; Sun, 25 Aug 2019 13:15:52 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1sMq-0000do-Uw; Sun, 25 Aug 2019 13:15:39 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 5D2775FA49;
 Sun, 25 Aug 2019 15:15:35 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="l6zXc3Uh"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 14C181D8D757;
 Sun, 25 Aug 2019 15:15:35 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 14C181D8D757
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566738935;
 bh=Q2200DqKa9H2DR//WuPuWgb3ZFkA4JFcKxLzXdWogKo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l6zXc3Uhfmp995W4liIDrB+xS8TcepNujW2QUk752OhMN3s8fQo15EcAGgRxZ1Rir
 xPv2lfGuGTMJcK5VZtdHRirzGAYXtixaost4EY+kykfJNcrs/H1yU4TlimlmcViFT2
 X56fiLdSUMqlhfzMQmJlAPfGOk+0ZdObwFU18ph7hOv2O1P7fye/uRyHsI6cqZVwmi
 +tF0llPm2TmrWgZmpJDxD+xJg/v5v5lLESDRFEpYVyI+qYl7jcmIhGGEBs8AZX9pBW
 48INIYeFNBV8vHm3UaantLC4P90BMtlfhvoVHImi/McazGE5IFDtTflza4p0LpByTI
 aL3IfVl43kbLA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sun, 25 Aug 2019 13:15:35 +0000
Date: Sun, 25 Aug 2019 13:15:35 +0000
Message-ID: <20190825131535.Horde.K3HRnOFcIiu-aVdXmqwndlD@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK
 and add support for port 5
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190824222935.GG13294@shell.armlinux.org.uk>
In-Reply-To: <20190824222935.GG13294@shell.armlinux.org.uk>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_061537_276010_78680E52 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwKClF1b3RpbmcgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIDxsaW51
eEBhcm1saW51eC5vcmcudWs+OgoKPiBPbiBXZWQsIEF1ZyAyMSwgMjAxOSBhdCAwNDo0NTo0NFBN
ICswMjAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6Cj4+IDEuIG5ldDogZHNhOiBtdDc1MzA6IENv
bnZlcnQgdG8gUEhZTElOSyBBUEkKPj4gICAgVGhpcyBwYXRjaCBjb252ZXJ0cyBtdDc1MzAgdG8g
UEhZTElOSyBBUEkuCj4+IDIuIGR0LWJpbmRpbmdzOiBuZXQ6IGRzYTogbXQ3NTMwOiBBZGQgc3Vw
cG9ydCBmb3IgcG9ydCA1Cj4+IDMuIG5ldDogZHNhOiBtdDc1MzA6IEFkZCBzdXBwb3J0IGZvciBw
b3J0IDUKPj4gICAgVGhlc2UgMiBwYXRjaGVzIGFkZGluZyBzdXBwb3J0IGZvciBwb3J0IDUgb2Yg
dGhlIHN3aXRjaC4KPj4KPj4gdjEtPnYyOgo+PiAgKiBNb3N0bHkgcGh5bGluayBpbXByb3ZlbWVu
dHMgYWZ0ZXIgcmV2aWV3Lgo+PiByZmMgLT4gdjE6Cj4+ICAqIE1vc3RseSBwaHlsaW5rIGltcHJv
dmVtZW50cyBhZnRlciByZXZpZXcuCj4+ICAqIERyb3AgcGh5IGlzb2xhdGlvbiBwYXRjaGVzLiBB
ZGRzIG5vIHZhbHVlIGZvciBub3cuCj4+IFJlbsOpIHZhbiBEb3JzdCAoMyk6Cj4+ICAgbmV0OiBk
c2E6IG10NzUzMDogQ29udmVydCB0byBQSFlMSU5LIEFQSQo+PiAgIGR0LWJpbmRpbmdzOiBuZXQ6
IGRzYTogbXQ3NTMwOiBBZGQgc3VwcG9ydCBmb3IgcG9ydCA1Cj4+ICAgbmV0OiBkc2E6IG10NzUz
MDogQWRkIHN1cHBvcnQgZm9yIHBvcnQgNQo+Pgo+PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L2RzYS9tdDc1MzAudHh0ICAgIHwgMjE4ICsrKysrKysrKysKPj4gIGRyaXZlcnMvbmV0L2Rz
YS9tdDc1MzAuYyAgICAgICAgICAgICAgICAgICAgICB8IDM3MSArKysrKysrKysrKysrKystLS0K
Pj4gIGRyaXZlcnMvbmV0L2RzYS9tdDc1MzAuaCAgICAgICAgICAgICAgICAgICAgICB8ICA2MSAr
Ky0KPj4gIDMgZmlsZXMgY2hhbmdlZCwgNTc3IGluc2VydGlvbnMoKyksIDczIGRlbGV0aW9ucygt
KQo+Cj4gSGF2aW5nIGxvb2tlZCB0aHJvdWdoIHRoaXMgc2V0IG9mIHBhdGNoZXMsIEkgZG9uJ3Qg
c2VlIGFueXRoaW5nCj4gZnJvbSB0aGUgcGh5bGluayBwb2ludCBvZiB2aWV3IHRoYXQgY29uY2Vy
bnMgbWUuICBTbywgZm9yIHRoZQo+IHNlcmllcyBmcm9tIHRoZSBwaHlsaW5rIHBlcnNwZWN0aXZl
Ogo+Cj4gQWNrZWQtYnk6IFJ1c3NlbGwgS2luZyA8cm1rK2tlcm5lbEBhcm1saW51eC5vcmcudWs+
CgpUaGFua3MgYW5kIHRoYW5rcyBmb3IgcmV2aWV3aW5nLgoKR3JlYXRzLAoKUmVuw6kKCj4KPiBU
aGFua3MuCj4KPiBJIGRpZCBub3RpY2UgYSBkZXZfaW5mbygpIGluIHBhdGNoIDMgdGhhdCB5b3Ug
bWF5IGxpa2UgdG8gY29uc2lkZXIKPiB3aGV0aGVyIHRoZXkgc2hvdWxkIGJlIHByaW50ZWQgYXQg
aW5mbyBsZXZlbCBvciBkZWJ1ZyBsZXZlbC4gIFlvdQo+IG1heSBrZWVwIG15IGFjayBvbiB0aGUg
cGF0Y2ggd2hlbiBmaXhpbmcgdGhhdC4KPgo+IEkgaGF2ZW4ndCBjb25zaWRlcmVkIHdoZXRoZXIg
dGhlIHBhdGNoIHBhc3NlcyBkYXZlbSdzIHN0eWxlCj4gcmVxdWlyZW1lbnRzIGZvciBuZXR3b3Jr
aW5nIGNvZGU7IHdoYXQgSSBzcG90dGVkIGRpZCBsb29rIGxpa2UKPiB0aGUgZGVjbGFyYXRpb25z
IHdlcmUgdXBzaWRlLWRvd24gY2hyaXN0bWFzIHRyZWUuCj4KPiAtLQo+IFJNSydzIFBhdGNoIHN5
c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwo+IEZU
VEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTIuMU1i
cHMgZG93biA2MjJrYnBzIHVwCj4gQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBz
IGRvd24gNTAwa2JwcyB1cAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
