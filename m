Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D48F143656
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 05:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VMJIVOp9ctqBOPrYrDbBUqUkvuZlLRiPwVs8LAEZ8KA=; b=LcG
	rdvcfrE8xXuPw+W4T2A3Ctni51kWYn7EX0y94K01PM6hRe2yjdMd/Xraa/G4e01HoCYZ0i79/kmtY
	+6DaQ/Mg+KEd3IDOJG2kr0wdb3Cw8+jZOsKVHzuWsjX8f9apBvlKLSYN0E14nZKsHsa3WUxZFq7GP
	ULa1J2sRchA9OoLFmLGwZyY3JzQYORxDntTv3XI1MNukBUwWbibEpd8vNS4RQa3TlhbrAOWU7N57j
	/PQnETgIujmLOiENd48BhfYcW9SBlauolHOlTpN8ur7FFwVgfCXXt4Cg88mdjnmmGZsk7/BXUHgam
	DdSyCKkujmlU/YUG9nUkIs2gG7LMAww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itlPF-0005z3-OJ; Tue, 21 Jan 2020 04:44:49 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itlP2-0005yJ-Rv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 04:44:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579581874;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4uWK7kYtpw9rCYoHy0CHztMC/2aIraExZaNSv5cBx8o=;
 b=UL+U9PYC+Noa5kX6spQGcJ2E7fz22lmm67ucBPJF+2oidxNlbXU439nVYMNVkmGUFCpXSa
 Pr99kgVzb786vyxtrsjIzLtV3+1rQ4VgYGWqCXnlWT+bv/EuMtXGvcLu0KBVhD2+4w/mAp
 FCVx5ugbVJy2LxIjHTDuKQi/Zzf2EP8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-383-mZP9BFMpNZiKSPFLOfjysg-1; Mon, 20 Jan 2020 23:44:30 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0DC23800D41;
 Tue, 21 Jan 2020 04:44:29 +0000 (UTC)
Received: from [172.54.107.231] (cpt-1057.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.72])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 276CE10013A7;
 Tue, 21 Jan 2020 04:44:26 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.5.0-rc7-46158a3.cki
 (arm-next)
