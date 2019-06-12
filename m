Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B67842A43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNALAsy4NW3965ywnrQsngHYnT2AWW4hnid/imgBQAA=; b=qgiQbsmnLdIifp
	UlcjpRbMbQwrcQ8cpP8R6YqXPZkwcoueEp0iMGKXwIuzubxRh3rzsXRIAYDj1vdqrlWT9AzOAKX0F
	wIAOsSicru9qnog5siFdm6DZGJYY4dgrkAuws37jxtMJ4fR3+3R3jPEGUnUR6Y+a1QL8ZmTqyxKqx
	bV4TwEe/qvE126cS+Dmql9dbxu3A0JBzFvKQcZv311S2eRIMzs+0LiBBd8LnHNYl2Ul6Gy/QdiBeG
	/5N0o8Seqf+oLfs04KTdhjKO7l0GzJMLKV6qpn9Y/nb3scQ6XdVTkrTcx+jh42cuJwi9Hj5oHiSSh
	CG8M/FRMPlGmFTV5QNXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4p3-0003wR-9p; Wed, 12 Jun 2019 15:05:57 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4oY-0003vH-LV
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:05:28 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 49BFFC1EB1F5;
 Wed, 12 Jun 2019 15:05:22 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-85.bos.redhat.com [10.18.17.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E70E377B;
 Wed, 12 Jun 2019 15:05:17 +0000 (UTC)
Subject: Re: [PATCH v2 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, "liwei (GF)" <liwei391@huawei.com>
References: <20190329152006.110370-1-alex.kogan@oracle.com>
 <20190329152006.110370-4-alex.kogan@oracle.com>
 <cc3eee8c-5212-7af5-c932-897ab8f3f8bf@huawei.com>
 <54241445-458C-4AE2-840B-6DFCCD410399@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <a52a5e25-2b71-b6d9-3fa1-fb43bae1cbc1@redhat.com>
Date: Wed, 12 Jun 2019 11:05:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <54241445-458C-4AE2-840B-6DFCCD410399@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Wed, 12 Jun 2019 15:05:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_080526_744769_AEC14B07 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, arnd@arndb.de,
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 Rahul Yadav <rahul.x.yadav@oracle.com>, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi8xMi8xOSAxMjozOCBBTSwgQWxleCBLb2dhbiB3cm90ZToKPiBIaSwgV2VpLgo+Cj4+IE9u
IEp1biAxMSwgMjAxOSwgYXQgMTI6MjIgQU0sIGxpd2VpIChHRikgPGxpd2VpMzkxQGh1YXdlaS5j
b20+IHdyb3RlOgo+Pgo+PiBIaSBBbGV4LAo+Pgo+PiBPbiAyMDE5LzMvMjkgMjM6MjAsIEFsZXgg
S29nYW4gd3JvdGU6Cj4+PiBJbiBDTkEsIHNwaW5uaW5nIHRocmVhZHMgYXJlIG9yZ2FuaXplZCBp
biB0d28gcXVldWVzLCBhIG1haW4gcXVldWUgZm9yCj4+PiB0aHJlYWRzIHJ1bm5pbmcgb24gdGhl
IHNhbWUgbm9kZSBhcyB0aGUgY3VycmVudCBsb2NrIGhvbGRlciwgYW5kIGEKPj4+IHNlY29uZGFy
eSBxdWV1ZSBmb3IgdGhyZWFkcyBydW5uaW5nIG9uIG90aGVyIG5vZGVzLiBBdCB0aGUgdW5sb2Nr
IHRpbWUsCj4+PiB0aGUgbG9jayBob2xkZXIgc2NhbnMgdGhlIG1haW4gcXVldWUgbG9va2luZyBm
b3IgYSB0aHJlYWQgcnVubmluZyBvbgo+Pj4gdGhlIHNhbWUgbm9kZS4gSWYgZm91bmQgKGNhbGwg
aXQgdGhyZWFkIFQpLCBhbGwgdGhyZWFkcyBpbiB0aGUgbWFpbiBxdWV1ZQo+Pj4gYmV0d2VlbiB0
aGUgY3VycmVudCBsb2NrIGhvbGRlciBhbmQgVCBhcmUgbW92ZWQgdG8gdGhlIGVuZCBvZiB0aGUK
Pj4+IHNlY29uZGFyeSBxdWV1ZSwgYW5kIHRoZSBsb2NrIGlzIHBhc3NlZCB0byBULiBJZiBzdWNo
IFQgaXMgbm90IGZvdW5kLCB0aGUKPj4+IGxvY2sgaXMgcGFzc2VkIHRvIHRoZSBmaXJzdCBub2Rl
IGluIHRoZSBzZWNvbmRhcnkgcXVldWUuIEZpbmFsbHksIGlmIHRoZQo+Pj4gc2Vjb25kYXJ5IHF1
ZXVlIGlzIGVtcHR5LCB0aGUgbG9jayBpcyBwYXNzZWQgdG8gdGhlIG5leHQgdGhyZWFkIGluIHRo
ZQo+Pj4gbWFpbiBxdWV1ZS4gRm9yIG1vcmUgZGV0YWlscywgc2VlIGh0dHBzOi8vdXJsZGVmZW5z
ZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fYXJ4aXYub3JnX2Fic18xODEwLjA1
NjAwJmQ9RHdJQ2JnJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJX0pu
RSZyPUh2aGszRjRvbWRDay1HRTFQVE9tM0tuMEE3QXBXT1oyYVpMVHVWeEZLNGsmbT1VN21mVGJZ
ajFyMlRlMkJCVVVOYlZyUlB1VGFfdWpscFI0R1pmVXNyR1RNJnM9RHc0TzFFbmlGLW5kZTRmcDZS
QTlJU2xTTU9qV3VxZVI5T1MxRzBpYXVqMCZlPS4KPj4+Cj4+PiBOb3RlIHRoYXQgdGhpcyB2YXJp
YW50IG9mIENOQSBtYXkgaW50cm9kdWNlIHN0YXJ2YXRpb24gYnkgY29udGludW91c2x5Cj4+PiBw
YXNzaW5nIHRoZSBsb2NrIHRvIHRocmVhZHMgcnVubmluZyBvbiB0aGUgc2FtZSBub2RlLiBUaGlz
IGlzc3VlCj4+PiB3aWxsIGJlIGFkZHJlc3NlZCBsYXRlciBpbiB0aGUgc2VyaWVzLgo+Pj4KPj4+
IEVuYWJsaW5nIENOQSBpcyBjb250cm9sbGVkIHZpYSBhIG5ldyBjb25maWd1cmF0aW9uIG9wdGlv
bgo+Pj4gKE5VTUFfQVdBUkVfU1BJTkxPQ0tTKSwgd2hpY2ggaXMgZW5hYmxlZCBieSBkZWZhdWx0
IGlmIE5VTUEgaXMgZW5hYmxlZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEtvZ2FuIDxh
bGV4LmtvZ2FuQG9yYWNsZS5jb20+Cj4+PiBSZXZpZXdlZC1ieTogU3RldmUgU2lzdGFyZSA8c3Rl
dmVuLnNpc3RhcmVAb3JhY2xlLmNvbT4KPj4+IC0tLQo+Pj4gYXJjaC94ODYvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICAgICB8ICAxNCArKysKPj4+IGluY2x1ZGUvYXNtLWdlbmVyaWMvcXNwaW5s
b2NrX3R5cGVzLmggfCAgMTMgKysrCj4+PiBrZXJuZWwvbG9ja2luZy9tY3Nfc3BpbmxvY2suaCAg
ICAgICAgIHwgIDEwICsrCj4+PiBrZXJuZWwvbG9ja2luZy9xc3BpbmxvY2suYyAgICAgICAgICAg
IHwgIDI5ICsrKysrLQo+Pj4ga2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrX2NuYS5oICAgICAgICB8
IDE3MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+PiA1IGZpbGVzIGNoYW5n
ZWQsIDIzNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4gY3JlYXRlIG1vZGUgMTAw
NjQ0IGtlcm5lbC9sb2NraW5nL3FzcGlubG9ja19jbmEuaAo+Pj4KPj4gKFNOSVApCj4+PiArCj4+
PiArc3RhdGljIF9fYWx3YXlzX2lubGluZSBpbnQgZ2V0X25vZGVfaW5kZXgoc3RydWN0IG1jc19z
cGlubG9jayAqbm9kZSkKPj4+ICt7Cj4+PiArCXJldHVybiBkZWNvZGVfY291bnQobm9kZS0+bm9k
ZV9hbmRfY291bnQrKyk7Cj4+IFdoZW4gbmVzdGluZyBsZXZlbCBpcyA+IDQsIGl0IHdvbid0IHJl
dHVybiBhIGluZGV4ID49IDQgaGVyZSBhbmQgdGhlIG51bWEgbm9kZSBudW1iZXIKPj4gaXMgY2hh
bmdlZCBieSBtaXN0YWtlLiBJdCB3aWxsIGdvIGludG8gYSB3cm9uZyB3YXkgaW5zdGVhZCBvZiB0
aGUgZm9sbG93aW5nIGJyYW5jaC4KPj4KPj4KPj4gCS8qCj4+IAkgKiA0IG5vZGVzIGFyZSBhbGxv
Y2F0ZWQgYmFzZWQgb24gdGhlIGFzc3VtcHRpb24gdGhhdCB0aGVyZSB3aWxsCj4+IAkgKiBub3Qg
YmUgbmVzdGVkIE5NSXMgdGFraW5nIHNwaW5sb2Nrcy4gVGhhdCBtYXkgbm90IGJlIHRydWUgaW4K
Pj4gCSAqIHNvbWUgYXJjaGl0ZWN0dXJlcyBldmVuIHRob3VnaCB0aGUgY2hhbmNlIG9mIG5lZWRp
bmcgbW9yZSB0aGFuCj4+IAkgKiA0IG5vZGVzIHdpbGwgc3RpbGwgYmUgZXh0cmVtZWx5IHVubGlr
ZWx5LiBXaGVuIHRoYXQgaGFwcGVucywKPj4gCSAqIHdlIGZhbGwgYmFjayB0byBzcGlubmluZyBv
biB0aGUgbG9jayBkaXJlY3RseSB3aXRob3V0IHVzaW5nCj4+IAkgKiBhbnkgTUNTIG5vZGUuIFRo
aXMgaXMgbm90IHRoZSBtb3N0IGVsZWdhbnQgc29sdXRpb24sIGJ1dCBpcwo+PiAJICogc2ltcGxl
IGVub3VnaC4KPj4gCSAqLwo+PiAJaWYgKHVubGlrZWx5KGlkeCA+PSBNQVhfTk9ERVMpKSB7Cj4+
IAkJd2hpbGUgKCFxdWV1ZWRfc3Bpbl90cnlsb2NrKGxvY2spKQo+PiAJCQljcHVfcmVsYXgoKTsK
Pj4gCQlnb3RvIHJlbGVhc2U7Cj4+IAl9Cj4gR29vZCBwb2ludC4KPiBUaGlzIHBhdGNoIGRvZXMg
bm90IGhhbmRsZSBjb3VudCBvdmVyZmxvd3MgZ3JhY2VmdWxseS4KPiBJdCBjYW4gYmUgZWFzaWx5
IGZpeGVkIGJ5IGFsbG9jYXRpbmcgbW9yZSBiaXRzIGZvciB0aGUgY291bnQg4oCUIHdlIGRvbuKA
mXQgcmVhbGx5IG5lZWQgMzAgYml0cyBmb3IgI05VTUEgbm9kZXMuCgpBY3R1YWxseSwgdGhlIGRl
ZmF1bHQgc2V0dGluZyB1c2VzIDIgYml0cyBmb3IgNC1sZXZlbCBuZXN0aW5nIGFuZCAxNApiaXRz
IGZvciBjcHUgbnVtYmVycy4gVGhhdCBtZWFucyBpdCBjYW4gc3VwcG9ydCB1cCB0byAxNmstMSBj
cHVzLiBJdCBpcwphIGxpbWl0IHRoYXQgaXMgbGlrZWx5IHRvIGJlIGV4Y2VlZGVkIGluIHRoZSBm
b3Jlc2VlYWJsZSBmdXR1cmUuCnFzcGlubG9jayBhbHNvIHN1cHBvcnRzIGFuIGFkZGl0aW9uYWwg
bW9kZSB3aXRoIDIxIGJpdHMgdXNlZCBmb3IgY3B1Cm51bWJlcnMuIFRoYXQgY2FuIHN1cHBvcnQg
dXAgdG8gMk0tMSBjcHVzLiBIb3dldmVyLCB0aGlzIG1vZGUgd2lsbCBiZSBhCmxpdHRsZSBiaXQg
c2xvd2VyLiBUaGF0IGlzIHdoeSB3ZSBkb24ndCB3YW50IHRvIHVzZSBtb3JlIHRoYW4gMiBiaXRz
IGZvcgpuZXN0aW5nIGFzIEkgaGF2ZSBuZXZlciBzZWUgbW9yZSB0aGFuIDIgbGV2ZWwgb2YgbmVz
dGluZyB1c2VkIGluIG15CnRlc3RpbmcuIFNvIGl0IGlzIGhpZ2hseSB1bmxpa2VseSB3ZSB3aWxs
IGV2ZXIgaGl0IG1vcmUgdGhhbiA0IGxldmVscy4gSQphbSBub3Qgc2F5aW5nIHRoYXQgaXQgaXMg
aW1wb3NzaWJsZSwgdGhvdWdoLgoKQ2hlZXJzLApMb25nbWFuCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
