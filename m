Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161A31DDC2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 02:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ije2k9AkwxyHh20+v/w2eaZ+c4wG5X7G91OwUVRe7M4=; b=a43
	FzOzMbNdazx00lQQ29khPY8E1fItHyPGOjn71f0e5J93u9YpAkPDYIRrRJq6fiB5Ouhw8RirY/Y0n
	t+2+HiRybTY/xDvTLlW+BnOC4Uvc++0iZTLLPts25V3fXf5wrcm36Hv0Vure9OvzA21vezlvAJ/Xf
	IEcfv4Re4yGx9ibwZiUgArtv6wgt7jz5j7Z1XOAFbca/TibH08FMnqtLPCLMl91AXW1Qc5sGO09Gx
	aTQo6kMeVv28UM+pJlORrNUidIsGr6FVJzKR24SrKYqG5cXZqdYOkz/1YT90um7yWPjEnvI5Zr98c
	PyhAn3Up0ZXCF1To8KOtHl8AipBRDcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbvar-0005M2-Uy; Fri, 22 May 2020 00:31:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbvah-0005Kd-3t
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 00:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590107464;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=rDwNkktX1x7YMMWg6KFPmecfftube2Cx6OVWcwkS3Sg=;
 b=WynwYov7fvzvvEfKrj2c2tXY7lLHetVNCnUnLRfmTgg+5EXrut67wwEgGsKD8AAj/PQQQf
 /9NvYUuboMvf4vA0UlAu5AIAYfnfKLWxdt0ODSB/EA+F9tlfFlnsRU8cEls3Nwwv/RCdkp
 /gPmgGycE71AbBb8VKa0n5uZPAg8lwc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-JzruKkgPOx6pwaTpvH2bIw-1; Thu, 21 May 2020 20:30:59 -0400
X-MC-Unique: JzruKkgPOx6pwaTpvH2bIw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9374F805720;
 Fri, 22 May 2020 00:30:58 +0000 (UTC)
Received: from [172.54.113.181] (cpt-1045.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.71])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D05DC12A4D;
 Fri, 22 May 2020 00:30:54 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.7.0-rc6-f458266.cki
 (arm-next)
