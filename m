Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196801C6592
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 03:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DPXBbBL8eHlpjPNk4TH+3clwie3uGn9PmQSG1+kab3M=; b=ENM
	5qbd/UsZBXikkTSNHnz/6ayRiq0SWHLV/sSuywaJoZIv/JGqq6hXqLSXGszvTa514bcbP8hoh/HVV
	UOQQCuHyz1IIcRpllnneqzX7lfy2M69CH2Yhujmcyj07ViR50/034PxknrISxO1cDO5HLoWsNZ/Ew
	J4gEZepyyNKh8fjACBm7Eh9vseN10IDO/qJam0uiEH42jFc+uF/FG5i6e+Bc+/jUY1jSIgXOax84m
	+q3Ae4z9Xa9xtgSvOHC+9NTZO+CZrS6jBGPfUsaUP3eHXifhTtNSEuQQwb1NK0LjWaWGNk5nBVS7M
	HPKz3tqjPyk0j5O7APrArajTJIq69Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW8zL-0003vK-MY; Wed, 06 May 2020 01:36:43 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW8zF-0003tR-6M
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 01:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588728994;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=LewfzYhV0mpH9TetZzG/FYdzRaeDxF6kOaUYTOo//dI=;
 b=fKknr64H8nAR1P3OUNPnTsCfxpsyjH7e7jhP09R89NTeHUlrQmVJMP/q+Ywj/ApzVmctt4
 HuM2CudYE1+H8J0H1RxUu8ByHrlNVoXHcjaC72Fub8OoQzF2Ro5yxFa8Htoq3gOrzQ24qy
 tQTh8zH+DUi107PulGUw1gfTjFePgpA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-Qn3FKdx5MTilTTo-fzn0dg-1; Tue, 05 May 2020 21:36:29 -0400
X-MC-Unique: Qn3FKdx5MTilTTo-fzn0dg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4356B468;
 Wed,  6 May 2020 01:36:28 +0000 (UTC)
