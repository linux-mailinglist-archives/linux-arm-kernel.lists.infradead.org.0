Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C28433941
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPT5JUMnKW+ierusikv6y3xZibqKC1Z32kT2DsZ97/g=; b=So82vVtAxXPHSr
	mobMAkuliijclELFO5pZ8VzPmdw/SDlfDP79gJqBLj+AJJgqn2x7hxS9YH81jlAZr3WCRzl0+/0+L
	SK0GhrPnzuLLiOis2SlEvVej6586b+h+2+Jwjj4PR5GnN5e2HsV322hcUNiVJ9ifkc6tOajhZypSH
	YQj7VABCLUdwqfdLG37TDWYPsdAQCEqpR0c81+IAMDv9aLMP3Vt9dxjhkd5aLDQLLymUp4SkW7G0s
	MoL9q+nJV5WPMd+B5qIKZCNK0h8pUh1C0FoSeYo5htb0NbvmaOL2cE0Oz/y2TOGwJqMWMyxxY1+mc
	zxiwP0W8jyTamuqU4DlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXswG-0001QP-6Q; Mon, 03 Jun 2019 19:48:12 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsw8-0001Nx-WD
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:48:06 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cf579710000>; Mon, 03 Jun 2019 12:48:01 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 03 Jun 2019 12:48:02 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 03 Jun 2019 12:48:02 -0700
Received: from [10.26.11.157] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 3 Jun
 2019 19:47:59 +0000
Subject: Re: [PATCH 07/26] iommu/dma: move the arm64 wrappers to common code
To: Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-8-hch@lst.de>
 <06b331f0-7df7-a6cd-954c-789f89a0836d@arm.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <acb46c7f-0855-de30-485f-a6242968f947@nvidia.com>
Date: Mon, 3 Jun 2019 20:47:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <06b331f0-7df7-a6cd-954c-789f89a0836d@arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559591281; bh=RMxapgyeEuOTQ8bInOu5Fbjyth09Qz8mwr+ogzgFnH8=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=mVkn8qHn4oghIo8cKZJkJcmq0wsglM5sp4kJ+xEF9zxvkcO3EetQgf2WDxh88dKjl
 WU1kgDYR/RidtsSNfnah+urlkR+Aos1fbomRJh6Mppj0JQQvyIivYS5V6fRQJohR0L
 3BANrGnTtJhH+HsC14T2ZHd6w6ZJtQMfzzOPCu3UOfCCJvUHBxlBeVRcxyTcmiFwqk
 JUR6R9NsmkaIo7NwILxJWuVb0kwVn28ZNBRL28dX8Tmsmorji8+p9XEtvX/entSiKW
 QlKhjgG5mx2vvbBDIHNrTzsMbbV5vRMD3GixETL4yf3Ev9Z+ZL6g8+QFpf4nVKcf9X
 S9Y166LHlYo4Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_124805_039216_0122B110 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-tegra <linux-tegra@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDI5LzA0LzIwMTkgMTM6NTYsIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAyMi8wNC8yMDE5
IDE4OjU5LCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPj4gVGhlcmUgaXMgbm90aGluZyByZWFs
bHkgYXJtNjQgc3BlY2lmaWMgaW4gdGhlIGlvbW11X2RtYV9vcHMKPj4gaW1wbGVtZW50YXRpb24s
IHNvIG1vdmUgaXQgdG8gZG1hLWlvbW11LmMgYW5kIGtlZXAgYSBsb3Qgb2Ygc3ltYm9scwo+PiBz
ZWxmLWNvbnRhaW5lZC7CoCBOb3RlIHRoZSBpbXBsZW1lbnRhdGlvbiBkb2VzIGRlcGVuZCBvbiB0
aGUKPj4gRE1BX0RJUkVDVF9SRU1BUCBpbmZyYXN0cnVjdHVyZSBmb3Igbm93LCBzbyB3ZSdsbCBo
YXZlIHRvIG1ha2UgdGhlCj4+IERNQV9JT01NVSBzdXBwb3J0IGRlcGVuZCBvbiBpdCwgYnV0IHRo
aXMgd2lsbCBiZSByZWxheGVkIHNvb24uCj4gCj4gTm90aGluZyBsb29rcyBvYmplY3Rpb25hYmxl
LCBhbmQgYm9vdCB0ZXN0aW5nIHdpdGggdGhpcyBtdWNoIG9mIHRoZQo+IHNlcmllcyBtZXJnZWQg
aGFzIG15IGNvaGVyZW50IGFuZCBub24tY29oZXJlbnQgSU9NTVUtYmFja2VkIGRldmljZXMKPiBh
cHBlYXJpbmcgdG8gc3RpbGwgd29yayBPSywgc286Cj4gCj4gQWNrZWQtYnk6IFJvYmluIE11cnBo
eSA8cm9iaW4ubXVycGh5QGFybS5jb20+CgpTaW5jZSBuZXh0LTIwMTkwNTI5IG9uZSBvZiBvdXIg
dGVzdHMgZm9yIE1NQyBoYXMgc3RhcnRlZCBmYWlsaW5nLCB3aGVyZQp0aGUgc3ltcHRvbSBpcyB0
aGF0IHRoZSBkYXRhIHdyaXR0ZW4gdG8gdGhlIE1NQyBkb2VzIG5vdCBtYXRjaCB0aGUKc291cmNl
LiBCaXNlY3RpbmcgdGhpcyBpcyBwb2ludGluZyB0byB0aGlzIGNvbW1pdC4gVW5mb3J0dW5hdGVs
eSwgSSBhbQpub3QgYWJsZSB0byBjbGVhbmx5IHJldmVydCB0aGlzIG9uIHRvcCBvZiAtbmV4dCwg
YnV0IHdhbnRlZCB0byByZXBvcnQKdGhpcyBpZiBjYXNlIHlvdSBoYXZlIGFueSBpZGVhcy4KCkNo
ZWVycwpKb24KCi0tIApudnB1YmxpYwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