Date: Tue, 21 Jan 2020 04:44:25 -0000
Message-ID: <cki.EA53ACD5A8.VRQBCDWOGL@redhat.com>
X-Gitlab-Pipeline-ID: 394190
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/394190
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: mZP9BFMpNZiKSPFLOfjysg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_204437_088337_EA4CCB64 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBnaXQ6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0CiAgICAgICAgICAgIENv
bW1pdDogNDYxNThhMzYwYzNhIC0gTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9jb3JlJyBpbnRvIGZv
ci1rZXJuZWxjaQoKVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBwcm92
aWRlZCBiZWxvdy4KCiAgICBPdmVyYWxsIHJlc3VsdDogUEFTU0VECiAgICAgICAgICAgICBNZXJn
ZTogT0sKICAgICAgICAgICBDb21waWxlOiBPSwogICAgICAgICAgICAgVGVzdHM6IE9LCgpBbGwg
a2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9y
IGRvd25sb2FkIGhlcmU6CgogIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBl
bGluZXMvMzk0MTkwCgpQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5b3UgaGF2ZSBhbnkg
cXVlc3Rpb25zIGFib3V0IHRoZSB0ZXN0cyB0aGF0IHdlCnJhbiBvciBpZiB5b3UgaGF2ZSBhbnkg
c3VnZ2VzdGlvbnMgb24gaG93IHRvIG1ha2UgZnV0dXJlIHRlc3RzIG1vcmUgZWZmZWN0aXZlLgoK
ICAgICAgICAsLS4gICAsLS4KICAgICAgICggQyApICggSyApICBDb250aW51b3VzCiAgICAgICAg
YC0nLC0uYC0nICAgS2VybmVsCiAgICAgICAgICAoIEkgKSAgICAgSW50ZWdyYXRpb24KICAgICAg
ICAgICBgLScKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCgpDb21waWxlIHRlc3RpbmcKLS0tLS0tLS0t
LS0tLS0tCgpXZSBjb21waWxlZCB0aGUga2VybmVsIGZvciAxIGFyY2hpdGVjdHVyZToKCiAgICBh
YXJjaDY0OgogICAgICBtYWtlIG9wdGlvbnM6IC1qMzAgSU5TVEFMTF9NT0RfU1RSSVA9MSB0YXJn
ei1wa2cKCgpIYXJkd2FyZSB0ZXN0aW5nCi0tLS0tLS0tLS0tLS0tLS0KV2UgYm9vdGVkIGVhY2gg
a2VybmVsIGFuZCByYW4gdGhlIGZvbGxvd2luZyB0ZXN0czoKCiAgYWFyY2g2NDoKICAgIEhvc3Qg
MToKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSB4ZnN0ZXN0czogZXh0NAogICAgICAg
4pyFIHhmc3Rlc3RzOiB4ZnMKICAgICAgIOKchSBzZWxpbnV4LXBvbGljeTogc2VyZ2UtdGVzdHN1
aXRlCiAgICAgICDinIUgbHZtIHRoaW5wIHNhbml0eQogICAgICAg4pyFIHN0b3JhZ2U6IHNvZnR3
YXJlIFJBSUQgdGVzdGluZwogICAgICAg8J+apyDinIUgU3RvcmFnZSBibGt0ZXN0cwoKICAgIEhv
c3QgMjoKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSBQb2RtYW4gc3lzdGVtIGludGVn
cmF0aW9uIHRlc3QgKGFzIHJvb3QpCiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlv
biB0ZXN0IChhcyB1c2VyKQogICAgICAg4pyFIExUUAogICAgICAg4pyFIExvb3BkZXYgU2FuaXR5
CiAgICAgICDinIUgTWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9jcmVhdGUKICAgICAgIOKchSBBTVRV
IChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAgIOKchSBOZXR3b3JraW5nIGJy
aWRnZTogc2FuaXR5CiAgICAgICDinIUgRXRoZXJuZXQgZHJpdmVycyBzYW5pdHkKICAgICAgIOKc
hSBOZXR3b3JraW5nIE1BQ3NlYzogc2FuaXR5CiAgICAgICDinIUgTmV0d29ya2luZyBzb2NrZXQ6
IGZ1enoKICAgICAgIOKchSBOZXR3b3JraW5nIHNjdHAtYXV0aDogc29ja29wdHMgdGVzdAogICAg
ICAg4pyFIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVzdAogICAgICAg4pyFIE5ldHdv
cmtpbmcgcm91dGU6IHBtdHUKICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlX2Z1bmM6IGxvY2Fs
CiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jOiBmb3J3YXJkCiAgICAgICDinIUgTmV0
d29ya2luZyBUQ1A6IGtlZXBhbGl2ZSB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyBVRFA6IHNv
Y2tldAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5ldmUgYmFzaWMgdGVzdAogICAg
ICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKICAgICAgIOKchSBMMlRQIGJhc2lj
IHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogdnhsYW4gYmFzaWMKICAgICAgIOKc
hSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0cmFuc3BvcnQKICAgICAgIOKchSBOZXR3
b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0dW5uZWwKICAgICAgIOKchSBhdWRpdDogYXVkaXQg
dGVzdHN1aXRlIHRlc3QKICAgICAgIOKchSBodHRwZDogbW9kX3NzbCBzbW9rZSBzYW5pdHkKICAg
ICAgIOKchSB0dW5lZDogdHVuZS1wcm9jZXNzZXMtdGhyb3VnaC1wZXJmCiAgICAgICDinIUgQUxT
QSBQQ00gbG9vcGJhY2sgdGVzdAogICAgICAg4pyFIEFMU0EgQ29udHJvbCAobWl4ZXIpIFVzZXJz
cGFjZSBFbGVtZW50IHRlc3QKICAgICAgIOKchSBzdG9yYWdlOiBTQ1NJIFZQRAogICAgICAg4pyF
IHRyYWNlOiBmdHJhY2UvdHJhY2VyCiAgICAgICDwn5qnIOKchSBDSUZTIENvbm5lY3RhdGhvbgog
ICAgICAg8J+apyDinIUgUE9TSVggcGpkLWZzdGVzdCBzdWl0ZXMKICAgICAgIPCfmqcg4pyFIGp2
bSB0ZXN0IHN1aXRlCiAgICAgICDwn5qnIOKchSBNZW1vcnkgZnVuY3Rpb246IGthc2xyCiAgICAg
ICDwn5qnIOKchSBMVFA6IG9wZW5wb3NpeCB0ZXN0IHN1aXRlCiAgICAgICDwn5qnIOKchSBOZXR3
b3JraW5nIHZuaWM6IGlwdmxhbi9iYXNpYwogICAgICAg8J+apyDinIUgaW90b3A6IHNhbml0eQog
ICAgICAg8J+apyDinIUgVXNleCAtIHZlcnNpb24gMS45LTI5CiAgICAgICDwn5qnIOKchSBzdG9y
YWdlOiBkbS9jb21tb24KCiAgVGVzdCBzb3VyY2VzOiBodHRwczovL2dpdGh1Yi5jb20vQ0tJLXBy
b2plY3QvdGVzdHMtYmVha2VyCiAgICDwn5KaIFB1bGwgcmVxdWVzdHMgYXJlIHdlbGNvbWUgZm9y
IG5ldyB0ZXN0cyBvciBpbXByb3ZlbWVudHMgdG8gZXhpc3RpbmcgdGVzdHMhCgpXYWl2ZWQgdGVz
dHMKLS0tLS0tLS0tLS0tCklmIHRoZSB0ZXN0IHJ1biBpbmNsdWRlZCB3YWl2ZWQgdGVzdHMsIHRo
ZXkgYXJlIG1hcmtlZCB3aXRoIPCfmqcuIFN1Y2ggdGVzdHMgYXJlCmV4ZWN1dGVkIGJ1dCB0aGVp
ciByZXN1bHRzIGFyZSBub3QgdGFrZW4gaW50byBhY2NvdW50LiBUZXN0cyBhcmUgd2FpdmVkIHdo
ZW4KdGhlaXIgcmVzdWx0cyBhcmUgbm90IHJlbGlhYmxlIGVub3VnaCwgZS5nLiB3aGVuIHRoZXkn
cmUganVzdCBpbnRyb2R1Y2VkIG9yIGFyZQpiZWluZyBmaXhlZC4KClRlc3RpbmcgdGltZW91dAot
LS0tLS0tLS0tLS0tLS0KV2UgYWltIHRvIHByb3ZpZGUgYSByZXBvcnQgd2l0aGluIHJlYXNvbmFi
bGUgdGltZWZyYW1lLiBUZXN0cyB0aGF0IGhhdmVuJ3QKZmluaXNoZWQgcnVubmluZyBhcmUgbWFy
a2VkIHdpdGgg4o+xLiBSZXBvcnRzIGZvciBub24tdXBzdHJlYW0ga2VybmVscyBoYXZlCmEgQmVh
a2VyIHJlY2lwZSBsaW5rZWQgdG8gbmV4dCB0byBlYWNoIGhvc3QuCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
