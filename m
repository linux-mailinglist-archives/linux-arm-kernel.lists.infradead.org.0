Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11AD191299
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsLuvlHMTr/lyKXfbbWEMUv6i0GHOzjL2m/LzXhGO5k=; b=anYrvfoBkvtO56
	R2qXm/nXXrFifYJTjW5n8IlgkRpHEivkopGE9QG73aSJS2vbewANbcKgkzr/oKgGVQ9cyT3sT7GHG
	5hG4Rdp9CVpcaAHb10N7Nx0has/bGPlmpvKh7RmAF0qW7yzoEKfQ1SPe88cyKg6fFH9mKdHHaKJsw
	CZ/T+Br0WhtI2AWRbKs0+txLA9+kdv1HXo8yrSQSJSCNt3Y2QGZLtxQrds0rHeBt5aGEvbdAq2Xjw
	2aLXMWgwqYwvtnszwfx/DRa0g9hgXX5zxL4F/E2yejoYJpfFIvE8flt26slirwHRIntDoffA8DPlH
	rhzaD7INBKRBKRsTuTIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkL5-0004AQ-1C; Tue, 24 Mar 2020 14:15:31 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkKw-00049z-CE
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:15:24 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48mtYx6WR1z1rtjS;
 Tue, 24 Mar 2020 15:15:17 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48mtYx5zhVz1r0bx;
 Tue, 24 Mar 2020 15:15:17 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id rvO_KU7d9yq1; Tue, 24 Mar 2020 15:15:16 +0100 (CET)
X-Auth-Info: QVfDeN9qtYIB6gRNiFccyjUA4fN/jeOlM1sfP9RuI7c=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 24 Mar 2020 15:15:16 +0100 (CET)
Subject: Re: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200323023145.3345133-1-marex@denx.de>
 <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
 <4ffd8b7c-eb7d-83a4-3f6e-e156d3600532@denx.de>
 <c26637b2-7cf6-b7e2-3301-fafbbfde508e@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <028556ba-f088-bf04-4473-a69569157411@denx.de>
Date: Tue, 24 Mar 2020 15:15:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c26637b2-7cf6-b7e2-3301-fafbbfde508e@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_071522_567531_6652B307 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gMy8yNC8yMCAzOjA3IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IAo+IAo+IE9uIDMv
MjQvMjAgMjoyMiBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDMvMjQvMjAgMjowNCBQTSwg
QWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gMy8yMy8yMCAzOjMxIEFNLCBN
YXJlayBWYXN1dCB3cm90ZToKPj4+PiBUaGUgREggUERLMiBjYW4gYmUgcG9wdWxhdGVkIHdpdGgg
U29NIHdpdGggYW55IFNUTTMyTVAxNXggdmFyaWFudC4KPj4+PiBBZGQgdGhlIERUcyBkZXNjcmli
aW5nIHRoZSByZW1haW5pbmcgY29tYmluYXRpb25zLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTog
TWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4+Pj4gQ2M6IEFsZXhhbmRyZSBUb3JndWUgPGFs
ZXhhbmRyZS50b3JndWVAc3QuY29tPgo+Pj4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxp
bi5zdG0zMkBnbWFpbC5jb20+Cj4+Pj4gQ2M6IFBhdHJpY2UgQ2hvdGFyZCA8cGF0cmljZS5jaG90
YXJkQHN0LmNvbT4KPj4+PiBDYzogUGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxhdW5heUBz
dC5jb20+Cj4+Pj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20K
Pj4+PiBUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4gLS0tCj4+
Pj4gTk9URTogSXMgdGhlcmUgYSBiZXR0ZXIgd2F5IHRvIGRvIHRoaXMgdGhhbiB0byBoYXZlIHRo
aXMga2luZCBvZiBhCj4+Pj4gwqDCoMKgwqDCoGNvbWJpbmF0b3JpYWwgZXhwbG9zaW9uIG9mIERU
cyA/Cj4+Pgo+Pj4gSSBoYXZlIG5vIGJldHRlciBpZGVhLiBRdWVzdGlvbiB3YXMgdGhlIHNhbWUg
Zm9yIHN0bTMyIGJvYXJkcywgYW5kIEkKPj4+IGNob3NlIHRvIHRha2UgdGhpcyBvcHRpb24uCj4+
Cj4+IE9uZSBvcHRpb24gd291bGQgYmUgdG8ganVzdCBoYXZlIERUIGZvciB0aGUgbW9zdCBmZWF0
dXJlLWNvbXBsZXRlIG9wdGlvbgo+PiAoMTU3KSBhbmQgdGhlbiBoYXZlIFUtQm9vdCByZW1vdmUg
dGhlIG5vZGVzIGZvciBIVyB3aGljaCBpcyBub3QgcHJlc2VudAo+PiBvbiB0aGUgcGFydGljdWxh
ciBTb0Mgb3B0aW9uIGlmIGl0J3Mgb25lIG9mIHRoZSBtb3JlIGxpbWl0ZWQgb25lcyAoMTUzLAo+
PiAxNTEpLgo+Pgo+IAo+IFllcyBpdCB3YXMgYSBwb3NzaWJpbGl0eSB0aGF0IEkgZGlzY3Vzc2Vk
IHdpdGgga2V2aW4gSC4gYXQgdGhlIGxhdGVzdAo+IEVMQ0UgYnV0IGF0IHRoZSBlbmQgdGhlIGJl
c3Qgd2F5IHRvIGZvbGxvdyB3YXMgdG8gZW5oYW5jZSBudW1iZXIgb2YgZHRzCj4gZmlsZXMuIFRo
ZSBiZXN0IHdvdWxkIGJlIHRvIGhhdmUgZGVkaWNhdGVkIGZvbGRlcnMgYnV0IGl0IGlzIGFub3Ro
ZXIgc3RvcnkuCgpPciB1c2UgRFQgb3ZlcmxheXMgc29tZWhvdyA/IFUtQm9vdCBjYW4gYXBwbHkg
RFRPcyBvbnRvIERUIGJlZm9yZQpib290aW5nIExpbnV4LgoKSGF2aW5nIHRvbnMgb2YgRFRzIG9u
IGEgc3lzdGVtIGlzIGEgbG90IG9mIGR1cGxpY2F0aW9uLCBJIGRvbid0IHJlYWxseQpsaWtlIHRo
YXQuCgpCdXQgZm9yIHN0YXJ0ZXJzLCBmZWVsIGZyZWUgdG8gcmV2aWV3IHRoaXMgcGF0Y2guCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
