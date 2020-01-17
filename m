Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A41140255
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 04:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BKJjEMdkZv+Hnz1+0AC6sfi7bj1gmd1OpAk/ezM8dYk=; b=KX0L4J8jtxCOqs
	Jli7O1/5QVlPnUdbvq9d/62P+OWMARpy1+lGGGm0aOwnDPD8watTzoDSu/SZ+/IRGG/vu+tr8CUlO
	3GqMfMFiq9tpkK4woXces4W2jhbubsrNyWQ4vtimizoPFIaCiZoN8qrts0wXy6vXMKSJGhfuJsO6T
	6FVeXmb9ZK/dcOs2pFoC07+6LHSsV7dqGiieqtSBcoPV27VTzb15/xu/WtLWx38jvcdGA1pVrUG+r
	RH/eIhPLCEiOL7CRZEj9/93l/SbteWA3mGJNy9bGdf3UMEJtz7GsCD0wfl/lZvujkF223hYmSgssa
	njxQJ04BrLWMzV7CDoNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isIQF-000206-7t; Fri, 17 Jan 2020 03:35:47 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIQ4-0001ys-D7
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 03:35:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579232133;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0Hnq2BnYxDE2Bsn92L5I4xbEJ4m9D2y0hJBZO9I7unI=;
 b=XP5pX2/F2YkJWrsLxFSUujBvxW4wJ2gw/lhcyPzIOdWTckIwOM2aGnmuRpELz9aIEGDQ+S
 5Yr7aBGDzNygmYF566jh3Ssxiyyq/l/RrOdn8ZdTMJzNGdAS6rX9xUKqngQ8PEIPnb8QNI
 HC+Y1pdY6NRWzqsUI/tbFD2kt9nfJ68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-BXiOa9V7MAi9u-fwVEzkiQ-1; Thu, 16 Jan 2020 22:35:32 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1BDB98010C1;
 Fri, 17 Jan 2020 03:35:31 +0000 (UTC)
