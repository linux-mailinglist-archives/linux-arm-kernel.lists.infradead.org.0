Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7077113DB55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:20:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Subject:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mxbCABYtT0yaifCLDBKkmt3bjGBeNsidsV9ZgAJvEfY=; b=TxWw82eeFH3swK
	C+AK62iY5cczMJjL2xuHg1HuLPQTQn2o+loDeXuwJ6ENTED3EAyMVjeUhM+aGNsgVpUs5bYYW2yyE
	Q8C8c0Zhty08tcTgu8Bf0vAIjM29ZogorbUX77ZgLh5NPL+LAVvBATLUZ+hHbaRjLWmTS/Sjj9KpG
	xHGOWrzso4YpdvZmYMZ+zvvrHJNcCKOnkafYB1Uo7uvBvCfECKz0NKj2Wyw242YopcSTtNZ2X3ldD
	W5FcE7FCs4949YOKU6Xld1k1PLKV396M3Glh3lLj/j2K0paMr2FZ4bPoPSM3DFkFkBHn4M7PDDKgB
	Twj16rWLOOeZigKXgTQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is54F-0003XC-SD; Thu, 16 Jan 2020 13:20:11 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is542-0003UN-Bw
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579180795;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=aigJ4WLktFsHhOWLfA5Rq8dTNduw59itqQLjdJ21bns=;
 b=h06YATinZBDTJBOqJ01lWmZ5VeRZqRHjVw2TCHy/63ttaYpd06IrGYoVXXgRNJArYEoU3p
 CPxNjdp1HFp8ZVyncW5se426C8eh+gL7aEj8oO3Qlo1zo80bZqoWdBlNBhxQhZi6tEb2/S
 GIEL5Qkwl36x4WsrizCny6m1LTeaLcE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-qlE_P1KlPNOlCVWEve9U-Q-1; Thu, 16 Jan 2020 08:19:52 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4846B8024F0;
 Thu, 16 Jan 2020 13:19:51 +0000 (UTC)
