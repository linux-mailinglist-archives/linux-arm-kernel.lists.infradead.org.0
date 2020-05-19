Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E0B1D8D80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=haMQR/X4uUFfwkqQioacHnCXm5oT6PXHhn1fKZ8O0C4=; b=kGk
	Y2f18hM0nG8zzKwUIlwRrSD7eWVD7NKn1EBUHzI1XgcCcX41RBjpPYSYA8CdBNHE9KFneX0HqKs4E
	AtEa+jUvvELjYv43+CpZKpBPoOuhJU+F7j2r++rwpb9PdXgWIYYKAWfwy66R2Jl1ULVw9R512LwhQ
	xbs4R+/p3rUPSNh+IVSpKZjRTT0/9O+d/bomUWa3in35dX4bhTyYCZQSdvwXY1ooRR8+tC83EV/Dz
	vLdOQlylpzKaV98nslQXkVS51h9bHQx1PWisP++Vvjeco6JKXA8IOawtAOjNfGcFcUTQyNXRKNIyp
	v/BKzR87ZR3xOxfkbGSdYQu3O6KA8Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jarm4-0005cb-9R; Tue, 19 May 2020 02:14:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jarlw-0005c9-Bb
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:14:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589854460;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=QX3XmyjeIclT2ZAVr3k5yT++LGoIx4Itsc/yEkCQZjo=;
 b=CplsOeIKdi4dP2L/kp9FlH/4AR8Fsj4WWELbq1Q7d5v2QEYhcMYgimb7AdyCqe9N5uvVdR
 5341nJz9VGfQDXpTlT9HjIDe/oExsgZ/yJ1MmQeUs6ohXx4qGOiJEacADtnI4/LmAk59ZL
 blFScMO+EZbUmC6rdmpDgHyUnygEq2M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-r4h1wYF5PjqcKDwYh2_UFQ-1; Mon, 18 May 2020 22:14:17 -0400
X-MC-Unique: r4h1wYF5PjqcKDwYh2_UFQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3E8B1005512;
 Tue, 19 May 2020 02:14:15 +0000 (UTC)