Received: from [172.54.60.163] (cpt-1031.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1E7B638D;
 Fri, 17 Jan 2020 03:35:28 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.5.0-rc6-b260f5e.cki
 (arm-next)
Date: Fri, 17 Jan 2020 03:35:27 -0000
Message-ID: <cki.9F6EEFCFB1.I2MBV5DGSX@redhat.com>
X-Gitlab-Pipeline-ID: 387219
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/387219
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: BXiOa9V7MAi9u-fwVEzkiQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_193536_525449_791A6696 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yi Chen <yiche@redhat.com>, Jianwen Ji <jiji@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, Xiumei Mu <xmu@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBnaXQ6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0CiAgICAgICAgICAgIENv
bW1pdDogYjI2MGY1ZWI0ZTU3IC0gTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9jb3JlJyBpbnRvIGZv
ci1rZXJuZWxjaQoKVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBwcm92
aWRlZCBiZWxvdy4KCiAgICBPdmVyYWxsIHJlc3VsdDogRkFJTEVEIChzZWUgZGV0YWlscyBiZWxv
dykKICAgICAgICAgICAgIE1lcmdlOiBPSwogICAgICAgICAgIENvbXBpbGU6IE9LCiAgICAgICAg
ICAgICBUZXN0czogRkFJTEVECgpBbGwga2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFu
ZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9yIGRvd25sb2FkIGhlcmU6CgogIGh0dHBzOi8vYXJ0aWZh
Y3RzLmNraS1wcm9qZWN0Lm9yZy9waXBlbGluZXMvMzg3MjE5CgpPbmUgb3IgbW9yZSBrZXJuZWwg
dGVzdHMgZmFpbGVkOgoKICAgIGFhcmNoNjQ6CiAgICAg4p2MIE5ldHdvcmtpbmcgVURQOiBzb2Nr
ZXQKICAgICDinYwgTmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgdHVubmVsCgpXZSBob3Bl
IHRoYXQgdGhlc2UgbG9ncyBjYW4gaGVscCB5b3UgZmluZCB0aGUgcHJvYmxlbSBxdWlja2x5LiBG
b3IgdGhlIGZ1bGwKZGV0YWlsIG9uIG91ciB0ZXN0aW5nIHByb2NlZHVyZXMsIHBsZWFzZSBzY3Jv
bGwgdG8gdGhlIGJvdHRvbSBvZiB0aGlzIG1lc3NhZ2UuCgpQbGVhc2UgcmVwbHkgdG8gdGhpcyBl
bWFpbCBpZiB5b3UgaGF2ZSBhbnkgcXVlc3Rpb25zIGFib3V0IHRoZSB0ZXN0cyB0aGF0IHdlCnJh
biBvciBpZiB5b3UgaGF2ZSBhbnkgc3VnZ2VzdGlvbnMgb24gaG93IHRvIG1ha2UgZnV0dXJlIHRl
c3RzIG1vcmUgZWZmZWN0aXZlLgoKICAgICAgICAsLS4gICAsLS4KICAgICAgICggQyApICggSyAp
ICBDb250aW51b3VzCiAgICAgICAgYC0nLC0uYC0nICAgS2VybmVsCiAgICAgICAgICAoIEkgKSAg
ICAgSW50ZWdyYXRpb24KICAgICAgICAgICBgLScKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCgpDb21w
aWxlIHRlc3RpbmcKLS0tLS0tLS0tLS0tLS0tCgpXZSBjb21waWxlZCB0aGUga2VybmVsIGZvciAx
IGFyY2hpdGVjdHVyZToKCiAgICBhYXJjaDY0OgogICAgICBtYWtlIG9wdGlvbnM6IC1qMzAgSU5T
VEFMTF9NT0RfU1RSSVA9MSB0YXJnei1wa2cKCgpIYXJkd2FyZSB0ZXN0aW5nCi0tLS0tLS0tLS0t
LS0tLS0KV2UgYm9vdGVkIGVhY2gga2VybmVsIGFuZCByYW4gdGhlIGZvbGxvd2luZyB0ZXN0czoK
CiAgYWFyY2g2NDoKICAgIEhvc3QgMToKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSBQ
b2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRlc3QgKGFzIHJvb3QpCiAgICAgICDinIUgUG9kbWFu
IHN5c3RlbSBpbnRlZ3JhdGlvbiB0ZXN0IChhcyB1c2VyKQogICAgICAg4pyFIExUUAogICAgICAg
4pyFIExvb3BkZXYgU2FuaXR5CiAgICAgICDinIUgTWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9jcmVh
dGUKICAgICAgIOKchSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAg
IOKchSBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5CiAgICAgICDinIUgRXRoZXJuZXQgZHJpdmVy
cyBzYW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5nIE1BQ3NlYzogc2FuaXR5CiAgICAgICDinIUg
TmV0d29ya2luZyBzb2NrZXQ6IGZ1enoKICAgICAgIOKchSBOZXR3b3JraW5nIHNjdHAtYXV0aDog
c29ja29wdHMgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVz
dAogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGU6IHBtdHUKICAgICAgIOKchSBOZXR3b3JraW5n
IHJvdXRlX2Z1bmM6IGxvY2FsCiAgICAgICDinIUgTmV0d29ya2luZyByb3V0ZV9mdW5jOiBmb3J3
YXJkCiAgICAgICDinIUgTmV0d29ya2luZyBUQ1A6IGtlZXBhbGl2ZSB0ZXN0CiAgICAgICDinYwg
TmV0d29ya2luZyBVRFA6IHNvY2tldAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5l
dmUgYmFzaWMgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKICAg
ICAgIOKchSBMMlRQIGJhc2ljIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogdnhs
YW4gYmFzaWMKICAgICAgIOKchSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0cmFuc3Bv
cnQKICAgICAgIOKdjCBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0dW5uZWwKICAgICAg
IOKchSBhdWRpdDogYXVkaXQgdGVzdHN1aXRlIHRlc3QKICAgICAgIOKchSBodHRwZDogbW9kX3Nz
bCBzbW9rZSBzYW5pdHkKICAgICAgIOKchSB0dW5lZDogdHVuZS1wcm9jZXNzZXMtdGhyb3VnaC1w
ZXJmCiAgICAgICDinIUgQUxTQSBQQ00gbG9vcGJhY2sgdGVzdAogICAgICAg4pyFIEFMU0EgQ29u
dHJvbCAobWl4ZXIpIFVzZXJzcGFjZSBFbGVtZW50IHRlc3QKICAgICAgIOKchSBzdG9yYWdlOiBT
Q1NJIFZQRAogICAgICAg4pyFIHRyYWNlOiBmdHJhY2UvdHJhY2VyCiAgICAgICDwn5qnIOKchSBD
SUZTIENvbm5lY3RhdGhvbgogICAgICAg8J+apyDinIUgUE9TSVggcGpkLWZzdGVzdCBzdWl0ZXMK
ICAgICAgIPCfmqcg4pyFIGp2bSB0ZXN0IHN1aXRlCiAgICAgICDwn5qnIOKchSBNZW1vcnkgZnVu
Y3Rpb246IGthc2xyCiAgICAgICDwn5qnIOKchSBMVFA6IG9wZW5wb3NpeCB0ZXN0IHN1aXRlCiAg
ICAgICDwn5qnIOKchSBOZXR3b3JraW5nIHZuaWM6IGlwdmxhbi9iYXNpYwogICAgICAg8J+apyDi
nIUgaW90b3A6IHNhbml0eQogICAgICAg8J+apyDinIUgVXNleCAtIHZlcnNpb24gMS45LTI5CiAg
ICAgICDwn5qnIOKchSBzdG9yYWdlOiBkbS9jb21tb24KCiAgICBIb3N0IDI6CiAgICAgICDinIUg
Qm9vdCB0ZXN0CiAgICAgICDinIUgeGZzdGVzdHM6IGV4dDQKICAgICAgIOKchSB4ZnN0ZXN0czog
eGZzCiAgICAgICDinIUgc2VsaW51eC1wb2xpY3k6IHNlcmdlLXRlc3RzdWl0ZQogICAgICAg4pyF
IGx2bSB0aGlucCBzYW5pdHkKICAgICAgIOKchSBzdG9yYWdlOiBzb2Z0d2FyZSBSQUlEIHRlc3Rp
bmcKICAgICAgIOKchSBzdHJlc3M6IHN0cmVzcy1uZwogICAgICAg8J+apyDinIUgSVBNSSBkcml2
ZXIgdGVzdAogICAgICAg8J+apyDinIUgSVBNSXRvb2wgbG9vcCBzdHJlc3MgdGVzdAogICAgICAg
8J+apyDinIUgU3RvcmFnZSBibGt0ZXN0cwoKICBUZXN0IHNvdXJjZXM6IGh0dHBzOi8vZ2l0aHVi
LmNvbS9DS0ktcHJvamVjdC90ZXN0cy1iZWFrZXIKICAgIPCfkpogUHVsbCByZXF1ZXN0cyBhcmUg
d2VsY29tZSBmb3IgbmV3IHRlc3RzIG9yIGltcHJvdmVtZW50cyB0byBleGlzdGluZyB0ZXN0cyEK
CldhaXZlZCB0ZXN0cwotLS0tLS0tLS0tLS0KSWYgdGhlIHRlc3QgcnVuIGluY2x1ZGVkIHdhaXZl
ZCB0ZXN0cywgdGhleSBhcmUgbWFya2VkIHdpdGgg8J+apy4gU3VjaCB0ZXN0cyBhcmUKZXhlY3V0
ZWQgYnV0IHRoZWlyIHJlc3VsdHMgYXJlIG5vdCB0YWtlbiBpbnRvIGFjY291bnQuIFRlc3RzIGFy
ZSB3YWl2ZWQgd2hlbgp0aGVpciByZXN1bHRzIGFyZSBub3QgcmVsaWFibGUgZW5vdWdoLCBlLmcu
IHdoZW4gdGhleSdyZSBqdXN0IGludHJvZHVjZWQgb3IgYXJlCmJlaW5nIGZpeGVkLgoKVGVzdGlu
ZyB0aW1lb3V0Ci0tLS0tLS0tLS0tLS0tLQpXZSBhaW0gdG8gcHJvdmlkZSBhIHJlcG9ydCB3aXRo
aW4gcmVhc29uYWJsZSB0aW1lZnJhbWUuIFRlc3RzIHRoYXQgaGF2ZW4ndApmaW5pc2hlZCBydW5u
aW5nIGFyZSBtYXJrZWQgd2l0aCDij7EuIFJlcG9ydHMgZm9yIG5vbi11cHN0cmVhbSBrZXJuZWxz
IGhhdmUKYSBCZWFrZXIgcmVjaXBlIGxpbmtlZCB0byBuZXh0IHRvIGVhY2ggaG9zdC4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
