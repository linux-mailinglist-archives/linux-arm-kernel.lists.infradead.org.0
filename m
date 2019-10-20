Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC63BDDC45
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ittW9mvw2Qy34sBwAyKjH51I1/B7MwpS4puemepbBaY=; b=EobazyL2h0fpyM
	b+Z8UqC5Q8yFhbOE8le2pAAT8X1xxotvWORGOZU/jZJ1HPUsTdxxRsRJgrlPZg6we9nPv+c1nWkzG
	pkgGZRMBh13FAx7E7ciggNNmAsVfNOF6o2V13eIe/PqwF+CbiDhPcfXhSiGKzHgHz+rMvIOFeRx26
	icC4bxtw+cswRTDDOlPwumR1IU0UCYIgglBHBEa7ZSH5nwzObGGWN0ks0d6ylZnLPpwFeEEmbDbwn
	J9QCTvNsVpZsvNR+Z97CnyCBPtHCjOcJXvkAS2BPm5OSkGnSM1NVpmlofgqH8XfbkdqHHlNAUA89L
	qJJjf3TByjrwry60+T+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2WI-0002Vn-Cb; Sun, 20 Oct 2019 04:08:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W5-0002UK-67; Sun, 20 Oct 2019 04:08:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1C371AF24;
 Sun, 20 Oct 2019 04:08:27 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 4/8] dt-bindings: arm: realtek: Document RTD1293 and
 Synology DS418j
Date: Sun, 20 Oct 2019 06:08:13 +0200
Message-Id: <20191020040817.16882-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210829_379360_243605FD 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, info@synology.com,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmaW5lIGNvbXBhdGlibGUgc3RyaW5ncyBmb3IgUmVhbHRlayBSVEQxMjkzIFNvQyBhbmQgU3lu
b2xvZ3kKRGlza1N0YXRpb24gRFM0MThqIE5BUy4KCkNjOiBpbmZvQHN5bm9sb2d5LmNvbQpBY2tl
ZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KW0FGOiBDb252ZXJ0ZWQgdG8ganNv
bi1zY2hlbWFdClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5k
ZT4KLS0tCiB2MSAtPiB2MjoKICogQ29udmVydGVkIHRvIFlBTUwgc2NoZW1hCiAKIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIHwgNiArKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sCmluZGV4IDY2NDU4YTNmNDIyZC4uNmVh
M2E3OTgyNWNjIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JlYWx0ZWsueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
YXJtL3JlYWx0ZWsueWFtbApAQCAtMTQsNiArMTQsMTIgQEAgcHJvcGVydGllczoKICAgICBjb25z
dDogJy8nCiAgIGNvbXBhdGlibGU6CiAgICAgb25lT2Y6CisgICAgICAjIFJURDEyOTMgU29DIGJh
c2VkIGJvYXJkcworICAgICAgLSBpdGVtczoKKyAgICAgICAgICAtIGVudW06CisgICAgICAgICAg
ICAgIC0gc3lub2xvZ3ksZHM0MThqICMgU3lub2xvZ3kgRGlza1N0YXRpb24gRFM0MThqCisgICAg
ICAgICAgLSBjb25zdDogcmVhbHRlayxydGQxMjkzCisKICAgICAgICMgUlREMTI5NSBTb0MgYmFz
ZWQgYm9hcmRzCiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0gZW51bToKLS0gCjIuMTYuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
