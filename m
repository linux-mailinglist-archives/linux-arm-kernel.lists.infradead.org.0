Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FA71D0532
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 05:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l6zbBsigsfqvEF3rnXVsne8ICBb7pIsycEM2Siwsl74=; b=ILpYkkfF2p62hc
	s3vZXLCM4InbeidK2QmgLRpfSXnVl2ued2wLM/FjlbqHublqGbwNci/XCH6U/sOGHzjohJcfx9XZB
	fKC2CLvaXhDeHdIZF94k9GPN737WzvV62BvA262KSXpBRUlMV7S1OZq8RE9wVYhb9SEt/0jwbKW7T
	gPC5WoNHJpgXPfB36ZRUryVHyoBTlnOrNGLe3VAgwGgK3svRxDNKS84fMTrtWOHob6b1ikXpDv9Gs
	neAHkqQEtF8IhZILgmjhsKQxXlGlyRqFbDrnxnRg/xvWXQJo4wvNjznv2ezKJLwvhlEVgzRD5rRNm
	ZZ2BbTS8/dfQa9/XpNrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYhem-0000ao-82; Wed, 13 May 2020 03:02:04 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYhee-0000aG-S0
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 03:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589338912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Fh3lFhLQATjr7Bl8lzWB/RW832k6Vex16lQ6n/4F1rY=;
 b=gkgf7T60zG4WhVw2RYnzZmxbRjaJHJWvD+UVplggKsegH7M3Tci2U+3AqFuHrtQG5fq+eB
 JGm2bVn9Wete4/bAUJULJae0uGDaxbB4FP9I9R0F3sSxUc51FdPN25D9lZ7EypxKvLsQ2e
 eUrzaSrLKbNldiWIW1zsKCzp7NeswBA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-391-xPO8vPM6N9SUxoy13s51ow-1; Tue, 12 May 2020 23:01:49 -0400
X-MC-Unique: xPO8vPM6N9SUxoy13s51ow-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8327E8014D7;
 Wed, 13 May 2020 03:01:48 +0000 (UTC)
Received: from [172.54.101.124] (cpt-1059.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.52])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D3C4360BF1;
 Wed, 13 May 2020 03:01:36 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.7.0-rc5-51f14e2.cki
 (arm-next)
