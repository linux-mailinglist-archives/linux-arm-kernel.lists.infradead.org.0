Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275929C31A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 13:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=crppU/S/PgZCKfJIXuUpxCdVwP7lmDHeGMTxU1LUGxo=; b=NS0PzJapaDfLyv3nispCGb80b
	kzxb6dRrpA0Q1Ts5R2rKewBwGu1bUn0SJCBYknySZ8UkZGnfeJa/nUIusYbNSu0Uar+v3NCuGkz39
	f0CnNJ9AMFNwYpj0LUNV6QgkHJmOwoQbc8kNUUyBjk9kQLERWOXdtPKSodtgSQhuCXpXnpYvTQPca
	7q/NWsGfXHnAXmg4cOb/g0o71PDX94CpX0TUfE2QdTZGj0Y974ui6YLlobpLxBBivb4HNoxVpPdmK
	jx6W9eKplEdd0VRJC4PZo/XtBHe+YhpEL4ugWO6ZdLRc8/Au9vdPLG/jQWfwe5nXZyfJwZzdHus14
	NGk7ovgFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1quZ-0001EO-77; Sun, 25 Aug 2019 11:42:19 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1quA-0001Ds-AF; Sun, 25 Aug 2019 11:41:56 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 1028F5FA49;
 Sun, 25 Aug 2019 13:41:49 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="k2ujcvjx"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id C3E2C1D8CF55;
 Sun, 25 Aug 2019 13:41:48 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com C3E2C1D8CF55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566733308;
 bh=nsy8i4SCb+0PbdWowmCp7cLFbW2VLegD4UK2dhPrFDg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k2ujcvjx/ALRN/ixzonsCgb1tzx7N7jKGX6BmUUKe9+JBnV34DinBqys+Ri+okn96
 vnF8VeFKnCeEF1z5Dtw0eIYUVz+9hYCWufDSvqf1IbGhqlRX0vOqN+TtxFr0nCKzAg
 qbP+RCyQGeWXmNHcoTOAchZ5lDZSTlgMgAWmNqiieuUgQI59bqVXzQVrP4a4ZzPmv9
 tm1QgQTxH5TRiYaPgUKzYew4dNeGDF4UmrcuwM2qhUgU7CGWh2mcLeTHvHinCJE6x+
 Jhu8gb3pBLmWzKa6rHV8bgPyaRZkUuXEtN//8aPrs2SVcKzCSrFi7Nc08GUE0/q14l
 t+0Zw09R5xNSQ==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Sun, 25 Aug 2019 11:41:48 +0000
Date: Sun, 25 Aug 2019 11:41:48 +0000
Message-ID: <20190825114148.Horde.Eep_u3-9rhj5i9Itx7gh4x4@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next v3 2/3] net: ethernet: mediatek: Re-add support
 SGMII
References: <20190823134516.27559-1-opensource@vdorst.com>
 <20190823134516.27559-3-opensource@vdorst.com>
 <20190824092156.GD13294@shell.armlinux.org.uk>
 <20190824131117.Horde.vSCF_CQ5jCMHcSTWkh7Woxm@www.vdorst.com>
 <20190824133225.GE13294@shell.armlinux.org.uk>
In-Reply-To: <20190824133225.GE13294@shell.armlinux.org.uk>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_044154_640037_A00F3252 
X-CRM114-Status: GOOD (  15.30  )
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
eEBhcm1saW51eC5vcmcudWs+OgoKPiBIaSBSZW7DqSwKPgo+IE9uIFNhdCwgQXVnIDI0LCAyMDE5
IGF0IDAxOjExOjE3UE0gKzAwMDAsIFJlbsOpIHZhbiBEb3JzdCB3cm90ZToKPj4gSGkgUnVzc2Vs
bCwKPj4KPj4gTWVkaWF0ZWsgY2FsbHMgaXQgVHVyYm8gUkdNSUkuIEl0IGlzIGEgb3ZlcmNsb2Nr
IHZlcnNpb24gb2YgUkdNSUkgbW9kZS4KPj4gSXQgaXMgdXNlZCBiZXR3ZWVuIGZpcnN0IEdNQUMg
YW5kIHBvcnQgNiBvZiB0aGUgbXQ3NTMwIHN3aXRjaC4gQ2FuIGJlIHVzZWQKPj4gd2l0aAo+PiBh
biBpbnRlcm5hbCBhbmQgYW4gZXh0ZXJuYWwgbXQ3NTMwIHN3aXRjaC4KPj4KPj4gVFJHTUlJIHNw
ZWVkIGFyZToKPj4gKiBtdDc2MjE6IDEyMDBNYml0Cj4+ICogbXQ3NjIzOiAyMDAwTWJpdCBhbmQg
MjYwME1iaXQuCj4+Cj4+IEkgdGhpbmsgdGhhdCBUUkdNSUkgaXMgb25seSB1c2VkIGluIGEgZml4
ZWQtbGluayBzaXR1YXRpb24gaW4gY29tYmluYXRpb24KPj4gd2l0aCBhCj4+IG10NzUzMCBzd2l0
Y2ggYW5kIHJ1bm5pbmcgYW5kIG1heGltdW0gc3BlZWQvZnVsbCBkdXBsZXguIFNvIHJlcG9ydGlu
Zwo+PiAxMDAwYmFzZVRfRnVsbCBzZWVtcyB0byBtZSB0aGUgcmlnaHQgb3B0aW9uLgo+Cj4gSSB0
aGluayB3ZSBjYW4gaWdub3JlIHRoaXMgb25lIGZvciB0aGUgcHVycG9zZXMgb2YgbWVyZ2luZyB0
aGlzIHBhdGNoCj4gc2V0LCBzaW5jZSB0aGlzIHNlZW1zIHRvIGJlIHNwZWNpZmljIHRvIHRoaXMg
c2V0dXAuICBOZWl0aGVyIDEwMDBCYXNlVAo+IG5vciAxMDAwQmFzZVggZml0IHZlcnkgd2VsbCwg
YnV0IHdlIGhhdmUgdG8gY2hvb3NlIHNvbWV0aGluZy4KPgo+PiBQSFlfSU5URVJGQUNFX01PREVf
R01JSToKPj4gCSAgMTBiYXNlVF9IYWxmCj4+IAkgIDEwYmFzZVRfRnVsbAo+PiAJIDEwMGJhc2VU
X0hhbGYKPj4gCSAxMDBiYXNlVF9GdWxsCj4+IAkxMDAwYmFzZVRfSGFsZgo+PiAJMTAwMGJhc2VU
X0Z1bGwKPgo+IEkgdGhpbmsgR01JSSBjYW4gYmUgY29ubmVjdGVkIHRvIGEgUEhZIHRoYXQgY2Fu
IGNvbnZlcnQgdG8gMTAwMEJhc2VYLCBzbwo+IHNob3VsZCBwcm9iYWJseSBpbmNsdWRlIHRoYXQg
aGVyZSB0b28uCj4KClRoYW5rcyBmb3IgcmV2aWV3aW5nLgpJIHNoYWxsIGFkZCB0aGF0IHRvby4K
Ckkgc2VuZCB2NCB0b2RheS4KCkdyZWF0cywKClJlbsOpCgoKPiBUaGFua3MuCj4KPiAtLQo+IFJN
SydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9w
YXRjaGVzLwo+IEZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5
bmMgYXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwCj4gQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5u
ZXQ6IDExLjlNYnBzIGRvd24gNTAwa2JwcyB1cAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
