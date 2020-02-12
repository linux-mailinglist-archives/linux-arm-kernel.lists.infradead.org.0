Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F7B15A6D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 11:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8mh0+4Dpznxs4jEPwqrEjCSaQAJiOSqbKif+nQa2FM=; b=ZMtb9YD4EFFVN8
	H+2GBz1gXvwkZAjz2w3Pk/iDbVzuBIq2HSa2msc/YhUrusoD5vKXO693+6T4C4BnAV/A1ybM3Br/N
	LwYsA+9HE2DLTb0Sbe7Knn+b9Frk5t4VxmLvzea1/OUb6gK680/ZoY8upNBbngHg5NLBzVq2jZ8BN
	A0KFMdwn2ysja5F4fZeBXbuMI18QRRHt1DMyRG/8LeqSHnxsx0231377F1pifLKpidn+5CqaVUEJb
	3aMzrjRac2FkB/0ObvGGblAx1dFpuOz40TfGSh3cd09etiMu+/DIWtnHeXFB6PbHqwHUx4/knhNT2
	Ta9P4YoPMtDkBDwhoMVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pX6-0008EZ-Gh; Wed, 12 Feb 2020 10:46:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pWo-0008Dr-Ff
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 10:46:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A44FFAE65;
 Wed, 12 Feb 2020 10:45:54 +0000 (UTC)
Subject: Re: [PATCH v2 3/3] dt-bindings: hwlock: Document A64 hwspinlock
 bindings
To: Rob Herring <robh@kernel.org>
References: <20200211122624.16484-1-nborisov@suse.com>
 <20200211122624.16484-4-nborisov@suse.com> <20200212020023.GA16678@bogus>
From: Nikolay Borisov <nborisov@suse.com>
Autocrypt: addr=nborisov@suse.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <6c64a6f2-21ca-e476-a79e-8fca65c08875@suse.com>
Date: Wed, 12 Feb 2020 12:45:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200212020023.GA16678@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_024558_824031_842913AA 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, mripard@kernel.org, bjorn.andersson@linaro.org,
 wens@csie.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi4wMi4yMCDQsy4gNDowMCDRhy4sIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFR1ZSwg
MTEgRmViIDIwMjAgMTQ6MjY6MjQgKzAyMDAsIE5pa29sYXkgQm9yaXNvdiB3cm90ZToKPj4gQWRk
IGJpbmRpbmcgZm9yIHRoZSBod3NwaW5sb2NrIGZvdW5kIG9uIEFsbHdpbm5lciBBNjQgU29DLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBOaWtvbGF5IEJvcmlzb3YgPG5ib3Jpc292QHN1c2UuY29tPgo+
PiAtLS0KPj4gIC4uLi9hbGx3aW5uZXIsc3VuNTBpLWE2NC1od3NwaW5sb2NrLnlhbWwgICAgICB8
IDQ3ICsrKysrKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25z
KCspCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2h3bG9jay9hbGx3aW5uZXIsc3VuNTBpLWE2NC1od3NwaW5sb2NrLnlhbWwKPj4KPiAKPiBN
eSBib3QgZm91bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgb24geW91
ciBwYXRjaDoKPiAKPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9z
aW1wbGUtZnJhbWVidWZmZXIuZXhhbXBsZS5kdHM6MjEuMTYtMzcuMTE6IFdhcm5pbmcgKGNob3Nl
bl9ub2RlX2lzX3Jvb3QpOiAvZXhhbXBsZS0wL2Nob3NlbjogY2hvc2VuIG5vZGUgbXVzdCBiZSBh
dCByb290IG5vZGUKPiBFcnJvcjogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2h3
bG9jay9hbGx3aW5uZXIsc3VuNTBpLWE2NC1od3NwaW5sb2NrLmV4YW1wbGUuZHRzOjIxLjI4LTI5
IHN5bnRheCBlcnJvcgo+IEZBVEFMIEVSUk9SOiBVbmFibGUgdG8gcGFyc2UgaW5wdXQgdHJlZQo+
IHNjcmlwdHMvTWFrZWZpbGUubGliOjMwMDogcmVjaXBlIGZvciB0YXJnZXQgJ0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9od2xvY2svYWxsd2lubmVyLHN1bjUwaS1hNjQtaHdzcGlu
bG9jay5leGFtcGxlLmR0LnlhbWwnIGZhaWxlZAo+IG1ha2VbMV06ICoqKiBbRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2h3bG9jay9hbGx3aW5uZXIsc3VuNTBpLWE2NC1od3NwaW5s
b2NrLmV4YW1wbGUuZHQueWFtbF0gRXJyb3IgMQo+IE1ha2VmaWxlOjEyNjM6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkdF9iaW5kaW5nX2NoZWNrJyBmYWlsZWQKPiBtYWtlOiAqKiogW2R0X2JpbmRpbmdf
Y2hlY2tdIEVycm9yIDIKPiAKPiBTZWUgaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRj
aC8xMjM2MjY2Cj4gUGxlYXNlIGNoZWNrIGFuZCByZS1zdWJtaXQuCj4gCgpJJ20gbm90IGFibGUg
dG8gYnVpbGQgdGhpcyBzY2hlbWEgYXQgYWxsOgoKbWFrZSBBUkNIPWFybTY0IENST1NTX0NPTVBJ
TEU9YWFyY2g2NC1saW51eC1nbnUtIGFsbG1vZGNvbmZpZwptYWtlIEFSQ0g9YXJtNjQgQ1JPU1Nf
Q09NUElMRT1hYXJjaDY0LWxpbnV4LWdudS0gZHRfYmluZGluZ19jaGVjayBEVF9TQ0hFTUFfRklM
RVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2h3bG9jay9hbGx3aW5uZXIsc3Vu
NTBpLWE2NC1od3NwaW5sb2NrLnlhbWwKClRoaXMgcmVzdWx0cyBpbiBhIGFsbHdpbm5lcixzdW41
MGktYTY0LWh3c3BpbmxvY2suZXhhbXBsZS5kdHMgCmZpbGUgYW5kOiAKCgptYWtlWzFdOiAqKiog
Tm8gcnVsZSB0byBtYWtlIHRhcmdldCAnRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2h3bG9jay9hbGx3aW5uZXIsc3VuNTBpLWE2NC1od3NwaW5sb2NrLmV4YW1wbGUuZHQueWFtbCcs
IG5lZWRlZCBieSAnX19idWlsZCcuICBTdG9wLgpNYWtlZmlsZToxMjYzOiByZWNpcGUgZm9yIHRh
cmdldCAnZHRfYmluZGluZ19jaGVjaycgZmFpbGVkCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
