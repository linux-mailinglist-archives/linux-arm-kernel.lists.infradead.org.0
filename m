Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4278F105280
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 13:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QIMifbqnZAeXFtyJyuVrOBW6kpzMxRaltpS86Nqp3Ec=; b=FML
	5jH1ob8JX3zucC/InJ6BoX3UpK86QMGL61q3Q3yKA14RGdq28xlX8kruCGgBI0rAK9JNtn8VSmwmf
	LM9wJrGIZ+PK5ZRP3r42c5RhesgKjoq4+XJ6yW+ycrmBvS/WQHaZal4L173GzjUGqF3Ii40rufeau
	jlixnCvymFeGjrHpc2lSwK9ef4w/h5IjfMWngB3kfhyu2+TqcESh2rPJqVbwEYZj3ejmfdcFyDkQk
	Zv72Ohddqm2EPSwpSx+J6vEY/F+CwQhcaSeHlggMGUA09HWBIGXQTj6cwfFGsNZjqWfEivCr6WndB
	O1QaJ08t0q0YvIQLt8ppwrgKm0OFGBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXm1Q-00044R-1G; Thu, 21 Nov 2019 12:57:20 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXm1G-00042n-QI
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 12:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574341028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=lEVLl5305oBzpaq82Nq9mzAAeUIzAHvoOToUoExR5F0=;
 b=gfBvK4Q+VaToxJBFPuqfx5PDpQk5mQ/Lz97Wh+S3F0nS2IDclsJsILcod4XfkSnMqWcgpt
 GA+RJs1KGKItYJfrAXn1N8rpy8G8OpcpIGuIDb8SMWFYNyhGJSPBkPo5+QIXR8KCueM8NE
 /2dcTupjNTSeutqOzw6Lb1pAqWNnzag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-340-wWLGp9lHOrCOWVNbutIECg-1; Thu, 21 Nov 2019 07:55:10 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33B55107B267;
 Thu, 21 Nov 2019 12:55:09 +0000 (UTC)
Received: from [172.54.53.184] (cpt-1029.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.48])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EAE902A18A;
 Thu, 21 Nov 2019 12:55:05 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.4.0-rc8-fbaa920.cki
 (arm-next)
