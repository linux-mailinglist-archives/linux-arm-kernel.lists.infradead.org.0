Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EA9146132
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 05:47:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5iSz7owakGs0OSnTn+uQbXeuXjtwkawWPJ//M2C+Oec=; b=Kp2
	xCJbS6uHefn8ET9Nu7eocZGJI7wpKAigFCyuY8ZBcrdPGe4ToyaN/Y56fT7MIBGnbTTiLUkh2u+zT
	NQAZEdnIzK+NW0qeut9dZS035G+HdVptcX70kjOi6HujHRMA7q+m6dWCEo9oemQEstVYESJGJAwuv
	jl7JS0rYokbKGqkUnB6+iCpKwvw8QEw5g3yFsJDmlq9NUVoHgWXxpFpP/1nhAf7CYiq4JpG6VUEPY
	IRuARb/5UFshAjRbo0QzY2mU9NIL2GzeZ0U+Fjp/usCVGAGX1rwddR1/zm56Q+EAcPou1nsCUPsYy
	6TR8+IUSvyfhHTISsqBn9SR931VEJQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuUOa-0000Z8-GX; Thu, 23 Jan 2020 04:47:08 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuUOQ-0000Yi-QY
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 04:47:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579754814;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Nq9CbAYooehL+dGc4fADDg2FOD3O+s184mCCvfWqvS8=;
 b=ZduulsMpbD6AZnGIWBnFJzUn/y/AY6xNkmxqMs60+vqVMfW2Q/qmrkFidSC1WkUuR202gy
 z/QpEoW8uYeYe3zrgq0CFcJXuq4dAzvsnllPWykzNb0aENeWX9sPI+hf6Nd86Gg0wrUGcd
 4YaiKe0F7Aol7rswbloLlpfL91O5Bl4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-J_tICzWpN1ewvO3hZwVHow-1; Wed, 22 Jan 2020 23:46:48 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 277B01902EA4;
 Thu, 23 Jan 2020 04:46:47 +0000 (UTC)
