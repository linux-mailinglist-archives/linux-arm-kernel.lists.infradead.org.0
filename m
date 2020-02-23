Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD9B16981B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 15:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0NEWg0u7OWlUpch0j3oFbujvOw2I1knby9LxUw2qzM=; b=ApWLD5DvYW1B/e
	OfLFoz59QRPxTSq1/bToYnp5iDmTorf7zwnrRfYKNezpCjy5E2jDgmVkCrcoNUw/0+VZi3OTJFKQ/
	c8UGCVfghApTyGoWNfk8EoaJdNYFfE6ZpMTpJkoLrSiRGYE5uVFnP00GPhoGrJoW1QAqmMZ3Y9i7V
	FJSN/vUE2o3IDmgcdoSjUjxKQpWdDtMZ/jLJ128P6YKALQUHepwYIfzjHZtbxoIR1mtLPb6XauweX
	CUVnIrB3eYYneJHxxOxhktqDJWB/G3MILnoNdCq4o8J8Wg2jRhlePrH1AvxWWTdY/sfJRb4n3FExP
	lPMdrxmQsSAoyGCB26cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5sOf-00068m-7e; Sun, 23 Feb 2020 14:38:17 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5sOR-00068I-Ht
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 14:38:05 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48QSTx58wTz1rcBT;
 Sun, 23 Feb 2020 15:37:57 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48QSTx4R7hz1r0cR;
 Sun, 23 Feb 2020 15:37:57 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id DRg4d07ql-mS; Sun, 23 Feb 2020 15:37:56 +0100 (CET)
X-Auth-Info: qbc25jYxOW4DR+2yuAUozJmjPr9Hme7XPCIo3LNOuy0=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sun, 23 Feb 2020 15:37:56 +0100 (CET)
Subject: Re: [PATCH V2 6/6] ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1
 SoM and PDK2 board
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200119191143.50033-1-marex@denx.de>
 <20200119191143.50033-6-marex@denx.de>
 <1b288811-8ffb-a150-71ef-4c006e6d5740@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <1ec643e9-217d-c83d-793f-c05d6c4502bd@denx.de>
Date: Sun, 23 Feb 2020 15:37:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <1b288811-8ffb-a150-71ef-4c006e6d5740@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_063803_744231_DB357D91 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMi8xMC8yMCA1OjM1IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IEhpIE1hcmVrCgpI
aSwKCj4gT24gMS8xOS8yMCA4OjExIFBNLCBNYXJlayBWYXN1dCB3cm90ZToKPj4gQWRkIHN1cHBv
cnQgZm9yIERIIEVsZWN0cm9uaWNzIERIQ09NIFNvTSBhbmQgUERLMiByZXYuIDQwMCBjYXJyaWVy
Cj4+IGJvYXJkLiBUaGlzIGlzIGFuIFNvTSB3aXRoIFNUTTMyTVAxNTdDIGFuZCBhbiBldmFsdWF0
aW9uIGtpdC4gVGhlCj4+IGJhc2Vib2FyZCBwcm92aWRlcyBFdGhlcm5ldCwgVUFSVCwgVVNCLCBD
QU4gYW5kIG9wdGlvbmFsIGRpc3BsYXkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0
IDxtYXJleEBkZW54LmRlPgo+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1
ZUBzdC5jb20+Cj4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5j
b20+Cj4+IENjOiBQYXRyaWNlIENob3RhcmQgPHBhdHJpY2UuY2hvdGFyZEBzdC5jb20+Cj4+IENj
OiBQYXRyaWNrIERlbGF1bmF5IDxwYXRyaWNrLmRlbGF1bmF5QHN0LmNvbT4KPj4gQ2M6IGxpbnV4
LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPj4gVG86IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiAtLS0KPj4gVjI6IC0gQWRkIHN0bTMybXAxIGludG8g
dGhlIHN1YmplY3QgYW5kIGNvbW1pdCBtZXNzYWdlCj4+IMKgwqDCoMKgIC0gU29ydCBEVCBhbHBo
YW51bWVyaWNhbGx5Cj4+IMKgwqDCoMKgIC0gTW92ZSBhbGwgcGluY29udHJvbCBlbnRyaWVzIGlu
dG8gc3RtMzJtcDE1LXBpbmN0cmwuZHRzaQo+PiAtLS0KPiAKPiBUaGFua3MgdG8gYWRkIGEgbmV3
IFNUTTMyIGJvYXJkLgo+IAo+IFNlcmllcyBhcHBsaWVkIG9uIHN0bTMyLW5leHQuCgpIb3cgY29t
ZSB0aGVzZSBhcmUgbm90IGluIG5leHQvbWFzdGVyIHlldCwgaXMgdGhlIGJyYW5jaCBub3QgYmVp
bmcKbWVyZ2VkIGludG8gbmV4dCByZWd1bGFybHkgPwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
