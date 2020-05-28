Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6888E1E70C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 01:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7+a9Sin83WRzAccQUau61uRxMjQPk6RAS6GuIIl5oBQ=; b=u0U
	oXXQTO3kg42p7d9/5jBtSXacD6fsuw/oUM3E0ifLWpGGg/TF8CTVgWfuD36B6iNz6575mffoSvDc+
	9/tT4rx45vHbEwIYikzU0gZEnEuT3Mt/QBA7pOpJYcpE6C3PFPFTLRCGYqKznWHVKVRQpRA+MlFR7
	px6tPj215PQ5WhWK/QCt/jMVIYOwFWut2cLPDZx45UfOWuVVBcULkRlpIlQyYAG1Ik+/ZbHrJEpxx
	uYmeFmc9njPWCp9M/JpYyUgTMZc2TUkAImzVLLTo3PEppzoiQXv9Dd7rvUh5MFaZ181xCimo8oXMX
	dpiRO2XePhF0tNRtOwFYefgMR7RpqiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeSIm-0001SP-MY; Thu, 28 May 2020 23:51:08 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeSIZ-0001RX-09
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 23:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590709851;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=if2EVY2cPk90QinbNatUn6/Y8U8xww5efE3b6INVsZI=;
 b=YX0ff1chxGQH/P0gk49OUB/eoZgoGLSBNSvGiXft9Zwj77TduwPP0rLHMcLvn88Q0RInZB
 9shi+RwkUQly6mdZcL/tMP0yxE+pL8r3N1DLtJj0Nr6ahuApzQpZlQjgwAhC6QNjFWa0ja
 8Ov5i/YxOVqZlrmA1x4ooXBnOYu++mA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-458-E_lVfZS-OqmppWV5t-2Pfg-1; Thu, 28 May 2020 19:50:35 -0400
X-MC-Unique: E_lVfZS-OqmppWV5t-2Pfg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D74A18FE860;
 Thu, 28 May 2020 23:50:34 +0000 (UTC)
Received: from [172.54.105.133] (cpt-1041.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.38])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1940060C80;
 Thu, 28 May 2020 23:50:31 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.7.0-rc7-4690997.cki
 (arm-next)