Received: from [172.54.60.163] (cpt-1031.paas.prod.upshift.rdu2.redhat.com
 [10.0.19.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 997348120D;
 Thu, 16 Jan 2020 13:19:46 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.5.0-rc6-40f39e8.cki
 (arm-next)
Date: Thu, 16 Jan 2020 13:19:46 -0000
Message-ID: <cki.1A6A8CC1CF.1989HWSEIM@redhat.com>
X-Gitlab-Pipeline-ID: 385274
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/385274
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: qlE_P1KlPNOlCVWEve9U-Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_051958_480140_42A12AA9 
X-CRM114-Status: UNSURE (   8.12  )
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
Cc: Jianlin Shi <jishi@redhat.com>, Jianwen Ji <jiji@redhat.com>,
 Hangbin Liu <haliu@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhlbGxvLAoKV2UgcmFuIGF1dG9tYXRlZCB0ZXN0cyBvbiBhIHJlY2VudCBjb21taXQgZnJvbSB0
aGlzIGtlcm5lbCB0cmVlOgoKICAgICAgIEtlcm5lbCByZXBvOiBnaXQ6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0CiAgICAgICAgICAgIENv
bW1pdDogNDBmMzllODM3MmZlIC0gTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9jb3JlJyBpbnRvIGZv
ci1rZXJuZWxjaQoKVGhlIHJlc3VsdHMgb2YgdGhlc2UgYXV0b21hdGVkIHRlc3RzIGFyZSBwcm92
aWRlZCBiZWxvdy4KCiAgICBPdmVyYWxsIHJlc3VsdDogRkFJTEVEIChzZWUgZGV0YWlscyBiZWxv
dykKICAgICAgICAgICAgIE1lcmdlOiBPSwogICAgICAgICAgIENvbXBpbGU6IE9LCiAgICAgICAg
ICAgICBUZXN0czogRkFJTEVECgpBbGwga2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFu
ZCBsb2dzIGFyZSBhdmFpbGFibGUgZm9yIGRvd25sb2FkIGhlcmU6CgogIGh0dHBzOi8vYXJ0aWZh
Y3RzLmNraS1wcm9qZWN0Lm9yZy9waXBlbGluZXMvMzg1Mjc0CgpPbmUgb3IgbW9yZSBrZXJuZWwg
dGVzdHMgZmFpbGVkOgoKICAgIGFhcmNoNjQ6CiAgICAg4p2MIE5ldHdvcmtpbmcgdHVubmVsOiBn
cmUgYmFzaWMKICAgICDinYwgTmV0d29ya2luZyB0dW5uZWw6IHZ4bGFuIGJhc2ljCgpXZSBob3Bl
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
YXJkCiAgICAgICDinIUgTmV0d29ya2luZyBUQ1A6IGtlZXBhbGl2ZSB0ZXN0CiAgICAgICDinIUg
TmV0d29ya2luZyBVRFA6IHNvY2tldAogICAgICAg4pyFIE5ldHdvcmtpbmcgdHVubmVsOiBnZW5l
dmUgYmFzaWMgdGVzdAogICAgICAg4p2MIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKICAg
ICAgIOKchSBMMlRQIGJhc2ljIHRlc3QKICAgICAgIOKdjCBOZXR3b3JraW5nIHR1bm5lbDogdnhs
YW4gYmFzaWMKICAgICAgIOKchSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0cmFuc3Bv
cnQKICAgICAgIOKchSBOZXR3b3JraW5nIGlwc2VjOiBiYXNpYyBuZXRucyB0dW5uZWwKICAgICAg
IOKchSBhdWRpdDogYXVkaXQgdGVzdHN1aXRlIHRlc3QKICAgICAgIOKchSBodHRwZDogbW9kX3Nz
bCBzbW9rZSBzYW5pdHkKICAgICAgIOKchSB0dW5lZDogdHVuZS1wcm9jZXNzZXMtdGhyb3VnaC1w
ZXJmCiAgICAgICDinIUgQUxTQSBQQ00gbG9vcGJhY2sgdGVzdAogICAgICAg4pyFIEFMU0EgQ29u
dHJvbCAobWl4ZXIpIFVzZXJzcGFjZSBFbGVtZW50IHRlc3QKICAgICAgIOKchSBzdG9yYWdlOiBT
Q1NJIFZQRAogICAgICAg4pyFIHRyYWNlOiBmdHJhY2UvdHJhY2VyCiAgICAgICDwn5qnIOKchSBD
SUZTIENvbm5lY3RhdGhvbgogICAgICAg8J+apyDinIUgUE9TSVggcGpkLWZzdGVzdCBzdWl0ZXMK
ICAgICAgIOKPsSAganZtIHRlc3Qgc3VpdGUKICAgICAgIOKPsSAgTWVtb3J5IGZ1bmN0aW9uOiBr
YXNscgogICAgICAg4o+xICBMVFA6IG9wZW5wb3NpeCB0ZXN0IHN1aXRlCiAgICAgICDij7EgIE5l
dHdvcmtpbmcgdm5pYzogaXB2bGFuL2Jhc2ljCiAgICAgICDij7EgIGlvdG9wOiBzYW5pdHkKICAg
ICAgIOKPsSAgVXNleCAtIHZlcnNpb24gMS45LTI5CiAgICAgICDij7EgIHN0b3JhZ2U6IGRtL2Nv
bW1vbgoKICAgIEhvc3QgMjoKCiAgICAgICDimqEgSW50ZXJuYWwgaW5mcmFzdHJ1Y3R1cmUgaXNz
dWVzIHByZXZlbnRlZCBvbmUgb3IgbW9yZSB0ZXN0cyAobWFya2VkCiAgICAgICB3aXRoIOKaoeKa
oeKaoSkgZnJvbSBydW5uaW5nIG9uIHRoaXMgYXJjaGl0ZWN0dXJlLgogICAgICAgVGhpcyBpcyBu
b3QgdGhlIGZhdWx0IG9mIHRoZSBrZXJuZWwgdGhhdCB3YXMgdGVzdGVkLgoKICAgICAgIOKchSBC
b290IHRlc3QKICAgICAgIOKchSB4ZnN0ZXN0czogZXh0NAogICAgICAg4pyFIHhmc3Rlc3RzOiB4
ZnMKICAgICAgIOKchSBzZWxpbnV4LXBvbGljeTogc2VyZ2UtdGVzdHN1aXRlCiAgICAgICDinIUg
bHZtIHRoaW5wIHNhbml0eQogICAgICAg4pyFIHN0b3JhZ2U6IHNvZnR3YXJlIFJBSUQgdGVzdGlu
ZwogICAgICAg4pyFIHN0cmVzczogc3RyZXNzLW5nCiAgICAgICDwn5qnIOKaoeKaoeKaoSBJUE1J
IGRyaXZlciB0ZXN0CiAgICAgICDwn5qnIOKchSBJUE1JdG9vbCBsb29wIHN0cmVzcyB0ZXN0CiAg
ICAgICDwn5qnIOKchSBTdG9yYWdlIGJsa3Rlc3RzCgogIFRlc3Qgc291cmNlczogaHR0cHM6Ly9n
aXRodWIuY29tL0NLSS1wcm9qZWN0L3Rlc3RzLWJlYWtlcgogICAg8J+SmiBQdWxsIHJlcXVlc3Rz
IGFyZSB3ZWxjb21lIGZvciBuZXcgdGVzdHMgb3IgaW1wcm92ZW1lbnRzIHRvIGV4aXN0aW5nIHRl
c3RzIQoKV2FpdmVkIHRlc3RzCi0tLS0tLS0tLS0tLQpJZiB0aGUgdGVzdCBydW4gaW5jbHVkZWQg
d2FpdmVkIHRlc3RzLCB0aGV5IGFyZSBtYXJrZWQgd2l0aCDwn5qnLiBTdWNoIHRlc3RzIGFyZQpl
eGVjdXRlZCBidXQgdGhlaXIgcmVzdWx0cyBhcmUgbm90IHRha2VuIGludG8gYWNjb3VudC4gVGVz
dHMgYXJlIHdhaXZlZCB3aGVuCnRoZWlyIHJlc3VsdHMgYXJlIG5vdCByZWxpYWJsZSBlbm91Z2gs
IGUuZy4gd2hlbiB0aGV5J3JlIGp1c3QgaW50cm9kdWNlZCBvciBhcmUKYmVpbmcgZml4ZWQuCgpU
ZXN0aW5nIHRpbWVvdXQKLS0tLS0tLS0tLS0tLS0tCldlIGFpbSB0byBwcm92aWRlIGEgcmVwb3J0
IHdpdGhpbiByZWFzb25hYmxlIHRpbWVmcmFtZS4gVGVzdHMgdGhhdCBoYXZlbid0CmZpbmlzaGVk
IHJ1bm5pbmcgYXJlIG1hcmtlZCB3aXRoIOKPsS4gUmVwb3J0cyBmb3Igbm9uLXVwc3RyZWFtIGtl
cm5lbHMgaGF2ZQphIEJlYWtlciByZWNpcGUgbGlua2VkIHRvIG5leHQgdG8gZWFjaCBob3N0LgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
