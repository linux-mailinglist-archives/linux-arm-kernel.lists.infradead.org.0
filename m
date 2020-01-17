Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8D01409AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:25:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XqLy1Y5w4SkckLY0t5HNui4GfMtJPEV/0ZWqONSv9wE=; b=ph99wKpyjf/iMywqUXhEHgoRk
	qpzLwrvJC2n6bQAkojInD+XPBUpcd3jAW4QAqeOq2trR90849cXXKlaZd7YD/RBFImm4+RGN4lDbU
	xt+atU8clR75usekRKp8gToJbvX5otC5Du3gpjW0oUnYI/Fwy+xD8NZ6hV41+VT2El9DsrFJsbZLX
	dtWxWKl72fW83zOVk/S/lDlpC8tqxL/4cTEw6ZUjqoXQM4VQ8uqfZiKo47pS5OhJmCs1TWnbLkpAo
	Z7i/ESL/BD3ONk0m1oqWsen2okwL4wIBdG9pvDHJrPZ/EYyizgktxjz0IrOJyUYj51L5+TlgIZxbH
	x6/yq1I2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQgL-0007Tv-RY; Fri, 17 Jan 2020 12:24:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQg9-0007TR-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:24:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FA5E11D4;
 Fri, 17 Jan 2020 04:24:42 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 395F23F6C4;
 Fri, 17 Jan 2020 04:24:41 -0800 (PST)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e5=2e0-?=
 =?UTF-8?Q?rc6-b260f5e=2ecki=3f=28arm-next=29?=
To: Will Deacon <will@kernel.org>
References: <cki.9F6EEFCFB1.I2MBV5DGSX@redhat.com>
 <1087562953.2535418.1579256657647.JavaMail.zimbra@redhat.com>
 <20200117103413.GA6144@willie-the-truck>
 <584b0c2e-bdc8-791f-cbc1-c27f3d6ed53d@arm.com>
 <20200117111344.GC6144@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <46bad996-b3c2-0828-a988-a91e561a43c1@arm.com>
Date: Fri, 17 Jan 2020 12:24:39 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200117111344.GC6144@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_042445_527476_C840EA09 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jianwen Ji <jiji@redhat.com>, Veronika Kabatova <vkabatov@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, catalin marinas <catalin.marinas@arm.com>,
 Yi Chen <yiche@redhat.com>, CKI Project <cki-project@redhat.com>,
 Xiumei Mu <xmu@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMS0xNyAxMToxMyBhbSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gT24gRnJpLCBKYW4g
