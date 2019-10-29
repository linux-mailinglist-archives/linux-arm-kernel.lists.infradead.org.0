Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36456E93CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 00:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cx+pWkf3nVc8Z7MDd0h56nteQq/1THX7IWrG1sPztTM=; b=RNUQxN4glpvmDL
	eFiDbQS7yu1xrq/pshtwNiWZ474kOiyuZAJHXpGUaL2U3kFwB7Pm3UOEIhJBx+3fs4d76vb9H3lAJ
	bZBGRbAX0kBPnaQL/+QdU7E2I37o6QZWOtEYa+fl8NyE298EbY29tC4IVzKBxjmz5hQx1S7c6Kapk
	9o2/cEFqSvt3WYTt0bm+B7nt0YenvjB8DwEQJ8SJQX+oyWksKIhf4YfKqF2IQiAj2PxnCg5fURq8c
	p+/S5/smPt6S8s34iHuDA2lbI435pdY05sBNG+aJJLV9dxa56cAn/3USwLy1bRjwUZtOyyMG0Tz5G
	4z31AooqeiFj9Aqk7vvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPb9I-0007ab-6j; Tue, 29 Oct 2019 23:43:40 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPb95-0007aC-K2
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 23:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572392605;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=EXzqAI7oyNsEIhtABK7Gs3dcfCYNWrBUUaCL56+oNVk=;
 b=dhV1mpjA8QywvHXkSABpFin4CxdC0uUu+c88V3lE+HF/QhL2HQqVrg5vUYMUhUrYxm3x+o
 TL+2cnfUsJlTSnCRuvs4+15ILYIaUbkY1x1E50a9BXxu8fcQQLn8+jGOAoxHIyaHMM3m1D
 NLOnVTLBXkISmLwhecxvS0r/AtV21nY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-297-kEy5pG2JPfipowwDNC70HQ-1; Tue, 29 Oct 2019 19:43:20 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A37731800E07;
 Tue, 29 Oct 2019 23:43:19 +0000 (UTC)
