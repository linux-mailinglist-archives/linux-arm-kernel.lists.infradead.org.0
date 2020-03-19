Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F5D18AB94
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 05:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y5bpkqZI+8C/NlZNgn0LWIxaPrygepCpSg+dFD3iufY=; b=IhZ
	LRD/xSgO5C8WguBWl/Db0BBkK1P/AAD/ghWFVc4wsYSOTLkAQqaIckCMtZoQ3vjdr9dxADtP9rbIV
	1mcnKyMUqsWiqonsXY07pvFpy9jCKd0zRklfYk4RoKMWe+5a7FD3O+quYc5OuoY8MPPbzfoRifp17
	URMYsKBpsP8GJkmO/4eS4MK9j4jUkU69Y/5FhUr0eULQ5z7rN8AEA0rASufjbtsHC+ZzlOhcFdo+G
	P3WGWqMbe/LARYlP+Y/kr8eEbsiQWq7GfqT3PfB0oQr9WWhxr7pv8iNcvlE7mKDi6p1NNanWnngZi
	8lMidRfevbDOvFaXNj8xAJMJ/Kpnyzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEmTG-0005NU-Gp; Thu, 19 Mar 2020 04:07:50 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEmT6-0005Mq-Tn
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 04:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584590857;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=OYDmsjc+YAOBOjnvB5qo5jZkh7l145IfaSF0f9/e3GI=;
 b=FLv6uZOY/wWE0Hf7rplfpI/LODN6Ab/TZtC8N6bOWk5Jdt6m3Pm0eXpH73EgwLkVT3OoM0
 4saRqT2IFosLmaJiLjDv3MUo6qMwvUkvpWc+HVBuBlRoEhY4DEYS2Q3Ppb7eMVVT0S/xQ8
 GM11Osjquf2cV+Mh4ALIdZnLEcbqaxE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-N3VWnMs7M4qoxHEA7eAGJQ-1; Thu, 19 Mar 2020 00:07:32 -0400
X-MC-Unique: N3VWnMs7M4qoxHEA7eAGJQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE81C180454B;
 Thu, 19 Mar 2020 04:07:30 +0000 (UTC)
Received: from [172.54.50.197] (cpt-1014.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.41])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C81299CA3;
 Thu, 19 Mar 2020 04:07:27 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.6.0-rc6-825596c.cki
 (arm-next)
