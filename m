Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35A399DED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQ6BTXZ322d61gXG0l1NVxXd/3U4EL36BdFkgk2oIPw=; b=rlkc2X0pSMHaYD
	vJMmH6qwBQU21R24YmUr2oJj5KSbEgQrBBTLl330bqVeVvIUSzUEGp6DpkqnzyxLQp0KsdZ63Bw3G
	xII4Z6219FDqEhBKU82xfu4Tgx8qi2LeZPnvBs64Oan/IQ0erit/7cUWWCKwmPKwIDUCFWJgmpphZ
	IQVUm2M9YEu5AOM8ZJi6sEJhDCNecCmyyU2kRiNLhbxaESgBa4RNfOlkw9Yj/kNagRIHceD1K2ou3
	kQ5dlckIewbiRJHxw3svLo91e8O6WZ9bVM6aSZsaltFfbestT21zEL7eaBLlMwhmm5RHwF901/Ns7
	8OLde6rUYOjqIukRTsKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0rAl-0000ae-OA; Thu, 22 Aug 2019 17:46:55 +0000
Received: from mail-eopbgr760073.outbound.protection.outlook.com
 ([40.107.76.73] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0rAa-0000aF-Ew
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:46:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=doa8mFEOXXTu2eBDGc8GMCl5aKHD4TEQHqm5DYVQytYhRQW/kd2yIzZQxNnLIqMw41I1mJMrGNR0UERx9fFFpxJOcYNEKMdHGcPOZ6NuAqN/9ZIlzNdEXziQhknTI0j8N+kqjYCZtiE03+Dp8lSAzbfvePXzktJtHPevmn6YpjzUYfv7V8Ikl2oA+vQp1bdvaJFepramr1XnJtRNQexpZjHSBF2z/NOtv8okUB2IMbMKkBBDAMRdmZLMldVVdncZavD4RAXgQTey9W8eIE54URna1aTnRKCvwJl+jU5ZRJYGKJEWoVYl+mDJFV82gazGf0x3y2vJtN7r3TejHuSp1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zUK30UwzVfHljYQyXvmnFcFhPo0kD61tDWawQOrlqfw=;
 b=ZOqntH1u90GyDIPEU75a3zZ7iQuZPHbAgf6C5HgEnW07NaPojMmXycKu4fGc5BUesZ8DWPQXCYj242tx23xN6dJBMMvaO9nKqwEBWaQQy07Bp8WSF+nZJwQDOny3QyFUnnUZ/ANoYIY4a1diWC0R+DcW2qOtEmfP2L61BpgrL2LnggV70niIuGa2Udnn1Cr8VVeLsQ5PTJaJW6xM/IMnKILyr+j7smLzTnR8h2g4c8TAMCVaNHxUqEdCMys549rd4t40RhYMfM9w80+PztXXwqsaS5T33GmsP0jq6k9Q+BEU0Paz/7CRDfOU+7fMID+KezxJudI9RmReHR5+oB8LCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zUK30UwzVfHljYQyXvmnFcFhPo0kD61tDWawQOrlqfw=;
 b=sOQ8LTGhf7Sqavj90klmUiYcgPiNH5mbgRchtrSvu0XBltc1cTJbceVjnUTGUNYVu9JO+NCJF5wCRPpkl5ptLDXWCdDKzehBajAToTpfaRuoQUHS9s0ZGy6SxTpedx9XmXsGbbKvCyC7eUTVuHuWuYlH+3vBdqqhFmPRDhY4wzQ=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6789.namprd02.prod.outlook.com (20.180.17.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 17:46:38 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::5c58:16c0:d226:4c96%2]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 17:46:37 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Colin King <colin.king@canonical.com>, Derek Kiernan
 <dkiernan@xilinx.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Michal Simek <michals@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH][next] misc: xilinx_sdfec: fix spelling mistake: "Schdule"
 -> "Schedule"
Thread-Topic: [PATCH][next] misc: xilinx_sdfec: fix spelling mistake:
 "Schdule" -> "Schedule"
