Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BC9ED719
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hyr9IruyQ4MLRVePMJdbLNBM4pAc7X+qdNi+IONo3M4=; b=pgNp/CAjXkywqS
	dG4SihgQNkqDtikSy947dh5GeOoRmOnLdUXs7JnMAY5Rr6MLwrK2/Oavc3svtT9olt4+Ag4RjuPgS
	7OwW2H307BfZmqYcCqbWkhqIw7AtgDjqQ6jfFnXvPPk99mStAxjZ+HZ932xqzzc39PY14xZSNJdQS
	7jNLl33pp69RPtAkP6kvcUynymRRoSbWdWqo4Hs3zfiAKqgi77f61uPDFSSr7GE9Gefkfx6Rw6pIJ
	cEFCSJjuQPVuLiV5uryMLwr7X/wdAa8RJiG1tGMWEICLRoehNRfX37ZaiIdacZfHkDKeyfaj68zmU
	/S3rBNmfnsr6Gn6+ectg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRMv-000424-Uj; Mon, 04 Nov 2019 01:41:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRM5-0003Hq-U5; Mon, 04 Nov 2019 01:40:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 12DE7B22B;
 Mon,  4 Nov 2019 01:40:27 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH 1/7] dt-bindings: gpu: mali-midgard: Tidy up conversion to YAML
Date: Mon,  4 Nov 2019 02:39:26 +0100
Message-Id: <20191104013932.22505-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191104013932.22505-1-afaerber@suse.de>
References: <20191104013932.22505-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_174030_113889_250BBEFD 
X-CRM114-Status: GOOD (  10.62  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Guillaume Gardet <guillaume.gardet@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW5zdGVhZCBvZiBncm91cGluZyBhbHBoYWJldGljYWxseSBieSB0aGlyZC1wYXJ0eSB2ZW5kb3Is
IGxlYWRpbmcgdG8Kb25lLWVsZW1lbnQgZW51bXMsIHNvcnQgYnkgTWFsaSBtb2RlbCBudW1iZXIs
IGFzIGRvbmUgZm9yIFV0Z2FyZC4KClRoaXMgYWxyZWFkeSBhbGxvd3MgdXMgdG8gZGUtZHVwbGlj
YXRlIHR3byAiYXJtLG1hbGktdDc2MCIgc2VjdGlvbnMgYW5kCndpbGwgbWFrZSBpdCBlYXNpZXIg
dG8gYWRkIG5ldyB2ZW5kb3IgY29tcGF0aWJsZXMuCgpGaXhlczogNTUzY2VkZjYwMDU2ICgiZHQt
YmluZGluZ3M6IENvbnZlcnQgQXJtIE1hbGkgTWlkZ2FyZCBHUFUgdG8gRFQgc2NoZW1hIikKRml4
ZXM6IDFiZTViNTRkMjZhZSAoImR0LWJpbmRpbmdzOiBncHU6IG1hbGktbWlkZ2FyZDogQWRkIHNh
bXN1bmcgZXh5bm9zNTI1MCBjb21wYXRpYmxlIikKQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+ClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4K
LS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktbWlkZ2FyZC55YW1sICB8
IDMyICsrKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCAxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZ3B1L2FybSxtYWxpLW1pZGdhcmQueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9ncHUvYXJtLG1hbGktbWlkZ2FyZC55YW1sCmluZGV4IDhlMDBhMjFi
MzZmNS4uZmZkYjI0YzRhYjZhIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZ3B1L2FybSxtYWxpLW1pZGdhcmQueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZ3B1L2FybSxtYWxpLW1pZGdhcmQueWFtbApAQCAtMTYsMzYgKzE2
LDMyIEBAIHByb3BlcnRpZXM6CiAgICAgb25lT2Y6CiAgICAgICAtIGl0ZW1zOgogICAgICAgICAg
IC0gZW51bToKLSAgICAgICAgICAgICAtIGFsbHdpbm5lcixzdW41MGktaDYtbWFsaQotICAgICAg
ICAgIC0gY29uc3Q6IGFybSxtYWxpLXQ3MjAKLSAgICAgIC0gaXRlbXM6Ci0gICAgICAgICAgLSBl
bnVtOgotICAgICAgICAgICAgIC0gYW1sb2dpYyxtZXNvbi1neG0tbWFsaQotICAgICAgICAgIC0g
Y29uc3Q6IGFybSxtYWxpLXQ4MjAKKyAgICAgICAgICAgICAtIHNhbXN1bmcsZXh5bm9zNTI1MC1t
YWxpCisgICAgICAgICAgLSBjb25zdDogYXJtLG1hbGktdDYwNAogICAgICAgLSBpdGVtczoKICAg
ICAgICAgICAtIGVudW06CiAgICAgICAgICAgICAgLSBhcm0sanVuby1tYWxpCiAgICAgICAgICAg
LSBjb25zdDogYXJtLG1hbGktdDYyNAorICAgICAgIyAiYXJtLG1hbGktdDYyOCIKICAgICAgIC0g
aXRlbXM6CiAgICAgICAgICAgLSBlbnVtOgotICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMjg4
LW1hbGkKLSAgICAgICAgICAtIGNvbnN0OiBhcm0sbWFsaS10NzYwCisgICAgICAgICAgICAgLSBh
bGx3aW5uZXIsc3VuNTBpLWg2LW1hbGkKKyAgICAgICAgICAtIGNvbnN0OiBhcm0sbWFsaS10NzIw
CiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0gZW51bToKLSAgICAgICAgICAgICAtIHJvY2tj
aGlwLHJrMzM5OS1tYWxpCi0gICAgICAgICAgLSBjb25zdDogYXJtLG1hbGktdDg2MAorICAgICAg
ICAgICAgIC0gcm9ja2NoaXAscmszMjg4LW1hbGkKKyAgICAgICAgICAgICAtIHNhbXN1bmcsZXh5
bm9zNTQzMy1tYWxpCisgICAgICAgICAgLSBjb25zdDogYXJtLG1hbGktdDc2MAogICAgICAgLSBp
dGVtczoKICAgICAgICAgICAtIGVudW06Ci0gICAgICAgICAgICAgLSBzYW1zdW5nLGV4eW5vczUy
NTAtbWFsaQotICAgICAgICAgIC0gY29uc3Q6IGFybSxtYWxpLXQ2MDQKKyAgICAgICAgICAgICAt
IGFtbG9naWMsbWVzb24tZ3htLW1hbGkKKyAgICAgICAgICAtIGNvbnN0OiBhcm0sbWFsaS10ODIw
CisgICAgICAjICJhcm0sbWFsaS10ODMwIgogICAgICAgLSBpdGVtczoKICAgICAgICAgICAtIGVu
dW06Ci0gICAgICAgICAgICAgLSBzYW1zdW5nLGV4eW5vczU0MzMtbWFsaQotICAgICAgICAgIC0g
Y29uc3Q6IGFybSxtYWxpLXQ3NjAKLQotICAgICAgICAgICMgImFybSxtYWxpLXQ2MjgiCi0gICAg
ICAgICAgIyAiYXJtLG1hbGktdDgzMCIKLSAgICAgICAgICAjICJhcm0sbWFsaS10ODgwIgorICAg
ICAgICAgICAgIC0gcm9ja2NoaXAscmszMzk5LW1hbGkKKyAgICAgICAgICAtIGNvbnN0OiBhcm0s
bWFsaS10ODYwCisgICAgICAjICJhcm0sbWFsaS10ODgwIgogCiAgIHJlZzoKICAgICBtYXhJdGVt
czogMQotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
