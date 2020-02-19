Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E297D164FD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 21:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Rqx/HvS8zHSeA7fLyaa8231QpIBD9tjwtPTtCfmnpvQ=; b=Q4v
	nouC3vyFzMi48u81tO4z6pRHWO1FemcStRrb+M53B7lVI9APQ+muxmWGWfXoHOrKdBvh0l/1wmi0J
	pTpgCF4A6kzR9mhsH60k4/xOFA5jG4Trjy2EbgTAZgKU7Iozl6Aps2j5bHKvmh7Y+9u2A7Hay9RJH
	prQvFU3PpeTcbyos/efOEhwdfBJW1g97QoSItazttdMdvE0rJNZIsHspqPC6sK6xwnncYoggAwoJW
	OTv7s0D1MPXOHQChjYgVg+P7RJypvVJkQu/RqkKDFEiQ1YM6tnn73kZzE5+d4odqCoCfG43SGJpio
	YPWg+wjAwZOvCjDUSQ1agi/KzCSZnZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Vwv-00072A-Ir; Wed, 19 Feb 2020 20:28:01 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Vwn-00070N-19
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 20:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582144068;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZcVM2DnwIwNOpeeVeNrgXG4zhwXPbL66vpzceb1m5f4=;
 b=W/p0/ARRG23cgEmEb5FKaTIyMTsB2aOrlDYryT892fJw37qP3ktgR5/PEmZ0jZmOHs2+cI
 dONOq72xqI1CcrwWoFxMlvo0Knrw2Xw2dkKyil8DhcFBJdmHtyB8MhtHmjECOHa9V/dWzm
 2oSNGDkY0Png/SHtXAKv+PftpAWMp8g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-126-gwESrzr1OTqXAZFYHBPy0A-1; Wed, 19 Feb 2020 15:27:40 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9360C801E7B;
 Wed, 19 Feb 2020 20:27:39 +0000 (UTC)
