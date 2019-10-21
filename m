Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B55EDF50C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8evzilndjwrEC1FezxftXEybMCbFstMFOqpMRjMwAjs=; b=ntN
	LZmxIVzgXdy1R28tJKpG6Kd/BAUp4srXS/jPx7cBMwBx64+hCT2bDiaTIiv7aEQF8EXsh3LKxbeyU
	3mFyUfRF/rdo1YLjPnRRFG/OEcni/cNdXWunQrPW5c6JOYBjneqm2kqfIqieSQYbFVBLfmW87Vl4p
	PQe0mfmygpNp6Lx9YgaTZ6+b8XB6BmFgOKWw44p4iPzutqdk5oN2FbzgFmwPld0webYu2XbWdmoJ+
	uFwWkl/f1KIFhzlgL0PS+Uu0eDjLs2nRD6P0Bo0t2J9duyZoQSDJTbKsZBMNOxc1M2i11qIwr3NvP
	a9JfumpBkH/cUwc9pJ6L56WIM9lmTiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMcQw-0006WU-Tt; Mon, 21 Oct 2019 18:29:34 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMcQn-0006Vx-0f
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571682562;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=zn5OQT1Ri/KDYzbeg9e3yIMDt4MTscQGoojWSj367Eg=;
 b=doPVbrw7VJ9MqFwnTpvW1QCAAAF2ELA4QmIAQH1jRemJiUsYb/RjibJzUzaINDdxy3MXR5
 NUlgwSki7OvyUgfXh8SAzpmWHMZZktVsZBEx1aFvI2y7GyknVNrLTgsAudJ7jxYklJ++xp
 0WgsTJKW9LyGQoLoyx0uYwXvpR6EUPE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-8rshejm0OrWNPkpZuIqfbQ-1; Mon, 21 Oct 2019 14:29:18 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A86C80183E;
 Mon, 21 Oct 2019 18:29:17 +0000 (UTC)
