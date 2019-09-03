Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B4CA61A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6FkGYdiTJlTS/zYGq1mPOTug5eG3YDh6RMFKN+xOfU=; b=Bc672HM6FE+G8c
	KDM1RDh4LCgQ69X5PWLEQuC0gWHZzE/ig/kpmm7kUQL9ReEJFTaPLI33WWzdbZoKaKXadlhhlByYZ
	W1Ey2jQQeVR052NuD4JIgl73A0MAXluDhn5j7FuhuGkqxHRgCMJnPkTdpsuYYgzQ2KryL2OqecR4D
	7KEoueShInxhktSgz/fEMe79QT58JhmaSSdZjgSZ3IE0R+KXNzoGkNDQHXnQjZR4rC+qP43oTog3z
	lBY4bYVc2pBH5JSBmIHkZhPUov7bL9p7fpfTgUbVtTBKI4T2k56ygczgyqBeR5w67yKzyIZboEaaH
	zUBSteFzPdjtyIlyxq8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52V7-000287-2u; Tue, 03 Sep 2019 06:41:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52Up-00026a-I5
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:40:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 048432173E;
 Tue,  3 Sep 2019 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567492855;
 bh=Kjnhxdr190S6hyFGdIsCbzAIQoMLyHpi5BtCmbjQvfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CJNMYLqKdbPFEmIjo2UcyeccD7qZ4BLQcspji35Bg8d5E5Cfx5WnE2mk2d8cDlg1T
 ZwfTmgVyXlwi1nUwRCoa62/pcsRd7iTbF88V4/6joXY7I95cZvmsCudYIkrgFAJJo8
 kPgaKEfu3M7dXQ6AotA/WJq4dpeaZY3h4hYgLX6k=
Date: Tue, 3 Sep 2019 07:40:51 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: "Rework enabling/disabling of ATS for PCI masters" failed to
 compile on arm64
Message-ID: <20190903064050.zsmaum4gajqjdivv@willie-the-truck>
References: <63FF6963-E1D9-4C65-AD2E-0E4938D08584@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63FF6963-E1D9-4C65-AD2E-0E4938D08584@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_234055_614799_F2EC1CFC 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: iommu@lists.linux-foundation.org, Joerg Roedel <jroedel@suse.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBTZXAgMDIsIDIwMTkgYXQgMTA6MTA6MzBQTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gVGhlIGxpbnV4LW5leHQgY29tbWl0IOKAnGlvbW11L2FybS1zbW11LXYzOiBSZXdvcmsgZW5h
YmxpbmcvZGlzYWJsaW5nIG9mIEFUUyBmb3IgUENJIG1hc3RlcnPigJ0gWzFdIGNhdXNlcyBhIGNv
bXBpbGF0aW9uIGVycm9yIHdoZW4gUENJX0FUUz1uIG9uIGFybTY0Lgo+IAo+IFsxXSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1pb21tdS8yMDE5MDgyMDE1NDU0OS4xNzAxOC0zLXdpbGxA
a2VybmVsLm9yZy8KPiAKPiBkcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmM6MjMyNTozNTogZXJy
b3I6IG5vIG1lbWJlciBuYW1lZCAnYXRzX2NhcCcgaW4gJ3N0cnVjdCBwY2lfZGV2Jwo+ICAgICAg
ICAgcmV0dXJuICFwZGV2LT51bnRydXN0ZWQgJiYgcGRldi0+YXRzX2NhcDsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn4gIF4KPiAKPiBGb3IgZXhhbXBsZSwKPiAKPiBT
eW1ib2w6IFBDSV9BVFMgWz1uXQo+ICAg4pSCIFR5cGUgIDogYm9vbAo+ICAg4pSCICAgRGVmaW5l
ZCBhdCBkcml2ZXJzL3BjaS9LY29uZmlnOjExOAo+ICAg4pSCICAgRGVwZW5kcyBvbjogUENJIFs9
eV0gCj4gICDilIIgICBTZWxlY3RlZCBieSBbbl06IAo+ICAg4pSCICAgLSBQQ0lfSU9WIFs9bl0g
JiYgUENJIFs9eV0gCj4gICDilIIgICAtIFBDSV9QUkkgWz1uXSAmJiBQQ0kgWz15XeKUgiAgCj4g
ICDilIIgICAtIFBDSV9QQVNJRCBbPW5dICYmIFBDSSBbPXldIOKUgiAgCj4gICDilIIgICAtIEFN
RF9JT01NVSBbPW5dICYmIElPTU1VX1NVUFBPUlQgWz15XSAmJiBYODZfNjQgJiYgUENJIFs9eV0g
JiYgQUNQSSBbPXldCgpodHRwczovL2xrbWwua2VybmVsLm9yZy9yLzIwMTkwOTAzMDYzMDI4LjZy
eXVrNWRtYW9oaTJmcWFAd2lsbGllLXRoZS10cnVjawoKV2lsbAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
