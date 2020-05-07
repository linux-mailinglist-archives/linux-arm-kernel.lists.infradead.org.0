Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DC21C9069
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mdMBQwHze8bo8jVUFZrFCR8jAuT2P3zfICAhMqF0ntc=; b=bJKt/+pe/28cOVsLflsXxK7a/
	pdHFqgSQ3BwhfciTwxWwum2M0aHSVPD2m44mj/czb+HGAnnKADds0pUABUPQj+Jif+RA3o9IbM7k2
	+gKkFLyhlA7dK/JZBQDlWS1sY+yIK7PI4yFauwu8+mRA/Nuj1y+A1qToqgiOsoehaVGPPtMYv+Zpe
	EnHXPdF1YVyUCCVPVMgQU/6XP4A8Xh1QnCpSGFLwQiqN1BRsH0s5nZ6Z9mh1D1Y7GlCHk0DR6DLME
	c6dH3cmg4XDSsCbMwZO3wdkQICzvtaMcDQS79HpM7hzHgsz6uQhOBFhZf2j9TqoqKM1x5BGEtTygQ
	XyMyzOuyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhlQ-0006Wm-Qe; Thu, 07 May 2020 14:44:40 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhlJ-0006LM-9z
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:44:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1588862674; x=1620398674;
 h=subject:from:to:cc:references:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=EhmFSjy/EWu4Wg4+Zq15DUvDdCItcyPtF3MIASQ4kuU=;
 b=M4OTKgJq4N0Nfsgx46R78VqGtJhPqvpZJO0eO4cgTde8Oh5TEAACg0oj
 14WyTvCr7hnSzBVKoZ7Sh4N3mewHXYjb+vJsLoy0K7e3f4jboe0t4LzTx
 fv2kFHdazjI0uV5fFwyVK+WIeHrP59piUDWmoVLDO+wGaop3K6sspEjJn E=;
IronPort-SDR: h8XIeuXXSd7VrbxtHgs+y2tea6p9HPut02kYVn9M57ENgzd7XyGo9x6DVBr7qaCk6mjPAvgIaI
 W815RWpqBTjg==
X-IronPort-AV: E=Sophos;i="5.73,364,1583193600"; d="scan'208";a="33576905"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2b-81e76b79.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 07 May 2020 14:44:26 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2b-81e76b79.us-west-2.amazon.com (Postfix) with ESMTPS
 id 9C75FA21EF; Thu,  7 May 2020 14:44:24 +0000 (UTC)
Received: from EX13D01EUB001.ant.amazon.com (10.43.166.194) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 7 May 2020 14:44:24 +0000
Received: from [10.85.103.159] (10.43.161.247) by EX13D01EUB001.ant.amazon.com
 (10.43.166.194) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 7 May 2020 14:44:14 +0000
Subject: Re: [PATCH v6 1/2] dt-bindings: edac: al-mc-edac: Amazon's Annapurna
 Labs Memory Controller EDAC
From: "Shenhar, Talel" <talel@amazon.com>
To: Borislav Petkov <bp@alien8.de>, <robh+dt@kernel.org>
References: <20200224134132.23924-1-talel@amazon.com>
 <20200224134132.23924-2-talel@amazon.com> <20200428110659.GA11272@zn.tnic>
 <5e2c5119-52e9-2c3c-e205-e661ba218fcb@amazon.com>
Message-ID: <07f3b407-fa91-f3b4-bc7c-9692a7b3c3c7@amazon.com>
Date: Thu, 7 May 2020 17:44:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5e2c5119-52e9-2c3c-e205-e661ba218fcb@amazon.com>
Content-Language: en-GB
X-Originating-IP: [10.43.161.247]
X-ClientProxiedBy: EX13D10UWA001.ant.amazon.com (10.43.160.216) To
 EX13D01EUB001.ant.amazon.com (10.43.166.194)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_074433_394400_29710A13 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.171.184.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benh@kernel.crashing.org,
 talel@amazon.com, hhhawa@amazon.com, gregkh@linuxfoundation.org,
 eitan@amazon.com, jonnyc@amazon.com, hanochu@amazon.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, dwmw@amazon.co.uk,
 catalin.marinas@arm.com, ronenk@amazon.com, mchehab@kernel.org,
 will@kernel.org, davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDUvNS8yMDIwIDE6NDQgUE0sIFNoZW5oYXIsIFRhbGVsIHdyb3RlOgo+Cj4gT24gNC8yOC8y
