Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F5D1CD45E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLfD1XkWlR6ndb7Tk/U+6OlIpKjRfS9LdWOia2T9eGI=; b=opBGiIjefpbth7
	r4PwQtF/EQRCOjmvLegHe1xY0zPWabpu4dl6fagoRLqxgdMVPsvi3t4Al4s9+wNEyvykgpARnFaOT
	qOiFY04+lyTlgQLJQFJYzHbrEX7HKs14W+bgJklG0RZ15TZublD1Z4fG3D91DMCOoIB5yJCh9nReM
	ph7vUA33qDMU9CnaYHxTut9ZvvGrIJCjg6u+Mj7RtWRZJNoV2AiMjE1DeOEKay7707SRLu3RTDSF9
	PkqcV3ikMhJrUQpEKqHG4qK1hE0PSShYaccU4Jd+GMEqzVlAJ8Bs+8zCz0KN6gx36TOjfcID8Qc+8
	lttsfsnwYVaRXwOdmWDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4JC-0005Ad-MI; Mon, 11 May 2020 09:01:10 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4In-00052i-27; Mon, 11 May 2020 09:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589187645; x=1620723645;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ps9HwEIgGRmWlYbSzXCQ2wypQT0gHrWrHPwwkkx9emk=;
 b=uoHV6g3slz3yHmLozvv9WTO4PnKljIvWt7pixxWxPw+cWwJzr6hkiQyd
 R+Jl/DX9nI/nvya5zwcKRqW50HxQzLD73uZDbF0px1gMn4WjHAmYaBU79
 qE7/HKytsI7/bjRvREk+3bvfqa3baeAq5JoLW1+omxtSSkJhpBUY4mO8i
 +QxonQ1qS7cUy888IPMKqOxrOSEOlhScSxN0xQoCUfBcg0BzOATaL/ao1
 4zsfwTpkgrDwxgmLZdkqMCjiPKQTeF5zgvtsh2lwIy42//3j40Z/FJDSC
 GzJ7k+5/d5pgK8JbBrXLUHk7nMvfBS7WTKgCYHekIviL8EYKnHNk9EdqD w==;
IronPort-SDR: W7v7F3fePcC79mASEJuRUi2aeRbMisK56hJ5pb8/Z0MEMXddV04zkxIM/DS0KkHCB8cwJbfKtZ
 sOV1zFJ489f6rwxwBzRwXeU5BEf0c1MWhHj0M9HlXlZEbMgYq4KWEftTSfe7VvHAb9ZocR7E5A
 vQK/iHjprASF+UGEF62XEegOINB0ZlYuJK5FXWActVloXTDt9vD8WVD6RbqSnRjOR2UPZ+wfYq
 0ohMZzy9hrKO+rWdOvx2zVfvj+6QA9kyAhupxS7/mCAz3p1ZGbQ8rDID9o3F6TF63jdg07D4lv
 vM8=