Received: from [172.54.83.71] (cpt-1025.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7380B10013D9;
 Tue, 19 May 2020 02:14:12 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.7.0-rc6-93d53d2.cki
 (arm-next)
Date: Tue, 19 May 2020 02:14:12 -0000
Message-ID: <cki.5289555647.QBY6MBAI4Z@redhat.com>
X-Gitlab-Pipeline-ID: 571360
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/571360
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_191424_473407_B0FFC7B4 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKICAgICAgICAgICAg
Q29tbWl0OiA5M2Q1M2QyNzhkMDEgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L3NjcycgaW50byBm
b3Ita2VybmVsY2kKClRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJv
dmlkZWQgYmVsb3cuCgogICAgT3ZlcmFsbCByZXN1bHQ6IFBBU1NFRAogICAgICAgICAgICAgTWVy
Z2U6IE9LCiAgICAgICAgICAgQ29tcGlsZTogT0sKICAgICAgICAgICAgIFRlc3RzOiBPSwoKQWxs
IGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZv
ciBkb3dubG9hZCBoZXJlOgoKICBodHRwczovL2NraS1hcnRpZmFjdHMuczMudXMtZWFzdC0yLmFt
YXpvbmF3cy5jb20vaW5kZXguaHRtbD9wcmVmaXg9ZGF0YXdhcmVob3VzZS8yMDIwLzA1LzE4LzU3
MTM2MAoKUGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWwgaWYgeW91IGhhdmUgYW55IHF1ZXN0aW9u
cyBhYm91dCB0aGUgdGVzdHMgdGhhdCB3ZQpyYW4gb3IgaWYgeW91IGhhdmUgYW55IHN1Z2dlc3Rp
b25zIG9uIGhvdyB0byBtYWtlIGZ1dHVyZSB0ZXN0cyBtb3JlIGVmZmVjdGl2ZS4KCiAgICAgICAg
LC0uICAgLC0uCiAgICAgICAoIEMgKSAoIEsgKSAgQ29udGludW91cwogICAgICAgIGAtJywtLmAt
JyAgIEtlcm5lbAogICAgICAgICAgKCBJICkgICAgIEludGVncmF0aW9uCiAgICAgICAgICAgYC0n
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwoKQ29tcGlsZSB0ZXN0aW5nCi0tLS0tLS0tLS0tLS0tLQoK
V2UgY29tcGlsZWQgdGhlIGtlcm5lbCBmb3IgMSBhcmNoaXRlY3R1cmU6CgogICAgYWFyY2g2NDoK
ICAgICAgbWFrZSBvcHRpb25zOiAtajMwIElOU1RBTExfTU9EX1NUUklQPTEgdGFyZ3otcGtnCgoK
CkhhcmR3YXJlIHRlc3RpbmcKLS0tLS0tLS0tLS0tLS0tLQpXZSBib290ZWQgZWFjaCBrZXJuZWwg
YW5kIHJhbiB0aGUgZm9sbG93aW5nIHRlc3RzOgoKICBhYXJjaDY0OgogICAgSG9zdCAxOgogICAg
ICAg4pyFIEJvb3QgdGVzdAogICAgICAg4pyFIHhmc3Rlc3RzIC0gZXh0NAogICAgICAg4pyFIHhm
c3Rlc3RzIC0geGZzCiAgICAgICDinIUgc2VsaW51eC1wb2xpY3k6IHNlcmdlLXRlc3RzdWl0ZQog
ICAgICAg4pyFIHN0b3JhZ2U6IHNvZnR3YXJlIFJBSUQgdGVzdGluZwogICAgICAg4pyFIHN0cmVz
czogc3RyZXNzLW5nCiAgICAgICDwn5qnIOKchSBJUE1JIGRyaXZlciB0ZXN0CiAgICAgICDwn5qn
IOKchSBJUE1JdG9vbCBsb29wIHN0cmVzcyB0ZXN0CiAgICAgICDwn5qnIOKchSBTdG9yYWdlIGJs
a3Rlc3RzCgogICAgSG9zdCAyOgogICAgICAg4pyFIEJvb3QgdGVzdAogICAgICAg4pyFIFBvZG1h
biBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAtIGFzIHJvb3QKICAgICAgIOKchSBQb2RtYW4gc3lz
dGVtIGludGVncmF0aW9uIHRlc3QgLSBhcyB1c2VyCiAgICAgICDinIUgTFRQCiAgICAgICDinIUg
TWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9jcmVhdGUKICAgICAgIOKchSBBTVRVIChBYnN0cmFjdCBN
YWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAgIOKchSBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5
CiAgICAgICDinIUgRXRoZXJuZXQgZHJpdmVycyBzYW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5n
IHNvY2tldDogZnV6egogICAgICAg4pyFIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVz
dAogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGU6IHBtdHUKICAgICAgIOKchSBOZXR3b3JraW5n
IHJvdXRlX2Z1bmMgLSBsb2NhbAogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYyAtIGZv
cndhcmQKICAgICAgIOKchSBOZXR3b3JraW5nIFRDUDoga2VlcGFsaXZlIHRlc3QKICAgICAgIOKc
hSBOZXR3b3JraW5nIFVEUDogc29ja2V0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdl
bmV2ZSBiYXNpYyB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdyZSBiYXNpYwog
ICAgICAg4pyFIEwyVFAgYmFzaWMgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiB2
eGxhbiBiYXNpYwogICAgICAg4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0gdHJh
bnNwb3J0CiAgICAgICDinIUgTmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgLSB0dW5uZWwK
ICAgICAgIOKchSBMaWJrY2FwaSBBRl9BTEcgdGVzdAogICAgICAg4pyFIEFMU0EgUENNIGxvb3Bi
YWNrIHRlc3QKICAgICAgIOKchSBBTFNBIENvbnRyb2wgKG1peGVyKSBVc2Vyc3BhY2UgRWxlbWVu
dCB0ZXN0CiAgICAgICDinIUgc3RvcmFnZTogU0NTSSBWUEQKICAgICAgIPCfmqcg4pyFIENJRlMg
Q29ubmVjdGF0aG9uCiAgICAgICDwn5qnIOKchSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlcwogICAg
ICAg8J+apyDinIUganZtIC0gRGFDYXBvIEJlbmNobWFyayBTdWl0ZQogICAgICAg8J+apyDinIUg
anZtIC0gamNzdHJlc3MgdGVzdHMKICAgICAgIPCfmqcg4pyFIE1lbW9yeSBmdW5jdGlvbjoga2Fz
bHIKICAgICAgIPCfmqcg4pyFIGF1ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVzdAogICAgICAg8J+a
pyDinIUgdHJhY2U6IGZ0cmFjZS90cmFjZXIKCiAgVGVzdCBzb3VyY2VzOiBodHRwczovL2dpdGh1
Yi5jb20vQ0tJLXByb2plY3QvdGVzdHMtYmVha2VyCiAgICDwn5KaIFB1bGwgcmVxdWVzdHMgYXJl
IHdlbGNvbWUgZm9yIG5ldyB0ZXN0cyBvciBpbXByb3ZlbWVudHMgdG8gZXhpc3RpbmcgdGVzdHMh
CgpBYm9ydGVkIHRlc3RzCi0tLS0tLS0tLS0tLS0KVGVzdHMgdGhhdCBkaWRuJ3QgY29tcGxldGUg
cnVubmluZyBzdWNjZXNzZnVsbHkgYXJlIG1hcmtlZCB3aXRoIOKaoeKaoeKaoS4KSWYgdGhpcyB3
YXMgY2F1c2VkIGJ5IGFuIGluZnJhc3RydWN0dXJlIGlzc3VlLCB3ZSB0cnkgdG8gbWFyayB0aGF0
CmV4cGxpY2l0bHkgaW4gdGhlIHJlcG9ydC4KCldhaXZlZCB0ZXN0cwotLS0tLS0tLS0tLS0KSWYg
dGhlIHRlc3QgcnVuIGluY2x1ZGVkIHdhaXZlZCB0ZXN0cywgdGhleSBhcmUgbWFya2VkIHdpdGgg
8J+apy4gU3VjaCB0ZXN0cyBhcmUKZXhlY3V0ZWQgYnV0IHRoZWlyIHJlc3VsdHMgYXJlIG5vdCB0
YWtlbiBpbnRvIGFjY291bnQuIFRlc3RzIGFyZSB3YWl2ZWQgd2hlbgp0aGVpciByZXN1bHRzIGFy
ZSBub3QgcmVsaWFibGUgZW5vdWdoLCBlLmcuIHdoZW4gdGhleSdyZSBqdXN0IGludHJvZHVjZWQg
b3IgYXJlCmJlaW5nIGZpeGVkLgoKVGVzdGluZyB0aW1lb3V0Ci0tLS0tLS0tLS0tLS0tLQpXZSBh
aW0gdG8gcHJvdmlkZSBhIHJlcG9ydCB3aXRoaW4gcmVhc29uYWJsZSB0aW1lZnJhbWUuIFRlc3Rz
IHRoYXQgaGF2ZW4ndApmaW5pc2hlZCBydW5uaW5nIHlldCBhcmUgbWFya2VkIHdpdGgg4o+xLgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
