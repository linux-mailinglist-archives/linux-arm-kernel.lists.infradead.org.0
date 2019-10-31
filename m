Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69830EB8D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:17:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7M7ggzFK93O7H6K5hP0NTDZ9mS+HagH53G+rBhnl/7Q=; b=fal
	VmmVKPFchOmiunAT6P1i8S6E8eI7QxIKe6QOLXy+rWir7xmJyoFNS80eUOOLz2nh5vKGcVuF/hdtI
	KYpzIghfeHDoC7S3v1YqFoTdgtPPnzS64pP+KIOxqKiK5Pres0bh1k0N29GBNlNW7V58wDC3MpJog
	kNeIzgcD1EMOkb4+GyyVvkrZYGfScuMXwVof3rwpY4nUsRMAVopgH3B2HeAQZ99HozTcCfcKlG1tl
	UvUgqmlYSEYunZx61TRXXFFUL1R4hSoNWJRlWn7Y8hwfl5yxI9CXQD1a858TIdVuq/y3xbH42imIz
	GaGv5FsB986RVcQnfJuhtWVrQLNeHtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQHod-0006Rm-Uq; Thu, 31 Oct 2019 21:17:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQHoT-0006RL-Px
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572556620;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=S44M/X6iqxSwixdNLnXZ+Q6xqYiwKV+YBJFvzHD8E58=;
 b=Tp4KAp8Cw2e+jIY++eo8cB3PjYLyTP2cZJAMnuH02uZZs71jnTQRl5Mk1iqn9LQfRbSaAg
 8pw7WEN0ei0M82lxlqOF2HYhZ6Y1YIzp2F/xLrTOVBD+/tktw2wSJ4dtr90QqwxVAv+1O6
 ybV2s2Euq/RqmWfJUwFKEDlhS/wUZsM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-133-aE3N_8BpNVWl5gl7rSCxaw-1; Thu, 31 Oct 2019 17:16:56 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59D49800D49;
 Thu, 31 Oct 2019 21:16:55 +0000 (UTC)
Received: from [172.54.37.191] (cpt-1013.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.28])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 534235D9D6;
 Thu, 31 Oct 2019 21:16:52 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.4.0-rc5-07d0b0a.cki
 (arm-next)
