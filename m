Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB831FEC70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oHDx/mEOYarQWCddPZJmAW/U51+Vw1bMcfcPnCDt6F8=; b=XAHGBbPG+IH2UA
	Q1POxb1nRkgMa/2gIOk5zBPZfHA3lk1nW7RZZPTwEkHkyViDcmBu0YJW0syPamXTDPmH9Z/zxu2AN
	3ZafadFRnOUWT6chOQU90ay+K6tRRDEdViQyIuKHfhpg0cFyJp6y5o+cWSwTsUPRKFqw7fuHt8BxJ
	Otp9gLNTOYrNiyE+fY7yuQLAoeoZKVSUPkh4uFumDXM/GZeDYRtvZJ7jxrktbt+AmJKA37oMOSXD1
	hkWyQy9Ntm9TUjM3UZXHWPnYtxTJTCsrDaxqxIML7Z1XJJkIhIVEjJoEd/Qh1ZRr+shUJj834InfM
	KqXXOiAKas+yN0BEPsuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlozj-0006UJ-5N; Thu, 18 Jun 2020 07:29:55 +0000
Received: from mail-eopbgr50099.outbound.protection.outlook.com ([40.107.5.99]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlozZ-0006Tm-A4
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:29:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F7yEjd26Csi3/WXs4hkcO1J/+8xIYrIndjqie0M9v7nth7IxUcNn0mhDWBZWbytBBScsLxDy40g/3tAS/voxXaJOUnZOlXRl0rd+UF1ADD4xrEwVyyLneXfKXPSPR9zE4W9SbNKgMlgKDlSD2Isbt2Xt3NoutuQG+3o+9fMgXO3jH5YAD/pfPIOnVdI/mTrSvUX6ijt1WlE3sWTt8qgWm6cWzuBDgXR9gHggs3lda36VRhm1SIjPVnbtqQAT3mw/orx4x/l1L/GikbNJcyf87CMSbK9Y9HqkqRXUY3rE+aLGWRWEv9jIQmXRp8o7cefz1uwvjCuRW0nSoqZMIfhGIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ioB5UP2Lxf9U3+tk1oG1+o7N6VVEEofMIXLep2IoJGU=;
 b=fzuo87Og343dwndGZ/YR+q9OxoWlZfN5Pbw3HXMAP04uJ8IpwfhPn/+JNdyDjxrzyBSDfxfCF/imZhPndArjV0Vt6MsOAxHw6qPmTRuAxEerhIEkr4mj9Y016yEUXTwi2rSo+FnnpxdLZDGIh26ad3UttNSbXj0JMuyYcm7N7pOFXCGvRXXFul6PwX9g3SCUt5s05CHAM57n3+jvUq7Sj2/qZeNQrw/OwAraE/f58hJ4y4+yKw5zIIeaQmq7klQPdd3dc5xvS4ifaV5LtGLqf6OJ8R2Gjn+M/Cxypve7Gphp45/UdJhQZ8qTwaGQgdaETa+9HH9J5f+TXDLRtPyZUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ioB5UP2Lxf9U3+tk1oG1+o7N6VVEEofMIXLep2IoJGU=;
 b=lPAtNZR7EwJ+ro9JQibkGvEsPq27hlzQUlnnCY1kULoFeo/RIWNHH0fKagM5c3NW51P/e8GCEhIJFUPvgJQkiodhnNEcj6lp2SnOJ3ktW79Ok6InNg6LAJL9aHgKkBdvwKgAECY7drs+4Wy4lM03odT34XA7upwKOCvgwlu6EJ0=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=voleatech.de;
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11) by AM4PR0501MB2850.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 07:29:38 +0000
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39]) by AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39%11]) with mapi id 15.20.3088.029; Thu, 18 Jun
 2020 07:29:38 +0000
Date: Thu, 18 Jun 2020 09:29:36 +0200
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] cpufreq: ap806: fix cpufreq driver needs ap cpu clk
Message-ID: <20200618072936.n4yifupski3wnjka@SvensMacbookPro.hq.voleatech.com>
Content-Disposition: inline
X-ClientProxiedBy: FR2P281CA0003.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::13) To AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacbookPro.hq.voleatech.com (37.24.174.42) by
 FR2P281CA0003.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22 via Frontend Transport; Thu, 18 Jun 2020 07:29:37 +0000
