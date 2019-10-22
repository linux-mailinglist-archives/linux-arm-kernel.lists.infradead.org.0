Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40F8E034E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 13:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRyc65gQ8j1af80ZAWCCKeiPIrT27c/y2VvcEzkJM44=; b=WQieuNSfVhSevp
	W42umu71h0WrquxZM4iJ+yrgY9PnqYfDiFH/GwRGhEuvEo0SxgeAtHEATh/+olGCElsg4jx4k8EkG
	CVF1VeEQuxGY3nO9uHUwo+qbDLvyiXZzAX7XgEfhVJPW9Fbku7ipdO6+fWrJl4tTKNfY6lW2h2VMk
	73YinwNAEhoUqjzeMqjvSxUUohILvtTAKQcbSlMqRcElLezuK6O0MQmsW6mf7nxSqJDrUsFixwpbH
	Z2zxUyefpFOVkaEi2NaZ5kch0L1TFDSefio6l04D9K/1p2qzXc7aTzc6VyWz5MKBkND+27SHQkEyY
	nsjxcp37RsHJYJMdqcRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMscS-000409-TQ; Tue, 22 Oct 2019 11:46:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMscI-0003zV-I9
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 11:46:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9MBk78K081386;
 Tue, 22 Oct 2019 06:46:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571744767;
 bh=D8Xr36FkHE114oLNdhxs8VF7GbCwyndapIYX2707LgU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gZbLaC6QZ+CqLi7kfRJOAAKHSHqz7JqJcfixVJagdPBqB8/yM/ig1qGVaSdgGQFC7
 ZucfhMxwgH52ce1n/sXJXjdYlmSzY9+pFUo1NTxxIOiccoVIXiVuyEqWZVfN3Iclge
 4BuMMXC+wsAPGudnwMjoGGgDtjcBN2uGGiPQZKiQ=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9MBjahZ023272
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 22 Oct 2019 06:45:36 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 22
 Oct 2019 06:45:26 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 22 Oct 2019 06:45:26 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9MBj2NU038532;
 Tue, 22 Oct 2019 06:45:03 -0500
Subject: Re: [PATCH v3 07/14] dt-bindings: dma: ti: Add document for K3 UDMA
To: Rob Herring <robh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-8-peter.ujfalusi@ti.com> <20191010175232.GA24556@bogus>
 <ef07299b-eb43-d582-adb8-46f46681f9a5@ti.com>
 <d53f3bd7-d331-33c8-5232-c8f3cc9ac708@ti.com>
 <CAL_JsqKWVLMa=AJ+SNHjMRFpCk6cM=UPBgmmHVonOQ03a_zxXQ@mail.gmail.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <a844b84c-8dc7-6562-1f66-e4d625fa42e6@ti.com>