Date: Thu, 19 Mar 2020 04:07:27 -0000
Message-ID: <cki.51FF907121.1GCJG0ZB3S@redhat.com>
X-Gitlab-Pipeline-ID: 494925
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/494925
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_210741_048911_6500C5D1 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKICAgICAgICAgICAg
Q29tbWl0OiA4MjU1OTZjNWMxMGIgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L2ZpeGVzJyBpbnRv
IGZvci1rZXJuZWxjaQoKVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBw
cm92aWRlZCBiZWxvdy4KCiAgICBPdmVyYWxsIHJlc3VsdDogUEFTU0VECiAgICAgICAgICAgICBN
ZXJnZTogT0sKICAgICAgICAgICBDb21waWxlOiBPSwogICAgICAgICAgICAgVGVzdHM6IE9LCgpB
bGwga2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUg
Zm9yIGRvd25sb2FkIGhlcmU6CgogIGh0dHBzOi8vY2tpLWFydGlmYWN0cy5zMy51cy1lYXN0LTIu
YW1hem9uYXdzLmNvbS9pbmRleC5odG1sP3ByZWZpeD1kYXRhd2FyZWhvdXNlLzIwMjAvMDMvMTgv
NDk0OTI1CgpQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5b3UgaGF2ZSBhbnkgcXVlc3Rp
b25zIGFib3V0IHRoZSB0ZXN0cyB0aGF0IHdlCnJhbiBvciBpZiB5b3UgaGF2ZSBhbnkgc3VnZ2Vz
dGlvbnMgb24gaG93IHRvIG1ha2UgZnV0dXJlIHRlc3RzIG1vcmUgZWZmZWN0aXZlLgoKICAgICAg
ICAsLS4gICAsLS4KICAgICAgICggQyApICggSyApICBDb250aW51b3VzCiAgICAgICAgYC0nLC0u
YC0nICAgS2VybmVsCiAgICAgICAgICAoIEkgKSAgICAgSW50ZWdyYXRpb24KICAgICAgICAgICBg
LScKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCgpDb21waWxlIHRlc3RpbmcKLS0tLS0tLS0tLS0tLS0t
CgpXZSBjb21waWxlZCB0aGUga2VybmVsIGZvciAxIGFyY2hpdGVjdHVyZToKCiAgICBhYXJjaDY0
OgogICAgICBtYWtlIG9wdGlvbnM6IC1qMzAgSU5TVEFMTF9NT0RfU1RSSVA9MSB0YXJnei1wa2cK
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
b250cm9sIChtaXhlcikgVXNlcnNwYWNlIEVsZW1lbnQgdGVzdAogICAgICAg4pyFIHN0b3JhZ2U6
IFNDU0kgVlBECiAgICAgICDinIUgdHJhY2U6IGZ0cmFjZS90cmFjZXIKICAgICAgIPCfmqcg4pyF
IENJRlMgQ29ubmVjdGF0aG9uCiAgICAgICDwn5qnIOKchSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRl
cwogICAgICAg8J+apyDinIUganZtIC0gRGFDYXBvIEJlbmNobWFyayBTdWl0ZQogICAgICAg8J+a
pyDinIUganZtIC0gamNzdHJlc3MgdGVzdHMKICAgICAgIPCfmqcg4pyFIE1lbW9yeSBmdW5jdGlv
bjoga2FzbHIKICAgICAgIPCfmqcg4pyFIExUUDogb3BlbnBvc2l4IHRlc3Qgc3VpdGUKICAgICAg
IPCfmqcg4pyFIE5ldHdvcmtpbmcgdm5pYzogaXB2bGFuL2Jhc2ljCiAgICAgICDwn5qnIOKchSBh
dWRpdDogYXVkaXQgdGVzdHN1aXRlIHRlc3QKICAgICAgIPCfmqcg4pyFIGlvdG9wOiBzYW5pdHkK
ICAgICAgIPCfmqcg4pyFIFVzZXggLSB2ZXJzaW9uIDEuOS0yOQogICAgICAg8J+apyDinIUgc3Rv
cmFnZTogZG0vY29tbW9uCgogIFRlc3Qgc291cmNlczogaHR0cHM6Ly9naXRodWIuY29tL0NLSS1w
cm9qZWN0L3Rlc3RzLWJlYWtlcgogICAg8J+SmiBQdWxsIHJlcXVlc3RzIGFyZSB3ZWxjb21lIGZv
ciBuZXcgdGVzdHMgb3IgaW1wcm92ZW1lbnRzIHRvIGV4aXN0aW5nIHRlc3RzIQoKQWJvcnRlZCB0
ZXN0cwotLS0tLS0tLS0tLS0tClRlc3RzIHRoYXQgZGlkbid0IGNvbXBsZXRlIHJ1bm5pbmcgc3Vj
Y2Vzc2Z1bGx5IGFyZSBtYXJrZWQgd2l0aCDimqHimqHimqEuCklmIHRoaXMgd2FzIGNhdXNlZCBi
eSBhbiBpbmZyYXN0cnVjdHVyZSBpc3N1ZSwgd2UgdHJ5IHRvIG1hcmsgdGhhdApleHBsaWNpdGx5
IGluIHRoZSByZXBvcnQuCgpXYWl2ZWQgdGVzdHMKLS0tLS0tLS0tLS0tCklmIHRoZSB0ZXN0IHJ1
biBpbmNsdWRlZCB3YWl2ZWQgdGVzdHMsIHRoZXkgYXJlIG1hcmtlZCB3aXRoIPCfmqcuIFN1Y2gg
dGVzdHMgYXJlCmV4ZWN1dGVkIGJ1dCB0aGVpciByZXN1bHRzIGFyZSBub3QgdGFrZW4gaW50byBh
Y2NvdW50LiBUZXN0cyBhcmUgd2FpdmVkIHdoZW4KdGhlaXIgcmVzdWx0cyBhcmUgbm90IHJlbGlh
YmxlIGVub3VnaCwgZS5nLiB3aGVuIHRoZXkncmUganVzdCBpbnRyb2R1Y2VkIG9yIGFyZQpiZWlu
ZyBmaXhlZC4KClRlc3RpbmcgdGltZW91dAotLS0tLS0tLS0tLS0tLS0KV2UgYWltIHRvIHByb3Zp
ZGUgYSByZXBvcnQgd2l0aGluIHJlYXNvbmFibGUgdGltZWZyYW1lLiBUZXN0cyB0aGF0IGhhdmVu
J3QKZmluaXNoZWQgcnVubmluZyB5ZXQgYXJlIG1hcmtlZCB3aXRoIOKPsS4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