Date: Thu, 21 Nov 2019 12:55:05 -0000
Message-ID: <cki.1CBC43ABCD.523Q7TUX64@redhat.com>
X-Gitlab-Pipeline-ID: 298088
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/298088
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: wWLGp9lHOrCOWVNbutIECg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_045710_947182_77C72FAE 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
bW1pdDogZmJhYTkyMDliODMzIC0gTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9maXhlcycgaW50byBm
b3Ita2VybmVsY2kKClRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJv
dmlkZWQgYmVsb3cuCgogICAgT3ZlcmFsbCByZXN1bHQ6IFBBU1NFRAogICAgICAgICAgICAgTWVy
Z2U6IE9LCiAgICAgICAgICAgQ29tcGlsZTogT0sKICAgICAgICAgICAgIFRlc3RzOiBPSwoKQWxs
IGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZv
ciBkb3dubG9hZCBoZXJlOgoKICBodHRwczovL2FydGlmYWN0cy5ja2ktcHJvamVjdC5vcmcvcGlw
ZWxpbmVzLzI5ODA4OAoKUGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWwgaWYgeW91IGhhdmUgYW55
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
ZW5wb3NpeCB0ZXN0IHN1aXRlCiAgICAgICDinIUgTmV0d29ya2luZyBicmlkZ2U6IHNhbml0eQog
ICAgICAg4pyFIEV0aGVybmV0IGRyaXZlcnMgc2FuaXR5CiAgICAgICDinIUgTmV0d29ya2luZyBN
QUNzZWM6IHNhbml0eQogICAgICAg4pyFIE5ldHdvcmtpbmcgc29ja2V0OiBmdXp6CiAgICAgICDi
nIUgTmV0d29ya2luZyBzY3RwLWF1dGg6IHNvY2tvcHRzIHRlc3QKICAgICAgIOKchSBOZXR3b3Jr
aW5nOiBpZ21wIGNvbmZvcm1hbmNlIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlOiBw
bXR1CiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jOiBsb2NhbAogICAgICAg4pyFIE5l
dHdvcmtpbmcgcm91dGVfZnVuYzogZm9yd2FyZAogICAgICAg4pyFIE5ldHdvcmtpbmcgVENQOiBr
ZWVwYWxpdmUgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgVURQOiBzb2NrZXQKICAgICAgIOKc
hSBOZXR3b3JraW5nIHR1bm5lbDogZ2VuZXZlIGJhc2ljIHRlc3QKICAgICAgIOKchSBOZXR3b3Jr
aW5nIHR1bm5lbDogZ3JlIGJhc2ljCiAgICAgICDinIUgTDJUUCBiYXNpYyB0ZXN0CiAgICAgICDi
nIUgTmV0d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJhc2ljCiAgICAgICDinIUgTmV0d29ya2luZyBp
cHNlYzogYmFzaWMgbmV0bnMgdHJhbnNwb3J0CiAgICAgICDinIUgTmV0d29ya2luZyBpcHNlYzog
YmFzaWMgbmV0bnMgdHVubmVsCiAgICAgICDinIUgYXVkaXQ6IGF1ZGl0IHRlc3RzdWl0ZSB0ZXN0
CiAgICAgICDinIUgaHR0cGQ6IG1vZF9zc2wgc21va2Ugc2FuaXR5CiAgICAgICDinIUgaW90b3A6
IHNhbml0eQogICAgICAg4pyFIHR1bmVkOiB0dW5lLXByb2Nlc3Nlcy10aHJvdWdoLXBlcmYKICAg
ICAgIOKchSBBTFNBIFBDTSBsb29wYmFjayB0ZXN0CiAgICAgICDinIUgQUxTQSBDb250cm9sICht
aXhlcikgVXNlcnNwYWNlIEVsZW1lbnQgdGVzdAogICAgICAg4pyFIFVzZXggLSB2ZXJzaW9uIDEu
OS0yOQogICAgICAg4pyFIHN0b3JhZ2U6IFNDU0kgVlBECiAgICAgICDinIUgc3RyZXNzOiBzdHJl
c3MtbmcKICAgICAgIOKchSB0cmFjZTogZnRyYWNlL3RyYWNlcgogICAgICAg8J+apyDinIUgQ0lG
UyBDb25uZWN0YXRob24KICAgICAgIPCfmqcg4pyFIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzCiAg
ICAgICDwn5qnIOKchSBOZXR3b3JraW5nIHZuaWM6IGlwdmxhbi9iYXNpYwogICAgICAg8J+apyDi
nIUgc3RvcmFnZTogZG0vY29tbW9uCgogICAgSG9zdCAyOgogICAgICAg4pyFIEJvb3QgdGVzdAog
ICAgICAg4pyFIHhmc3Rlc3RzOiBleHQ0CiAgICAgICDinIUgeGZzdGVzdHM6IHhmcwogICAgICAg
4pyFIGx2bSB0aGlucCBzYW5pdHkKICAgICAgIOKchSBzdG9yYWdlOiBzb2Z0d2FyZSBSQUlEIHRl
c3RpbmcKICAgICAgIPCfmqcg4pyFIHNlbGludXgtcG9saWN5OiBzZXJnZS10ZXN0c3VpdGUKICAg
ICAgIPCfmqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMKCiAgVGVzdCBzb3VyY2VzOiBodHRwczovL2dp
dGh1Yi5jb20vQ0tJLXByb2plY3QvdGVzdHMtYmVha2VyCiAgICDwn5KaIFB1bGwgcmVxdWVzdHMg
YXJlIHdlbGNvbWUgZm9yIG5ldyB0ZXN0cyBvciBpbXByb3ZlbWVudHMgdG8gZXhpc3RpbmcgdGVz
dHMhCgpXYWl2ZWQgdGVzdHMKLS0tLS0tLS0tLS0tCklmIHRoZSB0ZXN0IHJ1biBpbmNsdWRlZCB3
YWl2ZWQgdGVzdHMsIHRoZXkgYXJlIG1hcmtlZCB3aXRoIPCfmqcuIFN1Y2ggdGVzdHMgYXJlCmV4
ZWN1dGVkIGJ1dCB0aGVpciByZXN1bHRzIGFyZSBub3QgdGFrZW4gaW50byBhY2NvdW50LiBUZXN0
cyBhcmUgd2FpdmVkIHdoZW4KdGhlaXIgcmVzdWx0cyBhcmUgbm90IHJlbGlhYmxlIGVub3VnaCwg
ZS5nLiB3aGVuIHRoZXkncmUganVzdCBpbnRyb2R1Y2VkIG9yIGFyZQpiZWluZyBmaXhlZC4KClRl
c3RpbmcgdGltZW91dAotLS0tLS0tLS0tLS0tLS0KV2UgYWltIHRvIHByb3ZpZGUgYSByZXBvcnQg
d2l0aGluIHJlYXNvbmFibGUgdGltZWZyYW1lLiBUZXN0cyB0aGF0IGhhdmVuJ3QKZmluaXNoZWQg
cnVubmluZyBhcmUgbWFya2VkIHdpdGgg4o+xLiBSZXBvcnRzIGZvciBub24tdXBzdHJlYW0ga2Vy
bmVscyBoYXZlCmEgQmVha2VyIHJlY2lwZSBsaW5rZWQgdG8gbmV4dCB0byBlYWNoIGhvc3QuCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
