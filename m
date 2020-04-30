Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E18D1BEFA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 07:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VPi/3P0KsuO4wdEJaT9ysKdb2z+PRtnaf1A1P25Z7rA=; b=gvn9HEDMBgfNqx
	kzwwBJuD/i7VYjWJY8bnv4/58J9bFl6yUnS8jD1JX0XCTRl6nVSkyewtP3q3HiJnhglpuDwJf9x+e
	eMeumuxvKJA7qr/ZDCYPzfbSPQye1pQA4pkwUqGnQbJgzlURbdSeszjVFdxnmIETtElK1OJWWYOkU
	vTeQ4eoSThE1ulJO0RbmxWViqd8MBKX4H+YeoqZfE6uKcChm4OCHkZAjV+iv06RhsTOyBjObD71et
	BAiKKBRt6dmZNx4lSh8i4i0TOSeYr7Y7hSccwO4LkWP3FS5xqW8HBZqwUkbcYbfZ0G7dSenLJN88l
	Yu32dkqI3E6S3/x6OClQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU1kE-0003KN-TO; Thu, 30 Apr 2020 05:28:22 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1k7-0003JK-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 05:28:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588224493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+UbRS7o4wskS+zxvITUVV1NTPPsqU5eTPaavsBEh9GQ=;
 b=CfUQp9WFyNB62UE8DZ8IJXzoaxRf17IIPozBWHMZQBipiLuvRXrzAkxJ9bjPzDhfe0rFdw
 Qu3OjdMGG+bQXZPcIxgQKO+v1fkivrBGugcGIDT8XOWbBeqiaZwQ7CC29puyAJkZWCtUs1
 0JeLElsgYD3R3SiWusnC5gL+mFd1dMM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-G9Jyn62RMjujMoXRd8y51A-1; Thu, 30 Apr 2020 01:26:12 -0400
X-MC-Unique: G9Jyn62RMjujMoXRd8y51A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E7A280B70C;
 Thu, 30 Apr 2020 05:26:11 +0000 (UTC)
Received: from [172.54.62.47] (cpt-1037.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.45])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3E1475C1BE;
 Thu, 30 Apr 2020 05:26:08 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.7.0-rc3-af37016.cki
 (arm-next)