Received: from [172.54.122.250] (cpt-1052.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B4C15DA76;
 Wed, 19 Feb 2020 20:27:36 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.6.0-rc1-374fdad.cki
 (arm-next)
Date: Wed, 19 Feb 2020 20:27:36 -0000
Message-ID: <cki.E910FE07BF.G2ERJ7BVNV@redhat.com>
X-Gitlab-Pipeline-ID: 446273
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/446273
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: gwESrzr1OTqXAZFYHBPy0A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_122753_150599_DEF0C47C 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
bW1pdDogMzc0ZmRhZDRiMmQ4IC0gbW06IEF2b2lkIGNyZWF0aW5nIHZpcnR1YWwgYWRkcmVzcyBh
bGlhc2VzIGluIGJyaygpL21tYXAoKS9tcmVtYXAoKQoKVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0
b21hdGVkIHRlc3RzIGFyZSBwcm92aWRlZCBiZWxvdy4KCiAgICBPdmVyYWxsIHJlc3VsdDogUEFT
U0VECiAgICAgICAgICAgICBNZXJnZTogT0sKICAgICAgICAgICBDb21waWxlOiBPSwogICAgICAg
ICAgICAgVGVzdHM6IE9LCgpBbGwga2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBs
b2dzIGFyZSBhdmFpbGFibGUgZm9yIGRvd25sb2FkIGhlcmU6CgogIGh0dHBzOi8vY2tpLWFydGlm
YWN0cy5zMy51cy1lYXN0LTIuYW1hem9uYXdzLmNvbS9pbmRleC5odG1sP3ByZWZpeD1kYXRhd2Fy
ZWhvdXNlLzIwMjAvMDIvMTkvNDQ2MjczCgpQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5
b3UgaGF2ZSBhbnkgcXVlc3Rpb25zIGFib3V0IHRoZSB0ZXN0cyB0aGF0IHdlCnJhbiBvciBpZiB5
b3UgaGF2ZSBhbnkgc3VnZ2VzdGlvbnMgb24gaG93IHRvIG1ha2UgZnV0dXJlIHRlc3RzIG1vcmUg
ZWZmZWN0aXZlLgoKICAgICAgICAsLS4gICAsLS4KICAgICAgICggQyApICggSyApICBDb250aW51
b3VzCiAgICAgICAgYC0nLC0uYC0nICAgS2VybmVsCiAgICAgICAgICAoIEkgKSAgICAgSW50ZWdy
YXRpb24KICAgICAgICAgICBgLScKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCgpDb21waWxlIHRlc3Rp
bmcKLS0tLS0tLS0tLS0tLS0tCgpXZSBjb21waWxlZCB0aGUga2VybmVsIGZvciAxIGFyY2hpdGVj
dHVyZToKCiAgICBhYXJjaDY0OgogICAgICBtYWtlIG9wdGlvbnM6IC1qMzAgSU5TVEFMTF9NT0Rf
U1RSSVA9MSB0YXJnei1wa2cKCgpIYXJkd2FyZSB0ZXN0aW5nCi0tLS0tLS0tLS0tLS0tLS0KV2Ug
Ym9vdGVkIGVhY2gga2VybmVsIGFuZCByYW4gdGhlIGZvbGxvd2luZyB0ZXN0czoKCiAgYWFyY2g2
NDoKICAgIEhvc3QgMToKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSB4ZnN0ZXN0cyAt
IGV4dDQKICAgICAgIOKchSB4ZnN0ZXN0cyAtIHhmcwogICAgICAg4pyFIHNlbGludXgtcG9saWN5
OiBzZXJnZS10ZXN0c3VpdGUKICAgICAgIOKchSBsdm0gdGhpbnAgc2FuaXR5CiAgICAgICDinIUg
c3RvcmFnZTogc29mdHdhcmUgUkFJRCB0ZXN0aW5nCiAgICAgICDinIUgc3RyZXNzOiBzdHJlc3Mt
bmcKICAgICAgIPCfmqcg4pyFIElQTUkgZHJpdmVyIHRlc3QKICAgICAgIPCfmqcg4pyFIElQTUl0
b29sIGxvb3Agc3RyZXNzIHRlc3QKICAgICAgIPCfmqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMKCiAg
ICBIb3N0IDI6CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBp
bnRlZ3JhdGlvbiB0ZXN0IC0gYXMgcm9vdAogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdy
YXRpb24gdGVzdCAtIGFzIHVzZXIKICAgICAgIOKchSBMVFAKICAgICAgIOKchSBMb29wZGV2IFNh
bml0eQogICAgICAg4pyFIE1lbW9yeSBmdW5jdGlvbjogbWVtZmRfY3JlYXRlCiAgICAgICDinIUg
QU1UVSAoQWJzdHJhY3QgTWFjaGluZSBUZXN0IFV0aWxpdHkpCiAgICAgICDinIUgTmV0d29ya2lu
ZyBicmlkZ2U6IHNhbml0eQogICAgICAg4pyFIEV0aGVybmV0IGRyaXZlcnMgc2FuaXR5CiAgICAg
ICDinIUgTmV0d29ya2luZyBNQUNzZWM6IHNhbml0eQogICAgICAg4pyFIE5ldHdvcmtpbmcgc29j
a2V0OiBmdXp6CiAgICAgICDinIUgTmV0d29ya2luZyBzY3RwLWF1dGg6IHNvY2tvcHRzIHRlc3QK
ICAgICAgIOKchSBOZXR3b3JraW5nOiBpZ21wIGNvbmZvcm1hbmNlIHRlc3QKICAgICAgIOKchSBO
ZXR3b3JraW5nIHJvdXRlOiBwbXR1CiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jIC0g
bG9jYWwKICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlX2Z1bmMgLSBmb3J3YXJkCiAgICAgICDi
nIUgTmV0d29ya2luZyBUQ1A6IGtlZXBhbGl2ZSB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyBV
RFA6IHNvY2tldAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5ldmUgYmFzaWMgdGVz
dAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKICAgICAgIOKchSBMMlRQ
IGJhc2ljIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogdnhsYW4gYmFzaWMKICAg
ICAgIOKchSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyAtIHRyYW5zcG9ydAogICAgICAg
4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0gdHVubmVsCiAgICAgICDinIUgYXVk
aXQ6IGF1ZGl0IHRlc3RzdWl0ZSB0ZXN0CiAgICAgICDinIUgaHR0cGQ6IG1vZF9zc2wgc21va2Ug
c2FuaXR5CiAgICAgICDinIUgdHVuZWQ6IHR1bmUtcHJvY2Vzc2VzLXRocm91Z2gtcGVyZgogICAg
ICAg4pyFIEFMU0EgUENNIGxvb3BiYWNrIHRlc3QKICAgICAgIOKchSBBTFNBIENvbnRyb2wgKG1p
eGVyKSBVc2Vyc3BhY2UgRWxlbWVudCB0ZXN0CiAgICAgICDinIUgc3RvcmFnZTogU0NTSSBWUEQK
ICAgICAgIOKchSB0cmFjZTogZnRyYWNlL3RyYWNlcgogICAgICAg8J+apyDinIUgQ0lGUyBDb25u
ZWN0YXRob24KICAgICAgIPCfmqcg4pyFIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzCiAgICAgICDw
n5qnIOKchSBqdm0gLSBEYUNhcG8gQmVuY2htYXJrIFN1aXRlCiAgICAgICDwn5qnIOKchSBqdm0g
LSBqY3N0cmVzcyB0ZXN0cwogICAgICAg8J+apyDinIUgTWVtb3J5IGZ1bmN0aW9uOiBrYXNscgog
ICAgICAg8J+apyDinIUgTFRQOiBvcGVucG9zaXggdGVzdCBzdWl0ZQogICAgICAg8J+apyDinIUg
TmV0d29ya2luZyB2bmljOiBpcHZsYW4vYmFzaWMKICAgICAgIPCfmqcg4pyFIGlvdG9wOiBzYW5p
dHkKICAgICAgIPCfmqcg4pyFIFVzZXggLSB2ZXJzaW9uIDEuOS0yOQogICAgICAg8J+apyDinIUg
c3RvcmFnZTogZG0vY29tbW9uCgogIFRlc3Qgc291cmNlczogaHR0cHM6Ly9naXRodWIuY29tL0NL
SS1wcm9qZWN0L3Rlc3RzLWJlYWtlcgogICAg8J+SmiBQdWxsIHJlcXVlc3RzIGFyZSB3ZWxjb21l
IGZvciBuZXcgdGVzdHMgb3IgaW1wcm92ZW1lbnRzIHRvIGV4aXN0aW5nIHRlc3RzIQoKV2FpdmVk
IHRlc3RzCi0tLS0tLS0tLS0tLQpJZiB0aGUgdGVzdCBydW4gaW5jbHVkZWQgd2FpdmVkIHRlc3Rz
LCB0aGV5IGFyZSBtYXJrZWQgd2l0aCDwn5qnLiBTdWNoIHRlc3RzIGFyZQpleGVjdXRlZCBidXQg
dGhlaXIgcmVzdWx0cyBhcmUgbm90IHRha2VuIGludG8gYWNjb3VudC4gVGVzdHMgYXJlIHdhaXZl
ZCB3aGVuCnRoZWlyIHJlc3VsdHMgYXJlIG5vdCByZWxpYWJsZSBlbm91Z2gsIGUuZy4gd2hlbiB0
aGV5J3JlIGp1c3QgaW50cm9kdWNlZCBvciBhcmUKYmVpbmcgZml4ZWQuCgpUZXN0aW5nIHRpbWVv
dXQKLS0tLS0tLS0tLS0tLS0tCldlIGFpbSB0byBwcm92aWRlIGEgcmVwb3J0IHdpdGhpbiByZWFz
b25hYmxlIHRpbWVmcmFtZS4gVGVzdHMgdGhhdCBoYXZlbid0CmZpbmlzaGVkIHJ1bm5pbmcgeWV0
IGFyZSBtYXJrZWQgd2l0aCDij7EuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