X-IronPort-AV: E=Sophos;i="5.73,379,1583218800"; d="scan'208";a="75456419"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 May 2020 02:00:39 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 11 May 2020 02:00:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 11 May 2020 02:00:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hA0pEtvfQ1VBJDX983Fg3TU3zWHhrVJIjdAW+aBeU4LdZcU3LhWA5VCY8F0apAB7ekGJc8tNnQorDwGeXJx2hIBoGHH4uujvDbku6hMp7mG9ECz6w+Tgo7x0/vT/97lv7XQvMmiBGHb2RUb0vlYsN1+Td457R/unU8/YcNj1n/mYzGfG9DWxYAVweWITqxtF36vrqh0OB5ALG1ibvpXu98Qc/LYWIampkwSSew/Me4JpNkYKcOHo2SSz/l8Wa0aZ5HPpnaNbvVyt0zB7ddTNg6D03pbIZVcvVgNdmjehhAuVIwgEh2KOw7os0dFmQnPn9mqzrEHzXqLmt6LweftRcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ps9HwEIgGRmWlYbSzXCQ2wypQT0gHrWrHPwwkkx9emk=;
 b=SyuPPHvXklve8pqkEjYn6X/RL81mnQw08rVA6Ug+lomm/NnSqzrVosQi8WTXptN8UKyjFpPS387eF4mNPJDJOHmduDtAIgpgjpaDJUtu3iGtf1kDklG227ehk75E7TY4bhDlzf6fcMAikfFaA26QkTzZ7kVc0jG9BMvrWVYntU6+rxyfK2zz+NYx6RC19NfjxqO6LiTkb2QQXUtns3LX13vV/Bid7+NYkH3UtbG7zZein8XeAQ652Mz+BCEqPpeWPdhRl/ctVJeavPvqeGD4Z2aMmz75pobZpkE7KSQlGx63MyRXm494cxrTohp+oKku6mcEJ3wB5DlqH5OHJ7QAHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ps9HwEIgGRmWlYbSzXCQ2wypQT0gHrWrHPwwkkx9emk=;
 b=iali1JoD7uZ/E722LD6/UB2g1aV8If9sAwbPbjidTw8ou2tI70eXhzmjcXKg4rbeNkX1BBik6Xee11Ret2v4DvKwgQ/BFRKVRt6b9IpsWUflPsPJ1wi1fXPZNUOlmMirQZz6rXfduQ1L/SSK+cm4aFGZK4tcRFgCsB2AhaiguRM=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB3975.namprd11.prod.outlook.com (2603:10b6:a03:184::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Mon, 11 May
 2020 09:00:35 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:00:35 +0000
From: <Tudor.Ambarus@microchip.com>
To: <p.yadav@ti.com>, <boris.brezillon@collabora.com>
Subject: Re: [PATCH v4 00/16] mtd: spi-nor: add xSPI Octal DTR support
Thread-Topic: [PATCH v4 00/16] mtd: spi-nor: add xSPI Octal DTR support
Thread-Index: AQHWJ3Khn/aolf/mv0usqjltSIxTLg==
Date: Mon, 11 May 2020 09:00:35 +0000
Message-ID: <3649933.zuh8VGJVCz@192.168.0.120>
References: <20200424184410.8578-1-p.yadav@ti.com>
In-Reply-To: <20200424184410.8578-1-p.yadav@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ti.com; dkim=none (message not signed)
 header.d=none;ti.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92a278c0-aece-4143-0505-08d7f589c47d
x-ms-traffictypediagnostic: BY5PR11MB3975:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB397506D5434693BD7B9B9E4FF0A10@BY5PR11MB3975.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PUszZyRx7LcE2BjzcR/GjCjj/eYzbWgHZuuwW7HPlMLgV93zX9ntVFj1+k+rCSx6FzwPZGMSMMgcCArZmixOrwE0kPrIVf6wF+xrCgeO2C7aLnob6P0IHJ77bfk2G4xq9/Lqs2ju9V0p6PRyoxKit5auds9ABbIzLESL/0etR+9W6MY2ZwZE5sVMvnE+sVbuCBZYMGI1MoczUIlwj6ruO4loWmSkfsYW+g89AxWvVmmd6+cm8sGc5sX0WItZQJ3q6SkhOyVvs/x7MvYrpa/IeysVRX0GU8+HnfwdVKe6rvi0MzI6yD69zCv+iTgsOKgRnxQMkBLytVLaGQrs9gHja6fKweEKh4aDRnpxboVr1JQNoD31lIem2TBGsNm19SxNjmLkdl3hxFOm4TfU2kqS1aNZkN2Pwj+GoTZZi9Kr+VKPiscBr41RTOZ1HlTgjFCe7tEsATA3e/R/7J7PxJkBojrrYoHqvMk9ZAc58dgv/8DnhAcpnwedYamzX3fnDFE1jBfo+Ow22H0sxbtnuTOIFqp/RoyoDgSucMq7d3VJdjc7M3wU4IclaYHBf7YgA2v2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(39860400002)(376002)(136003)(346002)(33430700001)(71200400001)(33440700001)(2906002)(86362001)(14286002)(6486002)(7416002)(64756008)(66556008)(66476007)(66446008)(9686003)(6512007)(8676002)(8936002)(54906003)(5660300002)(316002)(91956017)(76116006)(66946007)(6506007)(53546011)(4326008)(478600001)(26005)(110136005)(186003)(39026012);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: oAUyy0pW1NzoftWqj90QzDowXKm6CDEK02CRVS12jeO6mRV8ZRlSaK9nfWq3aMyADRV14oithkK6woSW4GFIJ+ZJza85l9T9wwCb1ZLNv7jUGF2rm/AwA2ImrAWy0DmPFQqBRxWSHzFZY7a4SrnsPON0x5WC/RauFd9Wh2TgAkywn+UPA5Yv23HIEXtYq/Au6p4JU0kFNNjOelhtlXRZ7zjRmOAO6YTe3hgBQiiNowfnpPSgS5npGuHKLz1ELBZntvMEYub1iDXTKz4DnuYpbl9Q3zvteZa2CyN0GDyPfiyoQHLgWFJH3PGX9pTUMlKD7Ku13mPtcjkqzcL1z2brHu/4/g5R2a4TYG0Lj433u0PUMrqtjptNTRR9E9R/xzXtzc9jokhG9DwFQLnc0NcJoM730ttzKnM4AbFBstVT0pKw9keADyN4j1p0gt3sOF7Pu2ikYoPjmn1MnF6exVbkSzpIFoIW0kYsbj7KMU8A0U0=
Content-ID: <FC1D03ED70AB18478EDAF0B070DEC3BA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92a278c0-aece-4143-0505-08d7f589c47d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 09:00:35.0417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sPFMgUsS60Ng6GTw35EFXYBzZNSRfKeHnUj6l6W59l0y1Yc9YdPYG0V0t3vH6gWN6QgSz44LRUraa1s0LYN3xvqpqDOfFBuMCrWJlKLW15Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3975
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_020045_109471_CD5281E9 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, vigneshr@ti.com, richard@nod.at,
 nsekhar@ti.com, linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 broonie@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Pratyush, Boris,

On Friday, April 24, 2020 9:43:54 PM EEST Pratyush Yadav wrote:
> This series adds support for octal DTR flashes in the spi-nor framework,

I'm still learning about this, but I can give you my 2 cents as of now, to 
open the discussion. Enabling 2-2-2, 4-4-4, and 8-8-8 modes is dangerous 
because the flash may not recover from unexpected resets. Entering one of 
these modes can be:
1/ volatile selectable, the device return to the 1-1-1 protocol after the next 
power-on. I guess this is conditioned by the optional RESET pin, but I'll have 
to check. Also the flash can return to the 1-1-1 mode using the software reset 
or through writing to its Configuration Register, without power-on or power-
off.
2/ non-volatile selectable in which RESET# and software reset are useless, the 
flash defaults to the mode selected in the non volatile Configuration Register 
bits. The only way to get back to 1-1-1 is to write to the Configuration 
Register.

Not recovering from unexpected resets is unacceptable. One should always 
prefer option 1/ and condition the entering in 2-2-2, 4-4-4 and 8-8-8 with the 
presence of the optional RESET pin.

For the unfortunate flashes that support just option 2/, we should not enter 
these modes on our own, just by discovering the capabilities from the SFDP 
tables or by the flags in the flash_info struct. The best we can do for them 
is to move the responsibility to the user. Maybe to add a Kconfig option that 
is disabled by default with which we condition the entering in 2-2-2, 4-4-4 or 
8-8-8 modes. Once entered in one of these modes, if an unexpected reset comes, 
you most likely are doomed, because early stage bootloaders may not work in 
these modes and you'll not be able to boot the board. Assuming that one uses 
other environment to boot the board, we should at least make sure that the 
flash works in linux after an unexpected reset. We should try to determine in 
which mode we are at init, so maybe an extension of the default_init hook is 
needed. But all this looks like a BIG compromise, I'm not yet sure if we 
should adress 2/. Thoughts?

I'm still looking into this.

Cheers,
ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