MDIwIDI6MDYgUE0sIEJvcmlzbGF2IFBldGtvdiB3cm90ZToKPj4gT24gTW9uLCBGZWIgMjQsIDIw
MjAgYXQgMDM6NDE6MzFQTSArMDIwMCwgVGFsZWwgU2hlbmhhciB3cm90ZToKPj4+IERvY3VtZW50
IEFtYXpvbidzIEFubmFwdXJuYSBMYWJzIE1lbW9yeSBDb250cm9sbGVyIEVEQUMgU29DIGJpbmRp
bmcuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogVGFsZWwgU2hlbmhhciA8dGFsZWxAYW1hem9uLmNv
bT4KPj4+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+Pj4gLS0t
Cj4+PiDCoCAuLi4vYmluZGluZ3MvZWRhYy9hbWF6b24sYWwtbWMtZWRhYy55YW1swqDCoMKgwqDC
oCB8IDUyIAo+Pj4gKysrKysrKysrKysrKysrKysrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDUy
IGluc2VydGlvbnMoKykKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCAKPj4+IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9lZGFjL2FtYXpvbixhbC1tYy1lZGFjLnlhbWwKPj4+Cj4+
PiBkaWZmIC0tZ2l0IAo+Pj4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZWRh
Yy9hbWF6b24sYWwtbWMtZWRhYy55YW1sIAo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZWRhYy9hbWF6b24sYWwtbWMtZWRhYy55YW1sCj4+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi4yMDUwNWYzN2M5ZjgKPj4+IC0tLSAvZGV2L251
bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9lZGFjL2FtYXpv
bixhbC1tYy1lZGFjLnlhbWwKPj4+IEBAIC0wLDAgKzEsNTIgQEAKPj4+ICsjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPj4gV0FSTklORzogRFQgYmluZGluZyBkb2N1bWVu
dHMgc2hvdWxkIGJlIGxpY2Vuc2VkIChHUEwtMi4wLW9ubHkgT1IgCj4+IEJTRC0yLUNsYXVzZSkK
Pj4gIzM2OiBGSUxFOiAKPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2VkYWMv
YW1hem9uLGFsLW1jLWVkYWMueWFtbDoxOgo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMC1vbmx5Cj4+Cj4+IEhpIFJvYiwgc2hvdWxkIEkgbGlzdGVuIHRvIGNoZWNrcGF0Y2gg
b3IgaWdub3JlIGl0Pwo+Cj4gUm9iIGFuZCBvdGhlciBkdCBmb2xrcywKPgo+IEluIGNvbnRpbnVl
IHRvIGRpc3NjdXNzaW9uIHdpdGggQm9yaXMgYmVsb3csIExvb2tpbmcgYXQgdGhlIGNoZWNrcGF0
Y2ggCj4gY2hlY2s6Cj4KPiDCoMKgIGlmICgkcmVhbGZpbGUgPX4gbUBeRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL0AgJiYKPiDCoMKgwqDCoMKgwqAgbm90ICRzcGR4X2xpY2Vuc2Ug
PX4vR1BMLTJcLjAuKkJTRC0yLUNsYXVzZS8pIHsKPgo+IEl0IHdhbnRzIHRoZSB3aG9sZSBzdHJp
bmcgIkdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UiIGFuZCBteSBvYXRjaCAKPiBoYXMgb25s
eSAiR1BMLTIuMC1vbmx5Ii4KPgo+IE5vdywgbG9va2luZyBhdCBhIGJ1bmNoIG9mIC55YW1sIERU
IGZpbGVzLCB0aGVyZSBhcmUgYWxsIGtpbmRzIG9mIAo+IGZvcm1hdHRpbmc6Cj4KPiAkIGdpdCBn
cmVwIC1oIFNQRFggKi55YW1sIHwgc29ydCB8IHVuaXEgLWMKPiDCoMKgwqDCoMKgIDMgMTojIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCkKPiDCoMKgwqAgMzEzIDE6IyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+IMKgwqDCoMKgwqAgOSAxOiMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEdQTC0yLjArCj4gwqDCoMKgwqDCoCAxIDE6IyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogKEdQTC0yLjAtb25seSkKPiDCoMKgwqDCoCA0MyAxOiMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAtb25seQo+IMKgwqDCoMKgwqAgNCAxOiMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgb3IgQlNELTItQ2xhdXNlKQo+IMKgwqDCoMKgwqAgMSAx
OiMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSBvciBCU0QtMi1DbGF1c2UK
PiDCoMKgwqAgMTQ4IDE6IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBP
UiBCU0QtMi1DbGF1c2UpCj4gwqDCoMKgwqAgMjUgMTojIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4gwqDCoMKgIDEwNCAxOiMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0yLUNsYXVzZSkKPiDCoMKgwqDCoMKgIDMg
MTojIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wIE9SIEJTRC0yLUNsYXVzZQo+IMKg
wqDCoMKgwqAgMiAxOiMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBCU0Qt
Mi1DbGF1c2UpCj4gwqDCoMKgwqDCoCAxIDE6IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQ
TC0yLjAtb3ItbGF0ZXIpCj4gwqDCoMKgwqDCoCA1IDE6IyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vci1sYXRlcgo+IMKgwqDCoMKgwqAgMyAxOiMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0yLUNsYXVzZSkKPiDCoMKgwqDCoMKgIDIg
MTojIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0yLUNs
YXVzZQo+IMKgwqDCoMKgwqAgMyAxOiMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4w
IE9SIE1JVCkKPiDCoMKgwqDCoMKgIDMgMTojIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMCsgT1IgTUlUKQo+IMKgwqDCoMKgwqAgMyAxOiMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IChHUEwtMi4wKyBPUiBYMTEpCj4KPiBBbmQgdGhlIHBhdGNoIHdoaWNoIGRpZCBydWxlIGlzOgo+
Cj4gY29tbWl0IDUwYzkyOTAwMjE0ZGQ5YTU1YmNlY2MzYzUzZTkwZDA3MmFmZjY1NjAKPiBBdXRo
b3I6IEx1Ym9taXIgUmludGVsPGxrdW5kcmFrQHYzLnNrPgo+IERhdGU6wqDCoCBNb24gQXByIDYg
MjA6MTE6MTMgMjAyMCAtMDcwMAo+Cj4gwqDCoMKgIGNoZWNrcGF0Y2g6IGNoZWNrIHByb3BlciBs
aWNlbnNpbmcgb2YgRGV2aWNldHJlZSBiaW5kaW5ncwo+Cj4gwqDCoMKgIEFjY29yZGluZyB0byBE
ZXZpY2V0cmVlIG1haW50YWluZXJzIChzZWUgTGluazogYmVsb3cpLCB0aGUgRGV2aWNldHJlZQo+
IMKgwqDCoCBiaW5kaW5nIGRvY3VtZW50cyBhcmUgcHJlZmVycmFibHkgbGljZW5zZWQgKEdQTC0y
LjAtb25seSBPUiAKPiBCU0QtMi1DbGF1c2UpLgo+Cj4gwqDCoMKgIExldCdzIGNoZWNrIHRoYXQu
wqAgVGhlIGFjdHVhbCBjaGVjayBpcyBhIGJpdCBtb3JlIHJlbGF4ZWQsIHRvIAo+IGFsbG93IG1v
cmUKPiDCoMKgwqAgbGliZXJhbCBidXQgY29tcGF0aWJsZSBsaWNlbnNpbmcgKGUuZy7CoCBHUEwt
Mi4wLW9yLWxhdGVyIE9SIAo+IEJTRC0yLUNsYXVzZSkuCj4KPgo+IFdpbGwgbG92ZSB5b3VyIGhl
bHAuCj4gVGhpcyBwYXRjaCBhbHJlYWR5IGhhdmUgeW91ciAoUm9iKSBSZXZpZXdlZC1ieSBzbyBC
b3JpcyBhbmQgbXlzZWxmIGFyZSAKPiB1bnN1cmUgd2hhdCBpcyB0aGUgcmlnaHQgdGhpbmcgdG8g
ZG8gbm93LgoKQm9yaXNsYXYsIGFmdGVyIGludGVybmFsIGRpc3NjdXNzaW9uLCB3ZSBhcmUgZ29v
ZCB0byBnbyB3aXRoIHRoZSBuZXcgCmxpY2Vuc2UuCgpUaGlzIHNoYWxsIGJlIHBhcnQgb2Ygdjcu
Cgo+Cj4gVGhhbmtzLAo+IFRhbGVsLgo+Cj4+Cj4+IC0tIAo+PiBSZWdhcmRzL0dydXNzLAo+PiDC
oMKgwqDCoCBCb3Jpcy4KPj4KPj4gaHR0cHM6Ly9wZW9wbGUua2VybmVsLm9yZy90Z2x4L25vdGVz
LWFib3V0LW5ldGlxdWV0dGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