X-Originating-IP: [37.24.174.42]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8316e20c-7764-4250-3d4c-08d813595b2e
X-MS-TrafficTypeDiagnostic: AM4PR0501MB2850:
X-Microsoft-Antispam-PRVS: <AM4PR0501MB28500372FF89DF14FEBC0F3EEF9B0@AM4PR0501MB2850.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0438F90F17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QRBh8c4HkUi/x2s+2mdVpLyAq4C09W3398Pybx0CDL4WOaINsLDmd7wCo8d2hpF3IqQR7qhlI+6PHKkOQFF6zbPLSQfER0/CZT1o0uXWgVq0P3QB5sfhU12PDZuy6OOvYDpK389rxlZ4OUtQG/P6QQnDeVpX/lmg036tuPAEt/kVBxQTGt1hIOy4CgWsgQfkQwH+yJeAD1r3NxPaqND5KH+KBxZZ3uGsHjVEK9ABaP3cgPYcEYNAyyGjK4BsG6pn7S468KrKJjStj2RS6rqH6AttdMZRGcq2m/0e04qYVYNbuUp0MOS9smj8DAyi1Bq4P3gi9yiI5xIMswIBFmPENA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM4PR0501MB2785.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(346002)(366004)(136003)(39830400003)(16526019)(508600001)(26005)(186003)(66574015)(4326008)(6506007)(52116002)(2906002)(44832011)(7696005)(8676002)(15974865002)(5660300002)(8936002)(316002)(1076003)(956004)(7416002)(9686003)(6916009)(86362001)(66556008)(66946007)(66476007)(55016002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: qbopftxkOajfhfL9qHJAJfN8a8xLqJ+nIxUicUee/cVxNC3Bwyu812slt+iT+KofkiKKIl0dKbQ8kNNix/oe8rCb7XKCU9apn7UUTtUc9r1uZrJePYxsyO2kOrfzmP/BIX1ECE6NYuCu3K6zqYTLDvdkxuFXRIagDFCikoRyrC3i26hPqA77H9Rqu/JSXWYMcOrUU5efbVM4qZe9ThpFHI+uFtMvxj11jG13oTHK70ncdfIEWM56KXzLyjxBqEEcPkuSkwbk/MlqmM/lobJMd75iG7Q1rETMww2mO/HdEGEBsb9yV68gg20NKQwyOlhUCEMZ+YAQNFBy2J7Al3PKh9Ct4tjaZIW5mmodBRq8x5fDl7Gy1QOgtdckmwuPehqR4rBk95npCz1LcjR911+7tMuc2iEyWhQZrsWfYRtWFRdvrHl3k1vhRx4OfceSXxpGLge9ifSl8QoA4FjVw+uIaAVz3GpUcfJIh42am/oE7T8=
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8316e20c-7764-4250-3d4c-08d813595b2e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2020 07:29:37.9697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OBOLMjhpYLRYgsLik8YnVRWwLUhDzzlYB3K13IIIrbTsR7bVeDFczzmgZonvSanFj8SocaAViM4CQtXTdm4p+yqsnfAhAxXf4Dhl3s7N+ck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2850
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_002945_556131_2C4D3F02 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.99 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.99 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: andrew@lunn.ch, jason@lakedaemon.net, antoine.tenart@bootlin.com,
 viresh.kumar@linaro.org, gregory.clement@bootlin.com, rjw@rjwysocki.net,
 maxime.chevallier@bootlin.com, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIEFybWFkYSA4SyBjcHVmcmVxIGRyaXZlciBuZWVkcyB0aGUgQXJtYWRhIEFQIENQVSBDTEsK
dG8gd29yay4gVGhpcyBkZXBlbmRlbmN5IGlzIGN1cnJlbnRseSBub3Qgc2F0aXNmaWVkIGFuZAp0
aGUgQVJNQURBX0FQX0NQVV9DTEsgY2FuIG5vdCBiZSBzZWxlY3RlZCBpbmRlcGVuZGVudGx5LgoK
QWRkIHRoZSBBUCBDUFUgQ0xLIHRvIHRoZSBtdmVidSBwbGF0Zm9ybSB0aGUgc2FtZSB3YXkgdGhl
CkFybWFkYSAzN1hYIENMSyBkcml2ZXIgaXMgZW5hYmxlZCBvbiB0aGUgcGxhdGZvcm0uCgpTaWdu
ZWQtb2ZmLWJ5OiBTdmVuIEF1aGFnZW4gPHN2ZW4uYXVoYWdlbkB2b2xlYXRlY2guZGU+Ci0tLQog
YXJjaC9hcm02NC9LY29uZmlnLnBsYXRmb3JtcyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9LY29uZmlnLnBsYXRmb3JtcyBiL2Fy
Y2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMKaW5kZXggOGRkMDViMmE5MjVjLi5lZmI1MzU1Yzll
ZWEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMKKysrIGIvYXJjaC9h
cm02NC9LY29uZmlnLnBsYXRmb3JtcwpAQCAtMTQ2LDYgKzE0Niw3IEBAIGNvbmZpZyBBUkNIX01W
RUJVCiAgICAgICAgYm9vbCAiTWFydmVsbCBFQlUgU29DIEZhbWlseSIKICAgICAgICBzZWxlY3Qg
QVJNQURBX0FQODA2X1NZU0NPTgogICAgICAgIHNlbGVjdCBBUk1BREFfQ1AxMTBfU1lTQ09OCisg
ICAgICAgc2VsZWN0IEFSTUFEQV9BUF9DUFVfQ0xLCiAgICAgICAgc2VsZWN0IEFSTUFEQV8zN1hY
X0NMSwogICAgICAgIHNlbGVjdCBHUElPTElCCiAgICAgICAgc2VsZWN0IEdQSU9MSUJfSVJRQ0hJ
UAotLQoyLjIwLjEKCgpCZXN0ZSBHcsO8w59lL0Jlc3QgcmVnYXJkcwoKU3ZlbiBBdWhhZ2VuCkRp
cGwuIE1hdGguIG9lYy4sIE0uU2MuClZvbGVhdGVjaCBHbWJICkhSQjogQiA3NTQ2NDMKVVNUSUQ6
IERFMzAzNjQzMTgwCkdyYXRod29obHN0ci4gNQo3Mjc2MiBSZXV0bGluZ2VuClRlbDogKzQ5IDcx
MjE1Mzk1NTAKRmF4OiArNDkgNzEyMTUzOTU1OTkKRS1NYWlsOiBzdmVuLmF1aGFnZW5Adm9sZWF0
ZWNoLmRlCnd3dy52b2xlYXRlY2guZGU8aHR0cHM6Ly93d3cudm9sZWF0ZWNoLmRlPgpEaWVzZSBJ
bmZvcm1hdGlvbiBpc3QgYXVzc2NobGllw59saWNoIGbDvHIgZGVuIEFkcmVzc2F0ZW4gYmVzdGlt
bXQgdW5kIGthbm4gdmVydHJhdWxpY2ggb2RlciBnZXNldHpsaWNoIGdlc2Now7x0enRlIEluZm9y
bWF0aW9uZW4gZW50aGFsdGVuLiBXZW5uIFNpZSBuaWNodCBkZXIgYmVzdGltbXVuZ3NnZW3DpMOf
ZSBBZHJlc3NhdCBzaW5kLCB1bnRlcnJpY2h0ZW4gU2llIGJpdHRlIGRlbiBBYnNlbmRlciB1bmQg
dmVybmljaHRlbiBTaWUgZGllc2UgTWFpbC4gQW5kZXJlbiBhbHMgZGVtIGJlc3RpbW11bmdzZ2Vt
w6TDn2VuIEFkcmVzc2F0ZW4gaXN0IGVzIHVudGVyc2FndCwgZGllc2UgRS1NYWlsIHp1IGxlc2Vu
LCB6dSBzcGVpY2hlcm4sIHdlaXRlcnp1bGVpdGVuIG9kZXIgaWhyZW4gSW5oYWx0IGF1ZiB3ZWxj
aGUgV2Vpc2UgYXVjaCBpbW1lciB6dSB2ZXJ3ZW5kZW4uIEbDvHIgZGVuIEFkcmVzc2F0ZW4gc2lu
ZCBkaWUgSW5mb3JtYXRpb25lbiBpbiBkaWVzZXIgTWFpbCBudXIgenVtIHBlcnPDtm5saWNoZW4g
R2VicmF1Y2guIEVpbmUgV2VpdGVybGVpdHVuZyBkYXJmIG51ciBuYWNoIFLDvGNrc3ByYWNoZSBt
aXQgZGVtIEFic2VuZGVyIGVyZm9sZ2VuLiBXaXIgdmVyd2VuZGVuIGFrdHVlbGxlIFZpcmVuc2No
dXR6cHJvZ3JhbW1lLiBGw7xyIFNjaMOkZGVuLCBkaWUgZGVtIEVtcGbDpG5nZXIgZ2xlaWNod29o
bCBkdXJjaCB2b24gdW5zIHp1Z2VzYW5kdGUgbWl0IFZpcmVuIGJlZmFsbGVuZSBFLU1haWxzIGVu
dHN0ZWhlbiwgc2NobGllw59lbiB3aXIgamVkZSBIYWZ0dW5nIGF1cy4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
