Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364E0D3B67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 10:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yhcWGCvvgottoTMTgGjVhHFvdXU/VXQlS6l5RqS3uI=; b=OoCnJ24iK2Ah9U
	4YEEY6MwPcwST1BLtEugpYbK8HIduwqyVLC4WeVa/quB/AeRQe1NEcletaiIgqkQVP5xR71pey9p+
	aMaIITKkFdnliFFgyxwBvNekKyadYQX6lDBeSFnwah35GA+yjdjKhEiORkOBPPFSlprK3+Gg51dHy
	9MPl0OaWnmudDR4em/RpA3FlE6DWc1zCCfsyFBVlusPnWpR6VHO95rrDGEGHhJ+THOHFjq6yBJpuJ
	W6CiKq5UYZY5lOAvYcsNXfR4x55nBOMTeil0y5tdY0sRwUrLZqoyJC4i2//2V9x5M/j6T/5GjD0v2
	yUKDjUaIiMy4qYrHInXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqUR-0003Eq-Jo; Fri, 11 Oct 2019 08:41:35 +0000
Received: from mail-eopbgr40087.outbound.protection.outlook.com ([40.107.4.87]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqUH-0003Dg-JY; Fri, 11 Oct 2019 08:41:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KSYRIuw2SQgFIJlttSqwdxsUahYiRJBJQwl2H3Se3WU=;
 b=X1u/SfYutfTl+cHnYyULngxX6QwuU0cbLdlMQYrCCuiuLet4O7Es+8ldqN3l5JiWSZomsn6m5t0A4/mvCJhOo5GqzgJmOVebzXZFhmkQcxfLgPpSUtD1cmLLH7krvl2kp17lSeSwDekwPS76VCImp8q1VaYGFqWqHKVW1hmXHj8=
Received: from AM6PR08CA0009.eurprd08.prod.outlook.com (2603:10a6:20b:b2::21)
 by AM6PR08MB5112.eurprd08.prod.outlook.com (2603:10a6:20b:ee::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Fri, 11 Oct
 2019 08:41:18 +0000
Received: from AM5EUR03FT013.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::202) by AM6PR08CA0009.outlook.office365.com
 (2603:10a6:20b:b2::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Fri, 11 Oct 2019 08:41:18 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT013.mail.protection.outlook.com (10.152.16.140) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Fri, 11 Oct 2019 08:41:17 +0000
Received: ("Tessian outbound 6481c7fa5a3c:v33");
 Fri, 11 Oct 2019 08:41:17 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f497e48d86a6546e
X-CR-MTA-TID: 64aa7808
Received: from 529296aef10c.1 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.8.55]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 375EE6B7-6EE1-4FE2-A593-44064CB48670.1; 
 Fri, 11 Oct 2019 08:41:11 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2055.outbound.protection.outlook.com [104.47.8.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 529296aef10c.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 11 Oct 2019 08:41:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M3506Jv1UtJR+KV33E/pGxstVBxQeQbtLaolm8A4aljrisbZhSq0Tjr6roaI6AgNw8aIEqX+l+OELPWs/+MxaJ3e3e0NYHHht1gxkipvfW4mjofmJ8jFU/TQHp9EzKVEvvdo93RtPOn/lQlR20raDijTGabiG9dB5XdQvX4X+QAXRFfGuEvIIqPPuX+AZ094nO4jnBGTrDmxk6LgJTwZb0sVlYrR5Dwf3/ySTcFnl9RYB2KW7uK1GLj/CwH7g/ZZzzQ1Ql4EsF7U0jfG9+HvD6lv8vg7iRpZuFV65GUVxt5RkEPiBG6hB/q+39ECIfdHG7IFUeWoVLNZ4H9u6lbG9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KSYRIuw2SQgFIJlttSqwdxsUahYiRJBJQwl2H3Se3WU=;
 b=LirMcErZyResZrTaBejaZESUOtDIK1v6YNMwZLkiCccntLjXOMXmmpXJffj8/et7Wh89coEZu82iv+rViBC8PSpmsJ7zIZj9Baiqo+dpqcxnOg0W0mGPJbssVgk+KGrxwlgxt4t2Cws6lAPFUsolIXBD5TQUMpu0SneRipRuiFMbXTfWuq1iztaocRtEmTpQ8hUKmLoU6fxcy3Vb+AanzlEaeLS4lVwdMY9zG79Bp5S5gTnn6+pLL8lBx0uuh9m5QFaxfZapvdAVFrODavSWF5wU/DmaxW8u4OqKOijb3T26vET3B2djZD85DetI+w/hrZMBsWgN6orXNxZ4yyy/xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KSYRIuw2SQgFIJlttSqwdxsUahYiRJBJQwl2H3Se3WU=;
 b=X1u/SfYutfTl+cHnYyULngxX6QwuU0cbLdlMQYrCCuiuLet4O7Es+8ldqN3l5JiWSZomsn6m5t0A4/mvCJhOo5GqzgJmOVebzXZFhmkQcxfLgPpSUtD1cmLLH7krvl2kp17lSeSwDekwPS76VCImp8q1VaYGFqWqHKVW1hmXHj8=
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com (20.178.89.14) by
 AM6PR08MB3399.eurprd08.prod.outlook.com (20.177.113.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.25; Fri, 11 Oct 2019 08:41:10 +0000
Received: from AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a]) by AM6PR08MB3829.eurprd08.prod.outlook.com
 ([fe80::ce0:f47b:919d:561a%5]) with mapi id 15.20.2347.021; Fri, 11 Oct 2019
 08:41:09 +0000
From: Brian Starkey <Brian.Starkey@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Topic: [PATCH 4/7] drm/meson: plane: add support for AFBC mode for OSD1
 plane
Thread-Index: AQHVgA+hW0YpyPd1Sk22upjR9Lo04A==
Date: Fri, 11 Oct 2019 08:41:09 +0000
Message-ID: <20191011084108.i7lfh2d7asfmcdk4@DESKTOP-E1NTVVP.localdomain>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
 <20191010092526.10419-5-narmstrong@baylibre.com>
 <20191010132601.GA10110@arm.com>
 <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
In-Reply-To: <44f1771f-d640-f23d-995f-7bfcadd213bc@baylibre.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: NeoMutt/20180716-849-147d51-dirty
x-originating-ip: [217.140.106.54]
x-clientproxiedby: LO2P265CA0399.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::27) To AM6PR08MB3829.eurprd08.prod.outlook.com
 (2603:10a6:20b:85::14)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 05ce9781-abcf-4f18-f534-08d74e26c863
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: AM6PR08MB3399:|AM6PR08MB3399:|AM6PR08MB5112:
X-MS-Exchange-PUrlCount: 2
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB511245AE48EB06B4925E0069F0970@AM6PR08MB5112.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 0187F3EA14
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(189003)(199004)(4326008)(64756008)(71190400001)(66556008)(2906002)(66446008)(1076003)(66476007)(26005)(305945005)(53546011)(99286004)(186003)(256004)(14444005)(14454004)(966005)(3846002)(52116002)(5660300002)(6116002)(102836004)(66946007)(386003)(7736002)(71200400001)(30864003)(316002)(6506007)(478600001)(58126008)(54906003)(86362001)(76176011)(44832011)(6436002)(6512007)(11346002)(6916009)(25786009)(6486002)(446003)(229853002)(6246003)(81156014)(81166006)(8676002)(66066001)(9686003)(486006)(8936002)(476003)(6306002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3399;
 H:AM6PR08MB3829.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 4LTY+R/ebm6raOda6m9b3Rmg/L6hIMpa701GbocU/I8L/bM3DVhRP8LSimjhDumQpPV46IrNxJTD2ZWUn49sIQnkC4L7n5pJVBl7vphmI95E6CFHRCl8ftz2FfPU1nteRkMBFO0aIK3+uzekIaWvcu4TTZrAKVk/mh02Q/VK2tEyxKz4YycnnX3MoALBNgooQ21tkgp4jkY/u2tt6b11BpUYGdm6Xqx344bMKmYfFywppLROdDQoVIM8xdziiACJ5KSbMd/SohKu9uMPIwn5IP1ofchUOjnOdXOuN4Z3lmX4xS+GS0YcQhJ7aEKQBzhyqb+lHxG1YJAAm/bnJdh2iYu5flfFph+0bsGmPZWzuOoudCAkpMhWtfccYl9wfKTwsvoIgbytt7+f9StQpSnNOmz8gf3nki3rRiXCyG7Np6ai53vf1uJ+jPNxIGR6DWmwV/SWozzXRX4XpVY8d5hF5A==
Content-ID: <166338941701B44D84726179A28CF549@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3399
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Brian.Starkey@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT013.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(199004)(189003)(46406003)(63350400001)(336012)(11346002)(446003)(26826003)(81156014)(486006)(126002)(478600001)(81166006)(8676002)(47776003)(50466002)(476003)(86362001)(99286004)(356004)(966005)(8936002)(8746002)(102836004)(26005)(186003)(53546011)(6306002)(66066001)(76176011)(6512007)(9686003)(386003)(6506007)(58126008)(54906003)(30864003)(450100002)(6486002)(316002)(36906005)(14454004)(7736002)(70206006)(6862004)(70586007)(305945005)(97756001)(1076003)(229853002)(14444005)(6246003)(25786009)(5660300002)(76130400001)(23726003)(6116002)(3846002)(22756006)(4326008)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB5112;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d51f3cef-9b23-4e92-a92b-08d74e26c373
NoDisclaimer: True
X-Forefront-PRVS: 0187F3EA14
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XTKPtpeC2s3mHE3j6eqnhScOi8wi4YeNudZpNYaBp2eQ0ZRZkZALYVijLfc5iiE5QLjWv36lrWcRIxYQ82KvPN77fi+W6cjJKFe9WbdeSkZKFCGG/yTaYZjGiEYydXaNiYnvM1isw2WSmzsx3SqvCALZr/UZsDejm69xhERdUelHRrPdIX+T3oK/fAg57S5CYOzsvGO/dflH67YXUoeGq77+ULz3TeS8hKslSVxxBYQpbKg9DH6lrU4VRZ7hPKGVuoeHz3Yyxp6NBPwXWoabajYjcz5x2EuRMFG0DBHGyWpGZysSInWAdrWmOU0QvF4aUWnJrS6CDx0HElzZ/LjLViPvDJWvYjluE1ZgC2MVGO2H5IIHh0LbV/wiCbYLNZzXa5MB8Es+LJFDuF7p7ofS/lJkAvUCl/eLY1YOPZjA2X4T0oz+hEP89+uLjm7dSxUqbvTLscXiUkLVTDppghFfbQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2019 08:41:17.2801 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 05ce9781-abcf-4f18-f534-08d74e26c863
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014125_787507_40C27310 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ayan Halder <Ayan.Halder@arm.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Thu, Oct 10, 2019 at 03:41:15PM +0200, Neil Armstrong wrote:
> Hi Ayan,
> 
> On 10/10/2019 15:26, Ayan Halder wrote:
> > On Thu, Oct 10, 2019 at 11:25:23AM +0200, Neil Armstrong wrote:
> >> This adds all the OSD configuration plumbing to support the AFBC decoders
> >> path to display of the OSD1 plane.
> >>
> >> The Amlogic GXM and G12A AFBC decoders are integrated very differently.
> >>
> >> The Amlogic GXM has a direct output path to the OSD1 VIU pixel input,
> >> because the GXM AFBC decoder seem to be a custom IP developed by Amlogic.
> >>
> >> On the other side, the Amlogic G12A AFBC decoder seems to be an external
> >> IP that emit pixels on an AXI master hooked to a "Mali Unpack" block
> >> feeding the OSD1 VIU pixel input.
> >> This uses a weird "0x1000000" internal HW physical address on both
> >> sides to transfer the pixels.
> >>
> >> For Amlogic GXM, the supported pixel formats are the same as the normal
> >> linear OSD1 mode.
> >>
> >> On the other side, Amlogic added support for all AFBC v1.2 formats for
> >> the G12A AFBC integration.
> >>
> >> For simplicity, we stick to the already supported formats for now.
> >>
> >> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> >> ---
> >>  drivers/gpu/drm/meson/meson_crtc.c  |   2 +
> >>  drivers/gpu/drm/meson/meson_drv.h   |   4 +
> >>  drivers/gpu/drm/meson/meson_plane.c | 215 ++++++++++++++++++++++++----
> >>  3 files changed, 190 insertions(+), 31 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
> >> index 57ae1c13d1e6..d478fa232951 100644
> >> --- a/drivers/gpu/drm/meson/meson_crtc.c
> >> +++ b/drivers/gpu/drm/meson/meson_crtc.c
> >> @@ -281,6 +281,8 @@ void meson_crtc_irq(struct meson_drm *priv)
> >>  	if (priv->viu.osd1_enabled && priv->viu.osd1_commit) {
> >>  		writel_relaxed(priv->viu.osd1_ctrl_stat,
> >>  				priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
> >> +		writel_relaxed(priv->viu.osd1_ctrl_stat2,
> >> +				priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
> >>  		writel_relaxed(priv->viu.osd1_blk0_cfg[0],
> >>  				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
> >>  		writel_relaxed(priv->viu.osd1_blk0_cfg[1],
> >> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
> >> index 60f13c6f34e5..de25349be8aa 100644
> >> --- a/drivers/gpu/drm/meson/meson_drv.h
> >> +++ b/drivers/gpu/drm/meson/meson_drv.h
> >> @@ -53,8 +53,12 @@ struct meson_drm {
> >>  		bool osd1_enabled;
> >>  		bool osd1_interlace;
> >>  		bool osd1_commit;
> >> +		bool osd1_afbcd;
> >>  		uint32_t osd1_ctrl_stat;
> >> +		uint32_t osd1_ctrl_stat2;
> >>  		uint32_t osd1_blk0_cfg[5];
> >> +		uint32_t osd1_blk1_cfg4;
> >> +		uint32_t osd1_blk2_cfg4;
> >>  		uint32_t osd1_addr;
> >>  		uint32_t osd1_stride;
> >>  		uint32_t osd1_height;
> >> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
> >> index 5e798c276037..412941aa8402 100644
> >> --- a/drivers/gpu/drm/meson/meson_plane.c
> >> +++ b/drivers/gpu/drm/meson/meson_plane.c
> >> @@ -23,6 +23,7 @@
> >>  #include "meson_plane.h"
> >>  #include "meson_registers.h"
> >>  #include "meson_viu.h"
> >> +#include "meson_osd_afbcd.h"
> >>  
> >>  /* OSD_SCI_WH_M1 */
> >>  #define SCI_WH_M1_W(w)			FIELD_PREP(GENMASK(28, 16), w)
> >> @@ -92,12 +93,38 @@ static int meson_plane_atomic_check(struct drm_plane *plane,
> >>  						   false, true);
> >>  }
> >>  
> >> +#define MESON_MOD_AFBC_VALID_BITS (AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |	\
> >> +				   AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |	\
> >> +				   AFBC_FORMAT_MOD_YTR |		\
> >> +				   AFBC_FORMAT_MOD_SPARSE |		\
> >> +				   AFBC_FORMAT_MOD_SPLIT)
> >> +
> >>  /* Takes a fixed 16.16 number and converts it to integer. */
> >>  static inline int64_t fixed16_to_int(int64_t value)
> >>  {
> >>  	return value >> 16;
> >>  }
> >>  
> >> +static u32 meson_g12a_afbcd_line_stride(struct meson_drm *priv)
> >> +{
> >> +	u32 line_stride = 0;
> >> +
> >> +	switch (priv->afbcd.format) {
> >> +	case DRM_FORMAT_RGB565:
> >> +		line_stride = ((priv->viu.osd1_width << 4) + 127) >> 7;
> >> +		break;
> >> +	case DRM_FORMAT_RGB888:
> >> +	case DRM_FORMAT_XRGB8888:
> >> +	case DRM_FORMAT_ARGB8888:
> >> +	case DRM_FORMAT_XBGR8888:
> >> +	case DRM_FORMAT_ABGR8888:
> > Please have a look at
> > https://www.kernel.org/doc/html/latest/gpu/afbc.html for our
> > recommendation. We suggest that *X* formats are avoided.
> > 
> > Also, for interoperability and maximum compression efficiency (with
> > AFBC_FORMAT_MOD_YTR), we suggest the following order :-
> > 
> >         Component 0: R
> >         Component 1: G
> >         Component 2: B
> >         Component 3: A (if available)
> 
> 
> Sorry I don't understand, you ask me to limit AFBC to ABGR8888 ?
> 
> But why if the HW (GPU and DPU) is capable of ?

AFBC doesn't have an in-memory component order in the traditional
sense (i.e. a bit-position to component mapping), so Arm
have decided to define the convention that DRM_FORMAT_ABGR8888
represents the AFBC layout with R in component 0.

Are you sure the GPU supports other orders? I think any Arm driver
will only be producing DRM_FORMATs with "BGR" order e.g. ABGR8888.

I'm not convinced the GPU HW actually supports any other order, but
it's all rather confusing with texture swizzling. What I can tell you
for sure is that it _does_ support BGR order (in DRM naming
convention).

If you do choose to expose orders other than BGR/ABGR, then you should
certainly not allow YTR to be used with any orders other than
BGR/ABGR. The AFBC spec defines YTR as using R in component 0, which
Arm has defined as DRM_FORMAT_*BGR* (component 0 in LE LSBs).

> 
> Isn't it an userspace choice ? I understand XRGB8888 is a waste
> of memory space and compression efficiency, but this is not the
> kernel driver's to decide this, right ?
> 

As long as it's agreed and understood what XRGB8888 means. It must be
an AFBC bitstream with 4-components, with B in component 0, G in
component 1, R in component 2 and 8 wasted bits in component 3.

I know of HW which treats "XBGR" with AFBC as a 3-component format,
which isn't correct but can easily lead to confusion and
incompatibility.

> For interoperability I'll understand recommending a minimal set
> of modifiers and formats. But here, each platform is also limited
> by it's GPU capabilites aswell.
> 

The (Arm) GPUs support ABGR ordering, so if everyone sticks to that we
can make sure everything's nice and compatible (until someone turns up
with HW which _doesn't_ support that ordering).

> Limiting to ABGR8888 would discard like every non-Android renderers,
> using AFBC, I'm not sure it's the kernels driver's responsibility.
> 

It prevents renderers with hard-coded pixel formats, perhaps. But
those are already fragile by nature, surely?

Cheers,
-Brian

> > 
> > Thus, DRM_FORMAT_ABGR, DRM_FORMAT_BGR should only be allowed.
> >> +		line_stride = ((priv->viu.osd1_width << 5) + 127) >> 7;
> >> +		break;
> >> +	}
> >> +
> >> +	return ((line_stride + 1) >> 1) << 1;
> >> +}
> >> +
> >>  static void meson_plane_atomic_update(struct drm_plane *plane,
> >>  				      struct drm_plane_state *old_state)
> >>  {
> 
> [...]
> 
> >>  
> >> +static bool meson_plane_format_mod_supported(struct drm_plane *plane,
> >> +					     u32 format, u64 modifier)
> >> +{
> >> +	struct meson_plane *meson_plane = to_meson_plane(plane);
> >> +	struct meson_drm *priv = meson_plane->priv;
> >> +	int i;
> >> +
> >> +	if (modifier == DRM_FORMAT_MOD_INVALID)
> >> +		return false;
> >> +
> >> +	if (modifier == DRM_FORMAT_MOD_LINEAR)
> >> +		return true;
> >> +
> >> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) &&
> >> +	    !meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> >> +		return false;
> >> +
> >> +	if (modifier & ~DRM_FORMAT_MOD_ARM_AFBC(MESON_MOD_AFBC_VALID_BITS))
> >> +		return false;
> >> +
> >> +	for (i = 0 ; i < plane->modifier_count ; ++i)
> >> +		if (plane->modifiers[i] == modifier)
> >> +			break;
> >> +
> >> +	if (i == plane->modifier_count) {
> >> +		DRM_DEBUG_KMS("Unsupported modifier\n");
> >> +		return false;
> >> +	}
> 
> I can add a warn_once here, would it be enough ?
> 
> >> +
> >> +	if (priv->afbcd.ops && priv->afbcd.ops->supported_fmt)
> >> +		return priv->afbcd.ops->supported_fmt(modifier, format);
> >> +
> >> +	DRM_DEBUG_KMS("AFBC Unsupported\n");
> >> +	return false;
> >> +}
> >> +
> >>  static const struct drm_plane_funcs meson_plane_funcs = {
> >>  	.update_plane		= drm_atomic_helper_update_plane,
> >>  	.disable_plane		= drm_atomic_helper_disable_plane,
> >> @@ -353,6 +457,7 @@ static const struct drm_plane_funcs meson_plane_funcs = {
> >>  	.reset			= drm_atomic_helper_plane_reset,
> >>  	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
> >>  	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
> >> +	.format_mod_supported   = meson_plane_format_mod_supported,
> >>  };
> >>  
> >>  static const uint32_t supported_drm_formats[] = {
> >> @@ -364,10 +469,53 @@ static const uint32_t supported_drm_formats[] = {
> >>  	DRM_FORMAT_RGB565,
> >>  };
> >>  
> >> +static const uint64_t format_modifiers_afbc_gxm[] = {
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >> +				AFBC_FORMAT_MOD_SPARSE |
> >> +				AFBC_FORMAT_MOD_YTR),
> >> +	/* SPLIT mandates SPARSE, RGB modes mandates YTR */
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >> +				AFBC_FORMAT_MOD_YTR |
> >> +				AFBC_FORMAT_MOD_SPARSE |
> >> +				AFBC_FORMAT_MOD_SPLIT),
> >> +	DRM_FORMAT_MOD_LINEAR,
> >> +	DRM_FORMAT_MOD_INVALID,
> >> +};
> >> +
> >> +static const uint64_t format_modifiers_afbc_g12a[] = {
> >> +	/*
> >> +	 * - TOFIX Support AFBC modifiers for YUV formats (16x16 + TILED)
> >> +	 * - AFBC_FORMAT_MOD_YTR is mandatory since we only support RGB
> >> +	 * - SPLIT is mandatory for performances reasons when in 16x16
> >> +	 *   block size
> >> +	 * - 32x8 block size + SPLIT is mandatory with 4K frame size
> >> +	 *   for performances reasons
> >> +	 */
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 |
> >> +				AFBC_FORMAT_MOD_YTR |
> >> +				AFBC_FORMAT_MOD_SPARSE |
> >> +				AFBC_FORMAT_MOD_SPLIT),
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
> >> +				AFBC_FORMAT_MOD_YTR |
> >> +				AFBC_FORMAT_MOD_SPARSE),
> >> +	DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 |
> >> +				AFBC_FORMAT_MOD_YTR |
> >> +				AFBC_FORMAT_MOD_SPARSE |
> >> +				AFBC_FORMAT_MOD_SPLIT),
> >> +	DRM_FORMAT_MOD_LINEAR,
> >> +	DRM_FORMAT_MOD_INVALID,
> >> +};
> >> +
> >> +static const uint64_t format_modifiers_default[] = {
> >> +	DRM_FORMAT_MOD_LINEAR,
> >> +	DRM_FORMAT_MOD_INVALID,
> >> +};
> >> +
> >>  int meson_plane_create(struct meson_drm *priv)
> >>  {
> >>  	struct meson_plane *meson_plane;
> >>  	struct drm_plane *plane;
> >> +	const uint64_t *format_modifiers = format_modifiers_default;
> >>  
> >>  	meson_plane = devm_kzalloc(priv->drm->dev, sizeof(*meson_plane),
> >>  				   GFP_KERNEL);
> >> @@ -377,11 +525,16 @@ int meson_plane_create(struct meson_drm *priv)
> >>  	meson_plane->priv = priv;
> >>  	plane = &meson_plane->base;
> >>  
> >> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM))
> >> +		format_modifiers = format_modifiers_afbc_gxm;
> >> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
> >> +		format_modifiers = format_modifiers_afbc_g12a;
> >> +
> >>  	drm_universal_plane_init(priv->drm, plane, 0xFF,
> >>  				 &meson_plane_funcs,
> >>  				 supported_drm_formats,
> >>  				 ARRAY_SIZE(supported_drm_formats),
> >> -				 NULL,
> >> +				 format_modifiers,
> >>  				 DRM_PLANE_TYPE_PRIMARY, "meson_primary_plane");
> >>  
> >>  	drm_plane_helper_add(plane, &meson_plane_helper_funcs);
> >> -- 
> >> 2.22.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
