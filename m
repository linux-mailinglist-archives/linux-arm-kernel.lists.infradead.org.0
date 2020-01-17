Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEA5140885
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 11:58:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iSQElN5xnw+HgwJY6MQQDtoK8ESdflm7r0E03EYjye8=; b=H6gkllYHlOr0/4kq2C2vOCGdg
	ROcBZNtpQoBwJwtqIWoCbVfbPFWyCzzfqeIQ2RPzmRpeh+aiL5LgMC+DmHsvQqJZ6dhscnJDCbf2o
	BZvuzBpRbUO+iUSeSSZo0X3LoJKl9me2SpSe11ryk/NiGPNKW+8p/1ZZyZoK/jVq7JyT50SwYz/VU
	eHgKnB4a4cHSMW/mPZLrtVgOC/FpV12pyLel6TDBrYnOke3hk750tPS94I1vtkS4h6Dgzb1l+POGK
	sFHq/qTPmysMpQ2MDRdq9N5odYXcrbNVAOqpy5kNVK5M0bFBDXx53Dg3Bv7kf9CgQ5yP82WV72FXQ
	POXeb9UDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isPKG-0003KS-9f; Fri, 17 Jan 2020 10:58:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isPK5-0003Jw-Vs
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 10:57:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA64111D4;
 Fri, 17 Jan 2020 02:57:52 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0DB4A3F68E;
 Fri, 17 Jan 2020 02:57:50 -0800 (PST)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e5=2e0-?=
 =?UTF-8?Q?rc6-b260f5e=2ecki=3f=28arm-next=29?=
To: Will Deacon <will@kernel.org>, Veronika Kabatova <vkabatov@redhat.com>
References: <cki.9F6EEFCFB1.I2MBV5DGSX@redhat.com>
 <1087562953.2535418.1579256657647.JavaMail.zimbra@redhat.com>
 <20200117103413.GA6144@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <584b0c2e-bdc8-791f-cbc1-c27f3d6ed53d@arm.com>
Date: Fri, 17 Jan 2020 10:57:49 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200117103413.GA6144@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_025754_068112_9CF5CAD3 
X-CRM114-Status: GOOD (  13.34  )
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
Cc: Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 catalin marinas <catalin.marinas@arm.com>, Yi Chen <yiche@redhat.com>,
 CKI Project <cki-project@redhat.com>, Xiumei Mu <xmu@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMS0xNyAxMDozNCBhbSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gT24gRnJpLCBKYW4g
