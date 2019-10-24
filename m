Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B84E2FBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 13:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0koiA2NhIMyYag0HNlxmZ15UcIGzIctFlvpNP8qSNvc=; b=cX7RwxPNgZjqgs
	hVCi0AKL79IUgM75JsYHNQHqmtibn/DxLXoVCjJezNudr03STL9ss8T6kBkhtglrSj6rh1E562ETY
	Ag60ZG0fK5ZXIWlaBKtxzAofhxuyJaRHcqlR61YS2zlasg8ZOiwgSt+uFVLrpo7zU5psSPhzmJbnG
	m9MqT+1XpjM4lyrZnrKKjAkE5xNDYu9FyAtILSbuOlFcs02fJWmmkfkQrqkAZngmTVSKsxLjEgg66
	DCyAhp+f+rZpIhVjn9pdknBYxQ+CsSoFfgx3C3y7UZxdDGR3+F7T7HVTHenOcfkWix23CR3w/xhz+
	dOGaT6vUZd4dD7ggafVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNasn-0006Ah-CG; Thu, 24 Oct 2019 11:02:21 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNasF-0005uq-En; Thu, 24 Oct 2019 11:01:51 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sjSMwU5rLXXe7c6hoZtqn44KVmRqZWEDosgFlZCg4pqufQSAh6SlFcerohbDyWadszAAbiPPhL
 PyDjes3vcYYy81F+oK/GI75jlF4mdluFdVmx9tPv0IenSEQsvM3mxQ81oVD5l359hmJmmDwKgB
 7SzMHivCwBa//l9a0xdjP/SojjvtsEavpiWRbAO/CSluC6ouOZGpLu/jxUMPna+nlH08VyfFLF
 18fjWNniNNIddwXU1LUPoOG9KZgT8uR0al/OBlvlFpSMi+iU97aS+APMaPAKvhDBt9aen0WS+P
 jck=
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="52745880"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Oct 2019 04:01:45 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Oct 2019 04:01:43 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 24 Oct 2019 04:01:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WC5HKudfzV77CaNRhLOvxmcjZk4RS5kfbs2sLCx890SeLACKhvLzGGC15F6svMZqd6Div/W41XWN4tvzPgFJReYWudsGzfwwnWli1/Eu9pjM/dZ/vFSYuwHFvnSmFpxGyN/VKujm1iHbVhUQhzAAB9j8JpYIHTXRZ/OpNS/Y0Y/ThOaiYCar5h+JvB4bx1kh7NETGWrEccDq/8ZkHMgHpydC2G9HHf9iJw8K3zWR9FS7PJqnmgEqP+x+zmc0WSk9oPoX42yxdn39IOYz4f6Tt7mR0ko86uqjPQrWVIuFMJXZW+3cCwTEP6PwkbiqSrNWWO2VtU2GJEreC/g/3YxROQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tDu91HlPGHYfW+KnCVpz8LQdGOPu3IbIo2ZvQSvh5zc=;
 b=Mnd4q/3Zh+yTqhpWhjf5Xblu+d5Rnw7ntVQBwiAEO4FxSZ0mU0nNBJArHOjxEjwIWnpBDL58rjVgTE+ibRZ0xAfg9SglP1ZmwaNCg+V94cRCuk+qwP7Nd74AYdUj1VFR6ZsJLI+MVy0hvCzKRy5OsHvYK1byWkHWiwL2sU/iLm7sM8dPEXEr7EcjgmmrzHLN2tjZ9Xo0+TZeouCJwJKtOF9i1sCdhAKWCJFGbSJ7uqWHOKt+oE/iVHjf/XKLSPGiwocw5YxVVfTUTMfkWxBFxsSx3fjtK8cMx6bqBqtoW7Q05CCXbBkldmP3KWAxCIigmPbK7fX++dkz4BlWO8DT9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tDu91HlPGHYfW+KnCVpz8LQdGOPu3IbIo2ZvQSvh5zc=;
 b=FyDP7u6jTuPNqBYa2gS/P7tc+mpCq0iyh5Gxa1EdK2/daJ0V4/C4uRQ/PRpCjFogcLMAqND+VoIdY9LqQOqR/Y7k/cz4ZBrjFCWXYuZT1JX05vsize8crW3k1/ct24fl1YF56Zx/EBzlD91TMUfeeq/Q5A9WXqvHOw3Q/lX3Z/s=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4303.namprd11.prod.outlook.com (52.135.37.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Thu, 24 Oct 2019 11:01:43 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 11:01:42 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 08/22] mtd: spi-nor: Rework write_enable/disable()
