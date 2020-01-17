Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB44140DA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:16:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncdp1jmU30iJ9RR8NGDJXkpc4qAG2PrAccHgYWBuS3E=; b=SwDp65C5kUwKzd
	Muw2YRH8UsLvW+3Ut8iOCwox9EN/Ff3JLXg9CH9LLVNNWTViFyoYKSjM5tZL0w/1AUP9S9EuzE3DF
	aHNaLcZz3t89AuoGzxrlHiYkeZEggUgiEsgpyFvDq2BgWabxSNBHEsqccg2d2RlxHsTNQ7AIF6kVV
	ibxtxx9aMLPO78lyOhWPaPxqCGlePP35llNGRovQWR+zPLbmUw5tg6SWsBUEGbqXp3F7bUNX8owAE
	tcA5kKq/X7xVJDnL1P91c20PuvERTp5XzqkA4m8O+O8KpQVueTyna11Z4NeKDxNpt9LEqKLkBEm7o
	xYnmYoaQPB2YJCxLloVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isTMF-0000GW-50; Fri, 17 Jan 2020 15:16:23 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTLe-0008V9-CD; Fri, 17 Jan 2020 15:15:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 899D9AE2C;
 Fri, 17 Jan 2020 15:15:42 +0000 (UTC)
From: =?UTF-8?q?Michal=20Koutn=C3=BD?= <mkoutny@suse.com>
To: cgroups@vger.kernel.org
Subject: [PATCH 0/3] cgroup: Iterate tasks that did not finish do_exit()
Date: Fri, 17 Jan 2020 16:15:30 +0100
Message-Id: <20200117151533.12381-1-mkoutny@suse.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200116043612.52782-1-surenb@google.com>
References: <20200116043612.52782-1-surenb@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_071546_561254_56CB38A8 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linger.lee@mediatek.com, tomcherry@google.com, shuah@kernel.org,
 linux-kernel@vger.kernel.org, matthias.bgg@gmail.com,
 Li Zefan <lizefan@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Tejun Heo <tj@kernel.org>, alex.shi@linux.alibaba.com, kernel-team@android.com,
 guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCkkgd2FzIGxvb2tpbmcgaW50byB0aGUgaXNzdWUgYW5kIGNhbWUgdXAgd2l0aCBhbiBhbHRl
cm5hdGl2ZSBzb2x1dGlvbiB0aGF0CmNoYW5nZXMgdGFzayBpdGVyYXRpb24gdG8gYmUgY29uc2lz
dGVudCB3aXRoIGNncm91cF9pc19wb3B1bGF0ZWQoKSBjaGVjayBhbmQKbW92aW5nIHRoZSByZXNw
b25zaWJpbGl0eSB0byBjaGVjayBQRl9FWElUSU5HIG9uIHRoZSBjb25zdW1lcnMgb2YgaXRlcmF0
b3IgQVBJLgoKSSBoYXZlbid0IGNoZWNrIHlvdXIgYXBwcm9hY2ggdGhvcm91Z2hseSwgaG93ZXZl
ciwgaXQgYXBwZWFycyB0byBtZSBpdApjb21wbGljYXRlcyAoYWxyZWFkeSBub24tdHJpdmlhbCkg
Y2dyb3VwIGRlc3RydWN0aW9uIHBhdGguIEkgcmFuIHlvdXIgc2VsZnRlc3QKb24gdGhlIGl0ZXJh
dG9ycyBhcHByb2FjaCBhbmQgaXQgcHJvdmVkIHdvcmtpbmcuCgpNaWNoYWwgS291dG7DvSAoMik6
CiAgY2dyb3VwOiBVbmlmeSBjc3Nfc2V0IHRhc2sgbGlzdHMKICBjZ3JvdXA6IEl0ZXJhdGUgdGFz
a3MgdGhhdCBkaWQgbm90IGZpbmlzaCBkb19leGl0KCkKClN1cmVuIEJhZ2hkYXNhcnlhbiAoMSk6
CiAga3NlbGZ0ZXN0L2Nncm91cDogYWRkIGNncm91cCBkZXN0cnVjdGlvbiB0ZXN0CgogaW5jbHVk
ZS9saW51eC9jZ3JvdXAtZGVmcy5oICAgICAgICAgICAgICAgIHwgIDE1ICsrLQogaW5jbHVkZS9s
aW51eC9jZ3JvdXAuaCAgICAgICAgICAgICAgICAgICAgIHwgICA0ICstCiBrZXJuZWwvY2dyb3Vw
L2Nncm91cC5jICAgICAgICAgICAgICAgICAgICAgfCAgODYgKysrKysrKystLS0tLS0tLQoga2Vy
bmVsL2Nncm91cC9kZWJ1Zy5jICAgICAgICAgICAgICAgICAgICAgIHwgIDE2ICsrLQogdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvY2dyb3VwL3Rlc3RfY29yZS5jIHwgMTEzICsrKysrKysrKysrKysr
KysrKysrKwogNSBmaWxlcyBjaGFuZ2VkLCAxNzYgaW5zZXJ0aW9ucygrKSwgNTggZGVsZXRpb25z
KC0pCgotLSAKMi4yNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
