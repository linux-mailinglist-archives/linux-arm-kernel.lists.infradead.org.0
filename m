Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B3CF5A07
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 22:39:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WJl+BMMfJYxmKl7IADauSYvhjua/J1ru/rW5TzT5UKw=; b=NHg1GdITkvXYvN
	kh4QzJS1p14bmIlOj4FpZXCT5IPvbKZ4iEPvvP2kNJcs6uv2zfyLiI3iqG5TMqAVEb7d7ffAbW7E/
	y+Q7oazbUHB532sbK/2CbBR6Ow/TAEmmRLWC/jh4YOrFrulgCFoKuuzQSI8TtPvj4c05HgYGr1rC5
	IP65MWPZP+2iW6qjA9JFXtgfbokJ4jUHVDAezxgubxFtGGwtkXTx2fB18eRKeJoRa5a3lkAGF6TbQ
	/TnN0Y+TGxdcgkL9ILmjgBbmFzxgfAd79GVwaWnbmBmOYWDUWQwtn1LMsXudVJRuUXImYQyu3ARqM
	UyIfIFskR0HLdDzLlmyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTByS-0001Vg-Jh; Fri, 08 Nov 2019 21:39:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBy5-0001Lv-R8
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 21:38:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AE87AAF7E;
 Fri,  8 Nov 2019 21:38:55 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: Qu Wenruo <wqu@suse.com>,
	David Sterba <dsterba@suse.com>
Subject: [PATCH next 0/2] btrfs: Fix build warnings for arm
Date: Fri,  8 Nov 2019 22:38:51 +0100
Message-Id: <20191108213853.16635-1-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_133858_033765_F5620E6B 
X-CRM114-Status: UNSURE (   9.39  )
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
Cc: linux-kernel@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 Chris Mason <clm@fb.com>, linux-btrfs@vger.kernel.org,
 Johannes Thumshirn <jthumshirn@suse.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gV2VucnVvIGFuZCBEYXZlLAoKVGhpcyBtaW5pLXNlcmllcyBmaXhlcyB0d28gYnVpbGQg
d2FybmluZ3MgZm91bmQgd2hpbGUgY3Jvc3MtY29tcGlsaW5nIGZvciBhcm0sCnVzaW5nIG9wZW5T
VVNFJ3MgY3Jvc3MtYXJtLWJpbnV0aWxzIGFuZCBjcm9zcy1hcm0tbm9uZS1nY2M5IHBhY2thZ2Vz
LgoKUmVwbGFjaW5nIEJVR19PTigpIHdpdGggYnRyZnNfY3JpdCgpIGVycm9yIGhhbmRsaW5nIGlz
IG5vYmxlIHdvcmssIGJ1dCBwbGVhc2UKYmUgY2FyZWZ1bCBub3QgdG8gaGFyZGNvZGUgZm9ybWF0
IHNwZWNpZmllcnMgZm9yIHg4Nl82NCdzIHNpemVfdC4KCmh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcv
ZG9jL0RvY3VtZW50YXRpb24vcHJpbnRrLWZvcm1hdHMudHh0CgpJbiBvbmUgY2FzZSBpdCBjb3Vs
ZCd2ZSBiZWVuIG5vdGljZWQgZHVyaW5nIHJldmlldywgaW4gYW5vdGhlciBpdCB3YXMgaGlkZGVu
CnRocm91Z2ggYSBtYWNybyBhbmQgd291bGQndmUgb25seSBiZWVuIGZvdW5kIHRocm91Z2ggY29t
cGlsZS10ZXN0aW5nLgpQcm9iYWJseSBhIDMyLWJpdCBpMzg2IGJ1aWxkIHdvdWxkIGRvOyBvdGhl
cndpc2UgQVJDSD1hcm0gbXVsdGlfdjdfZGVmY29uZmlnCnBsdXMgQ09ORklHX0JUUkZTX0ZTIHNo
b3VsZCByZXByb2R1Y2UuCgpJdCdzIGFyb3VuZCBmb3IgbWF5YmUgdGhyZWUgd2Vla3MsIHNvIEkg
d29uZGVyIHdoeSBrYnVpbGQgYm90IGRpZG4ndCBjYXRjaCBpdC4KCkNoZWVycywKQW5kcmVhcwoK
QW5kcmVhcyBGw6RyYmVyICgyKToKICBidHJmczogdHJlZS1jaGVja2VyOiBGaXggZXJyb3IgZm9y
bWF0IHN0cmluZwogIGJ0cmZzOiBleHRlbnQtdHJlZTogRml4IGVycm9yIGZvcm1hdCBzdHJpbmcK
CiBmcy9idHJmcy9leHRlbnQtdHJlZS5jICB8IDIgKy0KIGZzL2J0cmZzL3RyZWUtY2hlY2tlci5j
IHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
