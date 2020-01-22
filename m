Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D00144A72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 04:30:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MqaWHVbfJ3WxNzxkUTSFVJzONOryy8JEJce563pN15w=; b=NCe
	CGPjKVis2EWBJjYVzfzR8jr1szAU85yfK9L51cLQSDZuod6T4NB8JqRtHrjwLHveSsITKMf6gZ7ZW
	yZQum/OGhX51KdM7qBKWKBH492lzIi0AymVPAZBN3yl4jSc2BFNSobVCcKnTvc62k70oemeK8JnLU
	rp9TNaqaJeiCyQmWfsw4We1/wcrmlyc+v8m1ZfW5TQq3sRtuXvuLNE6/BpN9unyEe1lHaBaEl/fd+
	D4guWpXU6OhngbRkBuO9yiuPmRVILmr0J++69WKvediMkdjd86IhFvEyxF0fHvrhCg8WrCJM7whXO
	nZBjofYqtobTdGrhdjmpRkt08qrCJwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu6j2-0003Rt-R6; Wed, 22 Jan 2020 03:30:40 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu6ir-0003RQ-Vp
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 03:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579663825;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Hwz6bq0VolYzVfIDFHV2RAQjKbxG1Q7uGhhEinEFv8c=;
 b=Bn9ZEpgZOt+juv229ahV7COB/4o0vhvCxMQf2JV9wiCJWt0I/Ol30tR5M+HBaGKNo0UJx9
 /wJU4RA2pUPrhSDdC/IvFa/7HrEuz0+XQuavbAQ+aJ44TGUIGzW1sAee6jrc0LjKnjMywe
 2TG++IOsFCh4Qsotd92bG2bUnmafjcI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-56-OWxWYJdANs2qneicKKhI9A-1; Tue, 21 Jan 2020 22:30:19 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B30D107ACC7;
 Wed, 22 Jan 2020 03:30:18 +0000 (UTC)
Received: from [172.54.60.66] (cpt-1031.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 608225DA7F;
 Wed, 22 Jan 2020 03:30:15 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.5.0-rc7-1fcfe76.cki
 (arm-next)
Date: Wed, 22 Jan 2020 03:30:14 -0000
Message-ID: <cki.05368272E6.GTW9I6MB2E@redhat.com>
X-Gitlab-Pipeline-ID: 396427
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/396427
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: OWxWYJdANs2qneicKKhI9A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_193030_096644_CC97DA23 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
bW1pdDogMWZjZmU3NjZhMTE5IC0gTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9jb3JlJyBpbnRvIGZv
ci1rZXJuZWxjaQoKVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBwcm92
aWRlZCBiZWxvdy4KCiAgICBPdmVyYWxsIHJlc3VsdDogUEFTU0VECiAgICAgICAgICAgICBNZXJn
ZTogT0sKICAgICAgICAgICBDb21waWxlOiBPSwogICAgICAgICAgICAgVGVzdHM6IE9LCgpBbGwg
a2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9y
IGRvd25sb2FkIGhlcmU6CgogIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBl
bGluZXMvMzk2NDI3CgpQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5b3UgaGF2ZSBhbnkg
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
