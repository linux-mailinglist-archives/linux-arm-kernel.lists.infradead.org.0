Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FE61F640F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0mMdOtl/SB/baEnjsd4ww7adsaBorWKxJYR4YpaYBOg=; b=gvgTiYYakiiYA2fHlBTZTbiub
	x5UBIG1TsQekfT345G3oll5wzEcoKse005FvoL1ulRLVQIIRDsevZxaWjFpP7SdpX1zwlZ8Zgj8NB
	nl1IRI1FVM7UuKrrP+wqzHHeYELuiHvVCC/b649AVZWzYcXGi/KHX4FAyuWqURVvrnR42HcMLK8QE
	w2QRDYoySY/tmDal3eV7UyqwxC/xhOuSdPbRhZgolz2nwSYHZnhQH3acJfyRNiIgdx7Yl05CeGYRN
	CUPEaJd3mX4QNjvMqmPPucIdKH13WXQ2qc5fmenR39XJ14DO2cE63hwqi+ot5GVq0ociC0xaf41tX
	/wM/1EgWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjIzl-00057l-Av; Thu, 11 Jun 2020 08:55:33 +0000
Received: from mail-am6eur05on2042.outbound.protection.outlook.com
 ([40.107.22.42] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjIzb-00055S-N6
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:55:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/OHrnsmpoaHtD+fD1pdeRlNMc2MHkYYgHt/8wjPDqTq7lLDyaNjJE9XUXetSNShXn6oK2Cb4IUWW0DdqAOnIqfAV954QRav6gEGkZKtIHcCzwvnAtCweIv0iI3VRf/iuB9whuCnz/MTSCw9pq2iRPupt5gzdu7JddpRM4Y8vHzHxQt5VZ+SCBtxWMY7VqRfZVhyOcLweHT2IJ4NUG601GNPxZPdWyJweGWU00UZeLXsSwCSiF+62oOZPj1tOhVZYYiNCp9PmBYeUhFeoZcQOFrgEM2QewiTYIBr36tBN7yciTCC+3zsblGOTXKMYDV95mBoNuzl8Rcs+6uRSiTdog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aOLDR6+8YucV1jyxwREMv1Pf2R4Jth9+nYjWECpqYp0=;
 b=Yq/s2eefsXuae/J1fd6aTsKXUQN0TdbC7mfjJgRL0tr8+01CTJaLjShNvj2Sic2sw8Qo7Ncrb7gfAaOhEc+77tUUhT2GySmMvj9X7eb1Sv22Ul14Cb0fYtzLBxQ0dJH5U6WyrtNJyjyudCe/PGLSUVOUIT3ZwTYPQJL4bmayD+2p925Uu6rxCScNtlsbkpBOSXA5Hoh1i3wF/WIk4qsmT+Tm9pDm+lYJ/AFFBL2UnWlQ64QAjmaZn+lqxVeDgkxPXiYD68Umuvqhy99COQ1URZcydZtEEStntjH1muuLWQsjTVCWgWwWHo8MOvG82z0GsdEE7MyVU3A5N1vvh4DA/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aOLDR6+8YucV1jyxwREMv1Pf2R4Jth9+nYjWECpqYp0=;
 b=mcNU+NTlfmfAyulj98kPuQykSoNuwYr0ykwXoUT7PlYTAnuV5b+aGQ0goZ3YqbZPkoE37vwphAokpUXDqcbEMcZ7QFjtmQFrRfq18sce0iG5zEfKXFgr7izbF1j9KXEh92Ajw3u/k1hrEQ3OQQV5nRPyyhHpN8DH+9RaLtJdm6E=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19) by VI1PR0401MB2413.eurprd04.prod.outlook.com
 (2603:10a6:800:2a::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Thu, 11 Jun
 2020 08:55:19 +0000
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9d5c:685e:4b51:fa60]) by VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9d5c:685e:4b51:fa60%3]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 08:55:19 +0000
Subject: Re: [PATCH V4 4/9] pinctrl: imx8mn: Support building as module
To: Anson Huang <anson.huang@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
 <1591775865-26872-5-git-send-email-Anson.Huang@nxp.com>
 <33292cab-c49d-0878-dd8c-1166258e089b@nxp.com>
 <DB3PR0402MB391645F95B19B2438736B546F5800@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@nxp.com>