MTcsIDIwMjAgYXQgMDU6MjQ6MTdBTSAtMDUwMCwgVmVyb25pa2EgS2FiYXRvdmEgd3JvdGU6Cj4+
IC0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0KPj4+IEZyb206ICJDS0kgUHJvamVjdCIgPGNr
aS1wcm9qZWN0QHJlZGhhdC5jb20+Cj4+PiBUbzogd2lsbEBrZXJuZWwub3JnLCAiY2F0YWxpbiBt
YXJpbmFzIiA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+LCBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPj4+IENjOiAiWWkgQ2hlbiIgPHlpY2hlQHJlZGhhdC5jb20+LCAiSmlh
bndlbiBKaSIgPGppamlAcmVkaGF0LmNvbT4sICJIYW5nYmluIExpdSIgPGhhbGl1QHJlZGhhdC5j
b20+LCAiWGl1bWVpIE11Igo+Pj4gPHhtdUByZWRoYXQuY29tPgo+Pj4gU2VudDogRnJpZGF5LCBK
YW51YXJ5IDE3LCAyMDIwIDQ6MzU6MjcgQU0KPj4+IFN1YmplY3Q6IOKdjCBGQUlMOiBUZXN0IHJl
cG9ydCBmb3Iga2VybmVsIDUuNS4wLXJjNi1iMjYwZjVlLmNraQkoYXJtLW5leHQpCj4+Pgo+Pj4g
V2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0aGlzIGtlcm5l
bCB0cmVlOgo+Pj4KPj4+ICAgICAgICAgS2VybmVsIHJlcG86Cj4+PiAgICAgICAgIGdpdDovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKPj4+
ICAgICAgICAgICAgICBDb21taXQ6IGIyNjBmNWViNGU1NyAtIE1lcmdlIGJyYW5jaCAnZm9yLW5l
eHQvY29yZScgaW50bwo+Pj4gICAgICAgICAgICAgIGZvci1rZXJuZWxjaQo+Pj4KPj4+IFRoZSBy
ZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJvdmlkZWQgYmVsb3cuCj4+Pgo+
Pj4gICAgICBPdmVyYWxsIHJlc3VsdDogRkFJTEVEIChzZWUgZGV0YWlscyBiZWxvdykKPj4+ICAg
ICAgICAgICAgICAgTWVyZ2U6IE9LCj4+PiAgICAgICAgICAgICBDb21waWxlOiBPSwo+Pj4gICAg
ICAgICAgICAgICBUZXN0czogRkFJTEVECj4+Pgo+Pj4gQWxsIGtlcm5lbCBiaW5hcmllcywgY29u
ZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZvciBkb3dubG9hZCBoZXJlOgo+Pj4K
Pj4+ICAgIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBlbGluZXMvMzg3MjE5
Cj4+Pgo+Pj4gT25lIG9yIG1vcmUga2VybmVsIHRlc3RzIGZhaWxlZDoKPj4+Cj4+PiAgICAgIGFh
cmNoNjQ6Cj4+PiAgICAgICDinYwgTmV0d29ya2luZyBVRFA6IHNvY2tldAo+Pj4gICAgICAg4p2M
IE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIHR1bm5lbAo+Pj4KPj4KPj4gYWZ0ZXIgeWVz
dGVyZGF5J3MgZGlzY3Vzc2lvbnMgSSB0aG91Z2h0IEknZCBwb2ludCBpdCBvdXQgc3BlY2lmaWNh
bGx5Lgo+PiBUaGVzZSB0ZXN0cyBkaWQgcmVhbGx5IHJlcG9ydCBhIGZhaWx1cmUgYW5kIHRoZSBy
ZXN1bHRzIGFyZSBub3QgY2F1c2VkCj4+IGJ5IHRoZSBpbmZyYSBpc3N1ZSB3ZSB3ZXJlIHRhbGtp
bmcgYWJvdXQuIEknbSBzdXJlIHRoZSB0ZXN0IG1haW50YWluZXJzCj4+IGNhbiBoZWxwIHdpdGgg
ZmlndXJpbmcgb3V0IGlmIHRoaXMgaXMgc29tZXRoaW5nIHRvIGJlIGNvbmNlcm5lZCB3aXRoLgo+
IAo+IFRoYW5rcywgVmVyb25pa2EgLS0gSSB3YXMgYWJvdXQgdG8gbWFpbCB5b3UgdG8gYXNrISBX
ZSBxdWV1ZWQgc29tZSBJUAo+IGNoZWNrc3VtIGNoYW5nZXMgeWVzdGVyZGF5LCBzbyBJIGJldCB0
aGV5J3JlIHRoZSBjdWxwcml0LCBzaW5jZSB0aGlzIGxvb2tzCj4gdG8gYmUgcmVsYXRlZCB0byBV
RFAgY2hlY2tzdW1taW5nLgoKVXJnaC4uLiBsZXQgbWUgc2VlIGlmIEkgY2FuIHJlcHJvZHVjZSBz
b21ldGhpbmcgbG9jYWxseSAtIEkgaGFkIGlwZXJmMyAKcnVubmluZyBmaW5lIGluIGJvdGggZGly
ZWN0aW9ucyB3aXRoIHR4L3J4IG9mZmxvYWQgZGlzYWJsZWQsIGFuZCBteSAKdXNlcnNwYWNlIHRl
c3RzIHdlcmUgc2hvd2luZyB0aGUgbmV3IHJvdXRpbmUgcHJvZHVjZSB0aGUgc2FtZSBzdW0gYXMg
dGhlIApnZW5lcmljIHZlcnNpb24gZm9yIHRoZSBzYW1lIGJ1ZmZlciwgc28gSSB3b3VsZG4ndCBo
YXZlIGV4cGVjdGVkIFVEUCB0byAKYmVoYXZlIGFueSBkaWZmZXJlbnRseSwgYnV0IEknbGwgZGln
IGluIGFuZCBkb3VibGUtY2hlY2sgZXZlcnl0aGluZy4uLgoKVGhhbmtzLApSb2Jpbi4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