Thread-Topic: [PATCH v2 08/22] mtd: spi-nor: Rework write_enable/disable()
Thread-Index: AQHVcqwmGxayarzEFkyHj/sWgnNJNqdTkUSAgBV/k4CAAGu3AIAAUuMA
Date: Thu, 24 Oct 2019 11:01:42 +0000
Message-ID: <3e11ac30-98fa-98c5-3f2e-3fb1f373ffe1@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-9-tudor.ambarus@microchip.com>
 <20191010092117.4c5018a8@dhcp-172-31-174-146.wireless.concordia.ca>
 <34fbb0d7-ee8f-a6d7-4a3e-d64f2f8555ff@microchip.com>
 <20191024080452.522b6447@collabora.com>
In-Reply-To: <20191024080452.522b6447@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0075.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::15) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.239.29]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a234a4b-16b6-4243-79d1-08d758718d8e
x-ms-traffictypediagnostic: MN2PR11MB4303:
x-microsoft-antispam-prvs: <MN2PR11MB430340495273680B28D95F7CF06A0@MN2PR11MB4303.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(346002)(376002)(396003)(199004)(189003)(478600001)(386003)(229853002)(7416002)(66066001)(99286004)(6506007)(66446008)(7736002)(64756008)(305945005)(66476007)(66556008)(4326008)(3846002)(14454004)(8676002)(316002)(81156014)(54906003)(81166006)(6116002)(8936002)(486006)(6486002)(6246003)(52116002)(11346002)(31686004)(476003)(6916009)(71200400001)(76176011)(14444005)(71190400001)(66946007)(2616005)(5660300002)(36756003)(26005)(25786009)(6512007)(53546011)(102836004)(31696002)(256004)(186003)(2906002)(6436002)(86362001)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4303;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SxkkELEaNrkNMzbAX/Bym2hKq7u+K0pFCVxd7ChQI98cfz2h0hN9iSXGAkWBb9AZB91mArVB2yTL6uSLTDljYHVIFtKQF9k3urirdu6LcICRztcXuNgxxg6gKsbfNZvT6+Fn5rJc96gzb5uS1diOClZAhoce0V/gJo/N0jYylH0PSeirj0nTW1RZNZ9v1VmYRSE96bSKnCQkEVRRraVh2ZHX3lIaPW1kWfvHFwTqKMeD1ddhl3YVQ/iglLQ6c0OUpzxGPEJpTugPlReGDHE+Em7Kv3AX2Lx2HwuqYJPqm2PTB7TpgT3F1vFASEu2SYECZivFDkodkaeJWVL0s5vbMLU5iCp6jIJJNxVJFOIHheAvpAQU4Uwa4EaKG1xM7l524XvsDLTNG2GOyNNtVDefI6vOnnPdbtxoz0sjbdVFzL1lrXFW/byDix9S/bseVFZr
x-ms-exchange-transport-forked: True
Content-ID: <40D5304F00A23D439C5EBC86E4E15200@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a234a4b-16b6-4243-79d1-08d758718d8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 11:01:42.7027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x+LnAxtKIg7YFg8LJajqZ5Z376lMdvE2gsc5nt7l6dMLHJGyaDgE8vktY/NzvsmFef9ddCfFEDt5NecLmb1De9gsO6zR+SMtVjyf7La1ZLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4303
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_040147_607087_F2921DC2 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vigneshr@ti.com, geert+renesas@glider.be, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, marek.vasut@gmail.com,
 jonas@norrbonn.se, linux-mtd@lists.infradead.org, joel@jms.id.au,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/24/2019 09:04 AM, Boris Brezillon wrote:
> On Wed, 23 Oct 2019 23:39:31 +0000
> <Tudor.Ambarus@microchip.com> wrote:
> 
>> On 10/10/2019 10:21 AM, Boris Brezillon wrote:
>>> External E-Mail
>>>
>>>
>>> On Tue, 24 Sep 2019 07:46:18 +0000
>>> <Tudor.Ambarus@microchip.com> wrote:
>>>   
>>>> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>>>>
>>>> static int write_enable(struct spi_nor *nor)
>>>> static int write_disable(struct spi_nor *nor)
>>>> become
>>>> static int spi_nor_write_enable(struct spi_nor *nor)
>>>> static int spi_nor_write_disable(struct spi_nor *nor)
>>>>
>>>> Check for errors after each call to them. Move them up in the
>>>> file as the first SPI NOR Register Operations, to avoid further
>>>> forward declarations.  
>>>
>>> Same here, split that in 3 patches please.  
> 
> In order to keep the number of patch in this series small, I'd
> recommend doing all spi_nor_ prefixing in a patch, all function
> moves in another one and all error checking in a third patch, instead of
> splitting it per-function.
> 

If I do all the functions movement in one patch, the git diff output becomes
unreadable. I'll split patches where needed, for readability purposes.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
