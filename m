Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF7A1C1140
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwd58GbDu23csvFa3IXHNed0Bc93kQKsipFZpRmohR8=; b=ILMLTLWWfKGAD1
	rov62ug+rmWohO5zU7RRZCO9bFIlqTR8vt2lKGnuImtd+iNQ9iM9tVOxJrcsVXAuABa8POnCPAmsf
	qIcpkgBYBUDex3wQGeTugj/D3hzxtcPl1WpLqE3NMdO1YFUKFOU+N7LKaoauSZQe0dpgQ8KkUDsOQ
	Mw+JhXSmaDHKnkSZCef1m6ejvyDlgXYHwIf45jJB92CdwrNKECKlnpINKH2Vu7/gCw5+ZrT40KDfz
	5LV3XT6WSktLSWkEQVQtAhYy1srbh7yjaX1inrOJoG9CtB0awgjoaEVn0SLst5GC5lF2txKaqbOCm
	TviBHFTPijnPDRdTlKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUTJh-0007zl-5b; Fri, 01 May 2020 10:54:49 +0000
Received: from mail-eopbgr680081.outbound.protection.outlook.com
 ([40.107.68.81] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUTJZ-0007xz-C4
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:54:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cs8fXTZDAtaBpzqGN+Se7Ht4bG9a9aoAObSn3zTHHcnU0O7iOikxDQdojXUCJkr2egGRcYHn1GE61LiiUkGmHfFc/HchN350WxTzgOM5E3KDPh3F4P7KYUrAKfdfdIS7my6y9jhqnkgFJRolRY3Y60iDrQwPelJLI0ni7myJTpNd04aOSqFL0vNpFMfz4ss7JHweGKELl2F+B7MY7oPp9zxVYGuqCiY+v4waHWX7RrJ70K5Fsyey/Axt1QIEBt3m38otucVSJOuC1rEDlBrNASJ4dJRcQTiRCz6GJqhu9gAcQ6pE63ZLKRvkN71E5JKY4aPZ6qckIjngla0hUAzeaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=skGwslQs9ZwCwYlK6qeFkutpOtuCKA28v4//bcjGlmE=;
 b=KT59P2u1QBjVgTvA/ylx+zF5tgEafLbSaPfPrObZ/qJhsug9c2jjf6aHYnL9dbBaiftJN8ZzBHmOPZYAHPsG3Fh6/uWvHoE0hN137cv0Fe09CH4G8bbpat5C8IosJe0FYKOvxYKNT7Z3zkCNg77NYC3JdHjUTXz4JmDYZEIsBFWWE636EgnWe4eI0dhJFgtHfkj+PiZ634UddBBoJVguh4m67/El+MpTSofb7hG8wIbNtZVU3fNb+Pz/86rpxUhDkxPn+nDseTPh1HVHRPz42FNLUIxZRZCXm95d8ePrLEcwp0dP0YLwCzKpoVCHwvbOdsVe3ZT7QD2x4F8ImbVOhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=skGwslQs9ZwCwYlK6qeFkutpOtuCKA28v4//bcjGlmE=;
 b=HR5OYLGIcQJejFcLML/79Q/n13otfk86EZIGoPOknwwPOoNdd5oIoifmRtDEkqnZBgMEKyBa9t6ycMogjvJnBXvo6Z5CXnXXCwhKGM1jmSRy6e+q1HmZ0I1vc8jYqumQiqm2PKmshpCEAXzm6zgcuLdf9QC+36n+rDojUu/AMBQ=
Received: from BYAPR02MB3941.namprd02.prod.outlook.com (2603:10b6:a02:f8::18)
 by BYAPR02MB5734.namprd02.prod.outlook.com (2603:10b6:a03:11c::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Fri, 1 May
 2020 10:54:36 +0000
Received: from BYAPR02MB3941.namprd02.prod.outlook.com
 ([fe80::10b5:a33c:e9c7:6c0a]) by BYAPR02MB3941.namprd02.prod.outlook.com
 ([fe80::10b5:a33c:e9c7:6c0a%7]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 10:54:36 +0000
From: Rajan Vaja <RAJANV@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH char-misc-next] crypto: xilinx: Handle AES PM API return
 status
Thread-Topic: [PATCH char-misc-next] crypto: xilinx: Handle AES PM API return
 status
Thread-Index: AQHWH6FwO0uDx7272EWw1r+zokOZdaiTB8WAgAAGjuA=
Date: Fri, 1 May 2020 10:54:36 +0000
Message-ID: <BYAPR02MB3941AE74C305FD0452E2B868B7AB0@BYAPR02MB3941.namprd02.prod.outlook.com>
References: <1588328091-16368-1-git-send-email-rajan.vaja@xilinx.com>
 <20200501103021.GA1416784@kroah.com>
In-Reply-To: <20200501103021.GA1416784@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=xilinx.com;
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6dc03efb-f4c0-43ab-5ab9-08d7edbe0a04
x-ms-traffictypediagnostic: BYAPR02MB5734:|BYAPR02MB5734:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB57343C1AD4CF307C1AF8568EB7AB0@BYAPR02MB5734.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JfWMaBE7hdWcWvrGWMbP9j3vbKHJXOuwS45crumNhlAPG4xLw/NYRk/s07TQ95eAE/pyw8OxZWzgPwHn8N2iu7vx2hdDLz0R/W08INDUW3APVEEUbkv3haMWxCgAST3MXXel9VPepDdx9YOutJU0ou5ne9bHXOeg+1KTPzljgCJMRJKI4S25nMh06Xn4662SSL0dABAk5X1czuFg4HT3jaAniZ/hGcNTBF+10rVvZxYlme1YyqYgyV/qY0m46i+rYVn41lfkm74+CJx+hAMYPHFXPsHkdwYQYvtJQE4DLKQqdKYd80RcrX2kOGuujQOR/Ix99U6Mj/3KlrkyK6JoudCj8yS2USugadU9LNqVuD5N9K6IyXiGUFxBA4vP5GQW+Dmhpy0ivSToNJx+hr2vZo15Rt/K3GU59I+JxwjE35ppoYOfubv2tnO8b9ZRkmJR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR02MB3941.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(346002)(39860400002)(136003)(53546011)(316002)(71200400001)(9686003)(6506007)(478600001)(8936002)(52536014)(66946007)(26005)(5660300002)(6916009)(55016002)(66556008)(66476007)(64756008)(66446008)(76116006)(33656002)(7696005)(86362001)(4326008)(186003)(8676002)(2906002)(54906003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: dhEN5tpHCtQgiWtl5vv7sC2lSOlrkT4Hzzf9oFxA33/TXsRdfCWh9/HPFi+On7upRnl55pPFTH6F+aj/ztg561NB+B8E7TNiWXLbGLgricqtcXJ6AWN5GtjrF1f1sl0aLH5gPv2fTpEDSMyqXOTtAAlJXVIph7Oe4o3NJWJoTxPvhPuxVGz2XcfYK1BgD5gJoivzGlExp7P1+fNJcUQeATcEu7EmDbhYnE0uCDz4kyRga6Bveb9XSzcGeGiG6rgu3Wujv2wo+FrmbJybIQuyWNbx1C7/dMDAQXt5lXNKD9zt0bDxEQOs5TN+lrJGl0EFkD3ugGY6LKdDOk2l1ourmtRxn43BrHlU7SrS/dTpJJTrVDySYi16qrs47yYmXLVN1uv04s07oCiSr7rcX0uCVPT56Qnkl12JB5wYnY6a1fwLdI26WQuyout9uwoAfsM/SqhoLoEft2cAZK/2mKp7wC7qNqorm1sVV2aqv57TFi+7qaCHs2WAoITg7mWeDvRDrQerZYJ62CbG/b3nBTWVDqu6jGWyRRIqpo6k72PP+JGOMPbqXHOWPQjAUiAc3QpU1QrYH5E9GjG5/aXLnQOCYrnmLKSA2hNrsDiLVdurnNbDmEKF3hKtHSHw2hBSof57/SFfP19zOZTUTzmYZ4nYlvEjP8EfRiVAyOWLnPxs1t1GyZV7ss+dGNDf2nZgwX+XQDuZtly0cCJBW2MevuoQ1+ZP4eaGjMw/r/xnM8WEAqgWKljwg8qgJAnSbomO47jVz6DyVz64h4cxsb9STXsHpYRDIWsbiX57a6ax+9LA7mQ=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dc03efb-f4c0-43ab-5ab9-08d7edbe0a04
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 10:54:36.2621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YjEbF8dwDe/zBt12sfKyzJGARs23U6h72FEmzQ0Ib9bwjZ0w9igu1IOZRt24M+9WqTjLga0r0EhPFtVuGZv0PQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5734
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_035441_407618_B6A82F32 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.68.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.68.81 listed in wl.mailspike.net]
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
Cc: "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Kalyani Akula <kalyania@xilinx.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Gerg for review.

I have updated reported by and fixes tag properly now. Sent v2.

Thanks
Rajan

> -----Original Message-----
> From: Greg KH <gregkh@linuxfoundation.org>
> Sent: Friday, May 1, 2020 4:00 PM
> To: Rajan Vaja <RAJANV@xilinx.com>
> Cc: herbert@gondor.apana.org.au; davem@davemloft.net; Kalyani Akula
> <kalyania@xilinx.com>; Michal Simek <michals@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; linux-crypto@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH char-misc-next] crypto: xilinx: Handle AES PM API return
> status
> 
> CAUTION: This message has originated from an External Source. Please use
> proper judgment and caution when opening attachments, clicking links, or
> responding to this email.
> 
> 
> On Fri, May 01, 2020 at 03:14:51AM -0700, Rajan Vaja wrote:
> > Fixes: bc86f9c54616 ("firmware: xilinx: Remove eemi ops for aes
> > engine")
> >
> > Return value of AES PM API is not handled which may result in
> > unexpected value of "status" in zynqmp_pm_aes_engine().
> >
> > Consider "status" value as valid only if AES PM API is successful.
> >
> > Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> No "Reported-by:" line?
> 
> And put the "Fixes:" line down in the s-o-b area please.
> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