Received: from [172.54.77.132] (cpt-1034.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 087A45D9C5;
 Wed,  6 May 2020 01:36:24 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.7.0-rc4-5afd75f.cki
 (arm-next)
Date: Wed, 06 May 2020 01:36:24 -0000
Message-ID: <cki.F981D5F794.2J0NSG5OXN@redhat.com>
X-Gitlab-Pipeline-ID: 558241
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/558241
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_183637_307107_1F80354F 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKICAgICAgICAgICAg
Q29tbWl0OiA1YWZkNzVmZmIwYjEgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L2NvcmUnIGludG8g
Zm9yLWtlcm5lbGNpCgpUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHBy
b3ZpZGVkIGJlbG93LgoKICAgIE92ZXJhbGwgcmVzdWx0OiBQQVNTRUQKICAgICAgICAgICAgIE1l
cmdlOiBPSwogICAgICAgICAgIENvbXBpbGU6IE9LCiAgICAgICAgICAgICBUZXN0czogT0sKCkFs
bCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBm
b3IgZG93bmxvYWQgaGVyZToKCiAgaHR0cHM6Ly9ja2ktYXJ0aWZhY3RzLnMzLnVzLWVhc3QtMi5h
bWF6b25hd3MuY29tL2luZGV4Lmh0bWw/cHJlZml4PWRhdGF3YXJlaG91c2UvMjAyMC8wNS8wNS81
NTgyNDEKClBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsIGlmIHlvdSBoYXZlIGFueSBxdWVzdGlv
bnMgYWJvdXQgdGhlIHRlc3RzIHRoYXQgd2UKcmFuIG9yIGlmIHlvdSBoYXZlIGFueSBzdWdnZXN0
aW9ucyBvbiBob3cgdG8gbWFrZSBmdXR1cmUgdGVzdHMgbW9yZSBlZmZlY3RpdmUuCgogICAgICAg
ICwtLiAgICwtLgogICAgICAgKCBDICkgKCBLICkgIENvbnRpbnVvdXMKICAgICAgICBgLScsLS5g
LScgICBLZXJuZWwKICAgICAgICAgICggSSApICAgICBJbnRlZ3JhdGlvbgogICAgICAgICAgIGAt
JwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KCkNvbXBpbGUgdGVzdGluZwotLS0tLS0tLS0tLS0tLS0K
CldlIGNvbXBpbGVkIHRoZSBrZXJuZWwgZm9yIDEgYXJjaGl0ZWN0dXJlOgoKICAgIGFhcmNoNjQ6
CiAgICAgIG1ha2Ugb3B0aW9uczogLWozMCBJTlNUQUxMX01PRF9TVFJJUD0xIHRhcmd6LXBrZwoK
CgpIYXJkd2FyZSB0ZXN0aW5nCi0tLS0tLS0tLS0tLS0tLS0KV2UgYm9vdGVkIGVhY2gga2VybmVs
IGFuZCByYW4gdGhlIGZvbGxvd2luZyB0ZXN0czoKCiAgYWFyY2g2NDoKICAgIEhvc3QgMToKICAg
ICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSB4ZnN0ZXN0cyAtIGV4dDQKICAgICAgIOKchSB4
ZnN0ZXN0cyAtIHhmcwogICAgICAg4pyFIHNlbGludXgtcG9saWN5OiBzZXJnZS10ZXN0c3VpdGUK
ICAgICAgIOKchSBsdm0gdGhpbnAgc2FuaXR5CiAgICAgICDinIUgc3RvcmFnZTogc29mdHdhcmUg
UkFJRCB0ZXN0aW5nCiAgICAgICDwn5qnIOKchSBTdG9yYWdlIGJsa3Rlc3RzCgogICAgSG9zdCAy
OgogICAgICAg4pyFIEJvb3QgdGVzdAogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRp
b24gdGVzdCAtIGFzIHJvb3QKICAgICAgIOKchSBQb2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRl
c3QgLSBhcyB1c2VyCiAgICAgICDinIUgTFRQCiAgICAgICDinIUgTG9vcGRldiBTYW5pdHkKICAg
ICAgIOKchSBNZW1vcnkgZnVuY3Rpb246IG1lbWZkX2NyZWF0ZQogICAgICAg4pyFIEFNVFUgKEFi
c3RyYWN0IE1hY2hpbmUgVGVzdCBVdGlsaXR5KQogICAgICAg4pyFIE5ldHdvcmtpbmcgYnJpZGdl
OiBzYW5pdHkKICAgICAgIOKchSBFdGhlcm5ldCBkcml2ZXJzIHNhbml0eQogICAgICAg4pyFIE5l
dHdvcmtpbmcgTUFDc2VjOiBzYW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5nIHNvY2tldDogZnV6
egogICAgICAg4pyFIE5ldHdvcmtpbmcgc2N0cC1hdXRoOiBzb2Nrb3B0cyB0ZXN0CiAgICAgICDi
nIUgTmV0d29ya2luZzogaWdtcCBjb25mb3JtYW5jZSB0ZXN0CiAgICAgICDinIUgTmV0d29ya2lu
ZyByb3V0ZTogcG10dQogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYyAtIGxvY2FsCiAg
ICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jIC0gZm9yd2FyZAogICAgICAg4pyFIE5ldHdv
cmtpbmcgVENQOiBrZWVwYWxpdmUgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgVURQOiBzb2Nr
ZXQKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogZ2VuZXZlIGJhc2ljIHRlc3QKICAgICAg
IOKchSBOZXR3b3JraW5nIHR1bm5lbDogZ3JlIGJhc2ljCiAgICAgICDinIUgTDJUUCBiYXNpYyB0
ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJhc2ljCiAgICAgICDinIUg
TmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgLSB0cmFuc3BvcnQKICAgICAgIOKchSBOZXR3
b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyAtIHR1bm5lbAogICAgICAg4pyFIGh0dHBkOiBtb2Rf
c3NsIHNtb2tlIHNhbml0eQogICAgICAg4pyFIHR1bmVkOiB0dW5lLXByb2Nlc3Nlcy10aHJvdWdo
LXBlcmYKICAgICAgIOKchSBBTFNBIFBDTSBsb29wYmFjayB0ZXN0CiAgICAgICDinIUgQUxTQSBD
b250cm9sIChtaXhlcikgVXNlcnNwYWNlIEVsZW1lbnQgdGVzdAogICAgICAg4pyFIFVzZXggLSB2
ZXJzaW9uIDEuOS0yOQogICAgICAg4pyFIHN0b3JhZ2U6IFNDU0kgVlBECiAgICAgICDwn5qnIOKc
hSBDSUZTIENvbm5lY3RhdGhvbgogICAgICAg8J+apyDinIUgUE9TSVggcGpkLWZzdGVzdCBzdWl0
ZXMKICAgICAgIPCfmqcg4pyFIGp2bSAtIERhQ2FwbyBCZW5jaG1hcmsgU3VpdGUKICAgICAgIPCf
mqcg4pyFIGp2bSAtIGpjc3RyZXNzIHRlc3RzCiAgICAgICDwn5qnIOKchSBNZW1vcnkgZnVuY3Rp
b246IGthc2xyCiAgICAgICDwn5qnIOKchSBMVFA6IG9wZW5wb3NpeCB0ZXN0IHN1aXRlCiAgICAg
ICDwn5qnIOKchSBOZXR3b3JraW5nIHZuaWM6IGlwdmxhbi9iYXNpYwogICAgICAg8J+apyDinIUg
YXVkaXQ6IGF1ZGl0IHRlc3RzdWl0ZSB0ZXN0CiAgICAgICDwn5qnIOKchSBpb3RvcDogc2FuaXR5
CiAgICAgICDwn5qnIOKchSBzdG9yYWdlOiBkbS9jb21tb24KICAgICAgIOKPsSAgdHJhY2U6IGZ0
cmFjZS90cmFjZXIKCiAgVGVzdCBzb3VyY2VzOiBodHRwczovL2dpdGh1Yi5jb20vQ0tJLXByb2pl
Y3QvdGVzdHMtYmVha2VyCiAgICDwn5KaIFB1bGwgcmVxdWVzdHMgYXJlIHdlbGNvbWUgZm9yIG5l
dyB0ZXN0cyBvciBpbXByb3ZlbWVudHMgdG8gZXhpc3RpbmcgdGVzdHMhCgpBYm9ydGVkIHRlc3Rz
Ci0tLS0tLS0tLS0tLS0KVGVzdHMgdGhhdCBkaWRuJ3QgY29tcGxldGUgcnVubmluZyBzdWNjZXNz
ZnVsbHkgYXJlIG1hcmtlZCB3aXRoIOKaoeKaoeKaoS4KSWYgdGhpcyB3YXMgY2F1c2VkIGJ5IGFu
IGluZnJhc3RydWN0dXJlIGlzc3VlLCB3ZSB0cnkgdG8gbWFyayB0aGF0CmV4cGxpY2l0bHkgaW4g
dGhlIHJlcG9ydC4KCldhaXZlZCB0ZXN0cwotLS0tLS0tLS0tLS0KSWYgdGhlIHRlc3QgcnVuIGlu
Y2x1ZGVkIHdhaXZlZCB0ZXN0cywgdGhleSBhcmUgbWFya2VkIHdpdGgg8J+apy4gU3VjaCB0ZXN0
cyBhcmUKZXhlY3V0ZWQgYnV0IHRoZWlyIHJlc3VsdHMgYXJlIG5vdCB0YWtlbiBpbnRvIGFjY291
bnQuIFRlc3RzIGFyZSB3YWl2ZWQgd2hlbgp0aGVpciByZXN1bHRzIGFyZSBub3QgcmVsaWFibGUg
ZW5vdWdoLCBlLmcuIHdoZW4gdGhleSdyZSBqdXN0IGludHJvZHVjZWQgb3IgYXJlCmJlaW5nIGZp
eGVkLgoKVGVzdGluZyB0aW1lb3V0Ci0tLS0tLS0tLS0tLS0tLQpXZSBhaW0gdG8gcHJvdmlkZSBh
IHJlcG9ydCB3aXRoaW4gcmVhc29uYWJsZSB0aW1lZnJhbWUuIFRlc3RzIHRoYXQgaGF2ZW4ndApm
aW5pc2hlZCBydW5uaW5nIHlldCBhcmUgbWFya2VkIHdpdGgg4o+xLgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
