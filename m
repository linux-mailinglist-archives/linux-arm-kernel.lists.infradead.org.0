Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6C81D9455
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u1fx7UXCzdxvuubjteVzGiIgXRBq94A//Uqp9FcK49M=; b=bcq
	cHSGgeqHBt5PMVpfS9HChkvylImgVxWNybCsOk72CIWi4TA9VQlUFI1YV5/Zw8UKNZEvspklYUbcl
	Rp6K0FaEfd+79TNJ7RHBqQEBroxPIKirro8lBlsgl7LcsHjQz3kQ4wvEpvxDlrg+7WxsK2DKzW8H4
	Vg5zCItu7+SQUN2+9J6BYp0QrIdQ2fzxwXyl3ahJODgTQZE9qv/O2/Egyt4kCpMGkJS2jXKMqSisS
	o9ZUjfXUk8Eye97hNtYQuNOlH/9ArNdRzZC5c8TVr9UM6S+OnBeqKTCfZzDMtW00onUF7PtmEtAMw
	UlPBwrh3nXshweHPqjYX0yzgLG+YIhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazSb-0000Yd-9k; Tue, 19 May 2020 10:26:57 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazSR-0000YG-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:26:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589884006;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=srK0106J6scipcxEMhdLokCKAFI1rkThXjGGK9cTEWQ=;
 b=V7b/bm/I3ALz6gTeY0xDp4U1jOGa+/YtR8EknSbE9wRSDKcdZMmXiH1gSxzSmnLGAYPVnW
 8QB6OXaH0Cf5ZqPRxEn+mt2zDM6l9dGK3n3f82mpelMrqeb/oWA/Nga9+duhJBmvcoB+eQ
 AZrNWpVRbyPh2xU3JaMTVv74QvXjAqc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-hTGWPdsUP6aszVCZTiAWhQ-1; Tue, 19 May 2020 06:26:43 -0400
X-MC-Unique: hTGWPdsUP6aszVCZTiAWhQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B916A0BDB;
 Tue, 19 May 2020 10:26:42 +0000 (UTC)
