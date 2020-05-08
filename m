Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2901CA00D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kWErLfAqWBWDtb4Df4Pbyh38yjT0Z2gL5x7DNiIUAxQ=; b=m5/
	Cfcg/oQ2auIpYzNWemRn9eXkVFqancPCYDClZ4wMNqM59xikmhwDUHjaXqZt/M9pafGpCa9cBAt54
	r05ajRYqkWxRBI7ZiStii0H3qM5DW04CTPq9EXN30QnD+/Hf0I91xX93T8+O7UJ0TOhSSy2w42zfP
	Zs9AFLyPljmMxZqlNJhLqXI1hFZ24ZPEgibHjq5AKg828SX8eF+v8uZfpBTKnT7CRPDaHdNYhqGl6
	KxExxdSLgdDie1UkKxZ7CxR68CjLnS48N2clOxE8/xk8zzXHH5t0JcTfODH1jI/DsBsvHsMi8zM4s
	+AIFlCxvfXPbnJ5FjmuRhL9+TJSE31Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWri7-00039h-L0; Fri, 08 May 2020 01:21:55 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWrhz-000395-I9
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 01:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588900904;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=/eDUOhidWUPOtdwaB/1bD3R7frysT4SbfL/8jaOzNi4=;
 b=OoJNmrln1zHUEGuEPisb9I8Sf9tZB26aso6z1u05B3DxPd4azWZ+LwmT7VSPNywl9vMD7H
 lnrKnKWxBm8JeYzjAY46eJ6OGrIVgzXCp6AdDRN/QEOboS/v44voqnYZv3WGET0cquoXhW
 +q7TigkQs1w+prg+iM0/+6dt3nVHaEA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-cwfRlOfePq2P6YrEDSoQyQ-1; Thu, 07 May 2020 21:21:40 -0400
X-MC-Unique: cwfRlOfePq2P6YrEDSoQyQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 795A680B71A;
 Fri,  8 May 2020 01:21:39 +0000 (UTC)