Date: Thu, 28 May 2020 23:50:30 -0000
Message-ID: <cki.E72B0714CC.9WDIYJ1NTQ@redhat.com>
X-Gitlab-Pipeline-ID: 584927
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/584927
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_165055_256023_AEE9C72E 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
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
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKICAgICAgICAgICAg
Q29tbWl0OiA0NjkwOTk3NmM1OWQgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L2NvcmUnIGludG8g
Zm9yLWtlcm5lbGNpCgpUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHBy
b3ZpZGVkIGJlbG93LgoKICAgIE92ZXJhbGwgcmVzdWx0OiBQQVNTRUQKICAgICAgICAgICAgIE1l
cmdlOiBPSwogICAgICAgICAgIENvbXBpbGU6IE9LCiAgICAgICAgICAgICBUZXN0czogT0sKCkFs
bCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBm
b3IgZG93bmxvYWQgaGVyZToKCiAgaHR0cHM6Ly9ja2ktYXJ0aWZhY3RzLnMzLnVzLWVhc3QtMi5h
bWF6b25hd3MuY29tL2luZGV4Lmh0bWw/cHJlZml4PWRhdGF3YXJlaG91c2UvMjAyMC8wNS8yOC81
ODQ5MjcKClBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsIGlmIHlvdSBoYXZlIGFueSBxdWVzdGlv
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
ICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSBQb2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRl
c3QgLSBhcyByb290CiAgICAgICDinIUgUG9kbWFuIHN5c3RlbSBpbnRlZ3JhdGlvbiB0ZXN0IC0g
YXMgdXNlcgogICAgICAg4pyFIExUUAogICAgICAg4pyFIExvb3BkZXYgU2FuaXR5CiAgICAgICDi
nIUgTWVtb3J5IGZ1bmN0aW9uOiBtZW1mZF9jcmVhdGUKICAgICAgIOKchSBBTVRVIChBYnN0cmFj
dCBNYWNoaW5lIFRlc3QgVXRpbGl0eSkKICAgICAgIOKchSBOZXR3b3JraW5nIGJyaWRnZTogc2Fu
aXR5CiAgICAgICDinIUgRXRoZXJuZXQgZHJpdmVycyBzYW5pdHkKICAgICAgIOKchSBOZXR3b3Jr
aW5nIHNvY2tldDogZnV6egogICAgICAg4pyFIE5ldHdvcmtpbmc6IGlnbXAgY29uZm9ybWFuY2Ug
dGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGU6IHBtdHUKICAgICAgIOKchSBOZXR3b3Jr
aW5nIHJvdXRlX2Z1bmMgLSBsb2NhbAogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYyAt
IGZvcndhcmQKICAgICAgIOKchSBOZXR3b3JraW5nIFRDUDoga2VlcGFsaXZlIHRlc3QKICAgICAg
IOKchSBOZXR3b3JraW5nIFVEUDogc29ja2V0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6
IGdlbmV2ZSBiYXNpYyB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IGdyZSBiYXNp
YwogICAgICAg4pyFIEwyVFAgYmFzaWMgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVs
OiB2eGxhbiBiYXNpYwogICAgICAg4pyFIE5ldHdvcmtpbmcgaXBzZWM6IGJhc2ljIG5ldG5zIC0g
dHJhbnNwb3J0CiAgICAgICDinIUgTmV0d29ya2luZyBpcHNlYzogYmFzaWMgbmV0bnMgLSB0dW5u
ZWwKICAgICAgIOKchSBMaWJrY2FwaSBBRl9BTEcgdGVzdAogICAgICAg4pyFIHBjaXV0aWxzOiB1
cGRhdGUgcGNpIGlkcyB0ZXN0CiAgICAgICDinIUgQUxTQSBQQ00gbG9vcGJhY2sgdGVzdAogICAg
ICAg4pyFIEFMU0EgQ29udHJvbCAobWl4ZXIpIFVzZXJzcGFjZSBFbGVtZW50IHRlc3QKICAgICAg
IOKchSBzdG9yYWdlOiBTQ1NJIFZQRAogICAgICAg8J+apyDinIUgQ0lGUyBDb25uZWN0YXRob24K
ICAgICAgIPCfmqcg4pyFIFBPU0lYIHBqZC1mc3Rlc3Qgc3VpdGVzCiAgICAgICDwn5qnIOKchSBq
dm0gLSBEYUNhcG8gQmVuY2htYXJrIFN1aXRlCiAgICAgICDwn5qnIOKchSBqdm0gLSBqY3N0cmVz
cyB0ZXN0cwogICAgICAg8J+apyDinIUgTWVtb3J5IGZ1bmN0aW9uOiBrYXNscgogICAgICAg8J+a
pyDinIUgTmV0d29ya2luZyBmaXJld2FsbDogYmFzaWMgbmV0ZmlsdGVyIHRlc3QKICAgICAgIPCf
mqcg4pyFIGF1ZGl0OiBhdWRpdCB0ZXN0c3VpdGUgdGVzdAogICAgICAg8J+apyDinIUgdHJhY2U6
IGZ0cmFjZS90cmFjZXIKICAgICAgIPCfmqcg4pyFIGtkdW1wIC0ga2V4ZWNfYm9vdAoKICAgIEhv
c3QgMjoKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSB4ZnN0ZXN0cyAtIGV4dDQKICAg
ICAgIOKchSB4ZnN0ZXN0cyAtIHhmcwogICAgICAg4pyFIHNlbGludXgtcG9saWN5OiBzZXJnZS10
ZXN0c3VpdGUKICAgICAgIOKchSBzdG9yYWdlOiBzb2Z0d2FyZSBSQUlEIHRlc3RpbmcKICAgICAg
IPCfmqcg4pyFIElQTUkgZHJpdmVyIHRlc3QKICAgICAgIPCfmqcg4pyFIElQTUl0b29sIGxvb3Ag
c3RyZXNzIHRlc3QKICAgICAgIPCfmqcg4pyFIFN0b3JhZ2UgYmxrdGVzdHMKCiAgVGVzdCBzb3Vy
Y2VzOiBodHRwczovL2dpdGh1Yi5jb20vQ0tJLXByb2plY3QvdGVzdHMtYmVha2VyCiAgICDwn5Ka
IFB1bGwgcmVxdWVzdHMgYXJlIHdlbGNvbWUgZm9yIG5ldyB0ZXN0cyBvciBpbXByb3ZlbWVudHMg
dG8gZXhpc3RpbmcgdGVzdHMhCgpBYm9ydGVkIHRlc3RzCi0tLS0tLS0tLS0tLS0KVGVzdHMgdGhh
dCBkaWRuJ3QgY29tcGxldGUgcnVubmluZyBzdWNjZXNzZnVsbHkgYXJlIG1hcmtlZCB3aXRoIOKa
oeKaoeKaoS4KSWYgdGhpcyB3YXMgY2F1c2VkIGJ5IGFuIGluZnJhc3RydWN0dXJlIGlzc3VlLCB3
ZSB0cnkgdG8gbWFyayB0aGF0CmV4cGxpY2l0bHkgaW4gdGhlIHJlcG9ydC4KCldhaXZlZCB0ZXN0
cwotLS0tLS0tLS0tLS0KSWYgdGhlIHRlc3QgcnVuIGluY2x1ZGVkIHdhaXZlZCB0ZXN0cywgdGhl
eSBhcmUgbWFya2VkIHdpdGgg8J+apy4gU3VjaCB0ZXN0cyBhcmUKZXhlY3V0ZWQgYnV0IHRoZWly
IHJlc3VsdHMgYXJlIG5vdCB0YWtlbiBpbnRvIGFjY291bnQuIFRlc3RzIGFyZSB3YWl2ZWQgd2hl
bgp0aGVpciByZXN1bHRzIGFyZSBub3QgcmVsaWFibGUgZW5vdWdoLCBlLmcuIHdoZW4gdGhleSdy
ZSBqdXN0IGludHJvZHVjZWQgb3IgYXJlCmJlaW5nIGZpeGVkLgoKVGVzdGluZyB0aW1lb3V0Ci0t
LS0tLS0tLS0tLS0tLQpXZSBhaW0gdG8gcHJvdmlkZSBhIHJlcG9ydCB3aXRoaW4gcmVhc29uYWJs
ZSB0aW1lZnJhbWUuIFRlc3RzIHRoYXQgaGF2ZW4ndApmaW5pc2hlZCBydW5uaW5nIHlldCBhcmUg
bWFya2VkIHdpdGgg4o+xLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
