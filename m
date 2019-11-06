Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF351F2242
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=42X2Fi1FbrgoFr1HBctMh0XXbF8F9BwMM528k19U8UU=; b=QLz
	peFIiBtyOqQwRdNXTvJf8lOqY88ibYWQC/VIniO3uE8RxoPxh3BMLPAFsQB8LllrFB8jzinj/F4DG
	2JzbqK8zThOrJzDTVEPiIBEeYAsFJIP5Roa0mlm0M2F5u2ivIPgY4DjgCB8NLekNorJaRAsg+S+zY
	sbi2WWyJKz1a5KR8C17XKRDX95qUpoOhTyfjt7TRVdfVgv34zZ5P1J5nk8ASmbsbSLGN9J2hZ3gYY
	cRZdz5HhyGCgQwpg8Ct3sKWIvuxnB7U9xdWml8Y70BtWIPFk/QdlLVrBdqviqrcbGksi35QFH0FID
	6p1Wv25QygA8Akgou2daA/2xLWznTLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSUI1-0000un-2O; Wed, 06 Nov 2019 23:00:37 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSUHt-0000uA-8b
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 23:00:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573081223;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=t3dJYBokHaQkzDk/1eMBjcRRb56eiPid2YWY6mtJNsQ=;
 b=LF41HY30SjfAPAdmMz5vSZEsMqrlMBCDx9dhVYnJT2gyyuASS6tCdYwCuM2UJKAV2k3sjq
 HPNMsF/5OGaJzqBn0RnEQtGRtU4azsyY2ajCo5sYlFa0kSZV/CAKDjT1oZm7BO/YLEjn/A
 5LopZODJrrLlLI1EKvBsXxts+5Dgapg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-253-iZeoTfcMMmmyQrfsL6V9ZA-1; Wed, 06 Nov 2019 18:00:19 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC1F81800D53;
 Wed,  6 Nov 2019 23:00:18 +0000 (UTC)
Received: from [172.54.37.191] (cpt-1013.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.28])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 30AA05C296;
 Wed,  6 Nov 2019 23:00:12 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.4.0-rc6-d212d75.cki
 (arm-next)
