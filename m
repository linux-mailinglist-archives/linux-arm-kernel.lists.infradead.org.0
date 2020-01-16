Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA0E13DC74
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=04yAMXduout0cbbW13x5ClhXNCvJjDHbQesUW+yEFh8=; b=UjP67ghVZ47F1plpN+Pbrl60I
	4GJK1361jGmKD756FYvV9290nKReuNJN5H89h0vwJ23cnWGwTuuAH6b9UNBWQM9qN3YOD0vSAg+9l
	HiMl44nHQrDaXkQ6xXEQbxwtsgzrpwQQ8YZJGRTwo6mV6avKBZeIh1SiMhhyoZN24Ey8tzpxlcva+
	TQIopABwOQNcyGyA4yB1zPVMKxZdwb2JxIfff/N5YkLgnhwJEqoEwBZbs0PgoNNFni4GJrokpZUuY
	9n5rdFN8HmxFk3ZNq+ghOxw6JJNelpMA2uI3sMAiSuUYaT54MIAHe47cMXVSyxbop7lhLPOO/CNH2
	ho0vtFQ8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5cp-0003Kv-Nt; Thu, 16 Jan 2020 13:55:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5ce-0003Ji-6h
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579182942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7D754jLUuXAIvXor7MYd9zlXW4g5WlRt4ZVIw3iiofk=;
 b=i2yCXnmfoVkaNyufK54mMVtcC47H+NWzibrdS/80Fnl1oJsbEx9VdjQz+ioE5PNPbpNHUM
 FIpCurbDggvCCJvNZil/BZ8zq/PjDlpHQJkTYkAhhh4JfWh9ghuePtRTH4wm0fDg/XmyMK
 qYvDz1umJvgi6Ls//I3TA6kLHSisOkU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-9lf_uc7oNWi1E0vMMerMSg-1; Thu, 16 Jan 2020 08:55:38 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76D518C461B;
 Thu, 16 Jan 2020 13:55:37 +0000 (UTC)
Received: from localhost.localdomain (ovpn-120-211.rdu2.redhat.com
 [10.10.120.211])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7A1AC8433B;
 Thu, 16 Jan 2020 13:55:33 +0000 (UTC)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e5=2e0-?=
 =?UTF-8?Q?rc6-40f39e8=2ecki_=28arm-next=29?=
To: CKI Project <cki-project@redhat.com>, will@kernel.org,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
References: <cki.1A6A8CC1CF.1989HWSEIM@redhat.com>
From: Rachel Sibley <rasibley@redhat.com>
Message-ID: <84a09727-2e6e-04d1-e647-341f7f04110e@redhat.com>
Date: Thu, 16 Jan 2020 08:55:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <cki.1A6A8CC1CF.1989HWSEIM@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: 9lf_uc7oNWi1E0vMMerMSg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_055544_315824_134E21F0 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jianlin Shi <jishi@redhat.com>, Jianwen Ji <jiji@redhat.com>,
 Hangbin Liu <haliu@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxLzE2LzIwIDg6MTkgQU0sIENLSSBQcm9qZWN0IHdyb3RlOgo+IAo+IEhlbGxvLAo+IAo+
