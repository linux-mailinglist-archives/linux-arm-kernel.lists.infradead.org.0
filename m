Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6172313522A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 05:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UrRvjhL+oFxoBB9CrPxyPH4qOK9RWatAYInSo5qW+9w=; b=ogl
	FWQC4eedtk4xT9f4RtKH36l2nPB698QRW4hb5MNiU7NID1swPvIWUIsPWtq1nDTKfaLV7awMggq3+
	+mf0IAzxBZP5VylkcRkK3gl9lrSyIeHVYruEzoZ0gFjqTGhxUWNzwGI8mp+ULcxt/SxKG2S/ZmsmX
	KxVyE0hHU0mti6f4fFKhHXCgN01zEcDgLJlDEBg6WuJDa0DP16FLEKLYk/X6lcIIyIXZvroJhElHg
	2QP0pInGP0xE+dTOKdavpelJ5zrA6xnoxGIXgV9fBN2l9D7EZXCDBk9AIWwkMQ2sfcih0D4sh+9wr
	SXixusD6O849FNDhW2Ipe4ch9HRgwFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipPS6-0007ZX-59; Thu, 09 Jan 2020 04:29:46 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipPRw-0007YZ-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 04:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578544171;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=S9Tkd9WuW4AHajv/GK7mP3PM0SmKT2CBmNamnpBFLHw=;
 b=M9BrLG7Y4r+6H+l2jIFTO3IByJdVgHORgiYenVFceUqZIH6Dn8RslgqwM/fuT5UDTU//nI
 Xg1hNu3IG9i5bEDtMMNRRaDNhFyWjL8LEf7eORDxH9AAq8jp1nX4jnI84JlOvyy3xkJZVv
 aQvKAGq5C2fjTVQXVDMYJ98nZNRFAKw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-ObjgkK5wNEWwljGylHhoDw-1; Wed, 08 Jan 2020 23:27:33 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 18DC9107ACCC;
 Thu,  9 Jan 2020 04:27:32 +0000 (UTC)