Received: from [172.54.88.5] (cpt-1048.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CB08B1001B09;
 Tue, 29 Oct 2019 23:43:13 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.4.0-rc5-34072e5.cki
 (arm-next)
Date: Tue, 29 Oct 2019 23:43:13 -0000
Message-ID: <cki.B60F5FC773.1FIT7OYFJ2@redhat.com>
X-Gitlab-Pipeline-ID: 255362
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/255362
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: kEy5pG2JPfipowwDNC70HQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_164327_742492_E8ADAC79 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBnaXQ6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0CiAgICAgICAgICAgIENv
bW1pdDogMzQwNzJlNTJhM2ZjIC0gTWVyZ2UgcmVtb3RlLXRyYWNraW5nIGJyYW5jaCAnYXJtNjQv
Zm9yLW5leHQvbWVtb3J5LWhvdHJlbW92ZScgaW50byBmb3Ita2VybmVsY2kKClRoZSByZXN1bHRz
IG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJvdmlkZWQgYmVsb3cuCgogICAgT3ZlcmFs
bCByZXN1bHQ6IEZBSUxFRCAoc2VlIGRldGFpbHMgYmVsb3cpCiAgICAgICAgICAgICBNZXJnZTog
T0sKICAgICAgICAgICBDb21waWxlOiBPSwogICAgICAgICAgICAgVGVzdHM6IEZBSUxFRAoKQWxs
IGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZv
ciBkb3dubG9hZCBoZXJlOgoKICBodHRwczovL2FydGlmYWN0cy5ja2ktcHJvamVjdC5vcmcvcGlw
ZWxpbmVzLzI1NTM2MgoKT25lIG9yIG1vcmUga2VybmVsIHRlc3RzIGZhaWxlZDoKCiAgICBhYXJj
aDY0OgogICAgIOKdjCBMVFAgbGl0ZQoKV2UgaG9wZSB0aGF0IHRoZXNlIGxvZ3MgY2FuIGhlbHAg
eW91IGZpbmQgdGhlIHByb2JsZW0gcXVpY2tseS4gRm9yIHRoZSBmdWxsCmRldGFpbCBvbiBvdXIg
dGVzdGluZyBwcm9jZWR1cmVzLCBwbGVhc2Ugc2Nyb2xsIHRvIHRoZSBib3R0b20gb2YgdGhpcyBt
ZXNzYWdlLgoKUGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWwgaWYgeW91IGhhdmUgYW55IHF1ZXN0
aW9ucyBhYm91dCB0aGUgdGVzdHMgdGhhdCB3ZQpyYW4gb3IgaWYgeW91IGhhdmUgYW55IHN1Z2dl
c3Rpb25zIG9uIGhvdyB0byBtYWtlIGZ1dHVyZSB0ZXN0cyBtb3JlIGVmZmVjdGl2ZS4KCiAgICAg
ICAgLC0uICAgLC0uCiAgICAgICAoIEMgKSAoIEsgKSAgQ29udGludW91cwogICAgICAgIGAtJywt
LmAtJyAgIEtlcm5lbAogICAgICAgICAgKCBJICkgICAgIEludGVncmF0aW9uCiAgICAgICAgICAg
YC0nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwoKQ29tcGlsZSB0ZXN0aW5nCi0tLS0tLS0tLS0tLS0t
LQoKV2UgY29tcGlsZWQgdGhlIGtlcm5lbCBmb3IgMSBhcmNoaXRlY3R1cmU6CgogICAgYWFyY2g2
NDoKICAgICAgbWFrZSBvcHRpb25zOiAtajMwIElOU1RBTExfTU9EX1NUUklQPTEgdGFyZ3otcGtn
CgoKSGFyZHdhcmUgdGVzdGluZwotLS0tLS0tLS0tLS0tLS0tCldlIGJvb3RlZCBlYWNoIGtlcm5l
bCBhbmQgcmFuIHRoZSBmb2xsb3dpbmcgdGVzdHM6CgogIGFhcmNoNjQ6CiAgICBIb3N0IDE6CiAg
ICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgeGZzdGVzdHM6IGV4dDQKICAgICAgIOKchSB4
ZnN0ZXN0czogeGZzCiAgICAgICDinIUgc2VsaW51eC1wb2xpY3k6IHNlcmdlLXRlc3RzdWl0ZQog
ICAgICAg4pyFIGx2bSB0aGlucCBzYW5pdHkKICAgICAgIOKchSBzdG9yYWdlOiBzb2Z0d2FyZSBS
QUlEIHRlc3RpbmcKICAgICAgIPCfmqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMKCiAgICBIb3N0IDI6
CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlv
biB0ZXN0IChhcyByb290KQogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVz
dCAoYXMgdXNlcikKICAgICAgIOKdjCBMVFAgbGl0ZQogICAgICAg4pyFIExvb3BkZXYgU2FuaXR5
CiAgICAgICDinIUganZtIHRlc3Qgc3VpdGUKICAgICAgIOKchSBNZW1vcnkgZnVuY3Rpb246IG1l
bWZkX2NyZWF0ZQogICAgICAg4pyFIE1lbW9yeSBmdW5jdGlvbjoga2FzbHIKICAgICAgIOKchSBB
TVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAgIOKchSBMVFA6IG9wZW5w
b3NpeCB0ZXN0IHN1aXRlCiAgICAgICDinIUgRXRoZXJuZXQgZHJpdmVycyBzYW5pdHkKICAgICAg
IOKchSBOZXR3b3JraW5nIE1BQ3NlYzogc2FuaXR5CiAgICAgICDinIUgTmV0d29ya2luZyBzb2Nr
ZXQ6IGZ1enoKICAgICAgIOKchSBOZXR3b3JraW5nIHNjdHAtYXV0aDogc29ja29wdHMgdGVzdAog
ICAgICAg4pyFIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVzdAogICAgICAg4pyFIE5l
dHdvcmtpbmcgcm91dGU6IHBtdHUKICAgICAgIOKchSBOZXR3b3JraW5nIFRDUDoga2VlcGFsaXZl
IHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIFVEUDogc29ja2V0CiAgICAgICDinIUgTmV0d29y
a2luZyB0dW5uZWw6IGdlbmV2ZSBiYXNpYyB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5u
ZWw6IGdyZSBiYXNpYwogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiB2eGxhbiBiYXNpYwog
ICAgICAg4pyFIGF1ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVzdAogICAgICAg4pyFIGh0dHBkOiBt
b2Rfc3NsIHNtb2tlIHNhbml0eQogICAgICAg4pyFIGlvdG9wOiBzYW5pdHkKICAgICAgIOKchSB0
dW5lZDogdHVuZS1wcm9jZXNzZXMtdGhyb3VnaC1wZXJmCiAgICAgICDinIUgQUxTQSBQQ00gbG9v
cGJhY2sgdGVzdAogICAgICAg4pyFIEFMU0EgQ29udHJvbCAobWl4ZXIpIFVzZXJzcGFjZSBFbGVt
ZW50IHRlc3QKICAgICAgIOKchSBVc2V4IC0gdmVyc2lvbiAxLjktMjkKICAgICAgIOKchSBzdG9y
YWdlOiBTQ1NJIFZQRAogICAgICAg4pyFIHN0cmVzczogc3RyZXNzLW5nCiAgICAgICDinIUgdHJh
Y2U6IGZ0cmFjZS90cmFjZXIKICAgICAgIPCfmqcg4pyFIENJRlMgQ29ubmVjdGF0aG9uCiAgICAg
ICDwn5qnIOKchSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlcwogICAgICAg8J+apyDinIUgTmV0d29y
a2luZyBicmlkZ2U6IHNhbml0eQogICAgICAg8J+apyDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5j
OiBsb2NhbAogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYzogZm9yd2FyZAogICAgICAg
8J+apyDinIUgTDJUUCBiYXNpYyB0ZXN0CiAgICAgICDwn5qnIOKchSBOZXR3b3JraW5nIHZuaWM6
IGlwdmxhbi9iYXNpYwogICAgICAg8J+apyDinIUgc3RvcmFnZTogZG0vY29tbW9uCiAgICAgICDw
n5qnIOKchSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0cmFuc3BvcnQKICAgICAgIPCf
mqcg4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIHR1bm5lbAoKICBUZXN0IHNvdXJj
ZXM6IGh0dHBzOi8vZ2l0aHViLmNvbS9DS0ktcHJvamVjdC90ZXN0cy1iZWFrZXIKICAgIPCfkpog
UHVsbCByZXF1ZXN0cyBhcmUgd2VsY29tZSBmb3IgbmV3IHRlc3RzIG9yIGltcHJvdmVtZW50cyB0
byBleGlzdGluZyB0ZXN0cyEKCldhaXZlZCB0ZXN0cwotLS0tLS0tLS0tLS0KSWYgdGhlIHRlc3Qg
cnVuIGluY2x1ZGVkIHdhaXZlZCB0ZXN0cywgdGhleSBhcmUgbWFya2VkIHdpdGgg8J+apy4gU3Vj
aCB0ZXN0cyBhcmUKZXhlY3V0ZWQgYnV0IHRoZWlyIHJlc3VsdHMgYXJlIG5vdCB0YWtlbiBpbnRv
IGFjY291bnQuIFRlc3RzIGFyZSB3YWl2ZWQgd2hlbgp0aGVpciByZXN1bHRzIGFyZSBub3QgcmVs
aWFibGUgZW5vdWdoLCBlLmcuIHdoZW4gdGhleSdyZSBqdXN0IGludHJvZHVjZWQgb3IgYXJlCmJl
aW5nIGZpeGVkLgoKVGVzdGluZyB0aW1lb3V0Ci0tLS0tLS0tLS0tLS0tLQpXZSBhaW0gdG8gcHJv
dmlkZSBhIHJlcG9ydCB3aXRoaW4gcmVhc29uYWJsZSB0aW1lZnJhbWUuIFRlc3RzIHRoYXQgaGF2
ZW4ndApmaW5pc2hlZCBydW5uaW5nIGFyZSBtYXJrZWQgd2l0aCDij7EuIFJlcG9ydHMgZm9yIG5v
bi11cHN0cmVhbSBrZXJuZWxzIGhhdmUKYSBCZWFrZXIgcmVjaXBlIGxpbmtlZCB0byBuZXh0IHRv
IGVhY2ggaG9zdC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