Received: from [172.54.77.132] (cpt-1034.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 789FB5D9C5;
 Fri,  8 May 2020 01:21:36 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.7.0-rc4-c1c5ead.cki
 (arm-next)
Date: Fri, 08 May 2020 01:21:36 -0000
Message-ID: <cki.92328859A9.7WQ9T46KVG@redhat.com>
X-Gitlab-Pipeline-ID: 561266
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/561266
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_182147_690079_9F85C784 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Q29tbWl0OiBjMWM1ZWFkMTMxODkgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L2NvcmUnIGludG8g
Zm9yLWtlcm5lbGNpCgpUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHBy
b3ZpZGVkIGJlbG93LgoKICAgIE92ZXJhbGwgcmVzdWx0OiBQQVNTRUQKICAgICAgICAgICAgIE1l
cmdlOiBPSwogICAgICAgICAgIENvbXBpbGU6IE9LCiAgICAgICAgICAgICBUZXN0czogT0sKCkFs
bCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBm
b3IgZG93bmxvYWQgaGVyZToKCiAgaHR0cHM6Ly9ja2ktYXJ0aWZhY3RzLnMzLnVzLWVhc3QtMi5h
bWF6b25hd3MuY29tL2luZGV4Lmh0bWw/cHJlZml4PWRhdGF3YXJlaG91c2UvMjAyMC8wNS8wNy81
NjEyNjYKClBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsIGlmIHlvdSBoYXZlIGFueSBxdWVzdGlv
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
UkFJRCB0ZXN0aW5nCiAgICAgICDinIUgc3RyZXNzOiBzdHJlc3MtbmcKICAgICAgIPCfmqcg4pyF
IElQTUkgZHJpdmVyIHRlc3QKICAgICAgIPCfmqcg4pyFIElQTUl0b29sIGxvb3Agc3RyZXNzIHRl
c3QKICAgICAgIPCfmqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMKCiAgICBIb3N0IDI6CiAgICAgICDi
nIUgQm9vdCB0ZXN0CiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlvbiB0ZXN0IC0g
YXMgcm9vdAogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAtIGFzIHVz
ZXIKICAgICAgIOKchSBMVFAKICAgICAgIOKchSBMb29wZGV2IFNhbml0eQogICAgICAg4pyFIE1l
bW9yeSBmdW5jdGlvbjogbWVtZmRfY3JlYXRlCiAgICAgICDinIUgQU1UVSAoQWJzdHJhY3QgTWFj
aGluZSBUZXN0IFV0aWxpdHkpCiAgICAgICDinIUgTmV0d29ya2luZyBicmlkZ2U6IHNhbml0eQog
ICAgICAg4pyFIEV0aGVybmV0IGRyaXZlcnMgc2FuaXR5CiAgICAgICDinIUgTmV0d29ya2luZyBN
QUNzZWM6IHNhbml0eQogICAgICAg4pyFIE5ldHdvcmtpbmcgc29ja2V0OiBmdXp6CiAgICAgICDi
nIUgTmV0d29ya2luZyBzY3RwLWF1dGg6IHNvY2tvcHRzIHRlc3QKICAgICAgIOKchSBOZXR3b3Jr
aW5nOiBpZ21wIGNvbmZvcm1hbmNlIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlOiBw
bXR1CiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jIC0gbG9jYWwKICAgICAgIOKchSBO
ZXR3b3JraW5nIHJvdXRlX2Z1bmMgLSBmb3J3YXJkCiAgICAgICDinIUgTmV0d29ya2luZyBUQ1A6
IGtlZXBhbGl2ZSB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyBVRFA6IHNvY2tldAogICAgICAg
4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5ldmUgYmFzaWMgdGVzdAogICAgICAg4pyFIE5ldHdv
cmtpbmcgdHVubmVsOiBncmUgYmFzaWMKICAgICAgIOKchSBMMlRQIGJhc2ljIHRlc3QKICAgICAg
IOKchSBOZXR3b3JraW5nIHR1bm5lbDogdnhsYW4gYmFzaWMKICAgICAgIOKchSBOZXR3b3JraW5n
IGlwc2VjOiBiYXNpYyBuZXRucyAtIHRyYW5zcG9ydAogICAgICAg4pyFIE5ldHdvcmtpbmcgaXBz
ZWM6IGJhc2ljIG5ldG5zIC0gdHVubmVsCiAgICAgICDinIUgaHR0cGQ6IG1vZF9zc2wgc21va2Ug
c2FuaXR5CiAgICAgICDinIUgdHVuZWQ6IHR1bmUtcHJvY2Vzc2VzLXRocm91Z2gtcGVyZgogICAg
ICAg4pyFIEFMU0EgUENNIGxvb3BiYWNrIHRlc3QKICAgICAgIOKchSBBTFNBIENvbnRyb2wgKG1p
eGVyKSBVc2Vyc3BhY2UgRWxlbWVudCB0ZXN0CiAgICAgICDinIUgVXNleCAtIHZlcnNpb24gMS45
LTI5CiAgICAgICDinIUgc3RvcmFnZTogU0NTSSBWUEQKICAgICAgIPCfmqcg4pyFIENJRlMgQ29u
bmVjdGF0aG9uCiAgICAgICDwn5qnIOKchSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlcwogICAgICAg
8J+apyDinIUganZtIC0gRGFDYXBvIEJlbmNobWFyayBTdWl0ZQogICAgICAg8J+apyDinIUganZt
IC0gamNzdHJlc3MgdGVzdHMKICAgICAgIPCfmqcg4pyFIE1lbW9yeSBmdW5jdGlvbjoga2FzbHIK
ICAgICAgIPCfmqcg4pyFIExUUDogb3BlbnBvc2l4IHRlc3Qgc3VpdGUKICAgICAgIPCfmqcg4pyF
IE5ldHdvcmtpbmcgdm5pYzogaXB2bGFuL2Jhc2ljCiAgICAgICDwn5qnIOKchSBhdWRpdDogYXVk
aXQgdGVzdHN1aXRlIHRlc3QKICAgICAgIPCfmqcg4pyFIGlvdG9wOiBzYW5pdHkKICAgICAgIPCf
mqcg4pyFIHN0b3JhZ2U6IGRtL2NvbW1vbgogICAgICAg4o+xICB0cmFjZTogZnRyYWNlL3RyYWNl
cgoKICBUZXN0IHNvdXJjZXM6IGh0dHBzOi8vZ2l0aHViLmNvbS9DS0ktcHJvamVjdC90ZXN0cy1i
ZWFrZXIKICAgIPCfkpogUHVsbCByZXF1ZXN0cyBhcmUgd2VsY29tZSBmb3IgbmV3IHRlc3RzIG9y
IGltcHJvdmVtZW50cyB0byBleGlzdGluZyB0ZXN0cyEKCkFib3J0ZWQgdGVzdHMKLS0tLS0tLS0t
LS0tLQpUZXN0cyB0aGF0IGRpZG4ndCBjb21wbGV0ZSBydW5uaW5nIHN1Y2Nlc3NmdWxseSBhcmUg
bWFya2VkIHdpdGgg4pqh4pqh4pqhLgpJZiB0aGlzIHdhcyBjYXVzZWQgYnkgYW4gaW5mcmFzdHJ1
Y3R1cmUgaXNzdWUsIHdlIHRyeSB0byBtYXJrIHRoYXQKZXhwbGljaXRseSBpbiB0aGUgcmVwb3J0
LgoKV2FpdmVkIHRlc3RzCi0tLS0tLS0tLS0tLQpJZiB0aGUgdGVzdCBydW4gaW5jbHVkZWQgd2Fp
dmVkIHRlc3RzLCB0aGV5IGFyZSBtYXJrZWQgd2l0aCDwn5qnLiBTdWNoIHRlc3RzIGFyZQpleGVj
dXRlZCBidXQgdGhlaXIgcmVzdWx0cyBhcmUgbm90IHRha2VuIGludG8gYWNjb3VudC4gVGVzdHMg
YXJlIHdhaXZlZCB3aGVuCnRoZWlyIHJlc3VsdHMgYXJlIG5vdCByZWxpYWJsZSBlbm91Z2gsIGUu
Zy4gd2hlbiB0aGV5J3JlIGp1c3QgaW50cm9kdWNlZCBvciBhcmUKYmVpbmcgZml4ZWQuCgpUZXN0
aW5nIHRpbWVvdXQKLS0tLS0tLS0tLS0tLS0tCldlIGFpbSB0byBwcm92aWRlIGEgcmVwb3J0IHdp
dGhpbiByZWFzb25hYmxlIHRpbWVmcmFtZS4gVGVzdHMgdGhhdCBoYXZlbid0CmZpbmlzaGVkIHJ1
bm5pbmcgeWV0IGFyZSBtYXJrZWQgd2l0aCDij7EuCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
