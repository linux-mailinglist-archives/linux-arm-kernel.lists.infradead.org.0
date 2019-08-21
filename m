Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAD7978F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A16jhphAPTToArkG1rxz+d/KGUdODkwlCjMCRovux8I=; b=BaDgEndiJRA0D4
	7N2icctSevq+Q3nCuCSC9a+rMFych2gFIAnu+nb9y/INVRR4SF4KWmYdl6j0SyaoKszcBeLOtaYoX
	U3MuUnivdT60CEsQbk0Vx5it7ikjBs4vnxPANUhVhUTnYvn0XNYaHdzAZWeE5CE02KkRecveGNmEF
	6GOXQoveAsTiY0cUy2zEJPOtaKVedAKf1OY0oaOZ9U6fUewb/AWXlFF+AKSSRWEOIxCCRH/gyigIF
	YQoPqAh2FzTZn3uiGYpNbG/9e8YOV8gPaS32QMwB2EdCjJgtWYiCancwmTKWo0c8+t92ybU2zvCur
	khW7uV60HM/bwd8FFlDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PTM-00089S-NC; Wed, 21 Aug 2019 12:12:17 +0000
Received: from mail1.bemta24.messagelabs.com ([67.219.250.209])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PT1-00088l-3R
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:11:56 +0000
Received: from [67.219.251.53] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-2.bemta.az-c.us-west-2.aws.symcld.net id F6/2C-30481-FF43D5D5;
 Wed, 21 Aug 2019 12:11:43 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDKsWRWlGSWpSXmKPExsXi5LtOQPefSWy
 sQe8ac4uHV/0tVk3dyWKx6fE1VouuXyuZLS7vmsNm8Xf7JhaLF1vELdqOHWN14PDYOesuu8em
 VZ1sHneu7WHz2Lyk3mPjux1MHv1/DTw+b5ILYI9izcxLyq9IYM042LiTrWAec8XVCwfZGhhnM
 HcxcnEICaxilJi+6SY7hLOXUeLMimUsXYycHGwC5hLTDh8Es0UELCT+TZgL1sEs8ItJ4tOOA0
 wgCWGBMInXc1ayQhSFS7xe8psNwraSuHVsGyOIzSKgKjH35HtmEJtXwFfixuxPYDVCAjUSkyf
 9ZAexOQXsJE6fmgQ2h1FAVmLl+dNgvcwC4hK3nswH2yUhICCxZM95ZghbVOLl43+sELaCxIIL
 X4EO5QCq15RYv0sfolVRYkr3Q3aItYISJ2c+YYFYqybRNmcC8wRG0VlINsxC6J6FpHsWku4Fj
 CyrGM2TijLTM0pyEzNzdA0NDHQNDY10DY3Ndc0s9RKrdJP1Sot1y1OLS3SN9BLLi/WKK3OTc1
 L08lJLNjECoziloNN1B+P+WW/0DjFKcjApifKeUYmNFeJLyk+pzEgszogvKs1JLT7EKMPBoST
 Ba2IMlBMsSk1PrUjLzAEmFJi0BAePkgjvXSOgNG9xQWJucWY6ROoUozHHhJdzFzFzHJm7dBGz
 EEtefl6qlDjvH5BSAZDSjNI8uEGwRHeJUVZKmJeRgYFBiKcgtSg3swRV/hWjOAejkjDvHZB7e
 DLzSuD2vQI6hQnolN2HI0FOKUlESEk1MNV1bzmx+TDj7m9vk86tefZYfvaaV281E4S98pdbm3
 P8MhHnaLnnte98xJmfE81v8mjcmLXOnaXEyervw/kfvLtiiyIk5VdNfP2zLG1P9beX39m/b/Z
 +vqNFbYdFzbR150KtvC6eZ8x19ftRGWiy4tCNgFVPWBS4uFZbtT1mcDr6THCRTu/8leEsv47v
 2b2MoWB59C2NiOXSyn4HXP9dXZgb3/BOL93bcIXN+6qF3jOSeib1+ficFsx/sbbw0213D6Egk
 RNKbnc3TXya816Kv/Ds67z7akwvDr7W3rq4JtF8inWgtMjq22bcFVMTTXcxfKj3TD6grFEsaR
 z6IH8W66/FlWzSDA2nZgRvn2h/Y7kSS3FGoqEWc1FxIgB4MB1D7wMAAA==
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-19.tower-365.messagelabs.com!1566389501!14255!1
X-Originating-IP: [66.77.174.16]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.9; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22255 invoked from network); 21 Aug 2019 12:11:42 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
 by server-19.tower-365.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 21 Aug 2019 12:11:42 -0000
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MCL-VMS-XCH01.digi.com
 (10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 21 Aug 2019
 07:11:41 -0500
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
 DOR-VMS-XCH01.digi.com ([fe80::c47f:be41:1dc7:5ab8%11]) with mapi id
 14.03.0468.000; Wed, 21 Aug 2019 14:11:39 +0200
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: RE: [PATCH 0/2] nvmem: imx-ocotp: allow reads with arbitrary size
 and offset
Thread-Topic: [PATCH 0/2] nvmem: imx-ocotp: allow reads with arbitrary size
 and offset
Thread-Index: AQHVQWvhEud7zccX5U+rMC/CtlWS8Kbt2KgAgBfWu0A=
Date: Wed, 21 Aug 2019 12:11:38 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C025D80A9@dor-sms-xch01.digi.com>
References: <1563895963-19526-1-git-send-email-Jose.DiazdeGrenu@digi.com>
 <771a6f0a-3cc2-da20-2439-9a91dd2bf9d2@linaro.org>
In-Reply-To: <771a6f0a-3cc2-da20-2439-9a91dd2bf9d2@linaro.org>
Accept-Language: es-ES, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.178]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_051155_190791_7E5DAD8C 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.250.209 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/08/2019 12:06 Srinivas Kandagatla wrote:
> Anyone form IMX can test this patchset before I push this out?
>
> Thanks,
> srini

Just for the record, I tested this on an i.MX6UL based board.

Let me know if there is something I can do to facilitate the testing to anyone from IMX.

Thanks.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