Message-ID: <d23114e1-1a81-45cc-e8da-6fed53f455ab@nxp.com>
Date: Thu, 11 Jun 2020 11:55:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <DB3PR0402MB391645F95B19B2438736B546F5800@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR10CA0066.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:15::19) To VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:2f08:560d:e500:fcf6:7c4d:8076:b570]
 (2a02:2f08:560d:e500:fcf6:7c4d:8076:b570) by
 AM0PR10CA0066.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:15::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Thu, 11 Jun 2020 08:55:17 +0000
X-Originating-IP: [2a02:2f08:560d:e500:fcf6:7c4d:8076:b570]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fff8481b-0618-41ca-ba98-08d80de52acf
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2413:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB24134DFED1A6F17DA933DDC3F9800@VI1PR0401MB2413.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iy2akpeYGcbdvT5YVKl+4o6yR42XR8vEzbdxW130lXg9M6u0Zm+JLWZLvhzxjuqYi5hNLf2DSTyHmApMnTMAoSoVvPLo9Xo9yg78PJAnr1YTwDlP1dGZ9C+dKroHxpbcmrLzCnP0T7F2d6WuaP+znFjt6chSUbn8blpRsDNOoE/Ll+gUs54GpAtEnJ6F+92aQGeRFPYrQCuLkr/woE25TuO5Fjm1WWD//QliWNXcJOBRjP+GUlyZcuAv7JnoysHyqHVOIz8vuwcVwKcPG2cKv+SSIfGGSfhPkAf0ZXmJeaV9zhXeujQt+PX0PvdWD3TPsK5rDbTetIg/N/pAzYW9QyvJSPuEG81vuShUI096sCjThdcPFhxPRZc9Rac0OfACiz2j/6oQcCJ/8wdsMkZExSzkpBN2lG1UEhYWXcfrG/c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0401MB2287.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(36756003)(2616005)(2906002)(83380400001)(8676002)(16526019)(66556008)(6486002)(66476007)(66946007)(31686004)(316002)(8936002)(5660300002)(478600001)(86362001)(44832011)(4326008)(53546011)(52116002)(110136005)(186003)(31696002)(921003)(32563001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: fz3Jl0HwAs93cw+scyx0XZJcfH8SNWOflFIAYqWrlOozaW/rkNVEXA/OfDBuo8UzxlIAfYcsCQ5zpqaCVzoREBLpD7My7mX20bXUB80jiX7/OKiWiiby0XSxxCGeQm0KIEsiaiDm9+FZ3xDKtdTlFTsnG1K4QBqKgKuf6v3nIwSU88N4O5NNvTOsKOtF0SuibzkSfKiuySWb2mILPAvHa/EGzQ6iLf+speWCyppvHG32LkjjjdPpp/5+SyFSnzxBXtB0vf6XMFMurCA0VDzloVwifIAo+q+W8iv3Ilyly/7Np8ZLdyKas3fQHvu8X1R6x8fz1JsmwUxWhtko8lVBCztzBn+Rsg9HixKVPI2x1srcp7LgYAHGHTlOiIxN4rWdWdn0ugk+ozewjm39ejZjgJOCLa9NtW4gq40UNnGPyuf6PQWyoVFsKt2wkHdHg7PFgLbDw5KdYUZ2QhPhm/jsETyevcYofB/ZHQsgQRm7/MqikzZxvCOxKKDCLVXn5M5jhX9TftAP8M6nINAoCG5SFUcshToXHU5DchwOQuFqwL2gG+a7/IhbEnR8BvyqGNfy
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fff8481b-0618-41ca-ba98-08d80de52acf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 08:55:19.1363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H5h4yL4VAo/PG7zmxGMO8rflxFcDhzBBE6lYEqL8qJNESahukXIM2WoDoNauyRbS0ZokvBXahvcX4CEHT7SkNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2413
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_015523_752943_874383C6 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.42 listed in wl.mailspike.net]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDExLjA2LjIwMjAgMTE6NDgsIEFuc29uIEh1YW5nIHdyb3RlOgo+IEhpLCBEYW5pZWwKPgo+
PiBTdWJqZWN0OiBSZTogW1BBVENIIFY0IDQvOV0gcGluY3RybDogaW14OG1uOiBTdXBwb3J0IGJ1
aWxkaW5nIGFzIG1vZHVsZQo+Pgo+PiBNYXliZSB0aGlzIGlzIG9idmlvdXMgYnV0IEkgd291bGQg
cmVhbGx5IGxpa2UgdG8gc2VlIGFuIGV4cGxhbmF0aW9uCj4+Cj4+IG9mIHdoeSB3ZSBhcmUgc3dp
dGNoaW5nIGZyb20gYXJjaF9pbml0Y2FsbCB0byBwbGF0Zm9ybV9pbml0Lgo+Pgo+PiBDb21taXQg
bWVzc2FnZSBhY3QgYXMgZG9jdW1lbnRhdGlvbsKgIGZvciB0aGUgcmV2aWV3ZXJzLgo+IFllcywg
SSBub3RpY2VkIHRoaXMsIGFuZCBpdCBsb29rcyBsaWtlIHVubmVjZXNzYXJ5IGNoYW5nZSwgYW5k
IEkganVzdCByZXBsaWVkIGluCj4gbWFpbCB0aGF0IEkgd2lsbCBjaGFuZ2UgaXQgYmFjayB0byBh
cmNoX2luaXRjYWxsKCkgaW4gb3JkZXIgdG8gbWFrZSBzdXJlIG5vdGhpbmcKPiBjaGFuZ2VkIGZv
ciBidWlsdC1pbiBjb25maWcuIEJlbG93IGlzIHdoYXQgSSByZXBsaWVkIGluIGNvdmVyLWxldHRl
ciBtYWlsOgo+Cj4gIiBJIHdpbGwga2VlcCB0aGUgYXJjaF9pbml0Y2FsbCgpIHRoZXJlIGluIG5l
eHQgdmVyc2lvbiBwYXRjaCBzZXJpZXMsIGl0IGNhbiBtYWtlIHN1cmUKPiB0aGUgY2hhbmdlIGRv
ZXMgTk9UIGltcGFjdCBidWlsdC1pbiBjb25maWcuIEZvciBtb2R1bGUgYnVpbGQsIHRoZSBhcmNo
X2luaXRjYWxsKCkKPiB3aWxsIGJlIHNhbWUgYXMgbW9kdWxlX2luaXQoKSwgdXNlciBuZWVkcyB0
byBpbnNtb2QgdGhlIC5rbyB3aXRoIGNvcnJlY3Qgc2VxdWVuY2UuIgoKT2ssIHRoYXQncyBncmVh
dC4gTGV0cyB0cnkgdG8ga2VlcCBpbiBtaW5kIHRoYXQgdGhlIGNvbW1pdCBtZXNzYWdlIHNob3Vs
ZAoKYW5zd2VyIHRvIGEgc2ltcGxlIHF1ZXN0aW9uOiAiV2h5IHRoZSBjaGFuZ2UgaXMgbmVlZGVk
IiA6KS4KCgpUaGVuLCB0aGUgZGV0YWlscyBhYm91dCB0aGUgY2hhbmdlIHNob3VsZCBiZSBhZGRl
ZC4KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