Thread-Index: AQHVVnJP4VcE2hpVHUK1v1iNBAmG8KcHdetw
Date: Thu, 22 Aug 2019 17:46:37 +0000
Message-ID: <CH2PR02MB635948C20B17ED85455EBE06CBA50@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <20190819094137.390-1-colin.king@canonical.com>
In-Reply-To: <20190819094137.390-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adab16dc-e1fa-4594-453c-08d72728ae71
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR02MB6789; 
x-ms-traffictypediagnostic: CH2PR02MB6789:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR02MB6789CA4D05A5230057A05873CBA50@CH2PR02MB6789.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(39840400004)(376002)(396003)(136003)(13464003)(189003)(199004)(2906002)(316002)(229853002)(66476007)(76116006)(76176011)(66946007)(54906003)(305945005)(74316002)(478600001)(99286004)(110136005)(64756008)(66446008)(66556008)(55016002)(9686003)(6436002)(71200400001)(71190400001)(7736002)(7696005)(14444005)(3846002)(486006)(6116002)(66066001)(33656002)(53936002)(52536014)(5660300002)(14454004)(11346002)(446003)(53546011)(6246003)(8936002)(6506007)(81166006)(81156014)(26005)(8676002)(25786009)(186003)(102836004)(86362001)(4326008)(256004)(476003)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6789;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UTsoc5jSyL/8viEq6rlvcvp5hkfG/Ts6DnteM2Sdt0Q1yQBGKIMM0QJXkUxQLam2ii7G/xyB+sR/USV19Av1TF9FhahwZiuYcwtfrJd/b7mqquVRIiA0yruUGn4eGUbJt2Tfu4514NcWrBwG5Ve63nV+Ktyrwjf5wzPsfpK8yOsDvKL9V/pdp7pXU7tdKTRusSjr+iZqoXWAUpi7PqdTffqctm3/oCpZqRpyeUXoOYeg+Spoink812cIM8V1BXftV5qu/kcg4/5xHULCQB2os1/5uuBebhpdPjWgmRGzHv5S+9MalGVRFdZ+uOtHzJMv3iW6aGv/tVemGHt4muKhRl9XyPXQDnb+AcoAk8MVsD9o/+8rmJoyeQun8FJasKBkoDA7a00iL129/4mMnwaRl1xsOThy3v4Ka1W4PI9AUBE=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adab16dc-e1fa-4594-453c-08d72728ae71
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 17:46:37.3789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tr+bfPqEx5j0SQ5ne1RVTeQW+iqgnYADnchG5BxZEYWK2/xED8l3q81sxQrJ5uyPCM3KUiBoA37i5fok5imZ1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_104644_505470_B9B2C9CC 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Colin,

> -----Original Message-----
> From: Colin King [mailto:colin.king@canonical.com]
> Sent: Monday 19 August 2019 10:42
> To: Derek Kiernan <dkiernan@xilinx.com>; Dragan Cvetic <draganc@xilinx.com>; Arnd Bergmann <arnd@arndb.de>; Greg Kroah-
> Hartman <gregkh@linuxfoundation.org>; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org
> Cc: kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [PATCH][next] misc: xilinx_sdfec: fix spelling mistake: "Schdule" -> "Schedule"
> 
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a dev_dbg message, fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/misc/xilinx_sdfec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> index 912e939dec62..b25c58ee618c 100644
> --- a/drivers/misc/xilinx_sdfec.c
> +++ b/drivers/misc/xilinx_sdfec.c
> @@ -553,7 +553,7 @@ static int xsdfec_reg2_write(struct xsdfec_dev *xsdfec, u32 nlayers, u32 nmqc,
>  		 XSDFEC_REG2_NO_FINAL_PARITY_MASK);
>  	if (max_schedule &
>  	    ~(XSDFEC_REG2_MAX_SCHEDULE_MASK >> XSDFEC_REG2_MAX_SCHEDULE_LSB))
> -		dev_dbg(xsdfec->dev, "Max Schdule exceeds 2 bits");
> +		dev_dbg(xsdfec->dev, "Max Schedule exceeds 2 bits");
>  	max_schedule = ((max_schedule << XSDFEC_REG2_MAX_SCHEDULE_LSB) &
>  			XSDFEC_REG2_MAX_SCHEDULE_MASK);
> 
> --
> 2.20.1

Reviewed-by: Dragan Cvetic <dragan.cvetic@xilinx.com>

Thanks,
Dragan
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
