Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5300B17D4C3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:33:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8bcPdxEll/5yPetWgeTUJY3qebb5ulxpgAqXU3tTqY=; b=EJlb7I3tjaAoOk
	F32ZW2voqK0xvqsNMcYcDTiYUHPUwKki+xPXcJHDajdD9gm0484M3NLvz6Lfx0P/1ggYFb3Er1BUV
	YSi7z72O9C52KlJs+52bQ6BU7zunAc4SDWo1EWUFCKRqsYaOURrUJIiFJpuRoqmmxVkuRY0iZb+ft
	58r58rk0gw6d4ETNnfq2fOeVH+Rq3ycV6NAaXpqXzrQ1lovqO6SxBR9nuUOKmCzxTFd+sZsOMYqPY
	f5L0B/wpFQoEp+/xELGQ4/3VTyXMoVdILsJdcH2877mOBe7rSvjUVQfZiHtnwQ7Fi9k9Ck5BAtQ07
	/Ry4fdRozO5J7hCR9Z+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAyrT-0000fB-9A; Sun, 08 Mar 2020 16:33:07 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyrF-0000dU-F7
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:32:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 624BAAEF6;
 Sun,  8 Mar 2020 16:32:45 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 01/11] dt-bindings: vendor-prefixes: Add Sunplus
Date: Sun,  8 Mar 2020 17:32:19 +0100
Message-Id: <20200308163230.4002-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200308163230.4002-1-afaerber@suse.de>
References: <20200308163230.4002-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093253_650517_2D3EB361 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Wells=20Lu=20=E5=91=82=E8=8A=B3=E9=A8=B0?=
 <wells.lu@sunplus.com>, Dvorkin Dmitry <dvorkin@tibbo.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3VucGx1cyBUZWNobm9sb2d5IENvLiwgTHRkLiBpcyBhIFRhaXdhbmVzZSBJQyB2ZW5kb3IuCkFz
c2lnbiB2ZW5kb3IgcHJlZml4ICJzdW5wbHVzIi4KCkNjOiBXZWxscyBMdSDlkYLoirPpqLAgPHdl
bGxzLmx1QHN1bnBsdXMuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVy
YmVyQHN1c2UuZGU+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRv
ci1wcmVmaXhlcy55YW1sIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJl
Zml4ZXMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJl
Zml4ZXMueWFtbAppbmRleCA2ZTA5ZmM3MzYyZDUuLjJjNzY0YjA5NDFiNCAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCisr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFt
bApAQCAtOTU1LDYgKzk1NSw4IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgogICAgIGRlc2NyaXB0aW9u
OiBTdW1taXQgbWljcm9lbGVjdHJvbmljcwogICAiXnN1bmNoaXAsLioiOgogICAgIGRlc2NyaXB0
aW9uOiBTaGVuemhlbiBTdW5jaGlwIFRlY2hub2xvZ3kgQ28uLCBMdGQKKyAgIl5zdW5wbHVzLC4q
IjoKKyAgICBkZXNjcmlwdGlvbjogU3VucGx1cyBUZWNobm9sb2d5IENvLiwgTHRkLgogICAiXlNV
TlcsLioiOgogICAgIGRlc2NyaXB0aW9uOiBTdW4gTWljcm9zeXN0ZW1zLCBJbmMKICAgIl5zd2ly
LC4qIjoKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