Date: Thu, 30 Apr 2020 05:26:07 -0000
Message-ID: <cki.BA3408B74E.FB1K53S869@redhat.com>
X-Gitlab-Pipeline-ID: 552524
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/552524
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_222815_522834_6BF2E192 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ziqian Sun <zsun@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKICAgICAgICAgICAg
Q29tbWl0OiBhZjM3MDE2MTJjY2QgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L2J0aScgaW50byBm
b3ItbmV4dC9jb3JlCgpUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHBy
b3ZpZGVkIGJlbG93LgoKICAgIE92ZXJhbGwgcmVzdWx0OiBQQVNTRUQKICAgICAgICAgICAgIE1l
cmdlOiBPSwogICAgICAgICAgIENvbXBpbGU6IE9LCiAgICAgICAgICAgICBUZXN0czogT0sKCkFs
bCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBm
b3IgZG93bmxvYWQgaGVyZToKCiAgaHR0cHM6Ly9ja2ktYXJ0aWZhY3RzLnMzLnVzLWVhc3QtMi5h
bWF6b25hd3MuY29tL2luZGV4Lmh0bWw/cHJlZml4PWRhdGF3YXJlaG91c2UvMjAyMC8wNC8yOS81
NTI1MjQKClBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsIGlmIHlvdSBoYXZlIGFueSBxdWVzdGlv
bnMgYWJvdXQgdGhlIHRlc3RzIHRoYXQgd2UKcmFuIG9yIGlmIHlvdSBoYXZlIGFueSBzdWdnZXN0
aW9ucyBvbiBob3cgdG8gbWFrZSBmdXR1cmUgdGVzdHMgbW9yZSBlZmZlY3RpdmUuCgogICAgICAg
ICwtLiAgICwtLgogICAgICAgKCBDICkgKCBLICkgIENvbnRpbnVvdXMKICAgICAgICBgLScsLS5g
LScgICBLZXJuZWwKICAgICAgICAgICggSSApICAgICBJbnRlZ3JhdGlvbgogICAgICAgICAgIGAt
JwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KCkNvbXBpbGUgdGVzdGluZwotLS0tLS0tLS0tLS0tLS0K
CldlIGNvbXBpbGVkIHRoZSBrZXJuZWwgZm9yIDEgYXJjaGl0ZWN0dXJlOgoKICAgIGFhcmNoNjQ6
CiAgICAgIG1ha2Ugb3B0aW9uczogLWozMCBJTlNUQUxMX01PRF9TVFJJUD0xIHRhcmd6LXBrZwoK
CkhhcmR3YXJlIHRlc3RpbmcKLS0tLS0tLS0tLS0tLS0tLQpXZSBib290ZWQgZWFjaCBrZXJuZWwg
YW5kIHJhbiB0aGUgZm9sbG93aW5nIHRlc3RzOgoKICBhYXJjaDY0OgogICAgSG9zdCAxOgogICAg
ICAg4pyFIEJvb3QgdGVzdAogICAgICAg4pyFIHhmc3Rlc3RzIC0gZXh0NAogICAgICAg4pyFIHhm
c3Rlc3RzIC0geGZzCiAgICAgICDinIUgc2VsaW51eC1wb2xpY3k6IHNlcmdlLXRlc3RzdWl0ZQog
ICAgICAg4pyFIGx2bSB0aGlucCBzYW5pdHkKICAgICAgIOKchSBzdG9yYWdlOiBzb2Z0d2FyZSBS
QUlEIHRlc3RpbmcKICAgICAgIPCfmqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMKCiAgICBIb3N0IDI6
CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlv
biB0ZXN0IC0gYXMgcm9vdAogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVz
dCAtIGFzIHVzZXIKICAgICAgIOKchSBMVFAKICAgICAgIOKchSBMb29wZGV2IFNhbml0eQogICAg
ICAg4pyFIE1lbW9yeSBmdW5jdGlvbjogbWVtZmRfY3JlYXRlCiAgICAgICDinIUgQU1UVSAoQWJz
dHJhY3QgTWFjaGluZSBUZXN0IFV0aWxpdHkpCiAgICAgICDinIUgTmV0d29ya2luZyBicmlkZ2U6
IHNhbml0eQogICAgICAg4pyFIEV0aGVybmV0IGRyaXZlcnMgc2FuaXR5CiAgICAgICDinIUgTmV0
d29ya2luZyBNQUNzZWM6IHNhbml0eQogICAgICAg4pyFIE5ldHdvcmtpbmcgc29ja2V0OiBmdXp6
CiAgICAgICDinIUgTmV0d29ya2luZyBzY3RwLWF1dGg6IHNvY2tvcHRzIHRlc3QKICAgICAgIOKc
hSBOZXR3b3JraW5nOiBpZ21wIGNvbmZvcm1hbmNlIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5n
IHJvdXRlOiBwbXR1CiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jIC0gbG9jYWwKICAg
ICAgIOKchSBOZXR3b3JraW5nIHJvdXRlX2Z1bmMgLSBmb3J3YXJkCiAgICAgICDinIUgTmV0d29y
a2luZyBUQ1A6IGtlZXBhbGl2ZSB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyBVRFA6IHNvY2tl
dAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5ldmUgYmFzaWMgdGVzdAogICAgICAg
4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKICAgICAgIOKchSBMMlRQIGJhc2ljIHRl
c3QKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogdnhsYW4gYmFzaWMKICAgICAgIOKchSBO
ZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyAtIHRyYW5zcG9ydAogICAgICAg4pyFIE5ldHdv
cmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0gdHVubmVsCiAgICAgICDinIUgaHR0cGQ6IG1vZF9z
c2wgc21va2Ugc2FuaXR5CiAgICAgICDinIUgdHVuZWQ6IHR1bmUtcHJvY2Vzc2VzLXRocm91Z2gt
cGVyZgogICAgICAg4pyFIEFMU0EgUENNIGxvb3BiYWNrIHRlc3QKICAgICAgIOKchSBBTFNBIENv
bnRyb2wgKG1peGVyKSBVc2Vyc3BhY2UgRWxlbWVudCB0ZXN0CiAgICAgICDinIUgVXNleCAtIHZl
cnNpb24gMS45LTI5CiAgICAgICDinIUgc3RvcmFnZTogU0NTSSBWUEQKICAgICAgIPCfmqcg4pyF
IENJRlMgQ29ubmVjdGF0aG9uCiAgICAgICDwn5qnIOKchSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRl
cwogICAgICAg8J+apyDinIUganZtIC0gRGFDYXBvIEJlbmNobWFyayBTdWl0ZQogICAgICAg8J+a
pyDinIUganZtIC0gamNzdHJlc3MgdGVzdHMKICAgICAgIPCfmqcg4pyFIE1lbW9yeSBmdW5jdGlv
bjoga2FzbHIKICAgICAgIPCfmqcg4pyFIExUUDogb3BlbnBvc2l4IHRlc3Qgc3VpdGUKICAgICAg
IPCfmqcg4pyFIE5ldHdvcmtpbmcgdm5pYzogaXB2bGFuL2Jhc2ljCiAgICAgICDwn5qnIOKchSBh
dWRpdDogYXVkaXQgdGVzdHN1aXRlIHRlc3QKICAgICAgIPCfmqcg4pyFIGlvdG9wOiBzYW5pdHkK
ICAgICAgIPCfmqcg4pyFIHN0b3JhZ2U6IGRtL2NvbW1vbgogICAgICAg8J+apyDinYwgdHJhY2U6
IGZ0cmFjZS90cmFjZXIKCiAgVGVzdCBzb3VyY2VzOiBodHRwczovL2dpdGh1Yi5jb20vQ0tJLXBy
b2plY3QvdGVzdHMtYmVha2VyCiAgICDwn5KaIFB1bGwgcmVxdWVzdHMgYXJlIHdlbGNvbWUgZm9y
IG5ldyB0ZXN0cyBvciBpbXByb3ZlbWVudHMgdG8gZXhpc3RpbmcgdGVzdHMhCgpBYm9ydGVkIHRl
c3RzCi0tLS0tLS0tLS0tLS0KVGVzdHMgdGhhdCBkaWRuJ3QgY29tcGxldGUgcnVubmluZyBzdWNj
ZXNzZnVsbHkgYXJlIG1hcmtlZCB3aXRoIOKaoeKaoeKaoS4KSWYgdGhpcyB3YXMgY2F1c2VkIGJ5
IGFuIGluZnJhc3RydWN0dXJlIGlzc3VlLCB3ZSB0cnkgdG8gbWFyayB0aGF0CmV4cGxpY2l0bHkg
aW4gdGhlIHJlcG9ydC4KCldhaXZlZCB0ZXN0cwotLS0tLS0tLS0tLS0KSWYgdGhlIHRlc3QgcnVu
IGluY2x1ZGVkIHdhaXZlZCB0ZXN0cywgdGhleSBhcmUgbWFya2VkIHdpdGgg8J+apy4gU3VjaCB0
ZXN0cyBhcmUKZXhlY3V0ZWQgYnV0IHRoZWlyIHJlc3VsdHMgYXJlIG5vdCB0YWtlbiBpbnRvIGFj
Y291bnQuIFRlc3RzIGFyZSB3YWl2ZWQgd2hlbgp0aGVpciByZXN1bHRzIGFyZSBub3QgcmVsaWFi
bGUgZW5vdWdoLCBlLmcuIHdoZW4gdGhleSdyZSBqdXN0IGludHJvZHVjZWQgb3IgYXJlCmJlaW5n
IGZpeGVkLgoKVGVzdGluZyB0aW1lb3V0Ci0tLS0tLS0tLS0tLS0tLQpXZSBhaW0gdG8gcHJvdmlk
ZSBhIHJlcG9ydCB3aXRoaW4gcmVhc29uYWJsZSB0aW1lZnJhbWUuIFRlc3RzIHRoYXQgaGF2ZW4n
dApmaW5pc2hlZCBydW5uaW5nIHlldCBhcmUgbWFya2VkIHdpdGgg4o+xLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