Date: Tue, 22 Oct 2019 14:46:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKWVLMa=AJ+SNHjMRFpCk6cM=UPBgmmHVonOQ03a_zxXQ@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_044622_702941_098F6740 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Vinod <vkoul@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNy8xMC8yMDE5IDE3LjAzLCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBUdWUsIE9jdCAx
NSwgMjAxOSBhdCAxMjoyOSBQTSBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGkuY29t
PiB3cm90ZToKPj4KPj4gUm9iLAo+Pgo+PiBPbiAxMC8xMS8xOSAxMDozMCBBTSwgUGV0ZXIgVWpm
YWx1c2kgd3JvdGU6Cj4+Pgo+Pj4gSSBoYXZlIGFscmVhZHkgbW92ZWQgdGhlIFRSIHZzIFBhY2tl
dCBtb2RlIGNoYW5uZWwgc2VsZWN0aW9uLCB3aGljaCBkb2VzCj4+PiBtYWtlIHNlbnNlIGFzIGl0
IHdhcyBMaW51eCdzIGNob2ljZSB0byB1c2UgVFIgZm9yIGNlcnRhaW4gY2FzZXMuCj4+Pgo+Pj4g
SWYgSSBtb3ZlIHRoZXNlIHRvIGNvZGUgdGhlbiB3ZSBuZWVkIHRvIGhhdmUgYmlnIHRhYmxlcwo+
Pj4gc3RydWN0IHBzaWxfY29uZmlnIGFtNjU0X3BzaWxbMzI3NjddID0ge307Cj4+PiBzdHJ1Y3Qg
cHNpbF9jb25maWcgajcyMWVfcHNpbFszMjc2N10gPSB7fTsKPj4KPj4gQWZ0ZXIgdGhpbmtpbmcg
YWJvdXQgdGhpcyBhIGJpdCBtb3JlLCBJIHRoaW5rIHdlIGNhbiBtb3ZlIGFsbCB0aGUgUFNJLUwK
Pj4gZW5kcG9pbnQgY29uZmlndXJhdGlvbiB0byB0aGUga2VybmVsIGFzIG5vdCBhbGwgdGhlIDMy
NzY3IHRocmVhZHMgYXJlCj4+IGFjdHVhbGx5IGluIHVzZS4gU3VyZSBpdCBpcyBnb2luZyB0byBi
ZSBzb21lIGFtb3VudCBvZiBzdGF0aWMgZGF0YSBpbgo+PiB0aGUga2VybmVsLCBidXQgaXQgaXMg
YW4gYWNjZXB0YWJsZSBjb21wcm9taXNlLgo+Pgo+PiBUaGUgRE1BIGJpbmRpbmcgY2FuIGxvb2sg
bGlrZSB0aGlzOgo+Pgo+PiBkbWFzID0gPCZtYWluX3VkbWFwIDB4YzQwMD4sCj4+ICAgICAgICA8
Jm1haW5fdWRtYXAgMHg0NDAwPjsKPj4gZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKPj4KPj4gb3IK
Pj4gZG1hcyA9IDwmbWFpbl91ZG1hcCAweDQ0MDAgVURNQV9ESVJfVFg+LAo+PiAgICAgICAgPCZt
YWluX3VkbWFwIDB4NDQwMCBVRE1BX0RJUl9SWD47Cj4+IGRtYS1uYW1lcyA9ICJ0eCIsICJyeCI7
Cj4+Cj4+IElmIEkga2VlcCB0aGUgZGlyZWN0aW9uLgo+PiAweGM0MDAgaXMgZGVzdGluYXRpb24g
SUQsIHdoaWNoIGlzIDB4NDQwMCB8IDB4ODAwMCBhcyBwZXIgUFNJLUwKPj4gc3BlY2lmaWNhdGlv
bi4KPj4gSW4gdGhlIFRSTSBvbmx5IHRoZSBzb3VyY2UgdGhyZWFkcyBjYW4gYmUgZm91bmQgYXMg
YSBtYXAgKHRocmVhZCBJRHMgPAo+PiAweDdmZmYpLCBidXQgdGhlIGJpbmRpbmcgZG9jdW1lbnQg
Y2FuIGNvdmVyIHRoaXMuCj4+Cj4+IFRoaXMgd2F5IHdlIGRvbid0IG5lZWQgYW5vdGhlciBkdHNp
IGZpbGUgYW5kIEkgY2FuIGNyZWF0ZSB0aGUgbWFwIGluIHRoZQo+PiBrZXJuZWwuCj4+Cj4+IFRo
aXMgd2lsbCBoaWRlIHNvbWUgZGV0YWlscyBvZiB0aGUgSFcgZnJvbSBEVCwgYnV0IHNpbmNlIHRo
ZSBQU0ktTAo+PiB0aHJlYWQgY29uZmlndXJhdGlvbiBpcyBzdGF0aWMgaW4gaGFyZHdhcmUgSSBi
ZWxpZXZlIGl0IGlzIGFjY2VwdGFibGUuCj4+Cj4+IEhvd2V2ZXIgd2Ugc3RpbGwgaGF2ZSB1bmNv
dmVyZWQgZmVhdHVyZXMgaW4gdGhlIGJpbmRpbmcgb3IgaW4gY29kZSwgbGlrZQo+PiBhIGNhc2Ug
d2hlbiB0aGUgUlggZG9lcyBub3QgaGF2ZSBhY2Nlc3MgdG8gdGhlIERNQSBjaGFubmVsLCBvbmx5
IGZsb3dzLgo+PiBOb3Qgc3VyZSBpZiBJIHNob3VsZCByZXNlcnZlIHRoZSBkaXJlY3Rpb24gcGFy
YW1ldGVyIGFzIGFuIGluZGljYXRpb24gdG8KPj4gdGhpcyBvciBmaW5kIG90aGVyIHdheS4KPj4g
QmFzaWNhbGx5IHdlIGNvbW11bmljYXRlIG9uIHRoZSBnaXZlbiBQU0ktTCB0aHJlYWQgd2l0aG91
dCBoYXZpbmcgYSBETUEKPj4gY2hhbm5lbCBhcyBvdGhlciBjb3JlIGlzIG93bmluZyB0aGUgY2hh
bm5lbC4KPj4KPj4gV2hhdCBkbyB5b3UgdGhpbms/Cj4gCj4gU2VlbXMgbGlrZSBhIHJlYXNvbmFi
bGUgc29sdXRpb24KCk9LLCBJJ2xsIGdvIGFoZWFkIGFuZCBpbXBsZW1lbnQgdGhlIFBTSS1MIHRo
cmVhZCByZXByZXNlbnRhdGlvbiB0byB0aGUKa2VybmVsLgoKPiB0aG91Z2ggSSBkb24ndCByZWFs
bHkgZm9sbG93IHRoZSBsYXN0IGlzc3VlLgoKSW4gdGhpcyBETUEgZm9yIFJYIChERVZfVE9fTUVN
KSB3ZSBuZWVkIHRoZSBzb3VyY2UgdGhyZWFkIHBhaXJlZCB0bwpVRE1BUCByZWNlaXZlIGNoYW5u
ZWwgdG8gZ2V0IGRhdGEgZmxvd2luZy4KVGhlIGFycml2aW5nIHBhY2tldHMgd2l0aGluIFBTSS1M
IGFyZSBkaXJlY3RlZCBieSBmbG93SUQgdG8gYSBzcGVjaWZpYwpyZWNlaXZlIGZsb3cgY29uZmln
dXJhdGlvbiB3aGljaCBkZXNjcmliZSB0aGUgcmluZyBmcm9tIHdoZXJlIFVETUFQCnNob3VsZCBw
aWNrIHVwIHRoZSBkZXNjcmlwdG9yIGFuZCB0byB3aGVyZSB0aGUgY29tcGxldGVkIG9uZSBzaG91
bGQgYmUKcGxhY2VkIGZvciB0aGUgU1cuCgpUaGVyZSBhcmUgY2FzZXMgd2hlbiBMaW51eCBmb3Ig
ZXhhbXBsZSBkb2VzIG5vdCBoYXZlIGFjY2VzcyB0byB0aGUKcmVjZWl2ZSBjaGFubmVsIGF0IGFs
bCwgaXQgaXMgaGFuZGxlZCBieSBhbm90aGVyIGNvcmUsIGJ1dCBjZXJ0YWluCnJlY2VpdmUgZmxv
dyhzKSBhcmUgZ2l2ZW4gdG8gTGludXggc28gdGhleSBjYW4gcmVjZWl2ZSBwYWNrZXRzLgpJbiB0
aGlzIGNhc2Ugd2UgZG8gUlggRE1BIHdpdGhvdXQgYWN0dWFsIERNQSBjaGFubmVsLgoKLSBQw6l0
ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgw
IEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0Rv
bWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
