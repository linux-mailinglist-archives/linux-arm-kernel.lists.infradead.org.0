Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5943E17C7ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 22:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EQ2beCC2oUazWdfRBciEzagOEvcCJjIgTvdrRpxrzgQ=; b=OnD
	n1JonbDZfSyg85epURIR8/dm/geFfb0cSk6gmnINHjodYtfleya1s9RUD9aNg+0Zcz8YGspJ4qBBh
	0RypogdFAOXNq8D5kdFrw8yZzvYiy0ZboV0+l07EG3IfqKplTNxsy62wTcV1fnfUrjcQdn1iIkDHV
	Cxl88yDjElo8uHnNJfKTpQedogZpd6YOsJI0qy2/ZLx8oGfT6aeH0IuH3C9qZkF8sfuID9+v5i0Ri
	z3Z65hcXyE0GrPu0D1E8lEv/+RUCf3eLuAtFlxv0WiMj47dhogGwzZcn8nryRynmEpvIpch8V92Id
	dBZJXrH/e6VlMMl8YY3q59UAfo33qtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAKe4-0004qZ-Kx; Fri, 06 Mar 2020 21:36:36 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAKdu-0004q2-Vj
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 21:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583530583;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=INFBqkLDIukOxdDrk6SNaJAtu3OxzwYQzmlvp4z6jCI=;
 b=UpT/+brjCHbNt3buvkUzVRKNpc2ZJf1DYVrzP86mw5rM03HmDnb4ZlxN0wdl0mBocbyu5a
 baJEkJyzu5sZm/5zM+6aHVLuXMooXSTfGptNJVLFBjsOKiH+Ca+F85AgsmKy1pO50yzKFX
 jYuf7E3k4YYGqf0h/pa83pU2chNfr74=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-VZbbEXgPMj-VUrVPAIwQ1Q-1; Fri, 06 Mar 2020 16:36:21 -0500
X-MC-Unique: VZbbEXgPMj-VUrVPAIwQ1Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E443D13F6;
 Fri,  6 Mar 2020 21:36:19 +0000 (UTC)
