Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EF31484D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 13:05:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKnGXHzly/EBo5+bl2BuwwXDeg3WgwI5A6FJ0KcuV0Y=; b=ZgFUL48B6VD0Ah
	Ht/e2+YbdNLyTG+hSnxvZwDrDJJDz7u5j4aiFcSkGrWlpjx7mufDIz5rffe3DUTx2IvmgiMJmMpYQ
	EgB0mR1NJQt1JrQGBbEmwu74JuV0wwmDYPFcl9AbXr4A6qclO/f8heO2qlWSAM+/kO1deuKcExmie
	4edMbdzXre1dntvyMHxL9TDHU+LbDyHxIfjtnIcCgdlwKLDw73tn1ihUARpY5035fFbQyMWPkzgHk
	GlQxf/tOT5Y7V346nqCcxUWkU8zj6eZkgctfiPl5ILCh68FSkO5UpqRsq8kA6tpzv/M4eX9JsOzlM
	kj9dtkV4XjUJQt2zJ/DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxhv-0004wn-1Q; Fri, 24 Jan 2020 12:05:03 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxhh-0004vU-BI; Fri, 24 Jan 2020 12:04:50 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00OC4hFK113955;
 Fri, 24 Jan 2020 06:04:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579867484;
 bh=ZiaD4SnCdosS8nQj0oAGF73NcGkqbYROWitRkBVgCU4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=b2NNtPZdhbz/8dI8KJE8mwbYPflq+53YLKNqNwKLejvpXl5CuIO9xUin33ng/zQIU
 IOiNYbLMKRbk8RAJhx2jG+cB7ypZFiT5tyBZCj0gga5D4GcJMP0m3OWUVde3dbk3YC
 14sCzXFRdKiE44Lzr+EaVBexwcMsuhI9JBngGOWo=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00OC4hd2012138
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Jan 2020 06:04:43 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 24
 Jan 2020 06:04:43 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 24 Jan 2020 06:04:43 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00OC4fPg018694;
 Fri, 24 Jan 2020 06:04:41 -0600
Subject: Re: [PATCH for-next] arm64: defconfig: Set bcm2835-dma as built-in
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Ulf Hansson
 <ulf.hansson@linaro.org>