Date: Fri, 22 May 2020 00:30:54 -0000
Message-ID: <cki.4A487D58CD.2VH49TUE7J@redhat.com>
X-Gitlab-Pipeline-ID: 575381
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/575381
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_173111_374161_A71AA084 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Q29tbWl0OiBmNDU4MjY2MTIyM2QgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L2NvcmUnIGludG8g
Zm9yLWtlcm5lbGNpCgpUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHBy
b3ZpZGVkIGJlbG93LgoKICAgIE92ZXJhbGwgcmVzdWx0OiBQQVNTRUQKICAgICAgICAgICAgIE1l
cmdlOiBPSwogICAgICAgICAgIENvbXBpbGU6IE9LCiAgICAgICAgICAgICBUZXN0czogT0sKCkFs
bCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBm
b3IgZG93bmxvYWQgaGVyZToKCiAgaHR0cHM6Ly9ja2ktYXJ0aWZhY3RzLnMzLnVzLWVhc3QtMi5h
bWF6b25hd3MuY29tL2luZGV4Lmh0bWw/cHJlZml4PWRhdGF3YXJlaG91c2UvMjAyMC8wNS8yMS81
NzUzODEKClBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsIGlmIHlvdSBoYXZlIGFueSBxdWVzdGlv
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
ICAgICAgIOKchSBzdG9yYWdlOiBzb2Z0d2FyZSBSQUlEIHRlc3RpbmcKICAgICAgIOKchSBzdHJl
c3M6IHN0cmVzcy1uZwogICAgICAg8J+apyDinIUgSVBNSSBkcml2ZXIgdGVzdAogICAgICAg8J+a
pyDinIUgSVBNSXRvb2wgbG9vcCBzdHJlc3MgdGVzdAogICAgICAg8J+apyDinIUgU3RvcmFnZSBi
bGt0ZXN0cwoKICAgIEhvc3QgMjoKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSBQb2Rt
YW4gc3lzdGVtIGludGVncmF0aW9uIHRlc3QgLSBhcyByb290CiAgICAgICDinIUgUG9kbWFuIHN5
c3RlbSBpbnRlZ3JhdGlvbiB0ZXN0IC0gYXMgdXNlcgogICAgICAg4pyFIExUUAogICAgICAg4pyF
IExvb3BkZXYgU2FuaXR5CiAgICAgICDinIUgTWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9jcmVhdGUK
ICAgICAgIOKchSBBTVRVIChBYnN0cmFjdCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAgIOKc
hSBOZXR3b3JraW5nIGJyaWRnZTogc2FuaXR5CiAgICAgICDinIUgRXRoZXJuZXQgZHJpdmVycyBz
YW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5nIHNvY2tldDogZnV6egogICAgICAg4pyFIE5ldHdv
cmtpbmc6IGlnbXAgY29uZm9ybWFuY2UgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGU6
IHBtdHUKICAgICAgIOKchSBOZXR3b3JraW5nIHJvdXRlX2Z1bmMgLSBsb2NhbAogICAgICAg4pyF
IE5ldHdvcmtpbmcgcm91dGVfZnVuYyAtIGZvcndhcmQKICAgICAgIOKchSBOZXR3b3JraW5nIFRD
UDoga2VlcGFsaXZlIHRlc3QKICAgICAgIOKchSBOZXR3b3JraW5nIFVEUDogc29ja2V0CiAgICAg
ICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdlbmV2ZSBiYXNpYyB0ZXN0CiAgICAgICDinIUgTmV0
d29ya2luZyB0dW5uZWw6IGdyZSBiYXNpYwogICAgICAg4pyFIEwyVFAgYmFzaWMgdGVzdAogICAg
ICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiB2eGxhbiBiYXNpYwogICAgICAg4pyFIE5ldHdvcmtp
bmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0gdHJhbnNwb3J0CiAgICAgICDinIUgTmV0d29ya2luZyBp
cHNlYzogYmFzaWMgbmV0bnMgLSB0dW5uZWwKICAgICAgIOKchSBMaWJrY2FwaSBBRl9BTEcgdGVz
dAogICAgICAg4pyFIHBjaXV0aWxzOiB1cGRhdGUgcGNpIGlkcyB0ZXN0CiAgICAgICDinIUgQUxT
QSBQQ00gbG9vcGJhY2sgdGVzdAogICAgICAg4pyFIEFMU0EgQ29udHJvbCAobWl4ZXIpIFVzZXJz
cGFjZSBFbGVtZW50IHRlc3QKICAgICAgIOKchSBzdG9yYWdlOiBTQ1NJIFZQRAogICAgICAg8J+a
pyDinIUgQ0lGUyBDb25uZWN0YXRob24KICAgICAgIPCfmqcg4pyFIFBPU0lYIHBqZC1mc3Rlc3Qg
c3VpdGVzCiAgICAgICDwn5qnIOKchSBqdm0gLSBEYUNhcG8gQmVuY2htYXJrIFN1aXRlCiAgICAg
ICDwn5qnIOKchSBqdm0gLSBqY3N0cmVzcyB0ZXN0cwogICAgICAg8J+apyDinIUgTWVtb3J5IGZ1
bmN0aW9uOiBrYXNscgogICAgICAg8J+apyDinIUgTmV0d29ya2luZyBmaXJld2FsbDogYmFzaWMg
bmV0ZmlsdGVyIHRlc3QKICAgICAgIPCfmqcg4pyFIGF1ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVz
dAogICAgICAg8J+apyDinIUgdHJhY2U6IGZ0cmFjZS90cmFjZXIKCiAgVGVzdCBzb3VyY2VzOiBo
dHRwczovL2dpdGh1Yi5jb20vQ0tJLXByb2plY3QvdGVzdHMtYmVha2VyCiAgICDwn5KaIFB1bGwg
cmVxdWVzdHMgYXJlIHdlbGNvbWUgZm9yIG5ldyB0ZXN0cyBvciBpbXByb3ZlbWVudHMgdG8gZXhp
c3RpbmcgdGVzdHMhCgpBYm9ydGVkIHRlc3RzCi0tLS0tLS0tLS0tLS0KVGVzdHMgdGhhdCBkaWRu
J3QgY29tcGxldGUgcnVubmluZyBzdWNjZXNzZnVsbHkgYXJlIG1hcmtlZCB3aXRoIOKaoeKaoeKa
oS4KSWYgdGhpcyB3YXMgY2F1c2VkIGJ5IGFuIGluZnJhc3RydWN0dXJlIGlzc3VlLCB3ZSB0cnkg
dG8gbWFyayB0aGF0CmV4cGxpY2l0bHkgaW4gdGhlIHJlcG9ydC4KCldhaXZlZCB0ZXN0cwotLS0t
LS0tLS0tLS0KSWYgdGhlIHRlc3QgcnVuIGluY2x1ZGVkIHdhaXZlZCB0ZXN0cywgdGhleSBhcmUg
bWFya2VkIHdpdGgg8J+apy4gU3VjaCB0ZXN0cyBhcmUKZXhlY3V0ZWQgYnV0IHRoZWlyIHJlc3Vs
dHMgYXJlIG5vdCB0YWtlbiBpbnRvIGFjY291bnQuIFRlc3RzIGFyZSB3YWl2ZWQgd2hlbgp0aGVp
ciByZXN1bHRzIGFyZSBub3QgcmVsaWFibGUgZW5vdWdoLCBlLmcuIHdoZW4gdGhleSdyZSBqdXN0
IGludHJvZHVjZWQgb3IgYXJlCmJlaW5nIGZpeGVkLgoKVGVzdGluZyB0aW1lb3V0Ci0tLS0tLS0t
LS0tLS0tLQpXZSBhaW0gdG8gcHJvdmlkZSBhIHJlcG9ydCB3aXRoaW4gcmVhc29uYWJsZSB0aW1l
ZnJhbWUuIFRlc3RzIHRoYXQgaGF2ZW4ndApmaW5pc2hlZCBydW5uaW5nIHlldCBhcmUgbWFya2Vk
IHdpdGgg4o+xLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