Received: from [172.54.80.59] (cpt-1035.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D4A49388;
 Fri,  6 Mar 2020 21:36:16 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4pyF?= PASS: Test report for kernel 5.6.0-rc4-215ae3a.cki
 (arm-next)
Date: Fri, 06 Mar 2020 21:36:16 -0000
Message-ID: <cki.A3ECA68DC9.J87DOU092L@redhat.com>
X-Gitlab-Pipeline-ID: 475015
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/475015
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_133627_094787_E8AB6D86 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9hcm02NC9saW51eC5naXQKICAgICAgICAgICAg
Q29tbWl0OiAyMTVhZTNhZDhkOTEgLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L3BlcmYnIGludG8g
Zm9yLWtlcm5lbGNpCgpUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQgdGVzdHMgYXJlIHBy
b3ZpZGVkIGJlbG93LgoKICAgIE92ZXJhbGwgcmVzdWx0OiBQQVNTRUQKICAgICAgICAgICAgIE1l
cmdlOiBPSwogICAgICAgICAgIENvbXBpbGU6IE9LCiAgICAgICAgICAgICBUZXN0czogT0sKCkFs
bCBrZXJuZWwgYmluYXJpZXMsIGNvbmZpZyBmaWxlcywgYW5kIGxvZ3MgYXJlIGF2YWlsYWJsZSBm
b3IgZG93bmxvYWQgaGVyZToKCiAgaHR0cHM6Ly9ja2ktYXJ0aWZhY3RzLnMzLnVzLWVhc3QtMi5h
bWF6b25hd3MuY29tL2luZGV4Lmh0bWw/cHJlZml4PWRhdGF3YXJlaG91c2UvMjAyMC8wMy8wNi80
NzUwMTUKClBsZWFzZSByZXBseSB0byB0aGlzIGVtYWlsIGlmIHlvdSBoYXZlIGFueSBxdWVzdGlv
bnMgYWJvdXQgdGhlIHRlc3RzIHRoYXQgd2UKcmFuIG9yIGlmIHlvdSBoYXZlIGFueSBzdWdnZXN0
aW9ucyBvbiBob3cgdG8gbWFrZSBmdXR1cmUgdGVzdHMgbW9yZSBlZmZlY3RpdmUuCgogICAgICAg
ICwtLiAgICwtLgogICAgICAgKCBDICkgKCBLICkgIENvbnRpbnVvdXMKICAgICAgICBgLScsLS5g
LScgICBLZXJuZWwKICAgICAgICAgICggSSApICAgICBJbnRlZ3JhdGlvbgogICAgICAgICAgIGAt
JwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KCkNvbXBpbGUgdGVzdGluZwotLS0tLS0tLS0tLS0tLS0K
CldlIGNvbXBpbGVkIHRoZSBrZXJuZWwgZm9yIDEgYXJjaGl0ZWN0dXJlOgoKICAgIGFhcmNoNjQ6
CiAgICAgIG1ha2Ugb3B0aW9uczogLWozMCBJTlNUQUxMX01PRF9TVFJJUD0xIHRhcmd6LXBrZwoK
CkhhcmR3YXJlIHRlc3RpbmcKLS0tLS0tLS0tLS0tLS0tLQpXZSBib290ZWQgZWFjaCBrZXJuZWwg
YW5kIHJhbiB0aGUgZm9sbG93aW5nIHRlc3RzOgoKICBhYXJjaDY0OgogICAgSG9zdCAxOgogICAg
ICAg4pyFIEJvb3QgdGVzdAogICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVz
dCAtIGFzIHJvb3QKICAgICAgIOKchSBQb2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRlc3QgLSBh
cyB1c2VyCiAgICAgICDinIUgTFRQCiAgICAgICDinIUgTG9vcGRldiBTYW5pdHkKICAgICAgIOKc
hSBNZW1vcnkgZnVuY3Rpb246IG1lbWZkX2NyZWF0ZQogICAgICAg4pyFIEFNVFUgKEFic3RyYWN0
IE1hY2hpbmUgVGVzdCBVdGlsaXR5KQogICAgICAg4pyFIE5ldHdvcmtpbmcgYnJpZGdlOiBzYW5p
dHkKICAgICAgIOKchSBFdGhlcm5ldCBkcml2ZXJzIHNhbml0eQogICAgICAg4pyFIE5ldHdvcmtp
bmcgTUFDc2VjOiBzYW5pdHkKICAgICAgIOKchSBOZXR3b3JraW5nIHNvY2tldDogZnV6egogICAg
ICAg4pyFIE5ldHdvcmtpbmcgc2N0cC1hdXRoOiBzb2Nrb3B0cyB0ZXN0CiAgICAgICDinIUgTmV0
d29ya2luZzogaWdtcCBjb25mb3JtYW5jZSB0ZXN0CiAgICAgICDinIUgTmV0d29ya2luZyByb3V0
ZTogcG10dQogICAgICAg4pyFIE5ldHdvcmtpbmcgcm91dGVfZnVuYyAtIGxvY2FsCiAgICAgICDi
nIUgTmV0d29ya2luZyByb3V0ZV9mdW5jIC0gZm9yd2FyZAogICAgICAg4pyFIE5ldHdvcmtpbmcg
VENQOiBrZWVwYWxpdmUgdGVzdAogICAgICAg4pyFIE5ldHdvcmtpbmcgVURQOiBzb2NrZXQKICAg
ICAgIOKchSBOZXR3b3JraW5nIHR1bm5lbDogZ2VuZXZlIGJhc2ljIHRlc3QKICAgICAgIOKchSBO
ZXR3b3JraW5nIHR1bm5lbDogZ3JlIGJhc2ljCiAgICAgICDinIUgTDJUUCBiYXNpYyB0ZXN0CiAg
ICAgICDinIUgTmV0d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJhc2ljCiAgICAgICDinIUgTmV0d29y
a2luZyBpcHNlYzogYmFzaWMgbmV0bnMgLSB0cmFuc3BvcnQKICAgICAgIOKchSBOZXR3b3JraW5n
IGlwc2VjOiBiYXNpYyBuZXRucyAtIHR1bm5lbAogICAgICAg4pyFIGF1ZGl0OiBhdWRpdCB0ZXN0
c3VpdGUgdGVzdAogICAgICAg4pyFIGh0dHBkOiBtb2Rfc3NsIHNtb2tlIHNhbml0eQogICAgICAg
4pyFIHR1bmVkOiB0dW5lLXByb2Nlc3Nlcy10aHJvdWdoLXBlcmYKICAgICAgIOKchSBBTFNBIFBD
TSBsb29wYmFjayB0ZXN0CiAgICAgICDinIUgQUxTQSBDb250cm9sIChtaXhlcikgVXNlcnNwYWNl
IEVsZW1lbnQgdGVzdAogICAgICAg4pyFIHN0b3JhZ2U6IFNDU0kgVlBECiAgICAgICDinIUgdHJh
Y2U6IGZ0cmFjZS90cmFjZXIKICAgICAgIPCfmqcg4pyFIENJRlMgQ29ubmVjdGF0aG9uCiAgICAg
ICDwn5qnIOKchSBQT1NJWCBwamQtZnN0ZXN0IHN1aXRlcwogICAgICAg8J+apyDinIUganZtIC0g
RGFDYXBvIEJlbmNobWFyayBTdWl0ZQogICAgICAg8J+apyDinIUganZtIC0gamNzdHJlc3MgdGVz
dHMKICAgICAgIPCfmqcg4pyFIE1lbW9yeSBmdW5jdGlvbjoga2FzbHIKICAgICAgIPCfmqcg4pyF
IExUUDogb3BlbnBvc2l4IHRlc3Qgc3VpdGUKICAgICAgIPCfmqcg4pyFIE5ldHdvcmtpbmcgdm5p
YzogaXB2bGFuL2Jhc2ljCiAgICAgICDwn5qnIOKchSBpb3RvcDogc2FuaXR5CiAgICAgICDwn5qn
IOKchSBVc2V4IC0gdmVyc2lvbiAxLjktMjkKICAgICAgIPCfmqcg4pyFIHN0b3JhZ2U6IGRtL2Nv
bW1vbgoKICAgIEhvc3QgMjoKICAgICAgIOKchSBCb290IHRlc3QKICAgICAgIOKchSB4ZnN0ZXN0
cyAtIGV4dDQKICAgICAgIOKchSB4ZnN0ZXN0cyAtIHhmcwogICAgICAg4pyFIHNlbGludXgtcG9s
aWN5OiBzZXJnZS10ZXN0c3VpdGUKICAgICAgIOKchSBsdm0gdGhpbnAgc2FuaXR5CiAgICAgICDi
nIUgc3RvcmFnZTogc29mdHdhcmUgUkFJRCB0ZXN0aW5nCiAgICAgICDwn5qnIOKchSBTdG9yYWdl
IGJsa3Rlc3RzCgogIFRlc3Qgc291cmNlczogaHR0cHM6Ly9naXRodWIuY29tL0NLSS1wcm9qZWN0
L3Rlc3RzLWJlYWtlcgogICAg8J+SmiBQdWxsIHJlcXVlc3RzIGFyZSB3ZWxjb21lIGZvciBuZXcg
dGVzdHMgb3IgaW1wcm92ZW1lbnRzIHRvIGV4aXN0aW5nIHRlc3RzIQoKV2FpdmVkIHRlc3RzCi0t
LS0tLS0tLS0tLQpJZiB0aGUgdGVzdCBydW4gaW5jbHVkZWQgd2FpdmVkIHRlc3RzLCB0aGV5IGFy
ZSBtYXJrZWQgd2l0aCDwn5qnLiBTdWNoIHRlc3RzIGFyZQpleGVjdXRlZCBidXQgdGhlaXIgcmVz
dWx0cyBhcmUgbm90IHRha2VuIGludG8gYWNjb3VudC4gVGVzdHMgYXJlIHdhaXZlZCB3aGVuCnRo
ZWlyIHJlc3VsdHMgYXJlIG5vdCByZWxpYWJsZSBlbm91Z2gsIGUuZy4gd2hlbiB0aGV5J3JlIGp1
c3QgaW50cm9kdWNlZCBvciBhcmUKYmVpbmcgZml4ZWQuCgpUZXN0aW5nIHRpbWVvdXQKLS0tLS0t
LS0tLS0tLS0tCldlIGFpbSB0byBwcm92aWRlIGEgcmVwb3J0IHdpdGhpbiByZWFzb25hYmxlIHRp
bWVmcmFtZS4gVGVzdHMgdGhhdCBoYXZlbid0CmZpbmlzaGVkIHJ1bm5pbmcgeWV0IGFyZSBtYXJr
ZWQgd2l0aCDij7EuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