Date: Wed, 13 May 2020 03:01:36 -0000
Message-ID: <cki.495C39BD1A.T35Z6VDJPY@redhat.com>
X-Gitlab-Pipeline-ID: 564910
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/564910
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_200156_981908_18A524CA 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKICAgICAgICAgICAg
Q29tbWl0OiA1MWYxNGUyYzAyZTggLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L2NvcmUnIGludG8g
Zm9yLWtlcm5lbGNpCgpUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHBy
b3ZpZGVkIGJlbG93LgoKICAgIE92ZXJhbGwgcmVzdWx0OiBGQUlMRUQgKHNlZSBkZXRhaWxzIGJl
bG93KQogICAgICAgICAgICAgTWVyZ2U6IE9LCiAgICAgICAgICAgQ29tcGlsZTogT0sKICAgICAg
ICAgICAgIFRlc3RzOiBGQUlMRUQKCkFsbCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywg
YW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBmb3IgZG93bmxvYWQgaGVyZToKCiAgaHR0cHM6Ly9ja2kt
YXJ0aWZhY3RzLnMzLnVzLWVhc3QtMi5hbWF6b25hd3MuY29tL2luZGV4Lmh0bWw/cHJlZml4PWRh
dGF3YXJlaG91c2UvMjAyMC8wNS8xMi81NjQ5MTAKCk9uZSBvciBtb3JlIGtlcm5lbCB0ZXN0cyBm
YWlsZWQ6CgogICAgYWFyY2g2NDoKICAgICDinYwgTFRQCgpXZSBob3BlIHRoYXQgdGhlc2UgbG9n
cyBjYW4gaGVscCB5b3UgZmluZCB0aGUgcHJvYmxlbSBxdWlja2x5LiBGb3IgdGhlIGZ1bGwKZGV0
YWlsIG9uIG91ciB0ZXN0aW5nIHByb2NlZHVyZXMsIHBsZWFzZSBzY3JvbGwgdG8gdGhlIGJvdHRv
bSBvZiB0aGlzIG1lc3NhZ2UuCgpQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5b3UgaGF2
ZSBhbnkgcXVlc3Rpb25zIGFib3V0IHRoZSB0ZXN0cyB0aGF0IHdlCnJhbiBvciBpZiB5b3UgaGF2
ZSBhbnkgc3VnZ2VzdGlvbnMgb24gaG93IHRvIG1ha2UgZnV0dXJlIHRlc3RzIG1vcmUgZWZmZWN0
aXZlLgoKICAgICAgICAsLS4gICAsLS4KICAgICAgICggQyApICggSyApICBDb250aW51b3VzCiAg
ICAgICAgYC0nLC0uYC0nICAgS2VybmVsCiAgICAgICAgICAoIEkgKSAgICAgSW50ZWdyYXRpb24K
ICAgICAgICAgICBgLScKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCgpDb21waWxlIHRlc3RpbmcKLS0t
LS0tLS0tLS0tLS0tCgpXZSBjb21waWxlZCB0aGUga2VybmVsIGZvciAxIGFyY2hpdGVjdHVyZToK
CiAgICBhYXJjaDY0OgogICAgICBtYWtlIG9wdGlvbnM6IC1qMzAgSU5TVEFMTF9NT0RfU1RSSVA9
MSB0YXJnei1wa2cKCgoKSGFyZHdhcmUgdGVzdGluZwotLS0tLS0tLS0tLS0tLS0tCldlIGJvb3Rl
ZCBlYWNoIGtlcm5lbCBhbmQgcmFuIHRoZSBmb2xsb3dpbmcgdGVzdHM6CgogIGFhcmNoNjQ6CiAg
ICBIb3N0IDE6CiAgICAgICDinIUgQm9vdCB0ZXN0CiAgICAgICDinIUgeGZzdGVzdHMgLSBleHQ0
CiAgICAgICDinIUgeGZzdGVzdHMgLSB4ZnMKICAgICAgIOKchSBzZWxpbnV4LXBvbGljeTogc2Vy
Z2UtdGVzdHN1aXRlCiAgICAgICDinIUgc3RvcmFnZTogc29mdHdhcmUgUkFJRCB0ZXN0aW5nCiAg
ICAgICDwn5qnIOKchSBJUE1JIGRyaXZlciB0ZXN0CiAgICAgICDwn5qnIOKchSBJUE1JdG9vbCBs
b29wIHN0cmVzcyB0ZXN0CiAgICAgICDwn5qnIOKchSBTdG9yYWdlIGJsa3Rlc3RzCgogICAgSG9z
dCAyOgogICAgICAg4pyFIEJvb3QgdGVzdAogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdy
YXRpb24gdGVzdCAtIGFzIHJvb3QKICAgICAgIOKchSBQb2RtYW4gc3lzdGVtIGludGVncmF0aW9u
IHRlc3QgLSBhcyB1c2VyCiAgICAgICDinYwgTFRQCiAgICAgICDinIUgTWVtb3J5IGZ1bmN0aW9u
OiBtZW1mZF9jcmVhdGUKICAgICAgIOKchSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRp
bGl0eSkKICAgICAgIOKchSBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5CiAgICAgICDinIUgRXRo
ZXJuZXQgZHJpdmVycyBzYW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5nIHNvY2tldDogZnV6egog
ICAgICAg4pyFIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVzdAogICAgICAg4pyFIE5l
dHdvcmtpbmcgcm91dGU6IHBtdHUKICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlX2Z1bmMgLSBs
b2NhbAogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYyAtIGZvcndhcmQKICAgICAgIOKc
hSBOZXR3b3JraW5nIFRDUDoga2VlcGFsaXZlIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIFVE
UDogc29ja2V0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdlbmV2ZSBiYXNpYyB0ZXN0
CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdyZSBiYXNpYwogICAgICAg4pyFIEwyVFAg
YmFzaWMgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiB2eGxhbiBiYXNpYwogICAg
ICAg4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0gdHJhbnNwb3J0CiAgICAgICDi
nIUgTmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgLSB0dW5uZWwKICAgICAgIOKchSBodHRw
ZDogbW9kX3NzbCBzbW9rZSBzYW5pdHkKICAgICAgIOKchSB0dW5lZDogdHVuZS1wcm9jZXNzZXMt
dGhyb3VnaC1wZXJmCiAgICAgICDinIUgQUxTQSBQQ00gbG9vcGJhY2sgdGVzdAogICAgICAg4pyF
IEFMU0EgQ29udHJvbCAobWl4ZXIpIFVzZXJzcGFjZSBFbGVtZW50IHRlc3QKICAgICAgIOKchSBz
dG9yYWdlOiBTQ1NJIFZQRAogICAgICAg8J+apyDinIUgQ0lGUyBDb25uZWN0YXRob24KICAgICAg
IPCfmqcg4pyFIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzCiAgICAgICDwn5qnIOKchSBqdm0gLSBE
YUNhcG8gQmVuY2htYXJrIFN1aXRlCiAgICAgICDwn5qnIOKchSBqdm0gLSBqY3N0cmVzcyB0ZXN0
cwogICAgICAg8J+apyDinIUgTWVtb3J5IGZ1bmN0aW9uOiBrYXNscgogICAgICAg8J+apyDinIUg
YXVkaXQ6IGF1ZGl0IHRlc3RzdWl0ZSB0ZXN0CiAgICAgICDwn5qnIOKchSBpb3RvcDogc2FuaXR5
CiAgICAgICDwn5qnIOKchSB0cmFjZTogZnRyYWNlL3RyYWNlcgoKICBUZXN0IHNvdXJjZXM6IGh0
dHBzOi8vZ2l0aHViLmNvbS9DS0ktcHJvamVjdC90ZXN0cy1iZWFrZXIKICAgIPCfkpogUHVsbCBy
ZXF1ZXN0cyBhcmUgd2VsY29tZSBmb3IgbmV3IHRlc3RzIG9yIGltcHJvdmVtZW50cyB0byBleGlz
dGluZyB0ZXN0cyEKCkFib3J0ZWQgdGVzdHMKLS0tLS0tLS0tLS0tLQpUZXN0cyB0aGF0IGRpZG4n
dCBjb21wbGV0ZSBydW5uaW5nIHN1Y2Nlc3NmdWxseSBhcmUgbWFya2VkIHdpdGgg4pqh4pqh4pqh
LgpJZiB0aGlzIHdhcyBjYXVzZWQgYnkgYW4gaW5mcmFzdHJ1Y3R1cmUgaXNzdWUsIHdlIHRyeSB0
byBtYXJrIHRoYXQKZXhwbGljaXRseSBpbiB0aGUgcmVwb3J0LgoKV2FpdmVkIHRlc3RzCi0tLS0t
LS0tLS0tLQpJZiB0aGUgdGVzdCBydW4gaW5jbHVkZWQgd2FpdmVkIHRlc3RzLCB0aGV5IGFyZSBt
YXJrZWQgd2l0aCDwn5qnLiBTdWNoIHRlc3RzIGFyZQpleGVjdXRlZCBidXQgdGhlaXIgcmVzdWx0
cyBhcmUgbm90IHRha2VuIGludG8gYWNjb3VudC4gVGVzdHMgYXJlIHdhaXZlZCB3aGVuCnRoZWly
IHJlc3VsdHMgYXJlIG5vdCByZWxpYWJsZSBlbm91Z2gsIGUuZy4gd2hlbiB0aGV5J3JlIGp1c3Qg
aW50cm9kdWNlZCBvciBhcmUKYmVpbmcgZml4ZWQuCgpUZXN0aW5nIHRpbWVvdXQKLS0tLS0tLS0t
LS0tLS0tCldlIGFpbSB0byBwcm92aWRlIGEgcmVwb3J0IHdpdGhpbiByZWFzb25hYmxlIHRpbWVm
cmFtZS4gVGVzdHMgdGhhdCBoYXZlbid0CmZpbmlzaGVkIHJ1bm5pbmcgeWV0IGFyZSBtYXJrZWQg
d2l0aCDij7EuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
