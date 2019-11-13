Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291D0FB149
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	From:Reply-To:To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KVuApEQz/vGeAYly9XN9UFeK7m35K1rHlfV0WQlCfvU=; b=iEsnHnf4tT8IGN
	Tn2QUNhslkzyMjiG9RtLgX/1U+uiJG5DEVBPLZWzjr4LTEA+HPcuDTe8qFCa48lipqF4mS3abCxsg
	znBRkaXQ42Ib7EzvTZ7hM5Lbj1p2OXy6+SQE3nx0X1GKbtcGyK9thHx2baiYsnOMCIUYepuQ+Cqlc
	wBlOtdpSO6ODOA9koiiDjGWd8H+J6XHPGknf5anhRbtuqHwp4hmWpDQKHjzY5Jo5uG0dAqtxBSTPC
	aelfyGwhxdcmJavuox+CtY+r42WmlJWVCHdDfnt4oQYlXZMhJ0gteKge61RRtGmfIrfXgqXF4p/P1
	zgXUK9YA7aqsyejwGrTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsgJ-0003rZ-JZ; Wed, 13 Nov 2019 13:27:35 +0000
Received: from mail-oln040092004078.outbound.protection.outlook.com
 ([40.92.4.78] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsgB-0003qj-SA
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:27:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mh8MAlFYTacQm5+ORksPmXxMY+5TzCYc32F3rGe50DiKi+eCvf3wEewv3YIVYveIYNzh/cePWv2En4cTH49C8y+HX1WKuVXZjoNueQQmY/2oKQmk67pnm93WjLGsG9y/AVP1PsmYglIg7zKp7yix374+6SSHyQYi21RwZtxzrUAI1WqBGQrHE3nVk8xDwVnEQwB1zIPGvapJodF5hcNl9W6UcIqmW/5CRFKExjMaNWLowP1SlgFp3PeUXA8Alh4zhQA/MAnPqikv8acPyZbMgpJjoDHwyyMj2+GPamDHLe0drr1xeDCpoUpfn+I2awuPF6P0u9skGYJ6JxlJygk15w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tN5KM83NGeGccwWSQX6mtbGp2aMV1Mc8qI63fYqAkac=;
 b=aVfPDjo/KA6BHBQg/aagqmi14sfDAaMGkVlHltys08u3GaQOf43yhBNAK+gxwnaCK0rcPML71AbzPLfkA1pgMDdOHsqsJgdpgvVedwPOKIpAnJ7h1BeIcRYokMC8v/azeV0jDkVqSvIMObtoQgZakL6UXhFDyalVFCa4bFL//r31F7zGrdc65Pf7BXjNR75bWHM2dFElnqGQLqaG9Xy/Vq3Yg/oPgtlcnXPk6b/qHiAB/+K4YH1lOztlTIpmqj1Q46JIpbUxTrXe8b92cNG/RMmh1j7JIqnq7JaeaMLuiGBPhpAmWCIGTVjML+xqEs18G7N88TgybaXWkJWikraUFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tN5KM83NGeGccwWSQX6mtbGp2aMV1Mc8qI63fYqAkac=;
 b=b9cG48c3xb/JRSwj1TDsT0LDbqFvwRZrGc7ScsUD8QNPfRqSN0v8qw6N5dFs8IIeLS2fuRd0Ck6NxnBa/zgPJYjrEV74b8Vscl45kzUwSXUVnbQeD701AoE5TP2l/euy33iof5REHj6X3owTkf9N7SdvxiIxq10x46lId47LtiaNSRrIuJG6nc3GL2KK5h91a7TaZyKTLBw7wVahgE151bx+r2x8Px+t86kI+blOICI/bfUm7K8DhO9WkzEwEXI6zLWo4igcr1c30uB9Ny/iLt4ydo2NB34FEdlDDxX6v1QNKCYmyq9OSPa5wIN17ETt55LvG4nD5LAEv3OeJM8bFQ==
Received: from SN1NAM02FT037.eop-nam02.prod.protection.outlook.com
 (10.152.72.54) by SN1NAM02HT010.eop-nam02.prod.protection.outlook.com
 (10.152.72.220) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20; Wed, 13 Nov
 2019 13:27:25 +0000
Received: from MN2PR08MB5790.namprd08.prod.outlook.com (10.152.72.52) by
 SN1NAM02FT037.mail.protection.outlook.com (10.152.72.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23 via Frontend Transport; Wed, 13 Nov 2019 13:27:25 +0000
Received: from MN2PR08MB5790.namprd08.prod.outlook.com
 ([fe80::85cd:bb91:76fb:d02]) by MN2PR08MB5790.namprd08.prod.outlook.com
 ([fe80::85cd:bb91:76fb:d02%7]) with mapi id 15.20.2430.027; Wed, 13 Nov 2019
 13:27:25 +0000
From: Tian Yunhao <t123yh@outlook.com>
Subject: [PATCH] drm/sun4i: tcon: Set min division of TCON0_DCLK to 1.
Thread-Topic: [PATCH] drm/sun4i: tcon: Set min division of TCON0_DCLK to 1.
Thread-Index: AQHVmiYWqxGkz4TNPEmj0K/5QKzS7Q==
Date: Wed, 13 Nov 2019 13:27:25 +0000
Message-ID: <MN2PR08MB57905AD8A00C08DA219377C989760@MN2PR08MB5790.namprd08.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR04CA0010.namprd04.prod.outlook.com
 (2603:10b6:a03:40::23) To MN2PR08MB5790.namprd08.prod.outlook.com
 (2603:10b6:208:110::11)
x-incomingtopheadermarker: OriginalChecksum:92B84D7270789A620E93BB66452BCF808367EC9B97D0F0F2F3DD1C9CE753F1C9;
 UpperCasedChecksum:FA771C74AC3788796078C1F516131242D61E05C18FB374D08320E979D64AB0C3;
 SizeAsReceived:7604; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-tmn: [yJzxOhn4bXw+IFFGmUdu2jQ942kKM1GOwMOlDZykNu1P0thFPMq/QCz7PUgQqRgh]
x-microsoft-original-message-id: <20191113132702.26218-1-t123yh@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: d3812f3f-bcd4-4d14-f550-08d7683d38a5
x-ms-exchange-slblob-mailprops: CaK+F7me6ClxJoM+FkHQMl3uLp5JzPLhxS1g0sbuVNMlDS1TzqIBJ0/PyMt7rR0/VSO32ytthbLxnWK690HZsukjW096Hz6fwTPwsAJil1C30ZqHoC29bTH5fqYHoUlH6+Me1xqs1GnnRzpllvIfrKx9cbt39906ToIVnMcBmDGYgFpduHTAixLrys8lFDFzv4qhQKhm0mPf6+4tvimuoqH53iVVp7oZcUvo1Jq7LbsuVA/i79XrqUs3y8T5gz5UG8CsgfKBHyAkfJt0xHpo80GrSeiNsO/9ou0rImShYwMlYKjYD198HUrVT19lBPYyzXEEwnyp8ie8WC98k4rtJsUVDH+Y4KPDDqUwIljnIv/LMc+CR0jzHhDcAj2I5a5apGG6yPj7C7fqNxzrrnA1qSsUdFom1QwaR9B6vVhai17NSgXgiV72lOvT/cYaDveb4noZ3871q2GCaOe7tWG987VT2plwZFhisnQrPRQnjaQRrCL7kgNxBVbgh/RAxVDCfA3Nd6dvNa+3egigVMNpHeAaTYU+NFnBfuutnv4C8LxKyQZKwEr35zFmoXW7DkqXLVk45vumL/h9Rh+gi7fbl1FmLnDbr2fcblmE9LCPeN/IO9FPadFu5jJtqhBIzR6ixmNDXeOvolwJzwev0IjOoZ8zhKGZOdagNVmU97petgVA6lyfUtgqp3Rsjqte7L+9hVOKqQInu5Hw7DrMcPMAKz6PmLo71Nyl3OOHCmb9YM0P6SP1ZerIBA==
x-ms-traffictypediagnostic: SN1NAM02HT010:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hPplGUv3tqZO+QzfgRLjBlsH1k2LR1jvOUsYjYQEaT0qBk6IfakGnfXHieYfXJgBAMUE7xdqtuUqHlzTjccxynQ6ULz8t+V5n6nEDUfBBp0ivwHR83xluZcRJhKRXHTsoPalN3N1qKf6m8IpVaKDdY76SHCDpUJPSpPlgP/Vxfr3/w9lCj8AnhSlnzpogJDZ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d3812f3f-bcd4-4d14-f550-08d7683d38a5
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 13:27:25.5834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_052728_089695_8C44246D 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.4.78 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (t123yh[at]outlook.com)
 1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.4 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: Tian Yunhao <t123yh@outlook.com>, David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The datasheet of V3s (and various other chips) wrote
that TCON0_DCLK_DIV can be >= 1 if only dclk is used,
and must >= 6 if dclk1 or dclk2 is used. As currently
neither dclk1 nor dclk2 is used (no writes to these
bits), let's set minimal division to 1.

If this minimal division is 6, some common dot clock
frequencies can't be produced (e.g. 30MHz will not be
possible and will fallback to 25MHz), which is
obviously not an expected behaviour.

Signed-off-by: Yunhao Tian <t123yh@outlook.com>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 04c721d0d3b9..b89439ed210d 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -488,7 +488,7 @@ static void sun4i_tcon0_mode_set_rgb(struct sun4i_tcon *tcon,
 
 	WARN_ON(!tcon->quirks->has_channel_0);
 
-	tcon->dclk_min_div = 6;
+	tcon->dclk_min_div = 1;
 	tcon->dclk_max_div = 127;
 	sun4i_tcon0_mode_set_common(tcon, mode);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