Date: Wed, 06 Nov 2019 23:00:11 -0000
Message-ID: <cki.F67613AB3C.2UBD1N9TAK@redhat.com>
X-Gitlab-Pipeline-ID: 268201
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/268201
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: iZeoTfcMMmmyQrfsL6V9ZA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_150029_383697_B1813007 
X-CRM114-Status: UNSURE (   5.99  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
bW1pdDogZDIxMmQ3NTdjNzY1IC0gUmV2ZXJ0ICJhcm02NDogRml4IGNvcHktb24td3JpdGUgcmVm
ZXJlbmNpbmcgaW4gSHVnZVRMQiIKClRoZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0
cyBhcmUgcHJvdmlkZWQgYmVsb3cuCgogICAgT3ZlcmFsbCByZXN1bHQ6IFBBU1NFRAogICAgICAg
ICAgICAgTWVyZ2U6IE9LCiAgICAgICAgICAgQ29tcGlsZTogT0sKICAgICAgICAgICAgIFRlc3Rz
OiBPSwoKQWxsIGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZh
aWxhYmxlIGZvciBkb3dubG9hZCBoZXJlOgoKICBodHRwczovL2FydGlmYWN0cy5ja2ktcHJvamVj
dC5vcmcvcGlwZWxpbmVzLzI2ODIwMQoKUGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWwgaWYgeW91
IGhhdmUgYW55IHF1ZXN0aW9ucyBhYm91dCB0aGUgdGVzdHMgdGhhdCB3ZQpyYW4gb3IgaWYgeW91
IGhhdmUgYW55IHN1Z2dlc3Rpb25zIG9uIGhvdyB0byBtYWtlIGZ1dHVyZSB0ZXN0cyBtb3JlIGVm
ZmVjdGl2ZS4KCiAgICAgICAgLC0uICAgLC0uCiAgICAgICAoIEMgKSAoIEsgKSAgQ29udGludW91
cwogICAgICAgIGAtJywtLmAtJyAgIEtlcm5lbAogICAgICAgICAgKCBJICkgICAgIEludGVncmF0
aW9uCiAgICAgICAgICAgYC0nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwoKQ29tcGlsZSB0ZXN0aW5n
Ci0tLS0tLS0tLS0tLS0tLQoKV2UgY29tcGlsZWQgdGhlIGtlcm5lbCBmb3IgMSBhcmNoaXRlY3R1
cmU6CgogICAgYWFyY2g2NDoKICAgICAgbWFrZSBvcHRpb25zOiAtajMwIElOU1RBTExfTU9EX1NU
UklQPTEgdGFyZ3otcGtnCgoKSGFyZHdhcmUgdGVzdGluZwotLS0tLS0tLS0tLS0tLS0tCldlIGJv
b3RlZCBlYWNoIGtlcm5lbCBhbmQgcmFuIHRoZSBmb2xsb3dpbmcgdGVzdHM6CgogIGFhcmNoNjQ6
CiAgICBIb3N0IDE6CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgeGZzdGVzdHM6IGV4
dDQKICAgICAgIOKchSB4ZnN0ZXN0czogeGZzCiAgICAgICDinIUgc2VsaW51eC1wb2xpY3k6IHNl
cmdlLXRlc3RzdWl0ZQogICAgICAg4pyFIGx2bSB0aGlucCBzYW5pdHkKICAgICAgIOKchSBzdG9y
YWdlOiBzb2Z0d2FyZSBSQUlEIHRlc3RpbmcKICAgICAgIPCfmqcg4pyFIFN0b3JhZ2UgYmxrdGVz
dHMKCiAgICBIb3N0IDI6CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgUG9kbWFuIHN5
c3RlbSBpbnRlZ3JhdGlvbiB0ZXN0IChhcyByb290KQogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0g
aW50ZWdyYXRpb24gdGVzdCAoYXMgdXNlcikKICAgICAgIOKchSBMVFAgbGl0ZQogICAgICAg4pyF
IExvb3BkZXYgU2FuaXR5CiAgICAgICDinIUganZtIHRlc3Qgc3VpdGUKICAgICAgIOKchSBNZW1v
cnkgZnVuY3Rpb246IG1lbWZkX2NyZWF0ZQogICAgICAg4pyFIE1lbW9yeSBmdW5jdGlvbjoga2Fz
bHIKICAgICAgIOKchSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAg
IOKchSBMVFA6IG9wZW5wb3NpeCB0ZXN0IHN1aXRlCiAgICAgICDinIUgTmV0d29ya2luZyBicmlk
Z2U6IHNhbml0eQogICAgICAg4pyFIEV0aGVybmV0IGRyaXZlcnMgc2FuaXR5CiAgICAgICDinIUg
TmV0d29ya2luZyBNQUNzZWM6IHNhbml0eQogICAgICAg4pyFIE5ldHdvcmtpbmcgc29ja2V0OiBm
dXp6CiAgICAgICDinIUgTmV0d29ya2luZyBzY3RwLWF1dGg6IHNvY2tvcHRzIHRlc3QKICAgICAg
IOKchSBOZXR3b3JraW5nOiBpZ21wIGNvbmZvcm1hbmNlIHRlc3QKICAgICAgIOKchSBOZXR3b3Jr
aW5nIHJvdXRlOiBwbXR1CiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jOiBsb2NhbAog
ICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYzogZm9yd2FyZAogICAgICAg4pyFIE5ldHdv
cmtpbmcgVENQOiBrZWVwYWxpdmUgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgVURQOiBzb2Nr
ZXQKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogZ2VuZXZlIGJhc2ljIHRlc3QKICAgICAg
IOKchSBOZXR3b3JraW5nIHR1bm5lbDogZ3JlIGJhc2ljCiAgICAgICDinIUgTDJUUCBiYXNpYyB0
ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJhc2ljCiAgICAgICDinIUg
TmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgdHJhbnNwb3J0CiAgICAgICDinIUgTmV0d29y
a2luZyBpcHNlYzogYmFzaWMgbmV0bnMgdHVubmVsCiAgICAgICDinIUgYXVkaXQ6IGF1ZGl0IHRl
c3RzdWl0ZSB0ZXN0CiAgICAgICDinIUgaHR0cGQ6IG1vZF9zc2wgc21va2Ugc2FuaXR5CiAgICAg
ICDinIUgaW90b3A6IHNhbml0eQogICAgICAg4pyFIHR1bmVkOiB0dW5lLXByb2Nlc3Nlcy10aHJv
dWdoLXBlcmYKICAgICAgIOKchSBBTFNBIFBDTSBsb29wYmFjayB0ZXN0CiAgICAgICDinIUgQUxT
QSBDb250cm9sIChtaXhlcikgVXNlcnNwYWNlIEVsZW1lbnQgdGVzdAogICAgICAg4pyFIFVzZXgg
LSB2ZXJzaW9uIDEuOS0yOQogICAgICAg4pyFIHN0b3JhZ2U6IFNDU0kgVlBECiAgICAgICDinIUg
c3RyZXNzOiBzdHJlc3MtbmcKICAgICAgIOKchSB0cmFjZTogZnRyYWNlL3RyYWNlcgogICAgICAg
8J+apyDinIUgQ0lGUyBDb25uZWN0YXRob24KICAgICAgIPCfmqcg4pyFIFBPU0lYIHBqZC1mc3Rl
c3Qgc3VpdGVzCiAgICAgICDwn5qnIOKchSBOZXR3b3JraW5nIHZuaWM6IGlwdmxhbi9iYXNpYwog
ICAgICAg8J+apyDinIUgc3RvcmFnZTogZG0vY29tbW9uCgogIFRlc3Qgc291cmNlczogaHR0cHM6
Ly9naXRodWIuY29tL0NLSS1wcm9qZWN0L3Rlc3RzLWJlYWtlcgogICAg8J+SmiBQdWxsIHJlcXVl
c3RzIGFyZSB3ZWxjb21lIGZvciBuZXcgdGVzdHMgb3IgaW1wcm92ZW1lbnRzIHRvIGV4aXN0aW5n
IHRlc3RzIQoKV2FpdmVkIHRlc3RzCi0tLS0tLS0tLS0tLQpJZiB0aGUgdGVzdCBydW4gaW5jbHVk
ZWQgd2FpdmVkIHRlc3RzLCB0aGV5IGFyZSBtYXJrZWQgd2l0aCDwn5qnLiBTdWNoIHRlc3RzIGFy
ZQpleGVjdXRlZCBidXQgdGhlaXIgcmVzdWx0cyBhcmUgbm90IHRha2VuIGludG8gYWNjb3VudC4g
VGVzdHMgYXJlIHdhaXZlZCB3aGVuCnRoZWlyIHJlc3VsdHMgYXJlIG5vdCByZWxpYWJsZSBlbm91
Z2gsIGUuZy4gd2hlbiB0aGV5J3JlIGp1c3QgaW50cm9kdWNlZCBvciBhcmUKYmVpbmcgZml4ZWQu
CgpUZXN0aW5nIHRpbWVvdXQKLS0tLS0tLS0tLS0tLS0tCldlIGFpbSB0byBwcm92aWRlIGEgcmVw
b3J0IHdpdGhpbiByZWFzb25hYmxlIHRpbWVmcmFtZS4gVGVzdHMgdGhhdCBoYXZlbid0CmZpbmlz
aGVkIHJ1bm5pbmcgYXJlIG1hcmtlZCB3aXRoIOKPsS4gUmVwb3J0cyBmb3Igbm9uLXVwc3RyZWFt
IGtlcm5lbHMgaGF2ZQphIEJlYWtlciByZWNpcGUgbGlua2VkIHRvIG5leHQgdG8gZWFjaCBob3N0
LgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