Received: from [172.54.60.66] (cpt-1031.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 68B525C299;
 Thu, 23 Jan 2020 04:46:44 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.5.0-rc7-7bf8ec4.cki
 (arm-next)
Date: Thu, 23 Jan 2020 04:46:44 -0000
Message-ID: <cki.B446ACF6E9.JM92XCPZZ6@redhat.com>
X-Gitlab-Pipeline-ID: 397898
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/397898
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: J_tICzWpN1ewvO3hZwVHow-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_204658_956842_6EB1C07B 
X-CRM114-Status: UNSURE (   7.36  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
bW1pdDogN2JmOGVjNDE1ODcxIC0gTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9jb3JlJyBpbnRvIGZv
ci1rZXJuZWxjaQoKVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBwcm92
aWRlZCBiZWxvdy4KCiAgICBPdmVyYWxsIHJlc3VsdDogUEFTU0VECiAgICAgICAgICAgICBNZXJn
ZTogT0sKICAgICAgICAgICBDb21waWxlOiBPSwogICAgICAgICAgICAgVGVzdHM6IE9LCgpBbGwg
a2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9y
IGRvd25sb2FkIGhlcmU6CgogIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBl
bGluZXMvMzk3ODk4CgpQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5b3UgaGF2ZSBhbnkg
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
MToKCiAgICAgICDimqEgSW50ZXJuYWwgaW5mcmFzdHJ1Y3R1cmUgaXNzdWVzIHByZXZlbnRlZCBv
bmUgb3IgbW9yZSB0ZXN0cyAobWFya2VkCiAgICAgICB3aXRoIOKaoeKaoeKaoSkgZnJvbSBydW5u
aW5nIG9uIHRoaXMgYXJjaGl0ZWN0dXJlLgogICAgICAgVGhpcyBpcyBub3QgdGhlIGZhdWx0IG9m
IHRoZSBrZXJuZWwgdGhhdCB3YXMgdGVzdGVkLgoKICAgICAgIOKchSBCb290IHRlc3QKICAgICAg
IOKchSBQb2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRlc3QgKGFzIHJvb3QpCiAgICAgICDinIUg
UG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlvbiB0ZXN0IChhcyB1c2VyKQogICAgICAg4pyFIExUUAog
ICAgICAg4pyFIExvb3BkZXYgU2FuaXR5CiAgICAgICDinIUgTWVtb3J5IGZ1bmN0aW9uOiBtZW1m
ZF9jcmVhdGUKICAgICAgIOKchSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkK
ICAgICAgIOKchSBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5CiAgICAgICDinIUgRXRoZXJuZXQg
ZHJpdmVycyBzYW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5nIE1BQ3NlYzogc2FuaXR5CiAgICAg
ICDimqHimqHimqEgTmV0d29ya2luZyBzb2NrZXQ6IGZ1enoKICAgICAgIOKaoeKaoeKaoSBOZXR3
b3JraW5nIHNjdHAtYXV0aDogc29ja29wdHMgdGVzdAogICAgICAg4pqh4pqh4pqhIE5ldHdvcmtp
bmc6IGlnbXAgY29uZm9ybWFuY2UgdGVzdAogICAgICAg4pqh4pqh4pqhIE5ldHdvcmtpbmcgcm91
dGU6IHBtdHUKICAgICAgIOKaoeKaoeKaoSBOZXR3b3JraW5nIHJvdXRlX2Z1bmM6IGxvY2FsCiAg
ICAgICDimqHimqHimqEgTmV0d29ya2luZyByb3V0ZV9mdW5jOiBmb3J3YXJkCiAgICAgICDimqHi
mqHimqEgTmV0d29ya2luZyBUQ1A6IGtlZXBhbGl2ZSB0ZXN0CiAgICAgICDimqHimqHimqEgTmV0
d29ya2luZyBVRFA6IHNvY2tldAogICAgICAg4pqh4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiBn
ZW5ldmUgYmFzaWMgdGVzdAogICAgICAg4pqh4pqh4pqhIE5ldHdvcmtpbmcgdHVubmVsOiBncmUg
YmFzaWMKICAgICAgIOKaoeKaoeKaoSBMMlRQIGJhc2ljIHRlc3QKICAgICAgIOKaoeKaoeKaoSBO
ZXR3b3JraW5nIHR1bm5lbDogdnhsYW4gYmFzaWMKICAgICAgIOKaoeKaoeKaoSBOZXR3b3JraW5n
IGlwc2VjOiBiYXNpYyBuZXRucyB0cmFuc3BvcnQKICAgICAgIOKaoeKaoeKaoSBOZXR3b3JraW5n
IGlwc2VjOiBiYXNpYyBuZXRucyB0dW5uZWwKICAgICAgIOKaoeKaoeKaoSBhdWRpdDogYXVkaXQg
dGVzdHN1aXRlIHRlc3QKICAgICAgIOKaoeKaoeKaoSBodHRwZDogbW9kX3NzbCBzbW9rZSBzYW5p
dHkKICAgICAgIOKaoeKaoeKaoSB0dW5lZDogdHVuZS1wcm9jZXNzZXMtdGhyb3VnaC1wZXJmCiAg
ICAgICDimqHimqHimqEgQUxTQSBQQ00gbG9vcGJhY2sgdGVzdAogICAgICAg4pqh4pqh4pqhIEFM
U0EgQ29udHJvbCAobWl4ZXIpIFVzZXJzcGFjZSBFbGVtZW50IHRlc3QKICAgICAgIOKaoeKaoeKa
oSBzdG9yYWdlOiBTQ1NJIFZQRAogICAgICAg4pqh4pqh4pqhIHRyYWNlOiBmdHJhY2UvdHJhY2Vy
CiAgICAgICDwn5qnIOKaoeKaoeKaoSBDSUZTIENvbm5lY3RhdGhvbgogICAgICAg8J+apyDimqHi
mqHimqEgUE9TSVggcGpkLWZzdGVzdCBzdWl0ZXMKICAgICAgIPCfmqcg4pqh4pqh4pqhIGp2bSB0
ZXN0IHN1aXRlCiAgICAgICDwn5qnIOKaoeKaoeKaoSBNZW1vcnkgZnVuY3Rpb246IGthc2xyCiAg
ICAgICDwn5qnIOKaoeKaoeKaoSBMVFA6IG9wZW5wb3NpeCB0ZXN0IHN1aXRlCiAgICAgICDwn5qn
IOKaoeKaoeKaoSBOZXR3b3JraW5nIHZuaWM6IGlwdmxhbi9iYXNpYwogICAgICAg8J+apyDimqHi
mqHimqEgaW90b3A6IHNhbml0eQogICAgICAg8J+apyDimqHimqHimqEgVXNleCAtIHZlcnNpb24g
MS45LTI5CiAgICAgICDwn5qnIOKaoeKaoeKaoSBzdG9yYWdlOiBkbS9jb21tb24KCiAgICBIb3N0
IDI6CgogICAgICAg4pqhIEludGVybmFsIGluZnJhc3RydWN0dXJlIGlzc3VlcyBwcmV2ZW50ZWQg
b25lIG9yIG1vcmUgdGVzdHMgKG1hcmtlZAogICAgICAgd2l0aCDimqHimqHimqEpIGZyb20gcnVu
bmluZyBvbiB0aGlzIGFyY2hpdGVjdHVyZS4KICAgICAgIFRoaXMgaXMgbm90IHRoZSBmYXVsdCBv
ZiB0aGUga2VybmVsIHRoYXQgd2FzIHRlc3RlZC4KCiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAg
ICDinIUgeGZzdGVzdHM6IGV4dDQKICAgICAgIOKaoeKaoeKaoSB4ZnN0ZXN0czogeGZzCiAgICAg
ICDimqHimqHimqEgc2VsaW51eC1wb2xpY3k6IHNlcmdlLXRlc3RzdWl0ZQogICAgICAg4pqh4pqh
4pqhIGx2bSB0aGlucCBzYW5pdHkKICAgICAgIOKaoeKaoeKaoSBzdG9yYWdlOiBzb2Z0d2FyZSBS
QUlEIHRlc3RpbmcKICAgICAgIOKaoeKaoeKaoSBzdHJlc3M6IHN0cmVzcy1uZwogICAgICAg8J+a
pyDimqHimqHimqEgSVBNSSBkcml2ZXIgdGVzdAogICAgICAg8J+apyDimqHimqHimqEgSVBNSXRv
b2wgbG9vcCBzdHJlc3MgdGVzdAogICAgICAg8J+apyDimqHimqHimqEgU3RvcmFnZSBibGt0ZXN0
cwoKICAgIEhvc3QgMzoKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSB4ZnN0ZXN0czog
ZXh0NAogICAgICAg4pyFIHhmc3Rlc3RzOiB4ZnMKICAgICAgIOKchSBzZWxpbnV4LXBvbGljeTog
c2VyZ2UtdGVzdHN1aXRlCiAgICAgICDinIUgbHZtIHRoaW5wIHNhbml0eQogICAgICAg4pyFIHN0
b3JhZ2U6IHNvZnR3YXJlIFJBSUQgdGVzdGluZwogICAgICAg4pyFIHN0cmVzczogc3RyZXNzLW5n
CiAgICAgICDwn5qnIOKchSBJUE1JIGRyaXZlciB0ZXN0CiAgICAgICDwn5qnIOKchSBJUE1JdG9v
bCBsb29wIHN0cmVzcyB0ZXN0CiAgICAgICDwn5qnIOKchSBTdG9yYWdlIGJsa3Rlc3RzCgogICAg
SG9zdCA0OgogICAgICAg4pyFIEJvb3QgdGVzdAogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50
ZWdyYXRpb24gdGVzdCAoYXMgcm9vdCkKICAgICAgIOKchSBQb2RtYW4gc3lzdGVtIGludGVncmF0
aW9uIHRlc3QgKGFzIHVzZXIpCiAgICAgICDinIUgTFRQCiAgICAgICDinIUgTG9vcGRldiBTYW5p
dHkKICAgICAgIOKchSBNZW1vcnkgZnVuY3Rpb246IG1lbWZkX2NyZWF0ZQogICAgICAg4pyFIEFN
VFUgKEFic3RyYWN0IE1hY2hpbmUgVGVzdCBVdGlsaXR5KQogICAgICAg4pyFIE5ldHdvcmtpbmcg
YnJpZGdlOiBzYW5pdHkKICAgICAgIOKchSBFdGhlcm5ldCBkcml2ZXJzIHNhbml0eQogICAgICAg
4pyFIE5ldHdvcmtpbmcgTUFDc2VjOiBzYW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5nIHNvY2tl
dDogZnV6egogICAgICAg4pyFIE5ldHdvcmtpbmcgc2N0cC1hdXRoOiBzb2Nrb3B0cyB0ZXN0CiAg
ICAgICDinIUgTmV0d29ya2luZzogaWdtcCBjb25mb3JtYW5jZSB0ZXN0CiAgICAgICDinIUgTmV0
d29ya2luZyByb3V0ZTogcG10dQogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYzogbG9j
YWwKICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlX2Z1bmM6IGZvcndhcmQKICAgICAgIOKchSBO
ZXR3b3JraW5nIFRDUDoga2VlcGFsaXZlIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIFVEUDog
c29ja2V0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdlbmV2ZSBiYXNpYyB0ZXN0CiAg
ICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdyZSBiYXNpYwogICAgICAg4pyFIEwyVFAgYmFz
aWMgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiB2eGxhbiBiYXNpYwogICAgICAg
4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIHRyYW5zcG9ydAogICAgICAg4pyFIE5l
dHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIHR1bm5lbAogICAgICAg4pyFIGF1ZGl0OiBhdWRp
dCB0ZXN0c3VpdGUgdGVzdAogICAgICAg4pyFIGh0dHBkOiBtb2Rfc3NsIHNtb2tlIHNhbml0eQog
ICAgICAg4pyFIHR1bmVkOiB0dW5lLXByb2Nlc3Nlcy10aHJvdWdoLXBlcmYKICAgICAgIOKchSBB
TFNBIFBDTSBsb29wYmFjayB0ZXN0CiAgICAgICDinIUgQUxTQSBDb250cm9sIChtaXhlcikgVXNl
cnNwYWNlIEVsZW1lbnQgdGVzdAogICAgICAg4pyFIHN0b3JhZ2U6IFNDU0kgVlBECiAgICAgICDi
nIUgdHJhY2U6IGZ0cmFjZS90cmFjZXIKICAgICAgIPCfmqcg4pyFIENJRlMgQ29ubmVjdGF0aG9u
CiAgICAgICDwn5qnIOKchSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlcwogICAgICAg8J+apyDinIUg
anZtIHRlc3Qgc3VpdGUKICAgICAgIPCfmqcg4pyFIE1lbW9yeSBmdW5jdGlvbjoga2FzbHIKICAg
ICAgIPCfmqcg4pyFIExUUDogb3BlbnBvc2l4IHRlc3Qgc3VpdGUKICAgICAgIPCfmqcg4pyFIE5l
dHdvcmtpbmcgdm5pYzogaXB2bGFuL2Jhc2ljCiAgICAgICDwn5qnIOKchSBpb3RvcDogc2FuaXR5
CiAgICAgICDwn5qnIOKchSBVc2V4IC0gdmVyc2lvbiAxLjktMjkKICAgICAgIPCfmqcg4pyFIHN0
b3JhZ2U6IGRtL2NvbW1vbgoKICBUZXN0IHNvdXJjZXM6IGh0dHBzOi8vZ2l0aHViLmNvbS9DS0kt
cHJvamVjdC90ZXN0cy1iZWFrZXIKICAgIPCfkpogUHVsbCByZXF1ZXN0cyBhcmUgd2VsY29tZSBm
b3IgbmV3IHRlc3RzIG9yIGltcHJvdmVtZW50cyB0byBleGlzdGluZyB0ZXN0cyEKCldhaXZlZCB0
ZXN0cwotLS0tLS0tLS0tLS0KSWYgdGhlIHRlc3QgcnVuIGluY2x1ZGVkIHdhaXZlZCB0ZXN0cywg
dGhleSBhcmUgbWFya2VkIHdpdGgg8J+apy4gU3VjaCB0ZXN0cyBhcmUKZXhlY3V0ZWQgYnV0IHRo
ZWlyIHJlc3VsdHMgYXJlIG5vdCB0YWtlbiBpbnRvIGFjY291bnQuIFRlc3RzIGFyZSB3YWl2ZWQg
d2hlbgp0aGVpciByZXN1bHRzIGFyZSBub3QgcmVsaWFibGUgZW5vdWdoLCBlLmcuIHdoZW4gdGhl
eSdyZSBqdXN0IGludHJvZHVjZWQgb3IgYXJlCmJlaW5nIGZpeGVkLgoKVGVzdGluZyB0aW1lb3V0
Ci0tLS0tLS0tLS0tLS0tLQpXZSBhaW0gdG8gcHJvdmlkZSBhIHJlcG9ydCB3aXRoaW4gcmVhc29u
YWJsZSB0aW1lZnJhbWUuIFRlc3RzIHRoYXQgaGF2ZW4ndApmaW5pc2hlZCBydW5uaW5nIGFyZSBt
YXJrZWQgd2l0aCDij7EuIFJlcG9ydHMgZm9yIG5vbi11cHN0cmVhbSBrZXJuZWxzIGhhdmUKYSBC
ZWFrZXIgcmVjaXBlIGxpbmtlZCB0byBuZXh0IHRvIGVhY2ggaG9zdC4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