IFdlIHJhbiBhdXRvbWF0ZWQgdGVzdHMgb24gYSByZWNlbnQgY29tbWl0IGZyb20gdGhpcyBrZXJu
ZWwgdHJlZToKPiAKPiAgICAgICAgIEtlcm5lbCByZXBvOiBnaXQ6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0Cj4gICAgICAgICAgICAgIENv
bW1pdDogNDBmMzllODM3MmZlIC0gTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9jb3JlJyBpbnRvIGZv
ci1rZXJuZWxjaQo+IAo+IFRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUg
cHJvdmlkZWQgYmVsb3cuCj4gCj4gICAgICBPdmVyYWxsIHJlc3VsdDogRkFJTEVEIChzZWUgZGV0
YWlscyBiZWxvdykKPiAgICAgICAgICAgICAgIE1lcmdlOiBPSwo+ICAgICAgICAgICAgIENvbXBp
bGU6IE9LCj4gICAgICAgICAgICAgICBUZXN0czogRkFJTEVECj4gCj4gQWxsIGtlcm5lbCBiaW5h
cmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZvciBkb3dubG9hZCBo
ZXJlOgo+IAo+ICAgIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBlbGluZXMv
Mzg1Mjc0Cj4gCj4gT25lIG9yIG1vcmUga2VybmVsIHRlc3RzIGZhaWxlZDoKPiAKPiAgICAgIGFh
cmNoNjQ6Cj4gICAgICAg4p2MIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKPiAgICAgICDi
nYwgTmV0d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJhc2ljCgoKUGxlYXNlIGRpc3JlZ2FyZCB0aGUg
bmV0d29ya2luZyBmYWlsdXJlcywgdGhleSBhcmUgY2F1c2VkIGJ5IGFuIGluZnJhc3RydWN0dXJl
IGJ1ZwpyZWxhdGVkIHRvIG91ciB0ZXN0IGhhcm5lc3MgYmVpbmcgdG9vIGNoYXR0eSB3aGVuIGV4
dHJhY3RpbmcgdGhlIHRlc3QgcmVwbywgdGhpcyBsZWFkcwp0byB0ZXN0IHRpbWVvdXRzIGFuZCBh
Ym9ydHMuIFdlIGhhdmUgYSB3b3JrYXJvdW5kIGluIHBsYWNlIHdoaWNoIHdhcyBtZXJnZWQgdGhp
cyBtb3JuaW5nCmFuZCB5b3Ugc2hvdWxkIGhvcGVmdWxseSBzdG9wIHNlZWluZyB0aGVzZSBmYWls
dXJlcyBzb29uLiBTb3JyeSBhYm91dCB0aGUgZmFsc2UgcG9zaXRpdmVzLAphbmQgaG9wZSB0aGUg
ZXhwbGFuYXRpb24gbWFrZXMgc2Vuc2UuCgotUmFjaGVsCgo+IAo+IFdlIGhvcGUgdGhhdCB0aGVz
ZSBsb2dzIGNhbiBoZWxwIHlvdSBmaW5kIHRoZSBwcm9ibGVtIHF1aWNrbHkuIEZvciB0aGUgZnVs
bAo+IGRldGFpbCBvbiBvdXIgdGVzdGluZyBwcm9jZWR1cmVzLCBwbGVhc2Ugc2Nyb2xsIHRvIHRo
ZSBib3R0b20gb2YgdGhpcyBtZXNzYWdlLgo+IAo+IFBsZWFzZSByZXBseSB0byB0aGlzIGVtYWls
IGlmIHlvdSBoYXZlIGFueSBxdWVzdGlvbnMgYWJvdXQgdGhlIHRlc3RzIHRoYXQgd2UKPiByYW4g
b3IgaWYgeW91IGhhdmUgYW55IHN1Z2dlc3Rpb25zIG9uIGhvdyB0byBtYWtlIGZ1dHVyZSB0ZXN0
cyBtb3JlIGVmZmVjdGl2ZS4KPiAKPiAgICAgICAgICAsLS4gICAsLS4KPiAgICAgICAgICggQyAp
ICggSyApICBDb250aW51b3VzCj4gICAgICAgICAgYC0nLC0uYC0nICAgS2VybmVsCj4gICAgICAg
ICAgICAoIEkgKSAgICAgSW50ZWdyYXRpb24KPiAgICAgICAgICAgICBgLScKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiAKPiBDb21waWxlIHRlc3RpbmcKPiAtLS0tLS0tLS0tLS0tLS0KPiAKPiBX
ZSBjb21waWxlZCB0aGUga2VybmVsIGZvciAxIGFyY2hpdGVjdHVyZToKPiAKPiAgICAgIGFhcmNo
NjQ6Cj4gICAgICAgIG1ha2Ugb3B0aW9uczogLWozMCBJTlNUQUxMX01PRF9TVFJJUD0xIHRhcmd6
LXBrZwo+IAo+IAo+IEhhcmR3YXJlIHRlc3RpbmcKPiAtLS0tLS0tLS0tLS0tLS0tCj4gV2UgYm9v
dGVkIGVhY2gga2VybmVsIGFuZCByYW4gdGhlIGZvbGxvd2luZyB0ZXN0czoKPiAKPiAgICBhYXJj
aDY0Ogo+ICAgICAgSG9zdCAxOgo+ICAgICAgICAg4pyFIEJvb3QgdGVzdAo+ICAgICAgICAg4pyF
IFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAoYXMgcm9vdCkKPiAgICAgICAgIOKchSBQ
b2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRlc3QgKGFzIHVzZXIpCj4gICAgICAgICDinIUgTFRQ
Cj4gICAgICAgICDinIUgTG9vcGRldiBTYW5pdHkKPiAgICAgICAgIOKchSBNZW1vcnkgZnVuY3Rp
b246IG1lbWZkX2NyZWF0ZQo+ICAgICAgICAg4pyFIEFNVFUgKEFic3RyYWN0IE1hY2hpbmUgVGVz
dCBVdGlsaXR5KQo+ICAgICAgICAg4pyFIE5ldHdvcmtpbmcgYnJpZGdlOiBzYW5pdHkKPiAgICAg
ICAgIOKchSBFdGhlcm5ldCBkcml2ZXJzIHNhbml0eQo+ICAgICAgICAg4pyFIE5ldHdvcmtpbmcg
TUFDc2VjOiBzYW5pdHkKPiAgICAgICAgIOKchSBOZXR3b3JraW5nIHNvY2tldDogZnV6ego+ICAg
ICAgICAg4pyFIE5ldHdvcmtpbmcgc2N0cC1hdXRoOiBzb2Nrb3B0cyB0ZXN0Cj4gICAgICAgICDi
nIUgTmV0d29ya2luZzogaWdtcCBjb25mb3JtYW5jZSB0ZXN0Cj4gICAgICAgICDinIUgTmV0d29y
a2luZyByb3V0ZTogcG10dQo+ICAgICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYzogbG9j
YWwKPiAgICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlX2Z1bmM6IGZvcndhcmQKPiAgICAgICAg
IOKchSBOZXR3b3JraW5nIFRDUDoga2VlcGFsaXZlIHRlc3QKPiAgICAgICAgIOKchSBOZXR3b3Jr
aW5nIFVEUDogc29ja2V0Cj4gICAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdlbmV2ZSBi
YXNpYyB0ZXN0Cj4gICAgICAgICDinYwgTmV0d29ya2luZyB0dW5uZWw6IGdyZSBiYXNpYwo+ICAg
ICAgICAg4pyFIEwyVFAgYmFzaWMgdGVzdAo+ICAgICAgICAg4p2MIE5ldHdvcmtpbmcgdHVubmVs
OiB2eGxhbiBiYXNpYwo+ICAgICAgICAg4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5z
IHRyYW5zcG9ydAo+ICAgICAgICAg4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIHR1
bm5lbAo+ICAgICAgICAg4pyFIGF1ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVzdAo+ICAgICAgICAg
4pyFIGh0dHBkOiBtb2Rfc3NsIHNtb2tlIHNhbml0eQo+ICAgICAgICAg4pyFIHR1bmVkOiB0dW5l
LXByb2Nlc3Nlcy10aHJvdWdoLXBlcmYKPiAgICAgICAgIOKchSBBTFNBIFBDTSBsb29wYmFjayB0
ZXN0Cj4gICAgICAgICDinIUgQUxTQSBDb250cm9sIChtaXhlcikgVXNlcnNwYWNlIEVsZW1lbnQg
dGVzdAo+ICAgICAgICAg4pyFIHN0b3JhZ2U6IFNDU0kgVlBECj4gICAgICAgICDinIUgdHJhY2U6
IGZ0cmFjZS90cmFjZXIKPiAgICAgICAgIPCfmqcg4pyFIENJRlMgQ29ubmVjdGF0aG9uCj4gICAg
ICAgICDwn5qnIOKchSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlcwo+ICAgICAgICAg4o+xICBqdm0g
dGVzdCBzdWl0ZQo+ICAgICAgICAg4o+xICBNZW1vcnkgZnVuY3Rpb246IGthc2xyCj4gICAgICAg
ICDij7EgIExUUDogb3BlbnBvc2l4IHRlc3Qgc3VpdGUKPiAgICAgICAgIOKPsSAgTmV0d29ya2lu
ZyB2bmljOiBpcHZsYW4vYmFzaWMKPiAgICAgICAgIOKPsSAgaW90b3A6IHNhbml0eQo+ICAgICAg
ICAg4o+xICBVc2V4IC0gdmVyc2lvbiAxLjktMjkKPiAgICAgICAgIOKPsSAgc3RvcmFnZTogZG0v
Y29tbW9uCj4gCj4gICAgICBIb3N0IDI6Cj4gCj4gICAgICAgICDimqEgSW50ZXJuYWwgaW5mcmFz
dHJ1Y3R1cmUgaXNzdWVzIHByZXZlbnRlZCBvbmUgb3IgbW9yZSB0ZXN0cyAobWFya2VkCj4gICAg
ICAgICB3aXRoIOKaoeKaoeKaoSkgZnJvbSBydW5uaW5nIG9uIHRoaXMgYXJjaGl0ZWN0dXJlLgo+
ICAgICAgICAgVGhpcyBpcyBub3QgdGhlIGZhdWx0IG9mIHRoZSBrZXJuZWwgdGhhdCB3YXMgdGVz
dGVkLgo+IAo+ICAgICAgICAg4pyFIEJvb3QgdGVzdAo+ICAgICAgICAg4pyFIHhmc3Rlc3RzOiBl
eHQ0Cj4gICAgICAgICDinIUgeGZzdGVzdHM6IHhmcwo+ICAgICAgICAg4pyFIHNlbGludXgtcG9s
aWN5OiBzZXJnZS10ZXN0c3VpdGUKPiAgICAgICAgIOKchSBsdm0gdGhpbnAgc2FuaXR5Cj4gICAg
ICAgICDinIUgc3RvcmFnZTogc29mdHdhcmUgUkFJRCB0ZXN0aW5nCj4gICAgICAgICDinIUgc3Ry
ZXNzOiBzdHJlc3MtbmcKPiAgICAgICAgIPCfmqcg4pqh4pqh4pqhIElQTUkgZHJpdmVyIHRlc3QK
PiAgICAgICAgIPCfmqcg4pyFIElQTUl0b29sIGxvb3Agc3RyZXNzIHRlc3QKPiAgICAgICAgIPCf
mqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMKPiAKPiAgICBUZXN0IHNvdXJjZXM6IGh0dHBzOi8vZ2l0
aHViLmNvbS9DS0ktcHJvamVjdC90ZXN0cy1iZWFrZXIKPiAgICAgIPCfkpogUHVsbCByZXF1ZXN0
cyBhcmUgd2VsY29tZSBmb3IgbmV3IHRlc3RzIG9yIGltcHJvdmVtZW50cyB0byBleGlzdGluZyB0
ZXN0cyEKPiAKPiBXYWl2ZWQgdGVzdHMKPiAtLS0tLS0tLS0tLS0KPiBJZiB0aGUgdGVzdCBydW4g
aW5jbHVkZWQgd2FpdmVkIHRlc3RzLCB0aGV5IGFyZSBtYXJrZWQgd2l0aCDwn5qnLiBTdWNoIHRl
c3RzIGFyZQo+IGV4ZWN1dGVkIGJ1dCB0aGVpciByZXN1bHRzIGFyZSBub3QgdGFrZW4gaW50byBh
Y2NvdW50LiBUZXN0cyBhcmUgd2FpdmVkIHdoZW4KPiB0aGVpciByZXN1bHRzIGFyZSBub3QgcmVs
aWFibGUgZW5vdWdoLCBlLmcuIHdoZW4gdGhleSdyZSBqdXN0IGludHJvZHVjZWQgb3IgYXJlCj4g
YmVpbmcgZml4ZWQuCj4gCj4gVGVzdGluZyB0aW1lb3V0Cj4gLS0tLS0tLS0tLS0tLS0tCj4gV2Ug
YWltIHRvIHByb3ZpZGUgYSByZXBvcnQgd2l0aGluIHJlYXNvbmFibGUgdGltZWZyYW1lLiBUZXN0
cyB0aGF0IGhhdmVuJ3QKPiBmaW5pc2hlZCBydW5uaW5nIGFyZSBtYXJrZWQgd2l0aCDij7EuIFJl
cG9ydHMgZm9yIG5vbi11cHN0cmVhbSBrZXJuZWxzIGhhdmUKPiBhIEJlYWtlciByZWNpcGUgbGlu
a2VkIHRvIG5leHQgdG8gZWFjaCBob3N0Lgo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