Date: Thu, 31 Oct 2019 21:16:52 -0000
Message-ID: <cki.D43EEE47CB.7I99FDZPL3@redhat.com>
X-Gitlab-Pipeline-ID: 259383
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/259383
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: aE3N_8BpNVWl5gl7rSCxaw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_141701_972364_A8D1C796 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
bW1pdDogMDdkMGIwYWJiNDViIC0gTWVyZ2UgYnJhbmNoZXMgJ2Zvci1uZXh0L2NvcmUnLCAnZm9y
LW5leHQvZml4ZXMnLCAnZm9yLW5leHQvcGVyZicgYW5kICdyZWZjb3VudC9mdWxsJywgcmVtb3Rl
LXRyYWNraW5nIGJyYW5jaCAnYXJtNjQvZm9yLW5leHQvbWVtb3J5LWhvdHJlbW92ZScgaW50byBm
b3Ita2VybmVsY2kKClRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJv
dmlkZWQgYmVsb3cuCgogICAgT3ZlcmFsbCByZXN1bHQ6IFBBU1NFRAogICAgICAgICAgICAgTWVy
Z2U6IE9LCiAgICAgICAgICAgQ29tcGlsZTogT0sKICAgICAgICAgICAgIFRlc3RzOiBPSwoKQWxs
IGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZv
ciBkb3dubG9hZCBoZXJlOgoKICBodHRwczovL2FydGlmYWN0cy5ja2ktcHJvamVjdC5vcmcvcGlw
ZWxpbmVzLzI1OTM4MwoKUGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWwgaWYgeW91IGhhdmUgYW55
IHF1ZXN0aW9ucyBhYm91dCB0aGUgdGVzdHMgdGhhdCB3ZQpyYW4gb3IgaWYgeW91IGhhdmUgYW55
IHN1Z2dlc3Rpb25zIG9uIGhvdyB0byBtYWtlIGZ1dHVyZSB0ZXN0cyBtb3JlIGVmZmVjdGl2ZS4K
CiAgICAgICAgLC0uICAgLC0uCiAgICAgICAoIEMgKSAoIEsgKSAgQ29udGludW91cwogICAgICAg
IGAtJywtLmAtJyAgIEtlcm5lbAogICAgICAgICAgKCBJICkgICAgIEludGVncmF0aW9uCiAgICAg
ICAgICAgYC0nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwoKQ29tcGlsZSB0ZXN0aW5nCi0tLS0tLS0t
LS0tLS0tLQoKV2UgY29tcGlsZWQgdGhlIGtlcm5lbCBmb3IgMSBhcmNoaXRlY3R1cmU6CgogICAg
YWFyY2g2NDoKICAgICAgbWFrZSBvcHRpb25zOiAtajMwIElOU1RBTExfTU9EX1NUUklQPTEgdGFy
Z3otcGtnCgoKSGFyZHdhcmUgdGVzdGluZwotLS0tLS0tLS0tLS0tLS0tCldlIGJvb3RlZCBlYWNo
IGtlcm5lbCBhbmQgcmFuIHRoZSBmb2xsb3dpbmcgdGVzdHM6CgogIGFhcmNoNjQ6CiAgICBIb3N0
IDE6CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBpbnRlZ3Jh
dGlvbiB0ZXN0IChhcyByb290KQogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24g
dGVzdCAoYXMgdXNlcikKICAgICAgIOKchSBMVFAgbGl0ZQogICAgICAg4pyFIExvb3BkZXYgU2Fu
aXR5CiAgICAgICDinIUganZtIHRlc3Qgc3VpdGUKICAgICAgIOKchSBNZW1vcnkgZnVuY3Rpb246
IG1lbWZkX2NyZWF0ZQogICAgICAg4pyFIE1lbW9yeSBmdW5jdGlvbjoga2FzbHIKICAgICAgIOKc
hSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAgIOKchSBMVFA6IG9w
ZW5wb3NpeCB0ZXN0IHN1aXRlCiAgICAgICDinIUgRXRoZXJuZXQgZHJpdmVycyBzYW5pdHkKICAg
ICAgIOKchSBOZXR3b3JraW5nIE1BQ3NlYzogc2FuaXR5CiAgICAgICDinIUgTmV0d29ya2luZyBz
b2NrZXQ6IGZ1enoKICAgICAgIOKchSBOZXR3b3JraW5nIHNjdHAtYXV0aDogc29ja29wdHMgdGVz
dAogICAgICAg4pyFIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVzdAogICAgICAg4pyF
IE5ldHdvcmtpbmcgcm91dGU6IHBtdHUKICAgICAgIOKchSBOZXR3b3JraW5nIFRDUDoga2VlcGFs
aXZlIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIFVEUDogc29ja2V0CiAgICAgICDinIUgTmV0
d29ya2luZyB0dW5uZWw6IGdlbmV2ZSBiYXNpYyB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyB0
dW5uZWw6IGdyZSBiYXNpYwogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiB2eGxhbiBiYXNp
YwogICAgICAg4pyFIGF1ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVzdAogICAgICAg4pyFIGh0dHBk
OiBtb2Rfc3NsIHNtb2tlIHNhbml0eQogICAgICAg4pyFIGlvdG9wOiBzYW5pdHkKICAgICAgIOKc
hSB0dW5lZDogdHVuZS1wcm9jZXNzZXMtdGhyb3VnaC1wZXJmCiAgICAgICDinIUgVXNleCAtIHZl
cnNpb24gMS45LTI5CiAgICAgICDinIUgc3RvcmFnZTogU0NTSSBWUEQKICAgICAgIOKchSBzdHJl
c3M6IHN0cmVzcy1uZwogICAgICAg4pyFIHRyYWNlOiBmdHJhY2UvdHJhY2VyCiAgICAgICDwn5qn
IOKchSBDSUZTIENvbm5lY3RhdGhvbgogICAgICAg8J+apyDinIUgUE9TSVggcGpkLWZzdGVzdCBz
dWl0ZXMKICAgICAgIPCfmqcg4pyFIE5ldHdvcmtpbmcgYnJpZGdlOiBzYW5pdHkKICAgICAgIPCf
mqcg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYzogbG9jYWwKICAgICAgIOKchSBOZXR3b3JraW5n
IHJvdXRlX2Z1bmM6IGZvcndhcmQKICAgICAgIPCfmqcg4pyFIEwyVFAgYmFzaWMgdGVzdAogICAg
ICAg8J+apyDinIUgTmV0d29ya2luZyB2bmljOiBpcHZsYW4vYmFzaWMKICAgICAgIPCfmqcg4pyF
IEFMU0EgUENNIGxvb3BiYWNrIHRlc3QKICAgICAgIPCfmqcg4pyFIEFMU0EgQ29udHJvbCAobWl4
ZXIpIFVzZXJzcGFjZSBFbGVtZW50IHRlc3QKICAgICAgIPCfmqcg4pyFIHN0b3JhZ2U6IGRtL2Nv
bW1vbgogICAgICAg8J+apyDinIUgTmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgdHJhbnNw
b3J0CiAgICAgICDwn5qnIOKchSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0dW5uZWwK
CiAgICBIb3N0IDI6CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgc2VsaW51eC1wb2xp
Y3k6IHNlcmdlLXRlc3RzdWl0ZQogICAgICAg4pyFIGx2bSB0aGlucCBzYW5pdHkKICAgICAgIOKc
hSBzdG9yYWdlOiBzb2Z0d2FyZSBSQUlEIHRlc3RpbmcKICAgICAgIPCfmqcg4pyFIFN0b3JhZ2Ug
YmxrdGVzdHMKICAgICAgIPCfmqcg4pyFIHhmc3Rlc3RzOiBleHQ0CiAgICAgICDwn5qnIOKchSB4
ZnN0ZXN0czogeGZzCgogIFRlc3Qgc291cmNlczogaHR0cHM6Ly9naXRodWIuY29tL0NLSS1wcm9q
ZWN0L3Rlc3RzLWJlYWtlcgogICAg8J+SmiBQdWxsIHJlcXVlc3RzIGFyZSB3ZWxjb21lIGZvciBu
ZXcgdGVzdHMgb3IgaW1wcm92ZW1lbnRzIHRvIGV4aXN0aW5nIHRlc3RzIQoKV2FpdmVkIHRlc3Rz
Ci0tLS0tLS0tLS0tLQpJZiB0aGUgdGVzdCBydW4gaW5jbHVkZWQgd2FpdmVkIHRlc3RzLCB0aGV5
IGFyZSBtYXJrZWQgd2l0aCDwn5qnLiBTdWNoIHRlc3RzIGFyZQpleGVjdXRlZCBidXQgdGhlaXIg
cmVzdWx0cyBhcmUgbm90IHRha2VuIGludG8gYWNjb3VudC4gVGVzdHMgYXJlIHdhaXZlZCB3aGVu
CnRoZWlyIHJlc3VsdHMgYXJlIG5vdCByZWxpYWJsZSBlbm91Z2gsIGUuZy4gd2hlbiB0aGV5J3Jl
IGp1c3QgaW50cm9kdWNlZCBvciBhcmUKYmVpbmcgZml4ZWQuCgpUZXN0aW5nIHRpbWVvdXQKLS0t
LS0tLS0tLS0tLS0tCldlIGFpbSB0byBwcm92aWRlIGEgcmVwb3J0IHdpdGhpbiByZWFzb25hYmxl
IHRpbWVmcmFtZS4gVGVzdHMgdGhhdCBoYXZlbid0CmZpbmlzaGVkIHJ1bm5pbmcgYXJlIG1hcmtl
ZCB3aXRoIOKPsS4gUmVwb3J0cyBmb3Igbm9uLXVwc3RyZWFtIGtlcm5lbHMgaGF2ZQphIEJlYWtl
ciByZWNpcGUgbGlua2VkIHRvIG5leHQgdG8gZWFjaCBob3N0LgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