Received: from [172.54.57.64] (cpt-1033.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 564295D9E5;
 Thu,  9 Jan 2020 04:27:29 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.5.0-rc5-aef7319.cki
 (arm-next)
Date: Thu, 09 Jan 2020 04:27:29 -0000
Message-ID: <cki.0D7A3A7666.L4K1S39APB@redhat.com>
X-Gitlab-Pipeline-ID: 372855
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/372855
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: ObjgkK5wNEWwljGylHhoDw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_202936_531705_DE62DEB1 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
bW1pdDogYWVmNzMxOTE3NjVhIC0gTWVyZ2UgYnJhbmNoZXMgJ2Zvci1uZXh0L2tleGVjL2NsZWFu
dXAnIGFuZCAnZm9yLW5leHQva2V4ZWMvZmlsZS1rZHVtcCcgaW50byBmb3Ita2VybmVsY2kKClRo
ZSByZXN1bHRzIG9mIHRoZXNlIGF1dG9tYXRlZCB0ZXN0cyBhcmUgcHJvdmlkZWQgYmVsb3cuCgog
ICAgT3ZlcmFsbCByZXN1bHQ6IFBBU1NFRAogICAgICAgICAgICAgTWVyZ2U6IE9LCiAgICAgICAg
ICAgQ29tcGlsZTogT0sKICAgICAgICAgICAgIFRlc3RzOiBPSwoKQWxsIGtlcm5lbCBiaW5hcmll
cywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxlIGZvciBkb3dubG9hZCBoZXJl
OgoKICBodHRwczovL2FydGlmYWN0cy5ja2ktcHJvamVjdC5vcmcvcGlwZWxpbmVzLzM3Mjg1NQoK
UGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWwgaWYgeW91IGhhdmUgYW55IHF1ZXN0aW9ucyBhYm91
dCB0aGUgdGVzdHMgdGhhdCB3ZQpyYW4gb3IgaWYgeW91IGhhdmUgYW55IHN1Z2dlc3Rpb25zIG9u
IGhvdyB0byBtYWtlIGZ1dHVyZSB0ZXN0cyBtb3JlIGVmZmVjdGl2ZS4KCiAgICAgICAgLC0uICAg
LC0uCiAgICAgICAoIEMgKSAoIEsgKSAgQ29udGludW91cwogICAgICAgIGAtJywtLmAtJyAgIEtl
cm5lbAogICAgICAgICAgKCBJICkgICAgIEludGVncmF0aW9uCiAgICAgICAgICAgYC0nCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwoKQ29tcGlsZSB0ZXN0aW5nCi0tLS0tLS0tLS0tLS0tLQoKV2UgY29t
cGlsZWQgdGhlIGtlcm5lbCBmb3IgMSBhcmNoaXRlY3R1cmU6CgogICAgYWFyY2g2NDoKICAgICAg
bWFrZSBvcHRpb25zOiAtajMwIElOU1RBTExfTU9EX1NUUklQPTEgdGFyZ3otcGtnCgoKSGFyZHdh
cmUgdGVzdGluZwotLS0tLS0tLS0tLS0tLS0tCldlIGJvb3RlZCBlYWNoIGtlcm5lbCBhbmQgcmFu
IHRoZSBmb2xsb3dpbmcgdGVzdHM6CgogIGFhcmNoNjQ6CiAgICBIb3N0IDE6CiAgICAgICDinIUg
Qm9vdCB0ZXN0CiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlvbiB0ZXN0IChhcyBy
b290KQogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAoYXMgdXNlcikK
ICAgICAgIOKchSBMVFAKICAgICAgIOKchSBMb29wZGV2IFNhbml0eQogICAgICAg4pyFIE1lbW9y
eSBmdW5jdGlvbjogbWVtZmRfY3JlYXRlCiAgICAgICDinIUgQU1UVSAoQWJzdHJhY3QgTWFjaGlu
ZSBUZXN0IFV0aWxpdHkpCiAgICAgICDinIUgTmV0d29ya2luZyBicmlkZ2U6IHNhbml0eQogICAg
ICAg4pyFIEV0aGVybmV0IGRyaXZlcnMgc2FuaXR5CiAgICAgICDinIUgTmV0d29ya2luZyBNQUNz
ZWM6IHNhbml0eQogICAgICAg4pyFIE5ldHdvcmtpbmcgc29ja2V0OiBmdXp6CiAgICAgICDinIUg
TmV0d29ya2luZyBzY3RwLWF1dGg6IHNvY2tvcHRzIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5n
OiBpZ21wIGNvbmZvcm1hbmNlIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlOiBwbXR1
CiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jOiBsb2NhbAogICAgICAg4pyFIE5ldHdv
cmtpbmcgcm91dGVfZnVuYzogZm9yd2FyZAogICAgICAg4pyFIE5ldHdvcmtpbmcgVENQOiBrZWVw
YWxpdmUgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgVURQOiBzb2NrZXQKICAgICAgIOKchSBO
ZXR3b3JraW5nIHR1bm5lbDogZ2VuZXZlIGJhc2ljIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5n
IHR1bm5lbDogZ3JlIGJhc2ljCiAgICAgICDinIUgTDJUUCBiYXNpYyB0ZXN0CiAgICAgICDinIUg
TmV0d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJhc2ljCiAgICAgICDinIUgTmV0d29ya2luZyBpcHNl
YzogYmFzaWMgbmV0bnMgdHJhbnNwb3J0CiAgICAgICDinIUgTmV0d29ya2luZyBpcHNlYzogYmFz
aWMgbmV0bnMgdHVubmVsCiAgICAgICDinIUgYXVkaXQ6IGF1ZGl0IHRlc3RzdWl0ZSB0ZXN0CiAg
ICAgICDinIUgaHR0cGQ6IG1vZF9zc2wgc21va2Ugc2FuaXR5CiAgICAgICDinIUgdHVuZWQ6IHR1
bmUtcHJvY2Vzc2VzLXRocm91Z2gtcGVyZgogICAgICAg4pyFIEFMU0EgUENNIGxvb3BiYWNrIHRl
c3QKICAgICAgIOKchSBBTFNBIENvbnRyb2wgKG1peGVyKSBVc2Vyc3BhY2UgRWxlbWVudCB0ZXN0
CiAgICAgICDinIUgc3RvcmFnZTogU0NTSSBWUEQKICAgICAgIOKchSB0cmFjZTogZnRyYWNlL3Ry
YWNlcgogICAgICAg8J+apyDinIUgQ0lGUyBDb25uZWN0YXRob24KICAgICAgIPCfmqcg4pyFIFBP
U0lYIHBqZC1mc3Rlc3Qgc3VpdGVzCiAgICAgICDwn5qnIOKchSBqdm0gdGVzdCBzdWl0ZQogICAg
ICAg8J+apyDinIUgTWVtb3J5IGZ1bmN0aW9uOiBrYXNscgogICAgICAg8J+apyDinIUgTFRQOiBv
cGVucG9zaXggdGVzdCBzdWl0ZQogICAgICAg8J+apyDinIUgTmV0d29ya2luZyB2bmljOiBpcHZs
YW4vYmFzaWMKICAgICAgIPCfmqcg4pyFIGlvdG9wOiBzYW5pdHkKICAgICAgIPCfmqcg4pyFIFVz
ZXggLSB2ZXJzaW9uIDEuOS0yOQogICAgICAg8J+apyDinIUgc3RvcmFnZTogZG0vY29tbW9uCgog
ICAgSG9zdCAyOgoKICAgICAgIOKaoSBJbnRlcm5hbCBpbmZyYXN0cnVjdHVyZSBpc3N1ZXMgcHJl
dmVudGVkIG9uZSBvciBtb3JlIHRlc3RzIChtYXJrZWQKICAgICAgIHdpdGgg4pqh4pqh4pqhKSBm
cm9tIHJ1bm5pbmcgb24gdGhpcyBhcmNoaXRlY3R1cmUuCiAgICAgICBUaGlzIGlzIG5vdCB0aGUg
ZmF1bHQgb2YgdGhlIGtlcm5lbCB0aGF0IHdhcyB0ZXN0ZWQuCgogICAgICAg4pyFIEJvb3QgdGVz
dAogICAgICAg4pyFIHhmc3Rlc3RzOiBleHQ0CiAgICAgICDinIUgeGZzdGVzdHM6IHhmcwogICAg
ICAg4pyFIHNlbGludXgtcG9saWN5OiBzZXJnZS10ZXN0c3VpdGUKICAgICAgIOKchSBsdm0gdGhp
bnAgc2FuaXR5CiAgICAgICDinIUgc3RvcmFnZTogc29mdHdhcmUgUkFJRCB0ZXN0aW5nCiAgICAg
ICDimqHimqHimqEgc3RyZXNzOiBzdHJlc3MtbmcKICAgICAgIPCfmqcg4pyFIElQTUkgZHJpdmVy
IHRlc3QKICAgICAgIPCfmqcg4pyFIElQTUl0b29sIGxvb3Agc3RyZXNzIHRlc3QKICAgICAgIPCf
mqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMKCiAgICBIb3N0IDM6CiAgICAgICDinIUgQm9vdCB0ZXN0
CiAgICAgICDinIUgeGZzdGVzdHM6IGV4dDQKICAgICAgIOKchSB4ZnN0ZXN0czogeGZzCiAgICAg
ICDinIUgc2VsaW51eC1wb2xpY3k6IHNlcmdlLXRlc3RzdWl0ZQogICAgICAg4pyFIGx2bSB0aGlu
cCBzYW5pdHkKICAgICAgIOKchSBzdG9yYWdlOiBzb2Z0d2FyZSBSQUlEIHRlc3RpbmcKICAgICAg
IOKchSBzdHJlc3M6IHN0cmVzcy1uZwogICAgICAg8J+apyDinIUgSVBNSSBkcml2ZXIgdGVzdAog
ICAgICAg8J+apyDinIUgSVBNSXRvb2wgbG9vcCBzdHJlc3MgdGVzdAogICAgICAg8J+apyDinIUg
U3RvcmFnZSBibGt0ZXN0cwoKICBUZXN0IHNvdXJjZXM6IGh0dHBzOi8vZ2l0aHViLmNvbS9DS0kt
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