Received: from [172.54.14.49] (cpt-1003.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 975B45D6B0;
 Mon, 21 Oct 2019 18:29:14 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.4.0-rc4-7b16c1c.cki
 (arm-next)
Date: Mon, 21 Oct 2019 18:29:14 -0000
Message-ID: <cki.4169C25302.RS2IC3IBPA@redhat.com>
X-Gitlab-Pipeline-ID: 238991
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/238991
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: 8rshejm0OrWNPkpZuIqfbQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_112925_142403_FA899587 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
bW1pdDogN2IxNmMxYzc2MTk3IC0gTWVyZ2UgYnJhbmNoICdyZWZjb3VudC9mdWxsJyBpbnRvIGZv
ci1rZXJuZWxjaQoKVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBwcm92
aWRlZCBiZWxvdy4KCiAgICBPdmVyYWxsIHJlc3VsdDogUEFTU0VECiAgICAgICAgICAgICBNZXJn
ZTogT0sKICAgICAgICAgICBDb21waWxlOiBPSwogICAgICAgICAgICAgVGVzdHM6IE9LCgpBbGwg
a2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9y
IGRvd25sb2FkIGhlcmU6CgogIGh0dHBzOi8vYXJ0aWZhY3RzLmNraS1wcm9qZWN0Lm9yZy9waXBl
bGluZXMvMjM4OTkxCgpQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5b3UgaGF2ZSBhbnkg
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
MToKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSBQb2RtYW4gc3lzdGVtIGludGVncmF0
aW9uIHRlc3QgKGFzIHJvb3QpCiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlvbiB0
ZXN0IChhcyB1c2VyKQogICAgICAg4pyFIExUUCBsaXRlCiAgICAgICDinIUgTG9vcGRldiBTYW5p
dHkKICAgICAgIOKchSBqdm0gdGVzdCBzdWl0ZQogICAgICAg4pyFIE1lbW9yeSBmdW5jdGlvbjog
bWVtZmRfY3JlYXRlCiAgICAgICDinIUgTWVtb3J5IGZ1bmN0aW9uOiBrYXNscgogICAgICAg4pyF
IEFNVFUgKEFic3RyYWN0IE1hY2hpbmUgVGVzdCBVdGlsaXR5KQogICAgICAg4pyFIExUUDogb3Bl
bnBvc2l4IHRlc3Qgc3VpdGUKICAgICAgIOKchSBFdGhlcm5ldCBkcml2ZXJzIHNhbml0eQogICAg
ICAg4pyFIE5ldHdvcmtpbmcgTUFDc2VjOiBzYW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5nIHNv
Y2tldDogZnV6egogICAgICAg4pyFIE5ldHdvcmtpbmcgc2N0cC1hdXRoOiBzb2Nrb3B0cyB0ZXN0
CiAgICAgICDinIUgTmV0d29ya2luZzogaWdtcCBjb25mb3JtYW5jZSB0ZXN0CiAgICAgICDinIUg
TmV0d29ya2luZyBUQ1A6IGtlZXBhbGl2ZSB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyBVRFA6
IHNvY2tldAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKICAgICAgIOKc
hSBMMlRQIGJhc2ljIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogdnhsYW4gYmFz
aWMKICAgICAgIOKchSBhdWRpdDogYXVkaXQgdGVzdHN1aXRlIHRlc3QKICAgICAgIOKchSBodHRw
ZDogbW9kX3NzbCBzbW9rZSBzYW5pdHkKICAgICAgIOKchSBpb3RvcDogc2FuaXR5CiAgICAgICDi
nIUgdHVuZWQ6IHR1bmUtcHJvY2Vzc2VzLXRocm91Z2gtcGVyZgogICAgICAg4pyFIEFMU0EgUENN
IGxvb3BiYWNrIHRlc3QKICAgICAgIOKchSBBTFNBIENvbnRyb2wgKG1peGVyKSBVc2Vyc3BhY2Ug
RWxlbWVudCB0ZXN0CiAgICAgICDinIUgVXNleCAtIHZlcnNpb24gMS45LTI5CiAgICAgICDinIUg
c3RvcmFnZTogU0NTSSBWUEQKICAgICAgIOKchSBzdHJlc3M6IHN0cmVzcy1uZwogICAgICAg4pyF
IHRyYWNlOiBmdHJhY2UvdHJhY2VyCiAgICAgICDwn5qnIOKchSBDSUZTIENvbm5lY3RhdGhvbgog
ICAgICAg8J+apyDinIUgUE9TSVggcGpkLWZzdGVzdCBzdWl0ZXMKICAgICAgIPCfmqcg4pyFIE5l
dHdvcmtpbmcgYnJpZGdlOiBzYW5pdHkKICAgICAgIPCfmqcg4pyFIE5ldHdvcmtpbmcgcm91dGU6
IHBtdHUKICAgICAgIPCfmqcg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5ldmUgYmFzaWMgdGVz
dAogICAgICAg8J+apyDinIUgTmV0d29ya2luZyB2bmljOiBpcHZsYW4vYmFzaWMKICAgICAgIPCf
mqcg4pyFIHN0b3JhZ2U6IGRtL2NvbW1vbgogICAgICAg8J+apyDinIUgTmV0d29ya2luZyByb3V0
ZV9mdW5jOiBsb2NhbAogICAgICAg8J+apyDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jOiBmb3J3
YXJkCiAgICAgICDwn5qnIOKchSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0cmFuc3Bv
cnQKICAgICAgIPCfmqcg4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIHR1bm5lbAoK
ICAgIEhvc3QgMjoKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSB4ZnN0ZXN0czogZXh0
NAogICAgICAg4pyFIHhmc3Rlc3RzOiB4ZnMKICAgICAgIOKchSBzZWxpbnV4LXBvbGljeTogc2Vy
Z2UtdGVzdHN1aXRlCiAgICAgICDinIUgbHZtIHRoaW5wIHNhbml0eQogICAgICAg4pyFIHN0b3Jh
Z2U6IHNvZnR3YXJlIFJBSUQgdGVzdGluZwogICAgICAg8J+apyDinIUgU3RvcmFnZSBibGt0ZXN0
cwoKICBUZXN0IHNvdXJjZXM6IGh0dHBzOi8vZ2l0aHViLmNvbS9DS0ktcHJvamVjdC90ZXN0cy1i
ZWFrZXIKICAgIPCfkpogUHVsbCByZXF1ZXN0cyBhcmUgd2VsY29tZSBmb3IgbmV3IHRlc3RzIG9y
IGltcHJvdmVtZW50cyB0byBleGlzdGluZyB0ZXN0cyEKCldhaXZlZCB0ZXN0cwotLS0tLS0tLS0t
LS0KSWYgdGhlIHRlc3QgcnVuIGluY2x1ZGVkIHdhaXZlZCB0ZXN0cywgdGhleSBhcmUgbWFya2Vk
IHdpdGgg8J+apy4gU3VjaCB0ZXN0cyBhcmUKZXhlY3V0ZWQgYnV0IHRoZWlyIHJlc3VsdHMgYXJl
IG5vdCB0YWtlbiBpbnRvIGFjY291bnQuIFRlc3RzIGFyZSB3YWl2ZWQgd2hlbgp0aGVpciByZXN1
bHRzIGFyZSBub3QgcmVsaWFibGUgZW5vdWdoLCBlLmcuIHdoZW4gdGhleSdyZSBqdXN0IGludHJv
ZHVjZWQgb3IgYXJlCmJlaW5nIGZpeGVkLgoKVGVzdGluZyB0aW1lb3V0Ci0tLS0tLS0tLS0tLS0t
LQpXZSBhaW0gdG8gcHJvdmlkZSBhIHJlcG9ydCB3aXRoaW4gcmVhc29uYWJsZSB0aW1lZnJhbWUu
IFRlc3RzIHRoYXQgaGF2ZW4ndApmaW5pc2hlZCBydW5uaW5nIGFyZSBtYXJrZWQgd2l0aCDij7Eu
IFJlcG9ydHMgZm9yIG5vbi11cHN0cmVhbSBrZXJuZWxzIGhhdmUKYSBCZWFrZXIgcmVjaXBlIGxp
bmtlZCB0byBuZXh0IHRvIGVhY2ggaG9zdC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