MTcsIDIwMjAgYXQgMTA6NTc6NDlBTSArMDAwMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAy
MDIwLTAxLTE3IDEwOjM0IGFtLCBXaWxsIERlYWNvbiB3cm90ZToKPj4+IE9uIEZyaSwgSmFuIDE3
LCAyMDIwIGF0IDA1OjI0OjE3QU0gLTA1MDAsIFZlcm9uaWthIEthYmF0b3ZhIHdyb3RlOgo+Pj4+
IC0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0KPj4+Pj4gRnJvbTogIkNLSSBQcm9qZWN0IiA8
Y2tpLXByb2plY3RAcmVkaGF0LmNvbT4KPj4+Pj4gVG86IHdpbGxAa2VybmVsLm9yZywgImNhdGFs
aW4gbWFyaW5hcyIgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPiwgbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4+IENjOiAiWWkgQ2hlbiIgPHlpY2hlQHJlZGhhdC5jb20+
LCAiSmlhbndlbiBKaSIgPGppamlAcmVkaGF0LmNvbT4sICJIYW5nYmluIExpdSIgPGhhbGl1QHJl
ZGhhdC5jb20+LCAiWGl1bWVpIE11Igo+Pj4+PiA8eG11QHJlZGhhdC5jb20+Cj4+Pj4+IFNlbnQ6
IEZyaWRheSwgSmFudWFyeSAxNywgMjAyMCA0OjM1OjI3IEFNCj4+Pj4+IFN1YmplY3Q6IOKdjCBG
QUlMOiBUZXN0IHJlcG9ydCBmb3Iga2VybmVsIDUuNS4wLXJjNi1iMjYwZjVlLmNraQkoYXJtLW5l
eHQpCj4+Pj4+Cj4+Pj4+IFdlIHJhbiBhdXRvbWF0ZWQgdGVzdHMgb24gYSByZWNlbnQgY29tbWl0
IGZyb20gdGhpcyBrZXJuZWwgdHJlZToKPj4+Pj4KPj4+Pj4gICAgICAgICAgS2VybmVsIHJlcG86
Cj4+Pj4+ICAgICAgICAgIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC9hcm02NC9saW51eC5naXQKPj4+Pj4gICAgICAgICAgICAgICBDb21taXQ6IGIyNjBmNWVi
NGU1NyAtIE1lcmdlIGJyYW5jaCAnZm9yLW5leHQvY29yZScgaW50bwo+Pj4+PiAgICAgICAgICAg
ICAgIGZvci1rZXJuZWxjaQo+Pj4+Pgo+Pj4+PiBUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0
ZWQgdGVzdHMgYXJlIHByb3ZpZGVkIGJlbG93Lgo+Pj4+Pgo+Pj4+PiAgICAgICBPdmVyYWxsIHJl
c3VsdDogRkFJTEVEIChzZWUgZGV0YWlscyBiZWxvdykKPj4+Pj4gICAgICAgICAgICAgICAgTWVy
Z2U6IE9LCj4+Pj4+ICAgICAgICAgICAgICBDb21waWxlOiBPSwo+Pj4+PiAgICAgICAgICAgICAg
ICBUZXN0czogRkFJTEVECj4+Pj4+Cj4+Pj4+IEFsbCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBm
aWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBmb3IgZG93bmxvYWQgaGVyZToKPj4+Pj4KPj4+
Pj4gICAgIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBlbGluZXMvMzg3MjE5
Cj4+Pj4+Cj4+Pj4+IE9uZSBvciBtb3JlIGtlcm5lbCB0ZXN0cyBmYWlsZWQ6Cj4+Pj4+Cj4+Pj4+
ICAgICAgIGFhcmNoNjQ6Cj4+Pj4+ICAgICAgICDinYwgTmV0d29ya2luZyBVRFA6IHNvY2tldAo+
Pj4+PiAgICAgICAg4p2MIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIHR1bm5lbAo+Pj4+
Pgo+Pj4+Cj4+Pj4gYWZ0ZXIgeWVzdGVyZGF5J3MgZGlzY3Vzc2lvbnMgSSB0aG91Z2h0IEknZCBw
b2ludCBpdCBvdXQgc3BlY2lmaWNhbGx5Lgo+Pj4+IFRoZXNlIHRlc3RzIGRpZCByZWFsbHkgcmVw
b3J0IGEgZmFpbHVyZSBhbmQgdGhlIHJlc3VsdHMgYXJlIG5vdCBjYXVzZWQKPj4+PiBieSB0aGUg
aW5mcmEgaXNzdWUgd2Ugd2VyZSB0YWxraW5nIGFib3V0LiBJJ20gc3VyZSB0aGUgdGVzdCBtYWlu
dGFpbmVycwo+Pj4+IGNhbiBoZWxwIHdpdGggZmlndXJpbmcgb3V0IGlmIHRoaXMgaXMgc29tZXRo
aW5nIHRvIGJlIGNvbmNlcm5lZCB3aXRoLgo+Pj4KPj4+IFRoYW5rcywgVmVyb25pa2EgLS0gSSB3
YXMgYWJvdXQgdG8gbWFpbCB5b3UgdG8gYXNrISBXZSBxdWV1ZWQgc29tZSBJUAo+Pj4gY2hlY2tz
dW0gY2hhbmdlcyB5ZXN0ZXJkYXksIHNvIEkgYmV0IHRoZXkncmUgdGhlIGN1bHByaXQsIHNpbmNl
IHRoaXMgbG9va3MKPj4+IHRvIGJlIHJlbGF0ZWQgdG8gVURQIGNoZWNrc3VtbWluZy4KPj4KPj4g
VXJnaC4uLiBsZXQgbWUgc2VlIGlmIEkgY2FuIHJlcHJvZHVjZSBzb21ldGhpbmcgbG9jYWxseSAt
IEkgaGFkIGlwZXJmMwo+PiBydW5uaW5nIGZpbmUgaW4gYm90aCBkaXJlY3Rpb25zIHdpdGggdHgv
cnggb2ZmbG9hZCBkaXNhYmxlZCwgYW5kIG15Cj4+IHVzZXJzcGFjZSB0ZXN0cyB3ZXJlIHNob3dp
bmcgdGhlIG5ldyByb3V0aW5lIHByb2R1Y2UgdGhlIHNhbWUgc3VtIGFzIHRoZQo+PiBnZW5lcmlj
IHZlcnNpb24gZm9yIHRoZSBzYW1lIGJ1ZmZlciwgc28gSSB3b3VsZG4ndCBoYXZlIGV4cGVjdGVk
IFVEUCB0bwo+PiBiZWhhdmUgYW55IGRpZmZlcmVudGx5LCBidXQgSSdsbCBkaWcgaW4gYW5kIGRv
dWJsZS1jaGVjayBldmVyeXRoaW5nLi4uCj4gCj4gSXQgY291bGQgZWFzaWx5IGJlIG9uZSBvZiB0
aGUgb3RoZXIgdGhpbmdzIEkgcXVldWVkIHllc3RlcmRheSwgYnV0IEkndmUKPiBwdXNoZWQgb3V0
IGFuIHVwZGF0ZWQgZm9yLWtlcm5lbGNpIGJyYW5jaCB3aXRoIHlvdXIgcGF0Y2ggcmV2ZXJ0ZWQg
c28ga2VlcAo+IHlvdXIgVVRGLTggZXllcyBwZWVsZWQgdG8gc2VlIGlmIHdlIGdldCBhIGJpZyBn
cmVlbiB0aWNrIGJhY2sgb3Igbm90LgoKQWN0dWFsbHksIEl0J3MganVzdCBjbGlja2VkIGluIG15
IG1pbmQgdGhhdCBJICpkaWQqIHNlZSBORlMgcHJvYmxlbXMgCndoZW4gZmlyc3QgYm9vdGluZyBt
eSBiaWctZW5kaWFuIFZNIHRvIHRlc3QgaW4sIGJ1dCBkaXNtaXNzZWQgaXQgYXMgdGhlIApvbGQg
Ik5GUy1vdmVyLVVEUCBpcyBmbGFreSBvbiB0aGUgb2ZmaWNlIG5ldHdvcmsiIGlzc3VlIGFuZCBo
YXZpbmcgCmZvcmdvdHRlbiB0byBhZGQgdGhlICIsdGNwIiBvcHRpb24gYXMgdXN1YWwuIE5vdyBJ
J20gYWJvdXQgOTAlIGNlcnRhaW4gCml0IHdpbGwgYmUgbXkgZmF1bHQsIGFuZCBvZiB3aGVyZSBJ
IHNsaXBwZWQgdXAuIEV4cGVjdCBhIHBhdGNoIGxhdGVyIAp0aGlzIGFmdGVybm9vbi4uLgoKVGhh
bmtzLApSb2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