References: <C0400CAEQS8N.3P1J37PC0KU9F@linux-9qgx>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <86672a12-6b88-dba8-0945-b6321ccf28c3@ti.com>
Date: Fri, 24 Jan 2020 14:05:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <C0400CAEQS8N.3P1J37PC0KU9F@linux-9qgx>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_040449_488077_63C80F31 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyNC8wMS8yMDIwIDEzLjUxLCBOaWNvbGFzIFNhZW56IEp1bGllbm5lIHdyb3RlOgo+IEhp
IFBldGVyLAo+IAo+IE9uIEZyaSBKYW4gMjQsIDIwMjAgYXQgMTozMSBQTSwgUGV0ZXIgVWpmYWx1
c2kgd3JvdGU6Cj4+IEhpIE5pY29sYXMsCj4+Cj4+IE9uIDI0LzAxLzIwMjAgMTMuMTcsIE5pY29s
YXMgU2FlbnogSnVsaWVubmUgd3JvdGU6Cj4+PiBXaXRoIHRoZSBpbnRyb2R1Y3Rpb24gb2YgNzM4
OTg3YTFkNmYxICgibW1jOiBiY20yODM1OiBVc2UKPj4+IGRtYV9yZXF1ZXN0X2NoYW4oKSBpbnN0
ZWFkIGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoKSIpIHNkaG9zdC1iY20yODM1Cj4+PiBub3cg
d2FpdHMgZm9yIGl0cyBETUEgY2hhbm5lbCB0byBiZSBhdmFpbGFibGUgd2hlbiBkZWZpbmVkIGlu
IHRoZQo+Pj4gZGV2aWNlLXRyZWUgKGl0IHdvdWxkIHByZXZpb3VzbHkgZGVmYXVsdCB0byBQSU8p
LiBBbGJlaXQgdGhlIHJpZ2h0Cj4+PiBiZWhhdmlvdXIsIHRoZSBNTUMgaG9zdCBpcyBuZWVkZWQg
Zm9yIGJvb3RpbmcuIFNvIHRoaXMgbWFrZXMgc3VyZSB0aGUKPj4+IERNQSBjaGFubmVsIHNob3dz
IHVwIGluIHRpbWUuCj4+Pgo+Pj4gRml4ZXM6IDczODk4N2ExZDZmMSAoIm1tYzogYmNtMjgzNTog
VXNlIGRtYV9yZXF1ZXN0X2NoYW4oKSBpbnN0ZWFkIGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwo
KSIpCj4+Cj4+IGl0IGlzIG5vdCBhIGJ1ZywgaXQgaXMgYSBmZWF0dXJlIDspCj4gCj4gQWdyZWUs
IEknbSBqdXN0IGFmcmFpZCBvZiB5b3VyIHNlcmllcyBiZWluZyBwaWNrZWQgdXAgYnkgYSBzdGFi
bGUKPiByZWxlYXNlIHdpdGhvdXQgdGhpcyBwYXRjaC4gQnV0IG1heWJlIGl0J3Mgbm90IG5lY2Vz
c2FyeT8KCklmIHlvdSBuZWVkIE1NQyByb290ZnMgdGhlbiB0aGUgRE1BIG5lZWRzIHRvIGJlIGJ1
aWx0IGluIG9yIGhhdmUgaW5pdHJkCndpdGggdGhlIG1vZHVsZXMuClRoZSBkcml2ZXIgZXhwZWN0
cyB0byBoYXZlIERNQSBjaGFubmVsIGFuZCBpdCBpcyBnb2luZyB0byB3YWl0IGZvciBpdCB0bwph
cHBlYXIgdW5sZXNzIHRoZSByZXF1ZXN0IGZhaWxzLgoKV2l0aG91dCBtb3ZpbmcgdGhlIERNQSBh
cyBidWlsdCBpbiBhbmQgcmVtb3ZpbmcgdGhlIGRlZmVycmVkIHByb2JlCmhhbmRsaW5nIGZvcm0g
dGhlIE1NQyBkcml2ZXIsIG9uZSBjYW4ganVzdCByZW1vdmUgdGhlIERNQSBzdXBwb3J0IGZyb20K
dGhlIG1tYy1iY20yODM1IGFzIGl0IGlzIG5vdCB1c2VkIGF0IGFsbC4KCkkgd29uZGVyIHdoeSB0
aGlzIGlzIG5vdCBzaWduYWxlZCBieSBhdXRvbWF0ZWQgYm9vdCB0ZXN0aW5nLCBpZiBhbnkKZXhp
c3RzIGZvciBiY20yODM1LgoKPj4gWWVzLCBpZiBhIGRyaXZlciBoYXZlIERNQSBiaW5kaW5nIGFu
ZCBpdCBpcyBuZWVkZWQgZHVyaW5nIGJvb3QgdGhlbiB0aGUKPj4gRE1BIGRyaXZlciBhbHNvIG5l
ZWRzIHRvIGJlIGJ1aWx0IGluLgo+PiBJIGJlbGlldmUgaXQgaXMgZGVzaXJlZCB0byB1c2UgRE1B
IGluc3RlYWQgb2YgUElPIGluIGFueSBjYXNlIGZvciBNTUMKPj4gYW5kIGluIHRoZSBwYXN0IGJj
bTI4MzUgZGlkIG5vdCB1c2VkIERNQSBpZiBETUEgd2FzIG1vZHVsZSBhbmQgdGhlIE1NQwo+PiB3
YXMgYnVpbHQgaW4uCj4+Cj4+IFNvcnJ5IGZvciB0aGUgaW5jb252ZW5pZW5jZSB0aGlzIGNoYW5n
ZSBoYXMgY2F1c2VkIHRvIGJjbTI4MzUhCj4gCj4gTm90IGF0IGFsbCA6KQo+IAo+PiBSZXZpZXdl
ZC1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KPiAKPiBUaGFua3Ms
Cj4gTmljb2xhcwo+IAoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBv
cmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYx
NTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