Received: from [172.54.83.71] (cpt-1025.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 44C2178B4F;
 Tue, 19 May 2020 10:26:38 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.7.0-rc6-96bc42f.cki
 (arm-next)
Date: Tue, 19 May 2020 10:26:37 -0000
Message-ID: <cki.5BFBF733CB.1VXHUP9N30@redhat.com>
X-Gitlab-Pipeline-ID: 571478
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/571478
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_032647_920683_FB9044A7 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Q29tbWl0OiA5NmJjNDJmZjBhODIgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L3NjcycgaW50byBm
b3Ita2VybmVsY2kKClRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJv
dmlkZWQgYmVsb3cuCgogICAgT3ZlcmFsbCByZXN1bHQ6IFBBU1NFRAogICAgICAgICAgICAgTWVy
Z2U6IE9LCiAgICAgICAgICAgQ29tcGlsZTogT0sKICAgICAgICAgICAgIFRlc3RzOiBPSwoKQWxs
IGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZv
ciBkb3dubG9hZCBoZXJlOgoKICBodHRwczovL2NraS1hcnRpZmFjdHMuczMudXMtZWFzdC0yLmFt
YXpvbmF3cy5jb20vaW5kZXguaHRtbD9wcmVmaXg9ZGF0YXdhcmVob3VzZS8yMDIwLzA1LzE4LzU3
MTQ3OAoKUGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWwgaWYgeW91IGhhdmUgYW55IHF1ZXN0aW9u
cyBhYm91dCB0aGUgdGVzdHMgdGhhdCB3ZQpyYW4gb3IgaWYgeW91IGhhdmUgYW55IHN1Z2dlc3Rp
b25zIG9uIGhvdyB0byBtYWtlIGZ1dHVyZSB0ZXN0cyBtb3JlIGVmZmVjdGl2ZS4KCiAgICAgICAg
LC0uICAgLC0uCiAgICAgICAoIEMgKSAoIEsgKSAgQ29udGludW91cwogICAgICAgIGAtJywtLmAt
JyAgIEtlcm5lbAogICAgICAgICAgKCBJICkgICAgIEludGVncmF0aW9uCiAgICAgICAgICAgYC0n
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwoKQ29tcGlsZSB0ZXN0aW5nCi0tLS0tLS0tLS0tLS0tLQoK
V2UgY29tcGlsZWQgdGhlIGtlcm5lbCBmb3IgMSBhcmNoaXRlY3R1cmU6CgogICAgYWFyY2g2NDoK
ICAgICAgbWFrZSBvcHRpb25zOiAtajMwIElOU1RBTExfTU9EX1NUUklQPTEgdGFyZ3otcGtnCgoK
CkhhcmR3YXJlIHRlc3RpbmcKLS0tLS0tLS0tLS0tLS0tLQpXZSBib290ZWQgZWFjaCBrZXJuZWwg
YW5kIHJhbiB0aGUgZm9sbG93aW5nIHRlc3RzOgoKICBhYXJjaDY0OgogICAgSG9zdCAxOgoKICAg
ICAgIOKaoSBJbnRlcm5hbCBpbmZyYXN0cnVjdHVyZSBpc3N1ZXMgcHJldmVudGVkIG9uZSBvciBt
b3JlIHRlc3RzIChtYXJrZWQKICAgICAgIHdpdGgg4pqh4pqh4pqhKSBmcm9tIHJ1bm5pbmcgb24g
dGhpcyBhcmNoaXRlY3R1cmUuCiAgICAgICBUaGlzIGlzIG5vdCB0aGUgZmF1bHQgb2YgdGhlIGtl
cm5lbCB0aGF0IHdhcyB0ZXN0ZWQuCgogICAgICAg4pyFIEJvb3QgdGVzdAogICAgICAg4pyFIFBv
ZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAtIGFzIHJvb3QKICAgICAgIOKchSBQb2RtYW4g
c3lzdGVtIGludGVncmF0aW9uIHRlc3QgLSBhcyB1c2VyCiAgICAgICDimqHimqHimqEgTFRQCiAg
ICAgICDimqHimqHimqEgTWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9jcmVhdGUKICAgICAgIOKaoeKa
oeKaoSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAgIOKaoeKaoeKa
oSBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5CiAgICAgICDimqHimqHimqEgRXRoZXJuZXQgZHJp
dmVycyBzYW5pdHkKICAgICAgIOKaoeKaoeKaoSBOZXR3b3JraW5nIHNvY2tldDogZnV6egogICAg
ICAg4pqh4pqh4pqhIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVzdAogICAgICAg4pqh
4pqh4pqhIE5ldHdvcmtpbmcgcm91dGU6IHBtdHUKICAgICAgIOKaoeKaoeKaoSBOZXR3b3JraW5n
IHJvdXRlX2Z1bmMgLSBsb2NhbAogICAgICAg4pqh4pqh4pqhIE5ldHdvcmtpbmcgcm91dGVfZnVu
YyAtIGZvcndhcmQKICAgICAgIOKaoeKaoeKaoSBOZXR3b3JraW5nIFRDUDoga2VlcGFsaXZlIHRl
c3QKICAgICAgIOKaoeKaoeKaoSBOZXR3b3JraW5nIFVEUDogc29ja2V0CiAgICAgICDimqHimqHi
mqEgTmV0d29ya2luZyB0dW5uZWw6IGdlbmV2ZSBiYXNpYyB0ZXN0CiAgICAgICDimqHimqHimqEg
TmV0d29ya2luZyB0dW5uZWw6IGdyZSBiYXNpYwogICAgICAg4pqh4pqh4pqhIEwyVFAgYmFzaWMg
dGVzdAogICAgICAg4pqh4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiB2eGxhbiBiYXNpYwogICAg
ICAg4pqh4pqh4pqhIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0gdHJhbnNwb3J0CiAg
ICAgICDimqHimqHimqEgTmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgLSB0dW5uZWwKICAg
ICAgIOKaoeKaoeKaoSBMaWJrY2FwaSBBRl9BTEcgdGVzdAogICAgICAg4pqh4pqh4pqhIEFMU0Eg
UENNIGxvb3BiYWNrIHRlc3QKICAgICAgIOKaoeKaoeKaoSBBTFNBIENvbnRyb2wgKG1peGVyKSBV
c2Vyc3BhY2UgRWxlbWVudCB0ZXN0CiAgICAgICDimqHimqHimqEgc3RvcmFnZTogU0NTSSBWUEQK
ICAgICAgIPCfmqcg4pqh4pqh4pqhIENJRlMgQ29ubmVjdGF0aG9uCiAgICAgICDwn5qnIOKaoeKa
oeKaoSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlcwogICAgICAg8J+apyDimqHimqHimqEganZtIC0g
RGFDYXBvIEJlbmNobWFyayBTdWl0ZQogICAgICAg8J+apyDimqHimqHimqEganZtIC0gamNzdHJl
c3MgdGVzdHMKICAgICAgIPCfmqcg4pqh4pqh4pqhIE1lbW9yeSBmdW5jdGlvbjoga2FzbHIKICAg
ICAgIPCfmqcg4pqh4pqh4pqhIGF1ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVzdAogICAgICAg8J+a
pyDimqHimqHimqEgdHJhY2U6IGZ0cmFjZS90cmFjZXIKCiAgICBIb3N0IDI6CiAgICAgICDinIUg
Qm9vdCB0ZXN0CiAgICAgICDinIUgeGZzdGVzdHMgLSBleHQ0CiAgICAgICDinIUgeGZzdGVzdHMg
LSB4ZnMKICAgICAgIOKchSBzZWxpbnV4LXBvbGljeTogc2VyZ2UtdGVzdHN1aXRlCiAgICAgICDi
nIUgc3RvcmFnZTogc29mdHdhcmUgUkFJRCB0ZXN0aW5nCiAgICAgICDinIUgc3RyZXNzOiBzdHJl
c3MtbmcKICAgICAgIPCfmqcg4pyFIElQTUkgZHJpdmVyIHRlc3QKICAgICAgIPCfmqcg4pyFIElQ
TUl0b29sIGxvb3Agc3RyZXNzIHRlc3QKICAgICAgIPCfmqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMK
CiAgICBIb3N0IDM6CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgUG9kbWFuIHN5c3Rl
bSBpbnRlZ3JhdGlvbiB0ZXN0IC0gYXMgcm9vdAogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50
ZWdyYXRpb24gdGVzdCAtIGFzIHVzZXIKICAgICAgIOKchSBMVFAKICAgICAgIOKchSBNZW1vcnkg
ZnVuY3Rpb246IG1lbWZkX2NyZWF0ZQogICAgICAg4pyFIEFNVFUgKEFic3RyYWN0IE1hY2hpbmUg
VGVzdCBVdGlsaXR5KQogICAgICAg4pyFIE5ldHdvcmtpbmcgYnJpZGdlOiBzYW5pdHkKICAgICAg
IOKchSBFdGhlcm5ldCBkcml2ZXJzIHNhbml0eQogICAgICAg4pyFIE5ldHdvcmtpbmcgc29ja2V0
OiBmdXp6CiAgICAgICDinIUgTmV0d29ya2luZzogaWdtcCBjb25mb3JtYW5jZSB0ZXN0CiAgICAg
ICDinIUgTmV0d29ya2luZyByb3V0ZTogcG10dQogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVf
ZnVuYyAtIGxvY2FsCiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jIC0gZm9yd2FyZAog
ICAgICAg4pyFIE5ldHdvcmtpbmcgVENQOiBrZWVwYWxpdmUgdGVzdAogICAgICAg4pyFIE5ldHdv
cmtpbmcgVURQOiBzb2NrZXQKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogZ2VuZXZlIGJh
c2ljIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogZ3JlIGJhc2ljCiAgICAgICDi
nIUgTDJUUCBiYXNpYyB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJh
c2ljCiAgICAgICDinIUgTmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgLSB0cmFuc3BvcnQK
ICAgICAgIOKchSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyAtIHR1bm5lbAogICAgICAg
4pyFIExpYmtjYXBpIEFGX0FMRyB0ZXN0CiAgICAgICDinIUgQUxTQSBQQ00gbG9vcGJhY2sgdGVz
dAogICAgICAg4pyFIEFMU0EgQ29udHJvbCAobWl4ZXIpIFVzZXJzcGFjZSBFbGVtZW50IHRlc3QK
ICAgICAgIOKchSBzdG9yYWdlOiBTQ1NJIFZQRAogICAgICAg8J+apyDinIUgQ0lGUyBDb25uZWN0
YXRob24KICAgICAgIPCfmqcg4pyFIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzCiAgICAgICDwn5qn
IOKchSBqdm0gLSBEYUNhcG8gQmVuY2htYXJrIFN1aXRlCiAgICAgICDwn5qnIOKchSBqdm0gLSBq
Y3N0cmVzcyB0ZXN0cwogICAgICAg8J+apyDinIUgTWVtb3J5IGZ1bmN0aW9uOiBrYXNscgogICAg
ICAg8J+apyDinIUgYXVkaXQ6IGF1ZGl0IHRlc3RzdWl0ZSB0ZXN0CiAgICAgICDwn5qnIOKchSB0
cmFjZTogZnRyYWNlL3RyYWNlcgoKICBUZXN0IHNvdXJjZXM6IGh0dHBzOi8vZ2l0aHViLmNvbS9D
S0ktcHJvamVjdC90ZXN0cy1iZWFrZXIKICAgIPCfkpogUHVsbCByZXF1ZXN0cyBhcmUgd2VsY29t
ZSBmb3IgbmV3IHRlc3RzIG9yIGltcHJvdmVtZW50cyB0byBleGlzdGluZyB0ZXN0cyEKCkFib3J0
ZWQgdGVzdHMKLS0tLS0tLS0tLS0tLQpUZXN0cyB0aGF0IGRpZG4ndCBjb21wbGV0ZSBydW5uaW5n
IHN1Y2Nlc3NmdWxseSBhcmUgbWFya2VkIHdpdGgg4pqh4pqh4pqhLgpJZiB0aGlzIHdhcyBjYXVz
ZWQgYnkgYW4gaW5mcmFzdHJ1Y3R1cmUgaXNzdWUsIHdlIHRyeSB0byBtYXJrIHRoYXQKZXhwbGlj
aXRseSBpbiB0aGUgcmVwb3J0LgoKV2FpdmVkIHRlc3RzCi0tLS0tLS0tLS0tLQpJZiB0aGUgdGVz
dCBydW4gaW5jbHVkZWQgd2FpdmVkIHRlc3RzLCB0aGV5IGFyZSBtYXJrZWQgd2l0aCDwn5qnLiBT
dWNoIHRlc3RzIGFyZQpleGVjdXRlZCBidXQgdGhlaXIgcmVzdWx0cyBhcmUgbm90IHRha2VuIGlu
dG8gYWNjb3VudC4gVGVzdHMgYXJlIHdhaXZlZCB3aGVuCnRoZWlyIHJlc3VsdHMgYXJlIG5vdCBy
ZWxpYWJsZSBlbm91Z2gsIGUuZy4gd2hlbiB0aGV5J3JlIGp1c3QgaW50cm9kdWNlZCBvciBhcmUK
YmVpbmcgZml4ZWQuCgpUZXN0aW5nIHRpbWVvdXQKLS0tLS0tLS0tLS0tLS0tCldlIGFpbSB0byBw
cm92aWRlIGEgcmVwb3J0IHdpdGhpbiByZWFzb25hYmxlIHRpbWVmcmFtZS4gVGVzdHMgdGhhdCBo
YXZlbid0CmZpbmlzaGVkIHJ1bm5pbmcgeWV0IGFyZSBtYXJrZWQgd2l0aCDij7EuCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
