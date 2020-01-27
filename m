Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1656F14A17C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 11:08:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCLsbO+xMtB/cqd/Mgi6rvsJ4LRbLp+Q+ZDUtX2Bq/A=; b=NPZ+er61Tj7Zxi
	llfOFAOZ4FB0BA//JW+vsDzpEliyAPEZcBgt2228mB2GAKQsC6cCO7YKpfLcu81xlSbwSJeOHVBvF
	T0SsY7LpXdjcshBPri/LlYY/OvSVvJwgcdiy4g+Tw1Fzz22QvrKq2GvOQeBZuNwQSPq1q86GU+Cr4
	qw6uX416Jh0ltjOceYKmm/0Wo2tocOmzkgePUAdq++f7nSXMx5o5Q/tLledYF6Qsnno4dETsgbWCB
	H5n7W0vJDw5veaYwyCiCOewKp9kcIrn1D88pC3d9BhAA5oFG3ACmk2l0o6MGwguUQoY7nN5fhe4a5
	ANYg+5Dhel9FQ4AXCWfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw1K4-0000MW-5c; Mon, 27 Jan 2020 10:08:48 +0000
Received: from mail-eopbgr130125.outbound.protection.outlook.com
 ([40.107.13.125] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw1Jv-0000LP-Ci
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 10:08:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8o7ZdSYN3EEGG8yUBJoIzVJ0i5/1ZtZtk8G02+oxZSAb9YVPccDI9hh0TRSlcsIftSKdL+8NtBu5TShg6tmungIKsI0dWRfEkgh4H3vwOSqhqO/3gw3sJjBz3Ez+U/GQwD5tnfbGi6+iMfw7zPn73sxp1eVEo40m9QtTiM8DuRL8KRkDvxFipBzHcJvv4dcjLK7xw0m/5kEG80Zsv9qFlkeW8W3NNe5adKq4Dk1NNlQ5GdZrRUBJK1S6MijGlF4UelvYqpHStX8ajOjQakmlsGa/b3aTvlw7gJvQKyiAoyUQPvzjgkfP1xVP8UzEpFcUaY53v92tbncbjbnKCCSAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DP0visv+1QQ5bROCjSnALyf+03E81AE1jRd+Qoncw9I=;
 b=Xzz825vIFblXtFEa9ERXFgAcO9iirCtCPc0x9fDcHUEhHWsv6f0oJHMUnSoeSx9jkDMJ+TQxbp6JncW5aukQp9ML1GZyEkE+k5iEhsJvsJqaXQy0kxfq5vWjGeqrubg6JhXa6rsFTZ91zJ/SOYjBNGrNPFdzuX6hg1sw6AOlMNffyPiwXb0ujQI20oiiiTYF4mI6dHs+/Aka4E1u1UeUuH6OmXNmFycrEDmcwvAuxbq7nyIIRPHYAs6zt7jo8evvyoXJTmihdixz7T7kjTZyyIhNDzigp0HW2tGT8W3J6Z1RWR6L055QBKWAdo80jgzKoxEVpNH48+JRSHBoiKeUKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DP0visv+1QQ5bROCjSnALyf+03E81AE1jRd+Qoncw9I=;
 b=FRyn74VXwmahYqgllGoNfXytT2z7/s0wRReA25ZjcZS+XPtMuiUA4jyCs9T7Vpvr6yilYXJPwKIdycoPaO4PuBrhCtNNSTFS2WxGIAoEAR0Qnhp9Q70v5TQ7dXX6ou73miwOqjIljvNOx7qaMuaB7WkE8O++l3C3Cx+nRYYbw/s=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3385.eurprd02.prod.outlook.com (52.134.73.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 10:08:27 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::cd85:a8a5:da14:db13%7]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 10:08:27 +0000
Received: from [192.168.13.3] (213.112.138.4) by
 HE1PR0502CA0009.eurprd05.prod.outlook.com (2603:10a6:3:e3::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.21 via Frontend Transport; Mon, 27 Jan 2020 10:08:26 +0000
From: Peter Rosin <peda@axentia.se>
To: Colin Ian King <colin.king@canonical.com>, Michal Simek
 <michal.simek@xilinx.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>
Subject: Re: [PATCH][next] i2c: xiic: fix indentation issue
Thread-Topic: [PATCH][next] i2c: xiic: fix indentation issue
Thread-Index: AQHV1F9MXsnBtPvzREO9EfvLgEq5Laf+IjwAgAAcsYCAAAvAAA==
Date: Mon, 27 Jan 2020 10:08:27 +0000
Message-ID: <a49786b8-bf71-727b-0785-62bd606a159b@axentia.se>
References: <20200126154257.41336-1-colin.king@canonical.com>
 <e20558ec-bf4e-9348-f6cb-a37c5dbbb2de@xilinx.com>
 <6558ccbc-56f7-b30d-df02-1eaf07072c4d@canonical.com>
In-Reply-To: <6558ccbc-56f7-b30d-df02-1eaf07072c4d@canonical.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-originating-ip: [213.112.138.4]
x-clientproxiedby: HE1PR0502CA0009.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::19) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04a5fcc8-d9ec-4e3b-f6fd-08d7a310da38
x-ms-traffictypediagnostic: DB3PR0202MB3385:
x-microsoft-antispam-prvs: <DB3PR0202MB3385DCFE13C48A008737D6D6BC0B0@DB3PR0202MB3385.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(396003)(366004)(346002)(376002)(136003)(189003)(199004)(31686004)(86362001)(31696002)(71200400001)(316002)(53546011)(16576012)(110136005)(54906003)(2906002)(508600001)(6486002)(81156014)(4326008)(81166006)(8676002)(36756003)(52116002)(8936002)(16526019)(956004)(5660300002)(186003)(66946007)(26005)(2616005)(66446008)(66556008)(66476007)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3385;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nTmqrX7L85eAPXLwoqtrSiB0Ww9Obmah/st+/PPDzESY20UE2IFLAee8GsGBHzjPtKfDhaMWHiuB9HId/VEWu70E4RDO+XvB2JbzGJ8mg92EoQ6RX4C1pojFwHkmRLaSCkZPAENXwwd3qSNhz3288Aqb8ltEIZaBPz1NBBFDWdk59Wgi7OWLpKcMnG5ZQJWMAKBRp2l28gmXYSFf7cDZ6mjTl4Paoo1kYNreE0vfv4TYrXX6uaq5uZc7RSlZ7AKxX6xv9MZRA7ZqAOw4LPZx1gpOF+aqG9/yYKSv1UQPNyBekuyHIdXSzNQ3c0TlGhaYsCyduxUUKOtEO0wX0Zf5b65Sr0gdEEDm+Blx7+m2ChhXg06Bb936ZRCoRhWqD/dYY1idGb+jT1Q+V/bxcpj980V9tjaB02uTxfz1SQMMcPkQqss/UM3IEBvoSHkzDi38
x-ms-exchange-antispam-messagedata: hJ2Y9a8/a632aDFErlh72/weW8YqCwbyiOTlioeq0+51itwbB/j3dqPaQXwCjpk/x2ZH1Mjm0TdSHSXm/QdNvazx98etRddBqiqsgdpTLl5/6FrehOg6vbkd4Iu/BAVQb+j6bIlMgphuHxI60gXLcw==
x-ms-exchange-transport-forked: True
Content-ID: <9D4CE742CE73534BAB68505071BDB30E@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 04a5fcc8-d9ec-4e3b-f6fd-08d7a310da38
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 10:08:27.4743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X09dddJvbhKD2KKSdpp3wwyFKPDPOCchtlXTAa6CYqtN04ZseZ64P5ghd1lxlJHy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3385
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_020839_605977_DB10B2E7 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.125 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-27 10:26, Colin Ian King wrote:
> On 27/01/2020 07:43, Michal Simek wrote:
>> On 26. 01. 20 16:42, Colin King wrote:
>>> From: Colin Ian King <colin.king@canonical.com>
>>>
>>> There is a statment that is indented one level too deeply, remove
>>
>> typo             ^
> 
> Can this be fixed when the patch is applied rather than sending a V2?

It can, but I think you will make it easier for Wolfram if you send a v2.
Which is the right thing to do anyway since you are missing a Fixes tag.
I think you should have one, since it is borderline if this patch is going
to make it before 5.6.

Cheers,
Peter

> Colin
> 
>>
>>> the extraneous tab.
>>>
>>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>>> ---
>>>  drivers/i2c/busses/i2c-xiic.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/i2c/busses/i2c-xiic.c b/drivers/i2c/busses/i2c-xiic.c
>>> index b17d30c9ab40..90c1c362394d 100644
>>> --- a/drivers/i2c/busses/i2c-xiic.c
>>> +++ b/drivers/i2c/busses/i2c-xiic.c
>>> @@ -261,7 +261,7 @@ static int xiic_clear_rx_fifo(struct xiic_i2c *i2c)
>>>  		xiic_getreg8(i2c, XIIC_DRR_REG_OFFSET);
>>>  		if (time_after(jiffies, timeout)) {
>>>  			dev_err(i2c->dev, "Failed to clear rx fifo\n");
>>> -				return -ETIMEDOUT;
>>> +			return -ETIMEDOUT;
>>>  		}
>>>  	}
>>
>> When fixed.
>>
>> Acked-by: Michal Simek <michal.simek@xilinx.com>
>>
>> Thanks,
>> Michal
>>
>>
>>
>>
>>
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
